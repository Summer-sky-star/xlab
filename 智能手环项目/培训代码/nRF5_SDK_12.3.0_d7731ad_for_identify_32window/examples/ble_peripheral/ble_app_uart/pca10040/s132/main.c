#include <stdint.h>
#include <string.h>
#include <stdio.h>

#include "app_twi.h"

#include "nordic_common.h"
#include "nrf.h"
#include "nrf_delay.h"
#include "nrf_gpio.h"
#define NRF_LOG_MODULE_NAME "main"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_drv_twi.h"
#include "nrf_drv_gpiote.h"
//#include "nrf_drv_uart.h"
#include "nrf_drv_timer.h"
#include "nrf_drv_wdt.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "app_uart.h"
#include "nrf52_bitfields.h"
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

#include "rtc.h"
#include "lsm6dso.h"
#include "led.h"
#include "battery.h"
#include "button.h"
#include "queue.h"
#include "config.h"
#include "sht3.h"
#include "flash.h"
#include "flash_buffer.h"
#include "record.h"
//#include "flash.c"

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
//#define DEVICE_NAME                      "Yoga"。，
#define DEVICE_NAME                      "ZSR02"
/* Manufacturer. Will be passed to Device Information Service. */
#define MANUFACTURER_NAME                "ACOOD"
/* The advertising interval (in units of 0.625 ms. This value corresponds to 25 ms). */
#define APP_ADV_INTERVAL                 160
/* The advertising timeout in units of seconds. */
#define APP_ADV_TIMEOUT_IN_SECONDS       20

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



static void gap_params_init(void);
static void on_ble_evt(ble_evt_t * p_ble_evt);
static void ble_evt_dispatch(ble_evt_t * p_ble_evt);
static void ble_stack_init(void);
static void on_adv_evt(ble_adv_evt_t ble_adv_evt);
static void twi_init(void);
static app_twi_t m_app_twi = APP_TWI_INSTANCE(0);
static void advertising_init(void);
static void services_init(void);
static void nus_data_handler(ble_nus_t * p_nus, uint8_t * p_data, uint16_t length);
static void lsm6dso_send_data_handler(lsm6dso_data_t data);
static void power_manage(void);
void wdt_event_handler(void);
static void wdt_init(void);

uint16_t n;//led测试计数
nrf_drv_wdt_channel_id m_channel_id;

static ble_nus_t m_nus;
static void wake_up_callback(void);
static ble_uuid_t m_adv_uuids[] = {{BLE_UUID_DEVICE_INFORMATION_SERVICE, BLE_UUID_TYPE_BLE}};
static uint16_t  m_conn_handle = BLE_CONN_HANDLE_INVALID;    /**< Handle of the current connection. */
uint8_t m_ble_address[2];					//地址获取
static volatile bool m_is_connected;
static queue_t m_data_buffer = QUEUE_INIT(50 * 3, 8);//改成8
int16_t m_value = 0;
flash_buffer_error_t m_error = FLASH_BUFFER_ERROR_NONE;
uint8_t m_final_address[4];				//Flash存储地址
static volatile bool m_is_advertising = false;		//广播标志





bool m_erase_chip = false;

