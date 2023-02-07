/*
 * 实现加速度的定时记录。
 * 数据结构：以4K为一个单元（即一个sector）
 * 000h 开头留空5个字节
 * 005h 1个字节数据类型，表示混合数据类型
 * 数据类型的最高位为1表示续上一个sector，否则表示第一个sector
 * 006h 8个字节开始时间
 * 00eh 1个字节加速度的采样频率（kx022_odr_t）
 * 00fh 1个字节温湿度传感器采样周期，单位为秒
 * 010h 2个字节数据字节数
 * 012h 4个字节CRC-32
 * 016h 剩余4096-22=4074个字节为数据
 */

#include <string.h>
#define NRF_LOG_MODULE_NAME "record"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "lsm6dso.h"
#include "rtc.h"
#include "config.h"
#include "sht3.h"
#include "flash_buffer.h"
#include "record.h"
#include "app_uart.h"
#include "nrf_delay.h"
#include "nrf_drv_wdt.h"
#include "led.h"
#include "button.h"
#include "nrf_gpio.h"
//#define RX_PIN_NUMBER 9
/****2019.9.27 定时器头文件*/
#include "nrf_drv_timer.h"
#include "nrf_drv_common.h"
#include "ble_nus.h"
/****2019.9.27 定时器头文件*/

static const uint8_t kDataTypeStart = 0x7e;  //126
static const uint8_t kDataTypeMiddle = 0xfe; //254
static const uint8_t kDataTypeEnd = 0x6e; //110

static const uint32_t kDataTypeOffset = 0x005+0x4a;//填充上面的kDataTypeStart kDataTypeMiddle kDataTypeEnd
static const uint32_t kDataTimeOffset = 0x006+0x4a;
static const uint32_t kDataAccODROffset = 0x00e+0x4a;
static const uint32_t kDataHumiturePeriodOffset = 0x00f+0x4a;
static const uint32_t kDataBytesCountOffset = 0x010+0x4a;
static const uint32_t kDataCRCOffset = 0x012+0x4a;
static const uint32_t kDataOffset = 0x016+0x4a;


//static uint16_t test;//用于测试加速度周期

//全局开关
static volatile bool m_is_recording = false;
static bool m_first_sector;//是否为记录的第一组数据
static bool m_record_first;
static bool m_sht3_update;

//21.10.2第一次上传
static bool upload_first_flag=true;
nrf_drv_wdt_channel_id m_channel_id1;

//用于初始化的量
static lsm6dso_odr_xl_t m_output_data_rate;//52Hz时值为0x02
static uint32_t m_acc_data_frequency;//六轴的采集频率
static uint8_t m_humiture_period;//温湿度采集频率1Hz
static uint32_t m_humiture_update_point;//=50
extern uint8_t m_final_address[4];
static uint32_t m_start_address;  // 数据储存的开始地址
extern flash_buffer_error_t m_error;//要在主函数中添加！！
static flash_buffer_t* m_flash_buffer;
static uint8_t m_buffer[FLASH_BUFFER_MIN_SIZE];  // 数据内存缓冲区
static const flash_buffer_error_t kRecordErrorDefault = FLASH_BUFFER_ERROR_NONE;
//全局变量
uint32_t m_data_bytes_count = 0;//总bytes数记录
static volatile uint32_t m_acc_data_count;//本次记录存入的六轴数据组数

//21.9.21用于说明flash数据开始蓝牙发送
static uint8_t ble_begin_send[1]={0x0a};

//函数声明区
static void write_data_head(flash_buffer_t* p_flash_buffer);
static void complete_data_head(flash_buffer_t* p_flash_buffer);
static void error_callback(flash_buffer_t* p_flash_buffer,
                           flash_buffer_error_t error_code);
static void delayed_system_off(void* p_arguments);
static void lsm6dso_data_handler(lsm6dso_data_t data);
static void upload_real_time_data(void* p_arguments);
static void upload_real_time_data_callback(sht3_data_t data);
static void upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments);
static void send_data(void* p_arguments);
extern ret_code_t ble_send_data(const uint8_t* p_data, uint16_t length);

