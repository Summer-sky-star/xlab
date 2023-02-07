#include <stdio.h>
#include "app_error.h"
#define NRF_LOG_MODULE_NAME "sht3"
#include "nrf_log.h"
#include "nrf_delay.h"
#include "nrf_gpio.h"
#include "crc8.h"
#include "rtc.h"
#include "sht3.h"

#define SHT3_ADDRESS 0x44

static void second_test(sht3_data_t data);
static void print_data(sht3_data_t data);
static void read_data(void* p_arguments);
static void read_data_callback(ret_code_t result, void* p_user_data);
static void update_data_callback(sht3_data_t data);

// kSingleShotModeCommand[repeatability_t][clock_stretching_t][MSB = 0/LSB = 1]
static const uint8_t kSingleShotModeCommand[3][2][2] = {
  {{0x24, 0x16}, {0x2c, 0x10}},
  {{0x24, 0x0b}, {0x2c, 0x0d}},
  {{0x24, 0x00}, {0x2c, 0x06}}
};

const sht3_repeatability_t kHumitureDefaultRep = SHT3_HIGH_REPEATABLE; //2
// kHumitureMeasureTime[sht3_repeatability_t]，最大测量时间，单位：毫秒
const uint8_t kHumitureMeasureTime[3] = {4, 6, 15};
/* static const uint8_t kHeaterCommand[2][2] = {{0x30, 0x66}, {0x30, 0x6d}}; */
/* static const uint8_t kStatusRegister[2] = {0xf3, 0x2d}; */

static const uint8_t kTryTimes = 3;
static const uint8_t kResetPin = 15;

static app_twi_t* m_app_twi;
static sht3_data_handler_t m_data_handler;
static uint8_t m_buffer[6];

void sht3_init(app_twi_t* app_twi) {
  m_app_twi = app_twi;
  nrf_gpio_cfg_output(kResetPin);
  nrf_gpio_pin_write(kResetPin, 1);
  nrf_delay_ms(1);  // wait for sht3 ready
}

void sht3_reset(void) {
  nrf_gpio_pin_write(kResetPin, 0);
  nrf_delay_ms(1);
  nrf_gpio_pin_write(kResetPin, 1);
  nrf_delay_ms(1);
}

void sht3_test(void) {
  sht3_read_data(second_test);
}

static void second_test(sht3_data_t data) {
  print_data(data);
  sht3_read_data(print_data);
}

static void print_data(sht3_data_t data) {
  char string[50];
  sprintf(string, "temperature: %.3f humidity: %.3f\n",
          -45 + 175 * (float)data.temperature / 65535, 100 * (float)data.humidity / 65535);
  NRF_LOG_INFO("%s", (uint32_t)string);
}

static const app_twi_transfer_t kReadDataTransfers[] = {
  APP_TWI_READ(SHT3_ADDRESS, m_buffer, 6, 0)
};
static const app_twi_transaction_t kReadDataTransaction = {
  .callback = read_data_callback,
  .p_user_data = NULL,
  .p_transfers = kReadDataTransfers,
  .number_of_transfers = sizeof(kReadDataTransfers) / sizeof(app_twi_transfer_t)
};

void sht3_read_data(sht3_data_handler_t handler) {
  m_data_handler = handler;
  static app_twi_transfer_t command_transfer =
    APP_TWI_WRITE(SHT3_ADDRESS,
                  kSingleShotModeCommand[kHumitureDefaultRep][SHT3_CLK_STRETCH_DISABLED],
                  2,0);
  static const app_twi_transaction_t kCommandTransaction = {
    .callback = NULL,
    .p_user_data = NULL,
    .p_transfers = &command_transfer,
    .number_of_transfers = sizeof(command_transfer) / sizeof(app_twi_transfer_t)
  };
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kCommandTransaction));
  rtc_run_delay(kHumitureMeasureTime[kHumitureDefaultRep],
                kSHT3Channel, read_data, NULL);
  /* nrf_delay_ms(kHumitureMeasureTime[rep]); */
  /* APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kReadDataTransaction)); */
}

static void read_data(void* p_arguments) {
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kReadDataTransaction));
}

static void read_data_callback(ret_code_t result, void* p_user_data) {
	//NRF_LOG_INFO("double 1\n");
  static uint8_t try_times = 0;
  if (result != NRF_SUCCESS) {
    if (++try_times < kTryTimes) {
      NRF_LOG_ERROR("sht3 read data error: %d try times: %d\n", result, try_times);
			//NRF_LOG_INFO("double 2\n");
      APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kReadDataTransaction));
			//NRF_LOG_INFO("double 3\n");
    } else {
      NRF_LOG_ERROR("sht3 read data error: %d\n", result);
      try_times = 0;
    }
    return;
  }
  if (crc8_compute_sht3(m_buffer) == m_buffer[2] &&
      crc8_compute_sht3(m_buffer + 3) == m_buffer[5]) {
    if (m_data_handler) {
      sht3_data_t data = {
        .temperature = (uint16_t)m_buffer[0] << 8 | m_buffer[1],
        .humidity = (uint16_t)m_buffer[3] << 8 | m_buffer[4]
      };
      m_data_handler(data);
    }
    try_times = 0;
  } else if (++try_times < kTryTimes) {
    NRF_LOG_ERROR("crc check error. try times: %d data:", try_times);
    NRF_LOG_HEXDUMP_ERROR(m_buffer, 6);
    NRF_LOG_ERROR("\n");
    APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kReadDataTransaction));
  } else {
    NRF_LOG_ERROR("reach max try times!\n");
    try_times = 0;
  }
}

static volatile sht3_data_t m_newest_data;
static volatile bool m_is_data_updated = false;
void sht3_update_data(void) {
  sht3_read_data(update_data_callback);
}

static void update_data_callback(sht3_data_t data) {
  /* NRF_LOG_DEBUG("update sht3 data\n"); */
  m_newest_data = data;
  m_is_data_updated = true;
}

sht3_data_t sht3_get_data(void) {
  if (!m_is_data_updated) {
    NRF_LOG_WARNING("Data had not updated!\n");
  }
  /* NRF_LOG_DEBUG("get sht3 data\n"); */
  m_is_data_updated = false;
  return m_newest_data;
}