int main(void) {
  
  // Initialize.
	APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
  NRF_LOG_INFO("log_init completed!\n");
	//flash_init();
	//flash_test();
	//	uint32_t reset_reason = NRF_POWER->RESETREAS;
//  NRF_POWER->RESETREAS = (uint32_t)~0UL;  // 清空重启原因的标志位
//  NRF_LOG_INFO("reset reason %x\n", reset_reason);
	NRF_UICR->NFCPINS = 0;
	led_init();
	ble_stack_init();//蓝牙协议栈
	gap_params_init(); //蓝牙协议通用访问规范层
  advertising_init();                    
	services_init();
  twi_init();                                  /*I2C总线接口*/
	rtc_init();   //52832时钟
	APP_ERROR_CHECK(nrf_drv_gpiote_init()); // 初始化依赖：GPIOTE
//  lsm6dso_check_id();	
	button_init();  // 初始化依赖：GPIOTE 
	wdt_init();
	
	flash_init();
  //flash_test();
	config_init();
	
	sht3_init(&m_app_twi);//温湿度初始化
  sht3_test();
	lsm6dso_init(&m_app_twi);//六轴初始化
//NRF_LOG_INFO("lsm6dso_init completed!\n");
  nrf_delay_ms(50);
  battery_init();
  m_value = battery_get_raw_data();												//获取电压，判断电压
		
	ble_gap_addr_t* p_gap_address = (ble_gap_addr_t*)malloc(sizeof(ble_gap_addr_t));
	APP_ERROR_CHECK(sd_ble_gap_addr_get(p_gap_address));//address改为addr
	memcpy(m_ble_address,p_gap_address->addr,2);
	free(p_gap_address);
	led_blink(0,1000);
	NRF_LOG_INFO("Initialization completed!\n");
  NRF_LOG_FLUSH();
	APP_ERROR_CHECK(ble_advertising_start(BLE_ADV_MODE_FAST));//进行广播
	NRF_LOG_INFO("advertising start!\n");

	while (1) 
	{
	//	 if(n==1)
	//	 {
	//	 led_blink(0,200);
	//	 n=0;
	//	 }
	//	 else 
	//	 {
	//	 led_blink(1,200);
	//	 n++;}
	//	 n++;
	//	 if(n<10)
	//	 {
		//21.7.4擦除FLASH芯片
		if(m_erase_chip)
		{
			//2021.9.21 开始擦除
			uint8_t erase_start_array[1];
			erase_start_array[0] = 0x09;
			APP_ERROR_CHECK(ble_nus_string_send(&m_nus, erase_start_array, sizeof(erase_start_array)));
			
			//record_stop_upload_real_time_data();
			NRF_LOG_INFO("Erase the chip!\n");
			flash_enable();
			flash_erase(0x0000000,FLASH_ERASE_SECTOR);
			//config_init();
			//config_save();
			while(!flash_is_idle())				//等待擦除和保存工作完成
			{
				nrf_drv_wdt_channel_feed(m_channel_id);			
			}
			m_erase_chip = false;				//擦除结束
			
			uint8_t erase_array[1];
			erase_array[0] = 0x06;
			APP_ERROR_CHECK(ble_nus_string_send(&m_nus, erase_array, sizeof(erase_array)));
			config_init();//21.10.2擦除结束之后重新配置
			NRF_LOG_INFO("FLASH ERASE SUCCESS\n");
			record_start_upload_real_time_data();
		}
		
			nrf_drv_wdt_channel_feed(m_channel_id);
			power_manage();
	//	  nrf_delay_ms(1000);
	//	 }
	//	 else
	//	 {nrf_delay_ms(1000);}
	}
  
}

static void power_manage(void) {
  APP_ERROR_CHECK(sd_app_evt_wait());
}