void record_init(void) {
  flash_buffer_error_t error_code;
  config_get_value(kConfigRecordError, (void*)&error_code, sizeof(error_code));
  if (error_code != FLASH_BUFFER_ERROR_NONE) {
    config_get_value(kConfigDataAddress,
                     (void*)&m_start_address, sizeof(m_start_address));
    //m_is_recording = true;						//去掉该标记
    NRF_LOG_ERROR("get record err code: %d addr: %x\n", error_code, m_start_address);
  }
}

void record_start(uint64_t start_time, lsm6dso_odr_xl_t odr, uint8_t humiture_period){
	//后两个参数仅作记录用，没有设置的作用，加速度计使用初始化的频率，温湿度的记录频率是1Hz
	//record_stop_upload_real_time_data();
  m_output_data_rate = odr;
	m_acc_data_frequency = lsm6dso_odr2frequency(odr) / 1000;//52Hz
  m_humiture_update_point = m_acc_data_frequency - 2 -
  kHumitureMeasureTime[kHumitureDefaultRep] / (1000000 / m_acc_data_frequency);//此值现在为多少？
  NRF_LOG_DEBUG("frequency: %d update point: %d\n",
                m_acc_data_frequency, m_humiture_update_point);
	m_humiture_period = humiture_period;
	m_acc_data_count = 0;
	uint32_t address;
	memcpy(&address,m_final_address,4);	
  m_is_recording = true;
  m_first_sector = true;	
	//m_record_first = false; //21.7.5修改逻辑
	m_record_first = true;
	m_sht3_update = false;
	
	config_get_value(kConfigDataAddress,
                   (void*)&m_start_address, sizeof(m_start_address));
	NRF_LOG_INFO("record start(121) m_start_address= %x\n",m_start_address);
	if(m_start_address == kFlashMaxAddress+1)
	{
		m_error = FLASH_ERROR_FULL;
		config_set_value(kConfigRecordError,
										(const uint8_t*)&m_error,sizeof(m_error));
		config_save();
		m_is_recording = false;						//停止记录
		return;
	}
	
  m_flash_buffer = flash_buffer_new(m_buffer,
                                    m_start_address,
                                    write_data_head, //21.10.1 新sector的回调函数
                                    complete_data_head, //21.10.1 换扇区的回调函数
                                    error_callback);
	rtc_run_at(start_time, kKX022Channel, lsm6dso_start, lsm6dso_data_handler);
//		lsm6dso_start(lsm6dso_data_handler);
  NRF_LOG_INFO("Record acc start !.\n");
}


void record_stop(void) {
  m_is_recording = false;
  NRF_LOG_INFO("Stop acc record.\n");
	if (m_flash_buffer){
    lsm6dso_stop();
		//21.10.2加延迟,防止刚刚停止6轴出现还在写数据没停止的可能
    flash_buffer_stop(m_flash_buffer);
  }
  // 更新数据记录字节数
	
  /*sht3_data_t sht3_data = sht3_get_data();
  upload_real_time_data((void*)&sht3_data); 7.28 注释掉这里，等待上传完数据之后再开始*/
	
	if (m_flash_buffer) {
  uint32_t address = flash_buffer_get_data_address(m_flash_buffer);
  config_set_value(kConfigDataAddress,(const uint8_t*)&address, sizeof(address));
		m_final_address[0] = (uint8_t)(address&0xff);
		m_final_address[1] = (uint8_t)(address>>8&0xff);
		m_final_address[2] = (uint8_t)(address>>16&0xff);
		m_final_address[3] = (uint8_t)(address>>24&0xff);
  }
	
	nrf_delay_ms(2);
	config_set_value(kConfigDataByteCount,(const uint8_t*)&m_data_bytes_count,sizeof(m_data_bytes_count));
	if(m_error != FLASH_ERROR_FULL)
		config_set_value(kConfigRecordError,
                   (const uint8_t*)&kRecordErrorDefault, sizeof(kRecordErrorDefault));
	
	upload_data(NULL, 0, NULL);
	
}

