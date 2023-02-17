#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "app_twi.h"
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_delay.h"
#define NRF_LOG_MODULE_NAME "main"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_drv_twi.h"
#include "nrf_drv_gpiote.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf51_bitfields.h"
/* #include "ble.h" */
#include "ble_hci.h"
//#include "ble_advdata.h"
#include "ble_advertising.h"
#include "ble_srv_common.h"
#include "ble_nus.h"
//#include "ble_conn_params.h"
#include "softdevice_handler.h"
/* #include "device_manager.h" */
/* #include "pstorage.h" */

#include "led.h"
#include "kx022.h"
#include "queue.h"
#include "battery.h"
#include "rtc.h"
/* #include "button.h" */

#ifndef RADIOLAND
#include "sht3.h"
#include "flash.h"
#include "record_humiture.h"
#include "config.h"
#endif /* RADIOLAND */

/* Include or not the service_changed characteristic.
 * if not enabled, the server's database cannot be changed for the lifetime of the device. */
#define IS_SRVC_CHANGED_CHARACT_PRESENT 1

#if (NRF_SD_BLE_API_VERSION == 3)
/* MTU size used in the softdevice enabling and to reply to a
   BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST event. */
#define NRF_BLE_MAX_MTU_SIZE GATT_MTU_SIZE_DEFAULT
#endif

#define APP_FEATURE_NOT_SUPPORTED BLE_GATT_STATUS_ATTERR_APP_BEGIN + 2

/* Number of central links used by the application.
   When changing this number remember to adjust the RAM settings */
#define CENTRAL_LINK_COUNT 0
/* Number of peripheral links used by the application.
   When changing this number remember to adjust the RAM settings*/
#define PERIPHERAL_LINK_COUNT 1

/* Name of device. Will be included in the advertising data. */
#define DEVICE_NAME                      "Yoga"
/* Manufacturer. Will be passed to Device Information Service. */
#define MANUFACTURER_NAME                "ACOOD"
/* The advertising interval (in units of 0.625 ms. This value corresponds to 25 ms). */
#define APP_ADV_INTERVAL                 40
/* The advertising timeout in units of seconds. */
#define APP_ADV_TIMEOUT_IN_SECONDS       6

/* Minimum acceptable connection interval (0.1 seconds). */
#define MIN_CONN_INTERVAL                MSEC_TO_UNITS(100, UNIT_1_25_MS)
/* Maximum acceptable connection interval (0.2 second). */
#define MAX_CONN_INTERVAL                MSEC_TO_UNITS(200, UNIT_1_25_MS)
/* Slave latency. */
#define SLAVE_LATENCY                    0
/* Connection supervisory timeout (4 seconds). */
#define CONN_SUP_TIMEOUT                 MSEC_TO_UNITS(4000, UNIT_10_MS)

/* Time from initiating event (connect or start of notification) to first time
 * sd_ble_gap_conn_param_update is called (5 seconds). */
#define FIRST_CONN_PARAMS_UPDATE_DELAY   APP_TIMER_TICKS(5000, APP_TIMER_PRESCALER)
/* Time between each call to sd_ble_gap_conn_param_update after the first call (30 seconds). */
#define NEXT_CONN_PARAMS_UPDATE_DELAY    APP_TIMER_TICKS(30000, APP_TIMER_PRESCALER)
/* Number of attempts before giving up the connection parameter negotiation. */
#define MAX_CONN_PARAMS_UPDATE_COUNT     3

/* Perform bonding. */
#define SEC_PARAM_BOND                   1
/* Man In The Middle protection not required. */
#define SEC_PARAM_MITM                   0
/* No I/O capabilities. */
#define SEC_PARAM_IO_CAPABILITIES        BLE_GAP_IO_CAPS_NONE
/* Out Of Band data not available. */
#define SEC_PARAM_OOB                    0
/* Minimum encryption key size. */
#define SEC_PARAM_MIN_KEY_SIZE           7
/* Maximum encryption key size. */
#define SEC_PARAM_MAX_KEY_SIZE           16

