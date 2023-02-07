#include <stdbool.h>
#include <string.h>
#include "app_error.h"
#include "app_twi.h"
#define NRF_LOG_MODULE_NAME "lsm6dso"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_drv_gpiote.h"
#include "nrf_drv_rtc.h"
#include "nrf_delay.h"
#include "nrf_assert.h"
#include "nrf_soc.h"
#include "rtc.h"
#include "lsm6dso_reg.h"
#include "lsm6dso.h"

//uint16_t test;

typedef void (*read_reg_callback_t) (const uint8_t* data, uint8_t length);
static const uint8_t kINT1Pin = 16;
static const uint8_t kBufferSize = 20;
static uint16_t m_data_count;
static uint8_t m_buffer[kBufferSize];
static lsm6dso_data_handler_t m_data_handler;
static app_twi_t* m_app_twi;
static void init_callback(ret_code_t result, void* p_user_data);
static void print_result(ret_code_t result, void* p_user_data);
static void check_id_callback(const uint8_t* data, uint8_t length);
static void read_data_callback(const uint8_t* data, uint8_t length);
static void test_data_callback(const uint8_t* data, uint8_t length);
static void int1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action);
static void data_ready_callback(const uint8_t* data, uint8_t length);
static void read_register(uint8_t register_address, uint8_t bytes_number,
                          read_reg_callback_t callback, bool is_block);
static void read_register_callback(ret_code_t result, void* p_user_data);


//初始化配置相关参数
void lsm6dso_init(app_twi_t* app_twi) {  
  m_app_twi = app_twi;
  static const uint8_t kResetData[] = {
    LSM6DSO_CTRL1_XL, 0x00,//acc下电模式
		LSM6DSO_CTRL2_G, 0x00,//gyro下电模式
		LSM6DSO_CTRL3_C, 0x05  // 复位
  };//Initialize the device for driver usage
  static const app_twi_transfer_t kResetTransfers[] = {
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, kResetData, 2, 0),
		APP_TWI_WRITE(LSM6DSO_I2C_ADD, kResetData + 2, 2, 0),
		APP_TWI_WRITE(LSM6DSO_I2C_ADD, kResetData + 4, 2, 0)
  };
	NRF_LOG_INFO("app_twi_perform_started!\n");
  uint32_t err_code = app_twi_perform(m_app_twi,
                                  kResetTransfers,
                                  sizeof(kResetTransfers) /
                                  sizeof(app_twi_transfer_t),
                                  NULL); 
	NRF_LOG_INFO("app_twi_perform_error: %d\n", err_code);																
	NRF_LOG_INFO("app_twi_perform_finished!\n");
  nrf_delay_ms(10);//等待复位
																	
  static const uint8_t kInitData[] = {
    LSM6DSO_CTRL1_XL, 0x30,   //acc odr 52Hz high-performance,full-scale 2g
    LSM6DSO_CTRL2_G, 0x30     //gyro odr 52Hz high-performance,full-scale 250dps
  };
  static const app_twi_transfer_t kInitTransfers[] = {
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, kInitData, 2, 0),
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, kInitData + 2, 2, 0)
  };
  static const app_twi_transaction_t kInitTransaction = {
    .callback = init_callback,
    .p_user_data = NULL,
    .p_transfers = kInitTransfers,
    .number_of_transfers = sizeof(kInitTransfers) / sizeof(app_twi_transfer_t)
  };
//  NRF_LOG_INFO("app_twi_schedule started!");
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &kInitTransaction));
//  NRF_LOG_INFO("app_twi_schedule_finished!");			
	nrf_delay_ms(20);
//	read_register(LSM6DSO_TAP_CFG0, 1, NULL, true);
  lsm6dso_stop();	
}

//初始化回调
static void init_callback(ret_code_t result, void* p_user_data) {
  if (result == NRF_SUCCESS) {
		nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(false);//采用port中断，低到高触发事件
    APP_ERROR_CHECK(nrf_drv_gpiote_in_init(kINT1Pin, &in_config, int1_handler));//输入事件初始化
    NRF_LOG_INFO("lsm6dso init completed!\n");
  } else {
    NRF_LOG_ERROR("init error: %d\n", result);
  }
}

//gpiote中断输入事件回调函数
static void int1_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
  /* static const nrf_drv_rtc_t kRTC1 = NRF_DRV_RTC_INSTANCE(1); */
  /* uint32_t start_time = nrf_drv_rtc_counter_get(&kRTC1); */
//  NRF_LOG_INFO("lsm6dso interrupt configue completed!\n"); 
  // TODO:这里有潜在的死守可能，因为TWI中断不能抢占这个中断
  read_register(LSM6DSO_STATUS_REG, 1, data_ready_callback, false);
}


void lsm6dso_start(void* data_handler) {
  if (!data_handler) return;
  m_data_handler = (lsm6dso_data_handler_t)data_handler;
  m_data_count = 0;
  nrf_drv_gpiote_in_event_enable(kINT1Pin, true);
	
	  static const uint8_t startData[] = {
			
		LSM6DSO_INT1_CTRL, 0x03,    //int1数据准备就绪中断(DRDY)
  };
  static const app_twi_transfer_t startTransfers[] = {
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, startData, 2, 0)
  };
  static const app_twi_transaction_t startTransaction = {
    .callback = print_result,
    .p_user_data = NULL,
    .p_transfers = startTransfers,
    .number_of_transfers = sizeof(startTransfers) / sizeof(app_twi_transfer_t)
  };
	//NRF_LOG_INFO("app_twi_schedule started!");
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &startTransaction));
	//NRF_LOG_INFO("app_twi_schedule_finished!");			
	nrf_delay_ms(10);
