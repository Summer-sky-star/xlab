/**
 * Copyright (c) 2014 - 2017, Nordic Semiconductor ASA
 * 
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 * 
 * 1. Redistributions of source code must retain the above copyright notice, this
 *    list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form, except as embedded into a Nordic
 *    Semiconductor ASA integrated circuit in a product or a software update for
 *    such product, must reproduce the above copyright notice, this list of
 *    conditions and the following disclaimer in the documentation and/or other
 *    materials provided with the distribution.
 * 
 * 3. Neither the name of Nordic Semiconductor ASA nor the names of its
 *    contributors may be used to endorse or promote products derived from this
 *    software without specific prior written permission.
 * 
 * 4. This software, with or without modification, must only be used with a
 *    Nordic Semiconductor ASA integrated circuit.
 * 
 * 5. Any software provided in binary form under this license must not be reverse
 *    engineered, decompiled, modified and/or disassembled.
 * 
 * THIS SOFTWARE IS PROVIDED BY NORDIC SEMICONDUCTOR ASA "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 * GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 */

/** @file
 * @defgroup uart_example_main main.c
 * @{
 * @ingroup uart_example
 * @brief UART Example Application main file.
 *
 * This file contains the source code for a sample application using UART.
 *
 */

#include "nrf_drv_gpiote.h"
#include "nrf_drv_rtc.h"
#include "nrf_drv_clock.h"
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include "app_uart.h"
#include "app_error.h"
#include "nrf_delay.h"
#include "nrf.h"
#include "bsp.h"

//#define ENABLE_LOOPBACK_TEST  /**< if defined, then this example will be a loopback test, which means that TX should be connected to RX to get data loopback. */

#define MAX_TEST_DATA_BYTES     (15U)                /**< max number of test bytes to be used for tx and rx. */
#define UART_TX_BUF_SIZE 256                         /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE 1                         /**< UART RX buffer size. */

//模仿 sector head
#define SECTOR_HEAD_COUNT 18
#define SECTOR_DATA_COUNT 4074
#define SECTOR_END_COUNT  1
#define SECTOR_NUM    2
#define SECTOR_COUNT 4096
#define max_read_length 256
//模仿发送数据头																																															//0xea //0x0f
static uint8_t m_sector_head[] = {0x05,0x7e,0xb0,0xe3,0xd6,0x47,0x65,0x01,0x00,0x00,0x32,0x01,0xea,0x0f,0xff,0xff,0xff,0xff};
static uint8_t m_sector_end[] = {0xff};
//模仿flash数据格式，函数测试使用
 const uint32_t kFlashMinAddress = 0x00;//改成由00开始
const uint32_t kFlashMaxAddress = 0x1fff;
static const uint8_t kDataTypeStart = 0x7e;
static const uint8_t kDataTypeMiddle = 0xfe;
static const uint8_t kDataTypeEnd = 0x6e;
const uint32_t kFlashSectorSize = 4096;
const uint32_t kFlashSectorAddressMask = ~(kFlashSectorSize - 1);
static const uint32_t kDataTypeOffset = 0x005;
static const uint32_t kDataBytesCountOffset = 0x010;
static const uint32_t kDataOffset = 0x016;
static uint8_t m_sector[SECTOR_COUNT*SECTOR_NUM];

typedef void (*flash_data_handler_t)(const uint8_t* p_data, uint16_t length,
	void* p_arguments);