/* Value used as error code on stack dump, can be used to identify stack location on stack unwind. */
#define DEAD_BEEF                        0xDEADBEEF

void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name);
/* void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name); */

ret_code_t ble_send_data(const uint8_t* p_data, uint16_t length);

static void twi_init(void);

__STATIC_INLINE void kx022_data_pack(kx022_data_t data, uint8_t* package);
static void kx022_data_handler(kx022_data_t data);

static void gap_params_init(void);
static void nus_data_handler(ble_nus_t * p_nus, uint8_t * p_data, uint16_t length);
static void services_init(void);

/* static void sleep_mode_enter(void); */

static void on_adv_evt(ble_adv_evt_t ble_adv_evt);
static void on_ble_evt(ble_evt_t * p_ble_evt);
static void wake_up_callback(void);
static void ble_evt_dispatch(ble_evt_t * p_ble_evt);
/* static void sys_evt_dispatch(uint32_t sys_evt); */
static void ble_stack_init(void);

/* static uint32_t device_manager_evt_handler(dm_handle_t const * p_handle, */
/*                                            dm_event_t const  * p_event, */
/*                                            ret_code_t event_result); */
/* static void device_manager_init(bool erase_bonds); */
static void advertising_init(void);
static void power_manage(void);

/* /\* Application identifier allocated by device manager *\/ */
/* static dm_application_instance_t m_app_handle; */
/* Universally unique service identifiers. */
static ble_uuid_t m_adv_uuids[] = {{BLE_UUID_DEVICE_INFORMATION_SERVICE, BLE_UUID_TYPE_BLE}};
static ble_nus_t m_nus;
static volatile bool m_is_connected;
static app_twi_t m_app_twi = APP_TWI_INSTANCE(0);
static queue_t m_data_buffer = QUEUE_INIT(50 * 3, sizeof(kx022_data_t));

/**@brief Function for application main entry.
 */
int main(void) {
  //NRF_POWER->RESET = 1;
  APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
  NRF_LOG_RAW_INFO("\n\n");

  uint32_t reset_reason = NRF_POWER->RESETREAS;
  NRF_POWER->RESETREAS = (uint32_t)~0UL;  // 清空重启原因的标志位
  NRF_LOG_INFO("reset reason %x\n", reset_reason);

  // Initialize.
  led_init();
  /* led_blink(1, 200); */

  ble_stack_init();
  gap_params_init();
  advertising_init();
  services_init();
  twi_init();
  rtc_init();
#ifndef RADIOLAND
  flash_init();
//  flash_test();
  sht3_init(&m_app_twi);  // 初始化依赖：TWI
  sht3_test();
  config_init();

  /* const uint32_t period_ms = 200; */
  /* const uint32_t times = 20; */
  /* record_humiture_start((uint64_t)2000, period_ms); */
  /* rtc_run_delay(2000 + period_ms * times, kKX022Channel, stop_record, NULL); */
#endif /* RADIOLAND */
  APP_ERROR_CHECK(nrf_drv_gpiote_init());
  kx022_init(&m_app_twi);  // 初始化依赖：TWI,GPIOTE
  /* kx022_set_output_data_rate(KX022_ODR_1_563HZ); */
  /* button_init();  // 初始化依赖：GPIOTE */
  battery_init();
  nrf_delay_ms(1);
  /* uint32_t address = 0x1ffd000; */
  /* config_set_value(kConfigHumitureAddr, (void*)&address, sizeof(address)); */
  /* uint32_t test; */
  /* config_get_value(kConfigTest, (void*)&test, sizeof(test)); */
  /* NRF_LOG_DEBUG("config test: %x\n", test); */
  /* test = 0x1234; */
  /* config_set_value(kConfigTest, (void*)&test, sizeof(test)); */
  NRF_LOG_INFO("Initialization completed!\n");
  NRF_LOG_FLUSH();

  /* battery_start_monitor(); */

  // Start execution.
  APP_ERROR_CHECK(ble_advertising_start(BLE_ADV_MODE_FAST));

  // Enter main loop.
  while (1) {
    power_manage();
  }
}

