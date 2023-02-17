#define NRF_LOG_MODULE_NAME "button"
#include "nrf_log.h"
#include "nrf_drv_gpiote.h"
#include "button.h"
#include "app_uart.h"
#include "led.h"
#include "nrf_soc.h"
#include "flash.h"
#include "rtc.h"
#include "nrf_drv_rtc.h"
#include "nrf52.h"
#include "nrf52_bitfields.h"
nrf_drv_rtc_t kRTC1 = NRF_DRV_RTC_INSTANCE(1);
static const uint8_t kButtonPin = 13;

static button_wake_up_callback_t m_wake_up_callback = NULL;

static void int_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action);
//8.29���
extern void uart_init(void);
static void delayed_system_off(void* p_arguments);

void button_init(void) {
  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(false);//��Ϊ�͵��߱仯�����¼�,flase��ʾ����port�ж�
  APP_ERROR_CHECK(nrf_drv_gpiote_in_init(kButtonPin, &in_config, int_handler));
	
	//nrf_drv_gpiote_in_event_enable(kButtonPin,true);			//
}

void button_set_wake_up(bool enable, bool off_mode,
                        button_wake_up_callback_t callback) {
  if (enable) {
    m_wake_up_callback = callback;
    nrf_drv_gpiote_in_event_enable(kButtonPin, true);
    if (off_mode) {
      nrf_gpio_cfg_sense_input(kButtonPin, NRF_GPIO_PIN_PULLDOWN, NRF_GPIO_PIN_SENSE_HIGH);//��Ϊ�������ŵ�ƽ�������ߵ�ƽ���
			delayed_system_off(NULL);
    }
  } else {
    nrf_drv_gpiote_in_event_disable(kButtonPin);
    nrf_gpio_cfg_sense_input(kButtonPin, NRF_GPIO_PIN_PULLDOWN, NRF_GPIO_PIN_NOSENSE);//��Ϊ�������ŵ�ƽ����������ƽ���
  }
}

static void int_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
   //NRF_LOG_DEBUG("pint int: %d action: %d\n", pin, action); 
  if (pin == kButtonPin && action == NRF_GPIOTE_POLARITY_LOTOHI) //��Ϊ�͵���
	{
			led_blink(0,200);//��֤���°�ťʱ����˸
			if(m_wake_up_callback)
				m_wake_up_callback();
			//TODO:������λ���ܣ������̰����¸�λ����
  }
	
	
}
static void delayed_system_off(void* p_arguments) {
  if (flash_is_idle()) {
		ret_code_t err_code;
    NRF_LOG_INFO("system off 1\n");
		//APP_ERROR_CHECK(sd_power_ramon_set( POWER_RAMON_OFFRAM1_Msk));			//��������
		//Ϩ��
		led_set(0,0);
		led_set(1,0);
		led_blink(0, 100);
		nrf_delay_ms(100);
		led_blink(0,100);
		nrf_delay_ms(100);
		led_blink(0,100);
		err_code = sd_power_system_off();
		NRF_LOG_INFO("error: %d\n", err_code);
//    APP_ERROR_CHECK(err_code);  //����ģʽ��ִ�лᱨ�������
  } 
		else {
    rtc_run_delay(100, kKX022Channel, delayed_system_off, NULL);
  }
}
