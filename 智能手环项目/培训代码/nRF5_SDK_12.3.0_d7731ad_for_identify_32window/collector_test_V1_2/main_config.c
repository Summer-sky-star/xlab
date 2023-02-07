#include "app_uart.h"
#include "uart_record.h"
#define UART_TX_BUF_SIZE 1024                         /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE 1                         /**< UART RX buffer size. */
#define RX_PIN_NUMBER    9
#deine  TX_PIN_NUMBER		 8
#define RTS_PIN_NUMBER	 15	
#define CTS_PIN_NUMBER	 16

static void uart_event_handle(app_uart_evt_t * p_event)
{
		static uint8_t data;
		if(p_event->evt_type == APP_UART_DATA_READY)
		{
			UNUSED_VARIABLE(app_uart_get(&data));
			if(data == 'S')
			{
				//TODO：发送传输数据的指令
				
			}
			else if(data == 'E')
			{
				//TODO：发送暂停传输数据的指令
			}
			else if(data == 'G')
			{
				//TODO:发送获取模块数据的指令
				
			}
		}
    else if (p_event->evt_type == APP_UART_COMMUNICATION_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_communication);
    }
    else if (p_event->evt_type == APP_UART_FIFO_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_code);
    }
}
static void uart_send_data(uint8_t* p_data, uint16_t length)
{
	uint16_t i;
	for(i = 0; i < length; i++)
	{
		while(app_uart_put(p_data[i])!=NRF_SUCCESS);
	}
}

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
          UART_BAUDRATE_BAUDRATE_Baud921600
      };

    APP_UART_FIFO_INIT(&comm_params,
                         UART_RX_BUF_SIZE,
                         UART_TX_BUF_SIZE,
                         uart_event_handle,
                         APP_IRQ_PRIORITY_LOWEST,
                         err_code);

    APP_ERROR_CHECK(err_code);
}