/**@brief Function for assert macro callback.
 *
 * @details This function will be called in case of an assert in the SoftDevice.
 *
 * @warning This handler is an example only and does not fit a final product. You need to analyse
 *          how your product is supposed to react in case of Assert.
 * @warning On assert from the SoftDevice, the system can only recover on reset.
 *
 * @param[in] line_num    Line number of the failing ASSERT call.
 * @param[in] p_file_name File name of the failing ASSERT call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name) {
  app_error_handler(DEAD_BEEF, line_num, p_file_name);
}

/* void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name) { */
/* #if (RTT_DEBUG == 1) */
/*   NRF_LOG_ERROR("App error, code 0x%x line %d file %s\n", error_code, line_num, p_file_name); */
/* #else */
/*   NVIC_SystemReset(); */
/* #endif */
/* } */

ret_code_t ble_send_data(const uint8_t* p_data, uint16_t length) {
  return ble_nus_string_send(&m_nus, (uint8_t*)p_data, length);
}

static void twi_init(void) {
  const nrf_drv_twi_config_t twi_config = {
    .scl                = 22,
    .sda                = 21,
    .frequency          = NRF_TWI_FREQ_400K,
    .interrupt_priority = APP_IRQ_PRIORITY_LOW
  };
  ret_code_t err_code;
  APP_TWI_INIT(&m_app_twi, &twi_config, 10, err_code);
  APP_ERROR_CHECK(err_code);
}

static const uint32_t kDataPackageSize = 9;
__STATIC_INLINE void kx022_data_pack(kx022_data_t data, uint8_t* package) {
  // 包格式：
  // 包类型（uint8_t）、包编号（uint16_t）、x轴数据（int16_t）、y轴数据（int16_t）、z轴数据（int16_t）
  // 包类型格式： bit0置1表示数据
  package[0] = 0x1;
  package[1] = data.number & 0xff;
  package[2] = data.number >> 8 & 0xff;
  package[3] = data.x & 0xff;
  package[4] = data.x >> 8 & 0xff;
  package[5] = data.y & 0xff;
  package[6] = data.y >> 8 & 0xff;
  package[7] = data.z & 0xff;
  package[8] = data.z >> 8 & 0xff;
}

static void kx022_data_handler(kx022_data_t data) {
  if (!m_is_connected) return;
  ret_code_t err_code;
  uint8_t package[kDataPackageSize];
  if (queue_is_empty(m_data_buffer)) {
    kx022_data_pack(data, package);
    err_code = ble_nus_string_send(&m_nus, package, sizeof(package));
    /* APP_ERROR_CHECK(err_code); */
    if (err_code != NRF_SUCCESS) {  // 发送失败放入缓冲区
      queue_push(&m_data_buffer, (void*)&data);
    }
  } else {
    /* DEBUG_PRINT("clear buffer!\n"); */
    kx022_data_t* temp;
    queue_push(&m_data_buffer, (void*)&data);
    while (!queue_is_empty(m_data_buffer)) {
      temp = (kx022_data_t*)queue_front(m_data_buffer);
      kx022_data_pack(*temp, package);
      err_code = ble_nus_string_send(&m_nus, package, sizeof(package));
      /* APP_ERROR_CHECK(err_code); */
      if (err_code == NRF_SUCCESS) {
        queue_pop(&m_data_buffer);
      } else {
        break;
      }
    }
  }
}

/**@brief Function for the GAP initialization.
 *
 * @details This function will set up all the necessary GAP (Generic Access Profile) parameters of
 *          the device. It also sets the permissions and appearance.
 */