//假的flash处理
//模仿flash初始化
static void flash_init()			
{
	uint16_t i,j;	//代表sector数
	for(j = 0; j < SECTOR_NUM; j++)		//模仿sector进行数据初始化
	{
		for(i = 0; i < SECTOR_COUNT;i++)
		{
			if(i < kDataTypeOffset)
				m_sector[i+j*SECTOR_COUNT] = 0;		//
			else if(i == kDataTypeOffset)
			{
				if(j == 0)
					m_sector[i+j*SECTOR_COUNT] = kDataTypeStart;
				else if(j == SECTOR_NUM-1)
					m_sector[i+j*SECTOR_COUNT] = kDataTypeEnd;
				else
					m_sector[i+j*SECTOR_COUNT] = kDataTypeMiddle;
			}
			else if( i > kDataTypeOffset && i < kDataOffset)
			{
				m_sector[i+j*SECTOR_COUNT] = m_sector_head[i-kDataTypeOffset+1];
			}
			else
				m_sector[i+j*SECTOR_COUNT] = j;
		}
	}
}
//他妈的有毒啊，得开全局变量
static uint8_t m_data[max_read_length];
static void flash_read(uint32_t address, uint16_t length,
							flash_data_handler_t handler, void* p_arguments)
{
	uint16_t i;
	
	for(i = 0; i < length; i++)
		m_data[i] = m_sector[i+address];						//复制仿造
	if(handler)
		handler(m_data,length,p_arguments);		//调用回调函数
}
const nrf_drv_rtc_t rtc = NRF_DRV_RTC_INSTANCE(1);
uint8_t flag;

//UART
static void uart_upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments);
static void uart_send_data(const uint8_t* p_data, uint16_t length)
{
	uint16_t i;
	for(i = 0; i < length; i++)
	{
		while(app_uart_put(p_data[i])!=NRF_SUCCESS);
	}
}
void uart_error_handle(app_uart_evt_t * p_event)
{
		static uint8_t data;
		if(p_event->evt_type == APP_UART_DATA_READY)
		{
			UNUSED_VARIABLE(app_uart_get(&data));
			if(data == 'S')
			//	uart_upload_data(NULL,0,NULL);
				flag = 1;
			/*{
				for(uint32_t i = 0; i < 1000; i ++)
				{
					while(app_uart_put(0xff)!=NRF_SUCCESS);
				}
			}*/
			else if(data == 'E')
				flag = 0;
			else if(data == 'G')
				flag = 2;
			else if(data == 'Y')
				flag = 3;
		}
    /*if (p_event->evt_type == APP_UART_COMMUNICATION_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_communication);
    }
    else if (p_event->evt_type == APP_UART_FIFO_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_code);
    }*/
}



/*#ifdef ENABLE_LOOPBACK_TEST*/
/** @brief Function for setting the @ref ERROR_PIN high, and then enter an infinite loop.
 */
/*static void show_error(void)
{

    //bsp_board_leds_on();
    while (true)
    {
        // Do nothing.
    }
}*/


/** @brief Function for testing UART loop back.
 *  @details Transmitts one character at a time to check if the data received from the loopback is same as the transmitted data.
 *  @note  @ref TX_PIN_NUMBER must be connected to @ref RX_PIN_NUMBER)
 */
/*static void uart_loopback_test()
{
    uint8_t * tx_data = (uint8_t *)("\r\nLOOPBACK_TEST\r\n");
    uint8_t   rx_data;

    // Start sending one byte and see if you get the same
    for (uint32_t i = 0; i < MAX_TEST_DATA_BYTES; i++)
    {
        uint32_t err_code;
        while (app_uart_put(tx_data[i]) != NRF_SUCCESS);

        nrf_delay_ms(10);
        err_code = app_uart_get(&rx_data);

        if ((rx_data != tx_data[i]) || (err_code != NRF_SUCCESS))
        {
            show_error();
        }
    }
    return;
}
*/
//UART