static void write_data_head(flash_buffer_t* p_flash_buffer) {
  uint64_t current_time = rtc_get_time();
	rtc_print_time(current_time);//21.10.9测试rtc
  uint8_t data_head[kDataOffset];
  memset(data_head, 0xff, sizeof(data_head));
  memcpy(data_head + kDataTimeOffset, &current_time, sizeof(current_time));
  data_head[kDataAccODROffset] = m_output_data_rate;
  data_head[kDataHumiturePeriodOffset] = m_humiture_period;
  flash_buffer_push(m_flash_buffer, data_head, sizeof(data_head));
}

static void complete_data_head(flash_buffer_t* p_flash_buffer) {
	NRF_LOG_INFO("complete_data_head\n");
	/*if(upload_first_flag==true){
		static ble_nus_t m_nus;
		uint8_t begin_collect_array[1];
		begin_collect_array[0] = 0xaa;
		APP_ERROR_CHECK(ble_nus_string_send(&m_nus, begin_collect_array, sizeof(begin_collect_array)));
	}*/
  flash_buffer_write_crc(m_flash_buffer, kDataCRCOffset);
  uint16_t sector_bytes_count = flash_buffer_get_sector_bytes_count(m_flash_buffer);
  sector_bytes_count -= kDataOffset;
  flash_buffer_write_sector(m_flash_buffer, kDataBytesCountOffset,
                            (uint8_t*)&sector_bytes_count, sizeof(sector_bytes_count));
  if (m_is_recording) {
    if (!m_first_sector) {
      flash_buffer_write_sector(m_flash_buffer, kDataTypeOffset,
                                &kDataTypeMiddle, sizeof(kDataTypeMiddle));
    } else {
      m_first_sector = false;
      flash_buffer_write_sector(m_flash_buffer, kDataTypeOffset,
                                &kDataTypeStart, sizeof(kDataTypeStart));
    }
  } else {
    flash_buffer_write_sector(m_flash_buffer, kDataTypeOffset,
                              &kDataTypeEnd, sizeof(kDataTypeEnd));
  }
	
  NRF_LOG_DEBUG("data count: %d, bytes count: %d\n",
                m_acc_data_count, sector_bytes_count);
}

static void error_callback(flash_buffer_t* p_flash_buffer,
                           flash_buffer_error_t error_code) {
  NRF_LOG_ERROR("error code: %d\n", error_code);
  m_is_recording = false;
  lsm6dso_stop();
  /* flash_buffer_stop(p_flash_buffer); */
	if(error_code == FLASH_ERROR_FULL)	//存满
	{
		m_start_address = kFlashMaxAddress+1;
	}													 
  config_set_value(kConfigDataAddress,
                   (const uint8_t*)&m_start_address, sizeof(m_start_address));
	config_set_value(kConfigDataByteCount,
									 (const uint8_t*)&m_data_bytes_count,sizeof(m_data_bytes_count));													 
  config_set_value(kConfigRecordError,
                   (const uint8_t*)&error_code, sizeof(error_code));
  config_save();
	led_set(0,1);					//点亮led0说明出现错误													 
  rtc_run_delay(1000, kKX022Channel, delayed_system_off, NULL);
}
													 
static void delayed_system_off(void* p_arguments) {
  button_set_wake_up(true, true, NULL);
}