static void gap_params_init(void) {
  ble_gap_conn_params_t   gap_conn_params;
  ble_gap_conn_sec_mode_t sec_mode;

  BLE_GAP_CONN_SEC_MODE_SET_OPEN(&sec_mode);
  APP_ERROR_CHECK(sd_ble_gap_device_name_set(&sec_mode,
                                             (const uint8_t *) DEVICE_NAME,
                                             strlen(DEVICE_NAME)));

  memset(&gap_conn_params, 0, sizeof(gap_conn_params));
  gap_conn_params.min_conn_interval = MIN_CONN_INTERVAL;
  gap_conn_params.max_conn_interval = MAX_CONN_INTERVAL;
  gap_conn_params.slave_latency     = SLAVE_LATENCY;
  gap_conn_params.conn_sup_timeout  = CONN_SUP_TIMEOUT;

  APP_ERROR_CHECK(sd_ble_gap_ppcp_set(&gap_conn_params));
}

/**@brief Function for handling the data from the Nordic UART Service.
 *
 * @details This function will process the data received from the Nordic UART BLE Service and send
 *          it to the UART module.
 *
 * @param[in] p_nus    Nordic UART Service structure.
 * @param[in] p_data   Data to be send to UART module.
 * @param[in] length   Length of the data.
 */
/**@snippet [Handling the data received over BLE] */
static void nus_data_handler(ble_nus_t* p_nus, uint8_t* p_data, uint16_t length) {
  if (length == 9 && p_data[0] == 0) {
    if (!rtc_reset_time()) return;
    // 收到同步时间
    uint64_t time;
    memcpy(&time, p_data + 1, sizeof(uint64_t));
    rtc_update_time(time);
		NRF_LOG_INFO("Time Update!");
		rtc_print_time(0);
    //record_humiture_start_upload_humiture();

  } else if (length == 9 && p_data[0] == 1) {
    // 收到加速度计启动时间
    uint64_t start_time;
    memcpy(&start_time, p_data + 1, sizeof(uint64_t));
		 NRF_LOG_INFO("kx022 start!");
    rtc_run_at(start_time, kKX022Channel, kx022_start, kx022_data_handler);
		//kx022_start(kx022_data_handler);
		rtc_print_time(start_time);
    rtc_print_time(0);
  } else if (length == 1 && p_data[0] == 0xff) {
		 NRF_LOG_INFO("kx022 stop!");
    // 停止加速度记录
    kx022_stop();
    queue_free(&m_data_buffer);
    /* led_blink(0, 500); */

    // 与温湿度记录相关的指令
  }/* else if (length == 13 && p_data[0] == 2) {
    uint64_t start_time;
    uint32_t period_ms;
    memcpy(&start_time, p_data + 1, sizeof(uint64_t));
    memcpy(&period_ms, p_data + 9, sizeof(uint32_t));
    record_humiture_start(start_time, period_ms);
  } else if (length == 1 && p_data[0] == 0xee) {
    record_humiture_stop();

    // 状态请求
  } */else if (length == 1 && p_data[0] == 3) {
    uint8_t data[8];
    data[0] = 2;  // 表示状态数据
    data[1] = record_humiture_is_recording();
    int16_t value = battery_get_raw_data();
    data[2] = value & 0xff;
    data[3] = value >> 8 & 0xff;
    uint32_t data_number = record_humiture_data_number();
    memcpy(data + 4, &data_number, sizeof(data_number));
    APP_ERROR_CHECK(ble_nus_string_send(&m_nus, data, sizeof(data)));
    NRF_LOG_DEBUG("Get request of status. rtc task: %x\n", rtc_active_tasks());
  }
}
/**@snippet [Handling the data received over BLE] */

/**@brief Function for initializing services that will be used by the application.
 */
static void services_init(void) {
  ble_nus_init_t nus_init;
  memset(&nus_init, 0, sizeof(nus_init));
  nus_init.data_handler = nus_data_handler;
  APP_ERROR_CHECK(ble_nus_init(&m_nus, &nus_init));
}