static void uart_init(void)
{
	uint32_t err_code;
	 const app_uart_comm_params_t comm_params =
      {
          RX_PIN_NUMBER,
          TX_PIN_NUMBER,
          RTS_PIN_NUMBER,
          CTS_PIN_NUMBER,
          APP_UART_FLOW_CONTROL_DISABLED,
          false,
          UART_BAUDRATE_BAUDRATE_Baud921600			//测试用115200
      };

    APP_UART_FIFO_INIT(&comm_params,
                         UART_RX_BUF_SIZE,
                         UART_TX_BUF_SIZE,
                         uart_error_handle,
                         APP_IRQ_PRIORITY_LOWEST,
                         err_code);

    APP_ERROR_CHECK(err_code);
}
//8.17TODO:???????,?????????????,????uart??
//8.23TODO: ??????uart??????,???????
// ????????????
// p_data: ??,????????????,??????NULL
// length: ??,????,??????0
static void uart_upload_data(const uint8_t* p_data, uint16_t length, void* p_arguments) 
{
  static const uint8_t kUARTDataType = 0x05;
  static uint32_t address;  // ?????????
  static uint16_t bytes_count;  // ?????
  static uint8_t data_type;
  static uint8_t arguments[6];  // ?????????????
  static bool is_first_sector;
	static bool read_address = true;
  if (p_data == NULL && length == 0) 
	{
    //flash_enable();
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
      // ??????
      //uint8_t data[] = {kBLEDataType, 0xff};
			uint8_t data[] ={0xff};
      uart_send_data(data, sizeof(data));
      //flash_disable();
     
    }
    break;

  case kDataTypeOffset:
    // ????sector???
    bytes_count = p_data[kDataBytesCountOffset - kDataTypeOffset];
    bytes_count |= (uint16_t)p_data[kDataBytesCountOffset - kDataTypeOffset + 1] << 8;
    data_type = p_data[0];
    //NRF_LOG_DEBUG("addr: %x bytes count: %d\n", address, bytes_count);
    if (bytes_count <= 4074 &&
        (data_type == kDataTypeStart || data_type == kDataTypeMiddle ||
         data_type == kDataTypeEnd) &&
        !(is_first_sector && data_type == kDataTypeMiddle) &&
        !(!is_first_sector && data_type == kDataTypeStart)) 
		{
      // ?????????????sector??????????
      if (is_first_sector) 
				is_first_sector = false;
      uint8_t data[kDataOffset];
      data[0] = kUARTDataType;
      memcpy(data + 1, p_data, length);
      uart_send_data(data, length + 1);
      //NRF_LOG_DEBUG("addr: %x %d bytes data to upload.\n", address, bytes_count);
      //NRF_LOG_HEXDUMP_DEBUG(p_data, length);
      // ????????
      address = (address & kFlashSectorAddressMask) | kDataOffset;
      // 
      flash_read(address,max_read_length<bytes_count?max_read_length:bytes_count,
				uart_upload_data, NULL);		//调试发现缓冲区无法过大，1024分多次发送
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
    // ????????,uart????
    if (p_data != NULL) 		//妈的怎么会为空啊我操??
		{
		
			//不拷贝??
			uart_send_data(p_data,length);
			bytes_count-=length;
			if(bytes_count)						//未读完
			{
				address+=length;
				read_address = true;
			}
			else											//已读完
			{
				nrf_delay_us(2000);		//等待中断延时
				if(flag == 3)
					break;
				address = (address & kFlashSectorAddressMask) + kFlashSectorSize;	//跳下一sector
				if (address > kFlashMaxAddress) //????
				{
					address = kFlashMinAddress;
					//??????		
					read_address = false;
					uint8_t data[] ={0xff};
					uart_send_data(data, sizeof(data));
					//flash_disable();
				}
			}
			if(read_address)//继续从flash读数据
				flash_read(address,max_read_length<bytes_count?max_read_length:bytes_count,
					uart_upload_data, NULL);		//调试发现缓冲区无法过大，1024分多次发送	
		}
    break;
  }
}
//RTC
static void lfclk_config(void)
{
    ret_code_t err_code = nrf_drv_clock_init();
    APP_ERROR_CHECK(err_code);

    nrf_drv_clock_lfclk_request(NULL);
}

static void rtc_handler(nrf_drv_rtc_int_type_t int_type)//rtc中断配置
{
    /*if(int_type == NRF_DRV_RTC_INT_COMPARE0)//如果中断类型为比较中断
    {
        nrf_gpio_pin_toggle(BSP_LED_1);//翻转比较事件的管脚
				//printf("Hello\r\n");//注意要对fput重定义！要包含retarget.c
				nrf_drv_rtc_counter_clear(&rtc);
				flag = 0;
				printf("\n");
				nrf_drv_rtc_disable(&rtc);
				//printf("\n");
    }
    else if (int_type == NRF_DRV_RTC_INT_TICK)//如果中断类型为滴答中断
    {
        
    }*/
}





