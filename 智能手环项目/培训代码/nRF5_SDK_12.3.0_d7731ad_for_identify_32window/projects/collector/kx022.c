#include <stdbool.h>
#include <string.h>
#include "app_error.h"
#include "app_twi.h"
#define NRF_LOG_MODULE_NAME "kx022"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_drv_gpiote.h"
#include "nrf_drv_rtc.h"
#include "nrf_delay.h"
#include "nrf_assert.h"
#include "nrf_soc.h"
#include "flash.h"
#include "rtc.h"
#include "kx022.h"

/* #define BUFFER_SIZE 10 */

typedef void (*read_reg_callback_t) (const uint8_t* data, uint8_t length);

static const uint8_t kINT1Pin = 23;
static const uint8_t kBufferSize = 10;

static app_twi_t* m_app_twi;
static kx022_data_handler_t m_data_handler;
static uint16_t m_data_count;
static uint8_t m_buffer[kBufferSize];
static kx022_wake_up_callback_t m_wake_up_callback;

static void init_callback(ret_code_t result, void* p_user_data);
static void set_wake_up_callback(ret_code_t result, void* p_user_data);
static void delayed_system_off(void* p_arguments);
static void write_register_cntl1(uint8_t value, bool stand_by,
                                 app_twi_callback_t callback);
static void print_result(ret_code_t result, void* p_user_data);
/* static void print_register(const uint8_t* data, uint8_t length); */
static void read_data_callback(const uint8_t* data, uint8_t length);
static void int1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action);
static void int_source_callback(const uint8_t* data, uint8_t length);
static void read_register(uint8_t register_address, uint8_t bytes_number,
                          read_reg_callback_t callback, bool is_block);
static void read_register_callback(ret_code_t result, void* p_user_data);

void kx022_init(app_twi_t* app_twi) {  //, kx022_data_handler_t data_handler) {
  m_app_twi = app_twi;
  /* m_data_handler = data_handler; */

  static const uint8_t kResetData[] = {
    KX022_REG_CNTL1, 0x00,  // stand-by mode
    // start RAM reboot routine
    KX022_REG_CNTL2, KX022_CNTL2_RESET_VALUE | KX022_MASK_CNTL2_SRST,
  };
  static const app_twi_transfer_t kResetTransfers[] = {
    APP_TWI_WRITE(KX022_ADDRESS, kResetData, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, kResetData + 2, 2, 0)
  };

  APP_ERROR_CHECK(app_twi_perform(m_app_twi,
                                  kResetTransfers,
                                  sizeof(kResetTransfers) /
                                  sizeof(app_twi_transfer_t),
                                  NULL));

  nrf_delay_ms(1);  // wait for kx022 reset
  do {
    read_register(KX022_REG_CNTL2, 1, NULL, true);
  } while (m_buffer[0] & KX022_MASK_CNTL2_SRST);

  static const uint8_t kInitData[] = {
    KX022_REG_CNTL1, 0x00,  // stand-by mode
    // INT1???????????????????????????????????????????????????
    KX022_REG_INC1, KX022_MASK_INC1_IEN | KX022_MASK_INC1_IEA | KX022_MASK_INC1_IEL,
    // ?????????????????? ??? ???????????? ?????????INT1
    KX022_REG_INC4, KX022_MASK_INC4_DRDYI | KX022_MASK_INC4_WUFI,
    KX022_REG_ODCNTL, KX022_ODCNTL_OSA_50HZ,
    KX022_REG_ATH, 2  // ????????????????????????????????????1/16g
  };
  static const app_twi_transfer_t kInitTransfers[] = {
    APP_TWI_WRITE(KX022_ADDRESS, kInitData, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, kInitData + 2, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, kInitData + 4, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, kInitData + 6, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, kInitData + 8, 2, 0)
  };
  static const app_twi_transaction_t kInitTransaction = {
    .callback = init_callback,
    .p_user_data = NULL,
    .p_transfers = kInitTransfers,
    .number_of_transfers = sizeof(kInitTransfers) / sizeof(app_twi_transfer_t)
  };
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kInitTransaction));
  kx022_stop();
}

static void init_callback(ret_code_t result, void* p_user_data) {
  if (result == NRF_SUCCESS) {
    nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
    APP_ERROR_CHECK(nrf_drv_gpiote_in_init(kINT1Pin, &in_config, int1_handler));
    NRF_LOG_INFO("KX022 init completed!\n");
  } else {
    NRF_LOG_ERROR("init error: %d\n", result);
  }
}