/**@brief Function for handling advertising events.
 *
 * @details This function will be called for advertising events which are passed to the application.
 *
 * @param[in] ble_adv_evt  Advertising event.
 */
static void on_adv_evt(ble_adv_evt_t ble_adv_evt) {
  bool off_mode;
  switch (ble_adv_evt) {
  case BLE_ADV_EVT_FAST:
    break;

  case BLE_ADV_EVT_IDLE:
    NRF_LOG_INFO("Stop advertising. rtc_active_tasks? %x\n",
                 rtc_active_tasks());
    NRF_LOG_FLUSH();
    nrf_delay_ms(1);
    off_mode = !rtc_active_tasks();
		
    /* if (off_mode) button_wake_up(true); */
    if (off_mode) config_save();
    kx022_set_wake_up(true, off_mode, wake_up_callback);
    break;

  default:
    break;
  }
}

static void wake_up_callback(void) {
  kx022_set_wake_up(false, false, NULL);
  NRF_LOG_INFO("Start advertising.\n");
  APP_ERROR_CHECK(ble_advertising_start(BLE_ADV_MODE_FAST));
}

/**@brief Function for the application's SoftDevice event handler.
 *
 * @param[in] p_ble_evt SoftDevice event.
 */
static void on_ble_evt(ble_evt_t * p_ble_evt) {
  switch (p_ble_evt->header.evt_id) {
  case BLE_GAP_EVT_CONNECTED:
    /* m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle; */
    m_is_connected = true;
    NRF_LOG_INFO("Connected\n");
    /* led_blink(0, 500); */
    break;

  case BLE_GAP_EVT_DISCONNECTED:
    kx022_stop();
    queue_free(&m_data_buffer);
    record_humiture_stop_upload_humiture();
    /* led_blink(0, 3000); */
    /* m_conn_handle = BLE_CONN_HANDLE_INVALID; */
    m_is_connected = false;
    NRF_LOG_INFO("Disconnected\n");
    break;

  case BLE_GAP_EVT_SEC_PARAMS_REQUEST:
    // Pairing not supported
    APP_ERROR_CHECK(sd_ble_gap_sec_params_reply(m_nus.conn_handle,
                                                BLE_GAP_SEC_STATUS_PAIRING_NOT_SUPP,
                                                NULL,
                                                NULL));
    break; // BLE_GAP_EVT_SEC_PARAMS_REQUEST

  case BLE_GATTS_EVT_SYS_ATTR_MISSING:
    // No system attributes have been stored.
    APP_ERROR_CHECK(sd_ble_gatts_sys_attr_set(m_nus.conn_handle, NULL, 0, 0));
    break; // BLE_GATTS_EVT_SYS_ATTR_MISSING

  case BLE_GATTC_EVT_TIMEOUT:
    // Disconnect on GATT Client timeout event.
    APP_ERROR_CHECK(sd_ble_gap_disconnect(p_ble_evt->evt.gattc_evt.conn_handle,
                                          BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION));
    break; // BLE_GATTC_EVT_TIMEOUT

  case BLE_GATTS_EVT_TIMEOUT:
    // Disconnect on GATT Server timeout event.
    APP_ERROR_CHECK(sd_ble_gap_disconnect(p_ble_evt->evt.gatts_evt.conn_handle,
                                          BLE_HCI_REMOTE_USER_TERMINATED_CONNECTION));
    break; // BLE_GATTS_EVT_TIMEOUT

  case BLE_EVT_USER_MEM_REQUEST:
    APP_ERROR_CHECK(sd_ble_user_mem_reply(p_ble_evt->evt.gattc_evt.conn_handle, NULL));
    break; // BLE_EVT_USER_MEM_REQUEST

  case BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST: {
    ble_gatts_evt_rw_authorize_request_t  req;
    ble_gatts_rw_authorize_reply_params_t auth_reply;

    req = p_ble_evt->evt.gatts_evt.params.authorize_request;

    if (req.type != BLE_GATTS_AUTHORIZE_TYPE_INVALID) {
      if ((req.request.write.op == BLE_GATTS_OP_PREP_WRITE_REQ)     ||
          (req.request.write.op == BLE_GATTS_OP_EXEC_WRITE_REQ_NOW) ||
          (req.request.write.op == BLE_GATTS_OP_EXEC_WRITE_REQ_CANCEL)) {
        if (req.type == BLE_GATTS_AUTHORIZE_TYPE_WRITE) {
          auth_reply.type = BLE_GATTS_AUTHORIZE_TYPE_WRITE;
        } else {
          auth_reply.type = BLE_GATTS_AUTHORIZE_TYPE_READ;
        }
        auth_reply.params.write.gatt_status = APP_FEATURE_NOT_SUPPORTED;
        APP_ERROR_CHECK(sd_ble_gatts_rw_authorize_reply(p_ble_evt->evt.gatts_evt.conn_handle,
                                                        &auth_reply));
      }
    }
  }
    break; // BLE_GATTS_EVT_RW_AUTHORIZE_REQUEST

#if (NRF_SD_BLE_API_VERSION == 3)
  case BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST:
    APP_ERROR_CHECK(sd_ble_gatts_exchange_mtu_reply(p_ble_evt->evt.gatts_evt.conn_handle,
                                                    NRF_BLE_MAX_MTU_SIZE));
    break; // BLE_GATTS_EVT_EXCHANGE_MTU_REQUEST
#endif

  default:
    // No implementation needed.
    break;
  }
}

