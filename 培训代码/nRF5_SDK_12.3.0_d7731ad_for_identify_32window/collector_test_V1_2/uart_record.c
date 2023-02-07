/*
 * 实现串口传输存储器数据
 * FALSH数据结构：以4K为一个单元（即一个sector）
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
#include "kx022.h"
#include "rtc.h"
#include "config.h"
#include "sht3.h"
#include "flash_buffer.h"
#include "record.h"

static const uint8_t kDataTypeStart = 0x7e;
static const uint8_t kDataTypeMiddle = 0xfe;
static const uint8_t kDataTypeEnd = 0x6e;
static const uint32_t kDataTypeOffset = 0x005;
static const uint32_t kDataTimeOffset = 0x006;
static const uint32_t kDataAccODROffset = 0x00e;
static const uint32_t kDataHumiturePeriodOffset = 0x00f;
static const uint32_t kDataBytesCountOffset = 0x010;
static const uint32_t kDataCRCOffset = 0x012;
static const uint32_t kDataOffset = 0x016;

static const flash_buffer_error_t kRecordErrorDefault = FLASH_BUFFER_ERROR_NONE;

static flash_buffer_t* m_flash_buffer;
static uint32_t m_start_address;  // 数据储存的开始地址
static uint8_t m_buffer[FLASH_BUFFER_MIN_SIZE];  // 数据内存缓冲区

static kx022_odr_t m_output_data_rate;
static uint32_t m_acc_data_frequency;
static uint8_t m_humiture_period;
static volatile uint32_t m_acc_data_count;
static uint32_t m_humiture_update_point;
static volatile uint32_t m_data_bytes_count = 0;
static volatile bool m_is_recording = false;
static bool m_first_sector;



//添加串口传输函数
static void uart_upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments);
//添加串口处理函数
extern void uart_send_data(const uint8_t *p_data,uint16_t length);


//8.17TODO：修改这里的函数，改成用串口发送。修改文件名，项目添加uart模块
//8.23TODO: 将函数移植到uart测试程序修改，看是否合乎预期
// 发送闪存内的数据到上位机
// p_data: 输入，从闪存读取回调的数据指针，启动上传时为NULL
// length: 输入，数据长度，启动上传时为0
static void uart_upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments) 
{
  static const uint8_t kUARTDataType = 0x05;
  static uint32_t address;  // ?????????
  static uint16_t bytes_count;  // ?????
  static uint8_t data_type;
  static uint8_t arguments[6];  // ?????????????
  static bool is_first_sector;
	bool read_address = true;
  if (p_data == NULL && length == 0) 
	{
    flash_enable();
    address =  kFlashMinAddress;		
    is_first_sector = true;
    data_type = kDataTypeStart;
	}
  /* if (p_data) { */
  /*   NRF_LOG_DEBUG("Upload data: address %x len %d\n", address, length); */
  /* } */
  switch (address & ~kFlashSectorAddressMask)		
	{  // ?sector???
		
  case 0:
    if (data_type != kDataTypeEnd) 
		{
      // ????????sector
      address |= kDataTypeOffset;
      flash_read(address, kDataOffset - kDataTypeOffset, uart_upload_data, NULL);
    } 
		else 
		{
      //uint8_t data[] = {kBLEDataType, 0xff};
			uint8_t data[] ={0xff};
      uart_send_data(data, sizeof(data));
      flash_disable();
     
    }
    break;

  case kDataTypeOffset:
    bytes_count = p_data[kDataBytesCountOffset - kDataTypeOffset];
    bytes_count |= (uint16_t)p_data[kDataBytesCountOffset - kDataTypeOffset + 1] << 8;
    data_type = p_data[0];
    NRF_LOG_DEBUG("addr: %x bytes count: %d\n", address, bytes_count);
    if (bytes_count <= 4074 &&
        (data_type == kDataTypeStart || data_type == kDataTypeMiddle ||
         data_type == kDataTypeEnd) &&
        !(is_first_sector && data_type == kDataTypeMiddle) &&
        !(!is_first_sector && data_type == kDataTypeStart)) 
		{
      
      if (is_first_sector) 
				is_first_sector = false;
      uint8_t data[kDataOffset];
      data[0] = kUARTDataType;
      memcpy(data + 1, p_data, length);
      uart_send_data(data, length + 1);
      NRF_LOG_DEBUG("addr: %x %d bytes data to upload.\n", address, bytes_count);
      NRF_LOG_HEXDUMP_DEBUG(p_data, length);
      address = (address & kFlashSectorAddressMask) | kDataOffset;
      // 
      flash_read(address,max_read_length<bytes_count?max_read_length:bytes_count,
				uart_upload_data, NULL);		
    } 
		else
		{
      // ??????
      uint8_t data[] = {0xff};
      uart_send_data(data, sizeof(data));
      //flash_disable();

    }
    break;
	default:
    
    if (p_data != NULL) 		
		{
			uart_send_data(p_data,length);
			bytes_count-=length;
			if(bytes_count)
			{
				address+=length;
			
			}
			else
			{
				address = (address & kFlashSectorAddressMask) + kFlashSectorSize;	
				if (address > kFlashMaxAddress)
				{
					address = kFlashMinAddress;	
					read_address = false;
					uint8_t data[] ={0xff};
					uart_send_data(data, sizeof(data));
					flash_disable();
				}
			}
			if(read_address)//可以读字节
				flash_read(address,max_read_length<bytes_count?max_read_length:bytes_count,
						uart_upload_data, NULL);		
		}
    break;
  }
}