static void ble_stack_init(void) {
  nrf_clock_lf_cfg_t clock_lf_cfg = {
    .source        = NRF_CLOCK_LF_SRC_XTAL, //原XTAL,出问题改为RC
    .rc_ctiv       = 0,				//原0,出问题改为16
    .rc_temp_ctiv  = 0,				//原0，出问题改为2
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

static void ble_evt_dispatch(ble_evt_t * p_ble_evt) {
  /* dm_ble_evt_handler(p_ble_evt); */
  on_ble_evt(p_ble_evt);//连接事件
  ble_advertising_on_ble_evt(p_ble_evt);//协议栈广播派发事件
  ble_nus_on_ble_evt(&m_nus, p_ble_evt);//串口服务的ble事件中断
}


//蓝牙连接事件处理
static void on_ble_evt(ble_evt_t * p_ble_evt) {
  switch (p_ble_evt->header.evt_id) {
  case BLE_GAP_EVT_CONNECTED:
    m_conn_handle = p_ble_evt->evt.gap_evt.conn_handle; 
    NRF_LOG_INFO("Connected\n");
	  record_init();
		m_is_connected = true;
		m_is_advertising = false;
	  m_is_connected = true;
    break;

  case BLE_GAP_EVT_DISCONNECTED:
		  if (!record_is_recording()) {
      lsm6dso_stop();
      //record_stop_upload_real_time_data(); 21.10.2
				//21.10.2为了方便如果flash出错了就不保存配置了
			if(is_op_eq_four()){
				config_save();
			}
    }
    queue_free(&m_data_buffer);
    /* record_humiture_stop_upload_humiture(); */
		m_is_connected = false;
		m_is_advertising = true;
    m_conn_handle = BLE_CONN_HANDLE_INVALID; 
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

//广播事件处理
static void on_adv_evt(ble_adv_evt_t ble_adv_evt) {
  /* bool off_mode; */
  switch (ble_adv_evt) {
  case BLE_ADV_EVT_FAST:
		led_blink(1, 500);
	  m_is_connected = false;
    NRF_LOG_INFO("ble_adv_evt_fast\n");
    break;

  case BLE_ADV_EVT_IDLE:
    NRF_LOG_INFO("Stop advertising. rtc_active_tasks? %x\n", rtc_active_tasks());
    NRF_LOG_FLUSH();
    nrf_delay_ms(1);
	  m_is_connected = false;
//		m_is_advertising = false;
//		m_is_connected = false;
//		led_blink(0,200);							//广播超时标
//		
//		led_set(1,0);									//熄绿灯
//		led_set(0,0);
//		nrf_delay_ms(1);
//    if (!record_is_recording()) {
//      config_save();
//      //kx022_set_wake_up(true, !rtc_active_tasks(), wake_up_callback);
//      /* off_mode = !rtc_active_tasks(); */
//      /* if (off_mode) config_save(); */
//      button_set_wake_up(true, true, NULL);
//      /* rtc_run_delay(1000, kSHT3Channel, delayed_system_off, NULL); */
//    }
//    else {
//				button_set_wake_up(true, false, wake_up_callback);
//		}
    //21.7.6button_set_wake_up(true, true, NULL);
		nrf_delay_ms(1);
		if (!record_is_recording()) {
			config_save();
      //kx022_set_wake_up(true, !rtc_active_tasks(), wake_up_callback);
      /* off_mode = !rtc_active_tasks(); */
      /* if (off_mode) config_save(); */
      button_set_wake_up(true, true, NULL);
      /* rtc_run_delay(1000, kSHT3Channel, delayed_system_off, NULL); */
    }
    else {
				button_set_wake_up(true, false, wake_up_callback);
		}
    break;

  default:
    break;
  }
}

//21.7.6
static void wake_up_callback(void) {
  if (!m_is_connected && !m_is_advertising && !m_erase_chip ) {
    /* button_set_wake_up(false, false, NULL); */
    /* kx022_set_wake_up(false, false, NULL); */
    NRF_LOG_INFO("Start advertising.\n");
    APP_ERROR_CHECK(ble_advertising_start(BLE_ADV_MODE_FAST));
  }
}

static void services_init(void) {
  ble_nus_init_t nus_init;
  memset(&nus_init, 0, sizeof(nus_init));
  nus_init.data_handler = nus_data_handler;
  APP_ERROR_CHECK(ble_nus_init(&m_nus, &nus_init));
}


//蓝牙事件处理
static void nus_data_handler(ble_nus_t* p_nus, uint8_t* p_data, uint16_t length) {
  /* NRF_LOG_DEBUG("nus_data_handler:\n"); */
  /* NRF_LOG_HEXDUMP_DEBUG(p_data, length); */
  if (length == 9 && p_data[0] == 0) {
   NRF_LOG_INFO("length=9,pdata=0\n");
//	 NRF_LOG_INFO("datalength=%d",sizeof(lsm6dso_data_t));
		if (!rtc_reset_time()) {
      uint64_t time;
      memcpy(&time, p_data + 1, sizeof(uint64_t));
      rtc_print_time(time);
      return;
    }
    // 收到同步时间
    uint64_t time;
		
		uint8_t p_data_tran[9];
		p_data_tran[0]=0;
		p_data_tran[1]=p_data[8];
		p_data_tran[2]=p_data[7];
		p_data_tran[3]=p_data[6];
		p_data_tran[4]=p_data[4];
		p_data_tran[5]=p_data[3];
		p_data_tran[6]=p_data[2];
		p_data_tran[7]=p_data[5];//低四位的0
		p_data_tran[8]=p_data[1];
		
    memcpy(&time, p_data_tran + 1, sizeof(uint64_t));
		//NRF_LOG_INFO("main(530)time=%ld \n",time);
		
    rtc_update_time(time);
		record_start_upload_real_time_data();
		
  } else if (length == 9 && p_data[0] == 1) {//主界面开始记录
   NRF_LOG_INFO("lsm6dso start");
    uint64_t start_time;
    memcpy(&start_time, p_data + 1, sizeof(uint64_t));
    rtc_run_at(start_time, kKX022Channel, lsm6dso_start, lsm6dso_send_data_handler);//加速度实时传输，不存储
    rtc_print_time(0);
  } else if (length == 1 && p_data[0] == 0xff) {//主界面停止记录
		lsm6dso_stop();
    NRF_LOG_INFO("lsm6dso stop");

  } 
	
	else if (length == 13 && p_data[0] == 2) {//里界面开始记录
   NRF_LOG_INFO("length=13,pdata=2\n");
	 //21.7.6 在record_start里面已经有 record_stop_upload_real_time_data();//停止实时数据传输任务
   uint64_t start_time;
			
	 uint8_t p_data_transtart1[9];
	 p_data_transtart1[0]=0;
	 p_data_transtart1[1]=p_data[8];
	 p_data_transtart1[2]=p_data[7];
	 p_data_transtart1[3]=p_data[6];
	 p_data_transtart1[4]=p_data[4];
	 p_data_transtart1[5]=p_data[3];
	 p_data_transtart1[6]=p_data[2];
	 p_data_transtart1[7]=p_data[1];
	 p_data_transtart1[8]=p_data[5];
	
   /* uint32_t period_ms; */
   memcpy(&start_time, p_data_transtart1 + 1, sizeof(uint64_t));
   /* memcpy(&period_ms, p_data + 9, sizeof(uint32_t)); */
	 if(m_error != FLASH_ERROR_FULL){
		 rtc_print_time(start_time);
		 start_time = start_time + 300; //21.7.2加延迟，小程序发得慢
		 record_start(start_time, LSM6DSO_XL_ODR_52Hz, 1);
	 }
  } 
	
	else if (length == 1 && p_data[0] == 0xee) {//里界面停止记录
   //NRF_LOG_INFO("length=1,pdata=0xee\n");
	 record_stop();
    // 状态请求
  } 
	
	
	else if (length == 1 && p_data[0] == 3) {
		NRF_LOG_INFO("length=1,pdata=0x03\n");
    uint8_t data[8];
    data[0] = 2;  // 表示状态数据
    data[1] = record_is_recording();
		data[2] = m_value &0xff;
		data[3] = m_value >> 8 &0xff;
    uint32_t data_bytes_count = record_data_bytes_count();
    memcpy(data + 4, &data_bytes_count, sizeof(data_bytes_count));
    APP_ERROR_CHECK(ble_nus_string_send(&m_nus, data, sizeof(data)));//电量值实时传输
    NRF_LOG_DEBUG("Get request of status. rtc task: %x\n", rtc_active_tasks());
  }
	
	//21.7.5 小程序擦除功能
	else if(length == 1 && p_data[0] == 6){
		NRF_LOG_INFO("length=1,pdata=0x06\n");
		if(flash_is_idle()) 
		{
			if(m_is_advertising)
			{
				m_is_advertising = false;
				uint32_t err_code = sd_ble_gap_adv_stop();			//关蓝牙广播
				APP_ERROR_CHECK(err_code);
			}
			m_erase_chip = true;
			NRF_LOG_INFO("ready to erase flash chip\n");
		}
	}
}

static const uint32_t kDataPackageSize = 9;
__STATIC_INLINE void kx022_data_pack(lsm6dso_data_t data, uint8_t* package) {
  // 包格式：
  // 包类型（uint8_t）、包编号（uint16_t）、x轴数据（int16_t）、y轴数据（int16_t）、z轴数据（int16_t）
  // 包类型格式： bit0置1表示数据
  package[0] = 0x1;
  package[1] = data.number & 0xff;
  package[2] = data.number >> 8 & 0xff;
  package[3] = data.ax & 0xff;
  package[4] = data.ax >> 8 & 0xff;
  package[5] = data.ay & 0xff;
  package[6] = data.ay >> 8 & 0xff;
  package[7] = data.az & 0xff;
  package[8] = data.az >> 8 & 0xff;
}

//实时传输
static void lsm6dso_send_data_handler(lsm6dso_data_t data) {
//	NRF_LOG_DEBUG("%5d %5d %5d %5d %5d %5d\n", data.gx, data.gy, data.gz, data.ax, data.ay, data.az);
  if (!m_is_connected) return;
  ret_code_t err_code;
  uint8_t package[kDataPackageSize];
  if (queue_is_empty(m_data_buffer)) {
    kx022_data_pack(data, package);
    err_code = ble_nus_string_send(&m_nus, package, sizeof(package));
    APP_ERROR_CHECK(err_code); 
    if (err_code != NRF_SUCCESS) {  // 发送失败放入缓冲区
      queue_push(&m_data_buffer, (void*)&data);
			//NRF_LOG_INFO("fail to send2\n");
    }
  } else {
    /* DEBUG_PRINT("clear buffer!\n"); */
    lsm6dso_data_t* temp;
    queue_push(&m_data_buffer, (void*)&data);
    while (!queue_is_empty(m_data_buffer)) {
      temp = (lsm6dso_data_t*)queue_front(m_data_buffer);
      kx022_data_pack(*temp, package);
      err_code = ble_nus_string_send(&m_nus, package, sizeof(package));
      APP_ERROR_CHECK(err_code); 
      if (err_code == NRF_SUCCESS) {
        queue_pop(&m_data_buffer);
				//NRF_LOG_INFO("fail to send3\n");
      } else {
        break;
      }
    }
  }
}

ret_code_t ble_send_data(const uint8_t* p_data, uint16_t length) {
  return ble_nus_string_send(&m_nus, (uint8_t*)p_data, length);
}



static void twi_init(void) {
  const nrf_drv_twi_config_t twi_config = {
    .scl                = 18, 
    .sda                = 17,	
    .frequency          = NRF_TWI_FREQ_400K,	
    .interrupt_priority = APP_IRQ_PRIORITY_LOW
  };
  ret_code_t err_code;
  APP_TWI_INIT(&m_app_twi, &twi_config, 10, err_code);
  APP_ERROR_CHECK(err_code);
}

//wdt初始化
void wdt_event_handler(void)
{
//	if(record_is_recording())
//	{
//		record_stop();
//	}
	NRF_LOG_INFO("Restart cpu!!\n");
	led_set(1,1);
}

static void wdt_init()
{
	uint32_t err_code;
	 nrf_drv_wdt_config_t config = NRF_DRV_WDT_DEAFULT_CONFIG;
    err_code = nrf_drv_wdt_init(&config, wdt_event_handler);
    APP_ERROR_CHECK(err_code);
    err_code = nrf_drv_wdt_channel_alloc(&m_channel_id);
    APP_ERROR_CHECK(err_code);
    nrf_drv_wdt_enable();
}