/** @brief Function initialization and configuration of RTC driver instance.
 */
static void rtc_config(void)//RTC配置
{
    uint32_t err_code;
		nrf_drv_rtc_config_t config = NRF_DRV_RTC_DEFAULT_CONFIG;
    //初始化RTC
    err_code = nrf_drv_rtc_init(&rtc, &config, rtc_handler);
    APP_ERROR_CHECK(err_code);

    
    //使能滴答事件和中断
    //nrf_drv_rtc_tick_enable(&rtc,true);
   //设置比较频道去触发中断，当 COMPARE_COUNTERTIME 秒后
   //err_code = nrf_drv_rtc_cc_set(&rtc,0,COMPARE_COUNTERTIME*RTC1_CONFIG_FREQUENCY,true);
   //APP_ERROR_CHECK(err_code);

    //开RTC电源
    nrf_drv_rtc_enable(&rtc);
}
/**
 * @brief Function for main application entry.
 */
int main(void)
{
		uint32_t ii,jj;
		uint32_t pre_count;
		uint32_t post_count;
		uint32_t diff_count;
		uint16_t temp;
		
		uint8_t TxBuf1[4];
		
    lfclk_config();//时钟配置
    rtc_config();//RTC配置
		uart_init();
		flash_init(); //假的初始化
    while (true)
    {
			if(flag)
			{
					
					//测试传输是否可靠
					/*TxBuf1[0] = '1';
					TxBuf1[1] = '0';
					TxBuf1[2] = '2';
					TxBuf1[3] = '4';
					for(ii = 0; ii < 4; ii ++)
					{
						while(app_uart_put(TxBuf1[ii])!= NRF_SUCCESS);
					}
					while(app_uart_put('\n')!= NRF_SUCCESS);*/
					/*nrf_drv_rtc_counter_clear(&rtc);
					nrf_delay_us(100);
					pre_count = nrf_drv_rtc_counter_get(&rtc);*/
					/*TxBuf1[0] = pre_count/10+'0';
					TxBuf1[1] = pre_count%10+'0';
					for(ii = 0; ii < 2; ii ++)
					{
						while(app_uart_put(TxBuf1[ii])!= NRF_SUCCESS);
					}*/
					
					if(flag == 1)
					{
						uart_upload_data(NULL,0,NULL);
						/*for(uint16_t ii = 0; ii < 1024; ii ++)
							while(app_uart_put('A')!=NRF_SUCCESS);*/
						
					/*for(kk = 0; kk < 32; kk ++)
					{
						if(flag == 0)
							break;*/
						/*for(jj = 0; jj < 1024; jj++)
						{
							while(flag == 0);
							for(ii = 0; ii < 1024; ii++)
							{
								while(flag == 0);
								while(app_uart_put(0x45)!=NRF_SUCCESS);
							}
								
						}
							post_count = nrf_drv_rtc_counter_get(&rtc);
							nrf_delay_us(5);
							diff_count = post_count-pre_count;
							//printf("\r\n%d",diff_count);*/
						/*
						for(jj = 0; jj < 12; jj ++)
						{
							while(flag == 0);
							
							for(ii = 0; ii < SECTOR_HEAD_COUNT;ii++)	//模仿sector头发送
							{
								while(flag == 0);
								while(app_uart_put(m_sector_head[ii])!=NRF_SUCCESS);
							}
							
							for(ii = 0; ii < SECTOR_DATA_COUNT;ii++)
							{
								while(flag == 0);
								while(app_uart_put(jj)!=NRF_SUCCESS);		//模仿数据发送
							}
							
						}
						
						//模仿结束数据发送
						
							while(flag == 0);
							while(app_uart_put(0xff)!=NRF_SUCCESS);
							*/
						flag = 0;
					}
					if(flag == 2)
					{
						printf("name:YOGA,id:1\r\n");
					}
					/*}*/

				
					flag = 0;
			}
    }
}



/** @} */