//六轴数据处理函数
static void lsm6dso_data_handler(lsm6dso_data_t data) {
	  if (!m_is_recording) {
    NRF_LOG_WARNING("Record had stopped!\n");
    return;
  }
	
	
  ++m_acc_data_count;//数据组数+1
	flash_buffer_push(m_flash_buffer, (uint8_t*)&(data.gx), sizeof(data) - sizeof(uint16_t));//将六轴数据放入buffer
	m_data_bytes_count += sizeof(data) - sizeof(uint16_t);//数据总量自加
	
	uint32_t temp = m_acc_data_count % m_acc_data_frequency;
	
	if ((temp == m_humiture_update_point) && m_sht3_update==false)
	{
		m_sht3_update = true;
		m_record_first = false;
		//21.9.30 sht3_update_data();
  }
	else if (temp == 0 && m_record_first==false) 
	{
			m_record_first = true;
			m_sht3_update = false;
		  NRF_LOG_INFO("Have passed 1 second\n");
			//sht3_data_t sht3_data = sht3_get_data();
			/*NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER "(%x) " NRF_LOG_FLOAT_MARKER "(%x)\n",
                  NRF_LOG_FLOAT(-45 + 175 * (float)sht3_data.temperature / 65535),
                  sht3_data.temperature,
                  NRF_LOG_FLOAT(100 * (float)sht3_data.humidity / 65535),
                  sht3_data.humidity);*/
									//21.10.2动了这里
			//upload_real_time_data((void*)&sht3_data);
									//21.9.13动了这里
			//flash_buffer_push(m_flash_buffer, (uint8_t*)&sht3_data, sizeof(sht3_data));
			//m_data_bytes_count += sizeof(sht3_data);			
  }
//	sht3_update_data();
//	sht3_data_t sht3_data = sht3_get_data();
//	test++;
//	if (test==52)
//	{
//	NRF_LOG_DEBUG("%5d %5d %5d %5d %5d %5d\n", data.gx, data.gy, data.gz, data.ax, data.ay, data.az);
//	NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER "(%x) " NRF_LOG_FLOAT_MARKER "(%x)\n",
//                  NRF_LOG_FLOAT(-45 + 175 * (float)sht3_data.temperature / 65535),
//                  sht3_data.temperature,
//                  NRF_LOG_FLOAT(100 * (float)sht3_data.humidity / 65535),
//                  sht3_data.humidity);
//	test=0;
//	rtc_print_time(0);
//	}
}




// 启动定时发送数据任务，用于刷新APP上的数据实时显示
void record_start_upload_real_time_data(void) {
  if (!m_is_recording) {
    NRF_LOG_DEBUG("upload real time data.\n");
    rtc_repeat_run_delay(20, 5000, kRecordChannel, upload_real_time_data, NULL);
  }
}

// 结束定时发送数据任务
void record_stop_upload_real_time_data(void) {
  if (!m_is_recording) {
    NRF_LOG_DEBUG("stop upload real time data.\n");
    rtc_cancel(kRecordChannel);
    rtc_cancel(kSHT3Channel);
  }
}


// 上传APP上显示的实时数据
// p_arguments为NULL时，未有数据记录任务，采集一次数据，通过回调发送
// p_arguments不为NULL时，传入温湿度数据，直接在这个函数里发送
static void upload_real_time_data(void* p_arguments) {
  if (p_arguments) {
    // 正在执行数据记录任务，使用记录采集的数据刷新
    uint8_t data[9];
    data[0] = 4;
    memcpy(data + 1, p_arguments, sizeof(sht3_data_t));
    uint32_t temp = m_data_bytes_count;
    memcpy(data + 5, &temp, sizeof(temp));
    ble_send_data(data, sizeof(data));
    /* NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER "(%x) " NRF_LOG_FLOAT_MARKER "(%x)\n", */
    /*               NRF_LOG_FLOAT(-45 + 175 * (float)((sht3_data_t*)p_arguments)->temperature / 65535), */
    /*               ((sht3_data_t*)p_arguments)->temperature, */
    /*               NRF_LOG_FLOAT(100 * (float)((sht3_data_t*)p_arguments)->humidity / 65535), */
    /*               ((sht3_data_t*)p_arguments)->humidity); */
  } else {
    sht3_read_data(upload_real_time_data_callback);
  }
}

// 未执行数据记录任务时，使用此函数刷新APP实时数据
static void upload_real_time_data_callback(sht3_data_t data) {
  uint8_t ble_data[5];
  ble_data[0] = 4;
  memcpy(ble_data + 1, &data, sizeof(sht3_data_t));
  ble_send_data(ble_data, sizeof(ble_data));
  /* NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER " " NRF_LOG_FLOAT_MARKER "\n", */
  /*               NRF_LOG_FLOAT(-45 + 175 * (float)data.temperature / 65535), */
  /*               NRF_LOG_FLOAT(100 * (float)data.humidity / 65535)); */
}