/**@brief Function for dispatching a SoftDevice event to all modules with a SoftDevice
 *        event handler.
 *
 * @details This function is called from the SoftDevice event interrupt handler after a
 *          SoftDevice event has been received.
 *
 * @param[in] p_ble_evt  SoftDevice event.
 */
static void ble_evt_dispatch(ble_evt_t * p_ble_evt) {
  /* dm_ble_evt_handler(p_ble_evt); */
  on_ble_evt(p_ble_evt);
  ble_advertising_on_ble_evt(p_ble_evt);
  ble_nus_on_ble_evt(&m_nus, p_ble_evt);
}

/* /\**@brief Function for dispatching a system event to interested modules. */
/*  * */
/*  * @details This function is called from the System event interrupt handler after a system */
/*  *          event has been received. */
/*  * */
/*  * @param[in] sys_evt  System stack event. */
/*  *\/ */
/* static void sys_evt_dispatch(uint32_t sys_evt) { */
/*   pstorage_sys_event_handler(sys_evt); */
/*   ble_advertising_on_sys_evt(sys_evt); */
/* } */

/**@brief Function for the SoftDevice initialization.
 *
 * @details This function initializes the SoftDevice and the BLE event interrupt.
 */
static void ble_stack_init(void) {
  nrf_clock_lf_cfg_t clock_lf_cfg = {
    .source        = NRF_CLOCK_LF_SRC_XTAL,
    .rc_ctiv       = 0,
    .rc_temp_ctiv  = 0,
    .xtal_accuracy = NRF_CLOCK_LF_XTAL_ACCURACY_20_PPM
  };
  // Initialize SoftDevice.
  SOFTDEVICE_HANDLER_INIT(&clock_lf_cfg, NULL);

  ble_enable_params_t ble_enable_params;
  APP_ERROR_CHECK(softdevice_enable_get_default_config(CENTRAL_LINK_COUNT,
                                                       PERIPHERAL_LINK_COUNT,
                                                       &ble_enable_params));

  //Check the ram settings against the used number of links
  CHECK_RAM_START_ADDR(CENTRAL_LINK_COUNT, PERIPHERAL_LINK_COUNT);

  // Enable BLE stack.
#if (NRF_SD_BLE_API_VERSION == 3)
  ble_enable_params.gatt_enable_params.att_mtu = NRF_BLE_MAX_MTU_SIZE;
#endif
  APP_ERROR_CHECK(softdevice_enable(&ble_enable_params));

  // Subscribe for BLE events.
  APP_ERROR_CHECK(softdevice_ble_evt_handler_set(ble_evt_dispatch));
}