void kx022_start(void* data_handler) {
  if (!data_handler) return;
  m_data_handler = (kx022_data_handler_t)data_handler;
  m_data_count = 0;
  nrf_drv_gpiote_in_event_enable(kINT1Pin, true);
  write_register_cntl1(KX022_CNTL1_GSEL_2G | KX022_MASK_CNTL1_DRDYE, false, print_result);
}

void kx022_stop(void) {
  nrf_drv_gpiote_in_event_disable(kINT1Pin);
  write_register_cntl1(KX022_CNTL1_GSEL_2G, true, print_result);
}

void kx022_set_wake_up(bool enable, bool off_mode,
                       kx022_wake_up_callback_t callback) {
  if (enable) {
    // ???????????????????????????????????????
    m_wake_up_callback = callback;
    write_register_cntl1(KX022_CNTL1_GSEL_2G | KX022_MASK_CNTL1_WUFE, false,
                         off_mode ? set_wake_up_callback : NULL);
    // ???????????????????????????????????????
    nrf_drv_gpiote_in_event_enable(kINT1Pin, true);
    // ??????????????????
    nrf_gpio_cfg_sense_input(kINT1Pin, NRF_GPIO_PIN_NOPULL, NRF_GPIO_PIN_SENSE_HIGH);
  } else {
    read_register(KX022_REG_INT_REL, 1, NULL, false);
    write_register_cntl1(KX022_CNTL1_GSEL_2G, true, print_result);
    nrf_gpio_cfg_sense_input(kINT1Pin, NRF_GPIO_PIN_NOPULL, NRF_GPIO_PIN_NOSENSE);
  }
}

static void set_wake_up_callback(ret_code_t result, void* p_user_data) {
  if (result == NRF_SUCCESS) {
    if (flash_is_idle()) {
      NRF_LOG_INFO("system off 0\n");
      NRF_LOG_FLUSH();
      APP_ERROR_CHECK(sd_power_system_off());
    } else {
      rtc_run_delay(100, kKX022Channel, delayed_system_off, NULL);
    }
  } else {
    NRF_LOG_ERROR("wake up callback error: %d\n", result);
  }
}

static void delayed_system_off(void* p_arguments) {
  if (flash_is_idle()) {
    NRF_LOG_INFO("system off 1\n");
    NRF_LOG_FLUSH();
    APP_ERROR_CHECK(sd_power_system_off());
  } else {
    rtc_run_delay(100, kKX022Channel, delayed_system_off, NULL);
  }
}

static void write_register_cntl1(uint8_t value,
                                 bool stand_by,
                                 app_twi_callback_t callback) {
  static uint8_t cntl1_config[] = {
    KX022_REG_CNTL1, 0x00,  // stand-by mode
    KX022_REG_CNTL1, 0,  // 0???????????????????????????p??????????????????
    KX022_REG_CNTL1, 0 | KX022_MASK_CNTL1_PC1  // operating mode
  };
  cntl1_config[3] = value;
  cntl1_config[5] = value | KX022_MASK_CNTL1_PC1;
  static const app_twi_transfer_t kTransfers[] = {
    APP_TWI_WRITE(KX022_ADDRESS, cntl1_config, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, cntl1_config + 2, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, cntl1_config + 4, 2, 0)
  };
  static app_twi_transaction_t transaction = {
    .p_user_data = "write_register_cntl1",
    .p_transfers = kTransfers,
    .number_of_transfers = sizeof(kTransfers) / sizeof(app_twi_transfer_t)
  };
  transaction.callback = callback;
  transaction.number_of_transfers = (stand_by ? 2 : 3);
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &transaction));
}

static void print_result(ret_code_t result, void* p_user_data) {
  NRF_LOG_INFO("kx022 twi result: %d from: %s\n", result, (uint32_t)p_user_data);
}

/* void kx022_test(void) { */
/*   kx022_read_data(); */
/*   nrf_delay_ms(10); */
/*   read_register(KX022_REG_WHO_AM_I, 1, print_register); */
/* } */

/* static void print_register(const uint8_t* data, uint8_t length) { */
/*   NRF_LOG_DEBUG("reg: "); */
/*   /\* for (uint8_t i = 0; i < length; ++i) { *\/ */
/*   /\*   NRF_LOG_DEBUG("%02x", data[i]); *\/ */
/*   /\* } *\/ */
/*   NRF_LOG_HEXDUMP_DEBUG(data, length); */
/*   NRF_LOG_DEBUG("\n"); */
/* } */

void kx022_read_data(void) {
  read_register(KX022_REG_XOUT_L, 6, read_data_callback, false);
}