// 发送闪存内的数据到APP
// p_data: 输入，从闪存读取回调的数据指针，启动上传时为NULL
// length: 输入，数据长度，启动上传时为0
static void upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments) {
	if(upload_first_flag==true){
		//21.10.2 怀疑是因为对flash操作过快导致不传数据,现在加个延迟
		//nrf_delay_ms(20);
		upload_first_flag = false;
		NRF_LOG_INFO("upload_first_flag = false\n");
	}
	
  static const uint8_t kBLEDataType = 0x05;
  static uint32_t address;  // 当前读取的闪存地址is
  static uint16_t bytes_count;  // 数据字节数
  static uint8_t data_type;
  static uint8_t arguments[6];  // 传给定时蓝牙发送函数的参数
  static bool is_first_sector;
	
	//NRF_LOG_INFO("Ready to start\n");
  if (p_data == NULL && length == 0) {
		//NRF_LOG_INFO("1\n");
    flash_enable();
    address = m_start_address;
    is_first_sector = true;
    data_type = kDataTypeStart;
  }
  /* if (p_data) { */
  /*   NRF_LOG_DEBUG("Upload data: address %x len %d\n", address, length); */
  /* } */
	//21.10.3NRF_LOG_INFO("address & ~kFlashSectorAddressMask= %x\n",address & ~kFlashSectorAddressMask);
  switch (address & (~kFlashSectorAddressMask)) {  // 取sector内地址,相当于address & 0xfff
  case 0:
    if (data_type != kDataTypeEnd) {
		  //NRF_LOG_INFO("2\n");
      // 开始读取一个新的sector
      address |= kDataTypeOffset;//address=address | 0x005
      flash_read(address, (kDataOffset - kDataTypeOffset), upload_data, NULL);//读取0x05~0x16的数据（扇区头所有信息）
			//NRF_LOG_INFO("6\n");
			//flash_read之后address是0x005，句柄表示执行函数：upload_data(m_rx_buffer+5, 17 , NULL)
    } else {
      // 数据上传完成
			NRF_LOG_INFO("upload finish1\n");
			//21.10.2
			upload_first_flag = true;
			NRF_LOG_INFO("upload_first_flag = true\n");
      uint8_t data[] = {kBLEDataType, 0xff};
			ret_code_t sent_out;
			do{
				sent_out = ble_send_data(data, sizeof(data));
			}while(sent_out!=NRF_SUCCESS);
      flash_disable();
      //record_start_upload_real_time_data();
    }
    break;

  case kDataTypeOffset:
    // 完成读取sector数据头
	  
		//21.9.21加入发送数据开始位置，判断有没有发送成功
		if(is_first_sector){
			ble_send_data(ble_begin_send, sizeof(ble_begin_send));
		}
		//NRF_LOG_INFO("3\n");
    bytes_count = p_data[kDataBytesCountOffset - kDataTypeOffset];
    bytes_count |= (uint16_t)p_data[kDataBytesCountOffset - kDataTypeOffset + 1] << 8;
    data_type = p_data[0];
    NRF_LOG_INFO("(420)addr: %x  bytes count: %d\n", address, bytes_count);
    if (bytes_count <= 3744 &&
        (data_type == kDataTypeStart || data_type == kDataTypeMiddle ||
         data_type == kDataTypeEnd) &&
        !(is_first_sector && data_type == kDataTypeMiddle) &&
        !(!is_first_sector && data_type == kDataTypeStart)) {
      // 数据头的字节数必须小于一个sector可以储存的最大字节数
					
      if (is_first_sector) is_first_sector = false;
      uint8_t data[kDataOffset];
      data[0] = kBLEDataType;
      memcpy(data + 1, p_data, length);
      ble_send_data(data, length + 1);

      NRF_LOG_DEBUG("addr: %x %d bytes data to upload.\n", address, bytes_count);
      // 开始读取数据部分
      address = (address & kFlashSectorAddressMask) | kDataOffset;//当前的sector+取地址的地址偏移
      // 最多一次读取240字节，240是20的倍数，方便蓝牙发送
      flash_read(address, 240 <= bytes_count ? 240 : bytes_count, upload_data, NULL);
    } else {
			NRF_LOG_INFO("upload finish2\n");
			//21.10.2
			upload_first_flag = true;
			NRF_LOG_INFO("upload_first_flag = true\n");
      // 数据上传完成
      uint8_t data[] = {kBLEDataType, 0xff};
      ble_send_data(data, sizeof(data));
      flash_disable();
      //record_start_upload_real_time_data();
    }
    break;

  default:
    // 已从闪存取到数据，启动定时蓝牙发送
		//NRF_LOG_INFO("5\n");
    if (p_data != NULL) {
			//NRF_LOG_INFO("bytes_count%d\n",bytes_count);
      bytes_count -= length;
      if (bytes_count) {
        address += length;
      } else {
        // 当前sector读取完成，跳到下一sector
        address = (address & kFlashSectorAddressMask) + kFlashSectorSize; //当前sector地址+一个sector的大小,即开辟新的sector
        if (address > kFlashMaxAddress) {
          address = kFlashMinAddress;
        }
      }

      /* NRF_LOG_DEBUG("to send data:\n"); */
      /* if (length > 64) { */
      /*   /\* NRF_LOG_HEXDUMP_DEBUG(p_data + length - 64, 64); *\/ */
      /*   NRF_LOG_HEXDUMP_DEBUG(p_data, 64); */
      /* } else { */
      /*   NRF_LOG_HEXDUMP_DEBUG(p_data, length); */
      /* } */

      memcpy(arguments, &p_data, sizeof(uint8_t*));
      arguments[4] = length;
      arguments[5] = length >> 8 & 0xff;
      /* rtc_repeat_run_delay(1, 8, kRecordChannel, send_data, (void*)arguments); */
      send_data((void*)arguments);
    } else if (bytes_count) {
      // p_data为空，length非0，是蓝牙发送完毕的标志
      flash_read(address, 240 <= bytes_count ? 240 : bytes_count, upload_data, NULL);
    }
    break;
  }
	//NRF_LOG_INFO("end\n");
}