/* /\**@brief Function for handling the Device Manager events. */
/*  * */
/*  * @param[in] p_evt  Data associated to the device manager event. */
/*  *\/ */
/* static uint32_t device_manager_evt_handler(dm_handle_t const * p_handle, */
/*                                            dm_event_t const  * p_event, */
/*                                            ret_code_t event_result) { */
/*   APP_ERROR_CHECK(event_result); */

/* #ifdef BLE_DFU_APP_SUPPORT */
/*   if (p_event->event_id == DM_EVT_LINK_SECURED) { */
/*     app_context_load(p_handle); */
/*   } */
/* #endif // BLE_DFU_APP_SUPPORT */

/*   return NRF_SUCCESS; */
/* } */

/* /\**@brief Function for the Device Manager initialization. */
/*  * */
/*  * @param[in] erase_bonds  Indicates whether bonding information should be cleared from */
/*  *                         persistent storage during initialization of the Device Manager. */
/*  *\/ */
/* static void device_manager_init(bool erase_bonds) { */
/*   ret_code_t err_code; */
/*   dm_init_param_t        init_param = {.clear_persistent_data = erase_bonds}; */
/*   dm_application_param_t register_param; */

/*   // Initialize persistent storage module. */
/*   err_code = pstorage_init(); */
/*   APP_ERROR_CHECK(err_code); */

/*   err_code = dm_init(&init_param); */
/*   APP_ERROR_CHECK(err_code); */

/*   memset(&register_param.sec_param, 0, sizeof(ble_gap_sec_params_t)); */

/*   register_param.sec_param.bond         = SEC_PARAM_BOND; */
/*   register_param.sec_param.mitm         = SEC_PARAM_MITM; */
/*   register_param.sec_param.io_caps      = SEC_PARAM_IO_CAPABILITIES; */
/*   register_param.sec_param.oob          = SEC_PARAM_OOB; */
/*   register_param.sec_param.min_key_size = SEC_PARAM_MIN_KEY_SIZE; */
/*   register_param.sec_param.max_key_size = SEC_PARAM_MAX_KEY_SIZE; */
/*   register_param.evt_handler            = device_manager_evt_handler; */
/*   register_param.service_type           = DM_PROTOCOL_CNTXT_GATT_SRVR_ID; */

/*   err_code = dm_register(&m_app_handle, &register_param); */
/*   APP_ERROR_CHECK(err_code); */
/* } */

/**@brief Function for initializing the Advertising functionality.
 */
static void advertising_init(void) {
  ble_advdata_t          advdata;
  ble_advdata_t          scanrsp;
  ble_adv_modes_config_t options;

  // Build advertising data struct to pass into @ref ble_advertising_init.
  memset(&advdata, 0, sizeof(advdata));
  advdata.name_type          = BLE_ADVDATA_FULL_NAME;
  advdata.include_appearance = false;
  advdata.flags              = BLE_GAP_ADV_FLAGS_LE_ONLY_LIMITED_DISC_MODE;

  memset(&scanrsp, 0, sizeof(scanrsp));
  scanrsp.uuids_complete.uuid_cnt = sizeof(m_adv_uuids) / sizeof(m_adv_uuids[0]);
  scanrsp.uuids_complete.p_uuids  = m_adv_uuids;

  memset(&options, 0, sizeof(options));
  options.ble_adv_fast_enabled  = true;
  options.ble_adv_fast_interval = APP_ADV_INTERVAL;
  options.ble_adv_fast_timeout  = APP_ADV_TIMEOUT_IN_SECONDS;

  APP_ERROR_CHECK(ble_advertising_init(&advdata, &scanrsp, &options, on_adv_evt, NULL));
}

/**@brief Function for placing the application in low power state while waiting for events.
 */
static void power_manage(void) {
  APP_ERROR_CHECK(sd_app_evt_wait());
}