static void read_data_callback(const uint8_t* data, uint8_t length) {
  kx022_data_t kx022_data = {
    .number = m_data_count++,
    .x = (int16_t)data[1] << 8 | data[0],
    .y = (int16_t)data[3] << 8 | data[2],
    .z = (int16_t)data[5] << 8 | data[4]
  };
  NRF_LOG_DEBUG("%5d %5d %5d %5d\n",kx022_data.number, kx022_data.x, kx022_data.y, kx022_data.z); 
  if (m_data_handler) {
    m_data_handler(kx022_data);
  }
  read_register(KX022_REG_INT_REL, 1, NULL, false);
}

static void int1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  /* static const nrf_drv_rtc_t kRTC1 = NRF_DRV_RTC_INSTANCE(1); */
  /* uint32_t start_time = nrf_drv_rtc_counter_get(&kRTC1); */
  /* NRF_LOG_DEBUG("t %d", start_time * 1000 / RTC_DEFAULT_CONFIG_FREQUENCY); */
  // TODO:???????????????????????????????????????TWI??????????????????????????????
  read_register(KX022_REG_INS2, 1, int_source_callback, false);
}

static void int_source_callback(const uint8_t* data, uint8_t length) {
  if (data[0] & KX022_MASK_INS2_DRDY) {
    kx022_read_data();
  }
  // ???????????????????????????????????????????????????????????????
  if (data[0] & KX022_MASK_INS2_WUFS) {
    NRF_LOG_INFO("wake up\n");
    if (m_wake_up_callback) {
      m_wake_up_callback();
    }
    /* read_register(KX022_REG_INT_REL, 1, NULL, false); */
  }
}

// ??????KX022?????????????????????????????????????????????????????????
// ????????????????????????????????????????????????????????????????????????m_buffer???
static read_reg_callback_t m_read_register_callback;
static volatile bool m_read_register_is_busy = false;
static void read_register(uint8_t register_address,
                          uint8_t bytes_number,
                          read_reg_callback_t callback,
                          bool is_block) {
  ASSERT(bytes_number <= kBufferSize);
  if (m_read_register_is_busy) {
    NRF_LOG_INFO("read reg busy reg addr: %x\n", register_address);
    return;
  }
  /* while (m_read_register_is_busy) {} */
  m_read_register_is_busy = true;
  m_read_register_callback = callback;
  static uint8_t data;
  data = register_address;
  static app_twi_transfer_t transfers[] = {
    APP_TWI_WRITE(KX022_ADDRESS, &data, 1, APP_TWI_NO_STOP),
    APP_TWI_READ(KX022_ADDRESS, m_buffer, 1, 0)
  };
  transfers[1].length = bytes_number;
  static app_twi_transaction_t transaction = {
    .callback = read_register_callback,
    .p_user_data = NULL,
    .p_transfers = transfers,
    .number_of_transfers = 2
  };
  transaction.p_user_data = (void*)bytes_number;
  if (is_block) {
    APP_ERROR_CHECK(app_twi_perform(m_app_twi, transfers, 2, NULL));
    m_read_register_is_busy = false;
  } else {
    APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &transaction));
  }
}

static void read_register_callback(ret_code_t result, void* p_user_data) {
  uint8_t data[kBufferSize];
  m_read_register_is_busy = false;
  if (result == NRF_SUCCESS) {
    memcpy(data, m_buffer, (uint32_t)p_user_data);
    if (m_read_register_callback) {
      m_read_register_callback(data, (uint32_t)p_user_data);
    }
  } else {
    NRF_LOG_ERROR("read register error: %d\n", result);
  }
}

// ??????kx022??????????????????????????????????????????
void kx022_set_output_data_rate(kx022_odr_t output_data_rate) {
  read_register(KX022_REG_CNTL1, 1, NULL, true);
  uint8_t cntl1 = m_buffer[0];
  read_register(KX022_REG_ODCNTL, 1, NULL, true);
  uint8_t odcntl = m_buffer[0];
  static uint8_t odr_config[] = {
    KX022_REG_CNTL1, 0x00,  // stand-by mode
    KX022_REG_ODCNTL, 0,
    KX022_REG_CNTL1, 0
  };
  odr_config[3] = (odcntl & ~KX022_MASK_ODCNTL_OSA) | (uint8_t)output_data_rate;
  odr_config[5] = cntl1;
  static const app_twi_transfer_t kTransfers[] = {
    APP_TWI_WRITE(KX022_ADDRESS, odr_config, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, odr_config + 2, 2, 0),
    APP_TWI_WRITE(KX022_ADDRESS, odr_config + 4, 2, 0)
  };
  static const app_twi_transaction_t kTransaction = {
    .callback = NULL,
    .p_user_data = "set_output_data_rate",
    .p_transfers = kTransfers,
    .number_of_transfers = sizeof(kTransfers) / sizeof(app_twi_transfer_t)
  };
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kTransaction));
}