static void send_data(void* p_arguments) {
  /* uint8_t* p_data = *(uint8_t**)p_arguments; */
  uint8_t** pp_data = (uint8_t**)p_arguments;
  uint16_t* p_length = (uint16_t*)((char*)p_arguments + 4);
  /* uint16_t send_length = *p_length > 20 ? 20 : *p_length; */

  /* NRF_LOG_DEBUG("send data: p_data %x len %d\n", (uint32_t)p_data, *p_length); */
  /* NRF_LOG_HEXDUMP_DEBUG(p_arguments, 5); */
  /* NRF_LOG_DEBUG("send data:\n"); */
  /* NRF_LOG_HEXDUMP_DEBUG(p_data, send_length); */

  /* if (ble_send_data(p_data, send_length) != NRF_SUCCESS) { */
  /*   NRF_LOG_ERROR("Failed to send.\n"); */
  /*   return;  // 发送失败，等待重试 */
  /* } */
  /* *p_length -= send_length; */
  /* if (*p_length == 0) { */
  /*   rtc_cancel(kRecordChannel); */
  /*   upload_data(NULL, 0xff, NULL);  // 用特殊值参数请求读取闪存后面的数据 */
  /* } else { */
  /*   *(uint8_t**)p_arguments += send_length; */
  /* } */

  while (1) {
    ret_code_t err_code = ble_send_data(*pp_data, *p_length > 20 ? 20 : *p_length);
		//nrf_delay_ms(1);
    if (err_code == NRF_SUCCESS) {
			//NRF_LOG_INFO("SEND DATA LENGTH %d \n",*p_length);
      if (*p_length > 20) {
        *p_length -= 20;
        *pp_data += 20;
      } else {
        upload_data(NULL, 0xff, NULL);  // 用特殊值参数请求读取闪存后面的数据
        break;
      }
    } else {
			//NRF_LOG_INFO("RTC_DELAY\n");
      rtc_run_delay(35, kRecordChannel, send_data, p_arguments);
      break;
    }
  }
}
uint32_t record_data_bytes_count(void) {
  return m_data_bytes_count;
}
bool record_is_recording(void) {
  return m_is_recording;
}