//	rtc_print_time(0);
	NRF_LOG_INFO("lsm6dso start!\n");
}

static void print_result(ret_code_t result, void* p_user_data) {
	if(result==NRF_SUCCESS){
		NRF_LOG_INFO("lsm6dso twi result: SUCCESS !\n");
	}
	else{
		NRF_LOG_INFO("lsm6dso twi result: %d !\n",result);
	}
}

void lsm6dso_stop(void) {
  nrf_drv_gpiote_in_event_disable(kINT1Pin);
		  static const uint8_t stopData[] = {
		LSM6DSO_INT1_CTRL, 0x00,    //int1数据准备就绪中断(DRDY)关闭
  };
  static const app_twi_transfer_t stopTransfers[] = {
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, stopData, 2, 0)
  };
  static const app_twi_transaction_t stopTransaction = {
    .callback = print_result,
    .p_user_data = NULL,
    .p_transfers = stopTransfers,
    .number_of_transfers = sizeof(stopTransfers) / sizeof(app_twi_transfer_t)
  };
	//NRF_LOG_INFO("app_twi_schedule started!");
  APP_ERROR_CHECK(app_twi_schedule(m_app_twi, &stopTransaction));
	//NRF_LOG_INFO("app_twi_schedule_finished!");			
	nrf_delay_ms(10);
	NRF_LOG_INFO("lsm6dso stop!\n");
}

//验证器件id
 void lsm6dso_check_id(void) 
 { 
 nrf_delay_ms(10);
 read_register(LSM6DSO_WHO_AM_I,1, check_id_callback,false); 
 }

 static void check_id_callback(const uint8_t* data, uint8_t length) { 
// for (uint8_t i = 0; i < length; ++i) { 
//  NRF_LOG_DEBUG("%02x  ", data[i]); 
// }
  if(data[0]==LSM6DSO_ID)
	{
		NRF_LOG_INFO("lsm6dso ID verification successful\n");
	}
	else{
		NRF_LOG_INFO("lsm6dso ID verification failed\n");
	}
		
//  NRF_LOG_HEXDUMP_DEBUG(data, length); 
  NRF_LOG_DEBUG("\n"); 
 }
 
//读取acc和gyro数据
 void lsm6dso_read_data(void) {
	 read_register(LSM6DSO_OUTX_L_G, 12, read_data_callback, false);
}
 static void test_data_callback(const uint8_t* data, uint8_t length) { 
 for (uint8_t i = 0; i < length; ++i) { 
  NRF_LOG_DEBUG("%02x  ", data[i]); 
 }
 }
 
//有效数据生成标志
static void data_ready_callback(const uint8_t* data, uint8_t length)
{
 if(((data[0]&0x01)!=0)&&((data[0]&0x02)!=0))
//	if((data[0]&0x01)!=0)
 {
	 lsm6dso_read_data();
 }
 else 
	 {
	 NRF_LOG_INFO("ready data erroro\n");
 }
}

//输出数据需读取12个字节
static void read_data_callback(const uint8_t* data, uint8_t length) {

  lsm6dso_data_t lsm6dso_data = {
    .number = m_data_count++,
    .gx = (int16_t)data[1] << 8 | data[0],
    .gy = (int16_t)data[3] << 8 | data[2],
    .gz = (int16_t)data[5] << 8 | data[4],
		.ax = (int16_t)data[7] << 8 | data[6],
		.ay = (int16_t)data[9] << 8 | data[8],
		.az = (int16_t)data[11] << 8 | data[10]
  };
//	test++;
//	if(test==52)
//	{
////	NRF_LOG_DEBUG("%5d %5d %5d %5d %5d %5d\n", lsm6dso_data.gx, lsm6dso_data.gy, lsm6dso_data.gz, lsm6dso_data.ax, lsm6dso_data.ay, lsm6dso_data.az);
//	test=0;
//	rtc_print_time(0);
//	}
  if (m_data_handler) {
    m_data_handler(lsm6dso_data);
  }	
	read_register(LSM6DSO_TAP_CFG0, 1, NULL, false);
}

 
 
// 读取lsm6dso寄存器的值，没有队列缓冲，函数不能重入
// 阻塞模式下，回调函数无效，读取到的数据储存在数组m_buffer中
static read_reg_callback_t m_read_register_callback;
static volatile bool m_read_register_is_busy = false;
static void read_register(uint8_t register_address,
                          uint8_t bytes_number,
                          read_reg_callback_t callback,
                          bool is_block) {
  ASSERT(bytes_number <= kBufferSize);
//  NRF_LOG_INFO("read begin\n");
  if (m_read_register_is_busy) {
    NRF_LOG_INFO("read reg busy reg addr: %x\n", register_address);
		nrf_delay_ms(500);//delay 500ms
		read_register(register_address,bytes_number,callback,is_block);
    return;
  }
  /* while (m_read_register_is_busy) {} */
  m_read_register_is_busy = true;
  m_read_register_callback = callback;
  static uint8_t data;
  data = register_address;
  static app_twi_transfer_t transfers[] = {
    APP_TWI_WRITE(LSM6DSO_I2C_ADD, &data, 1, APP_TWI_NO_STOP),
    APP_TWI_READ(LSM6DSO_I2C_ADD , m_buffer, 1, 0)
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


uint32_t lsm6dso_odr2frequency(lsm6dso_odr_xl_t output_data_rate) {
  if (output_data_rate == LSM6DSO_XL_ODR_OFF) return 0;
  static const uint32_t kTable[] = {
    12500, 26000, 52000, 104000, 208000, 416000, 833000,
    1660000, 3330000, 6660000, 1600
  };
  return kTable[output_data_rate];
}



