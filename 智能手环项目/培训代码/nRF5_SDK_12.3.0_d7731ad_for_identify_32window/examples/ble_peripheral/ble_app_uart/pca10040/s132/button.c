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
//8.29添加
extern void uart_init(void);
static void delayed_system_off(void* p_arguments);

void button_init(void) {
  nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_LOTOHI(false);//改为低到高变化产生事件,flase表示采用port中断
  APP_ERROR_CHECK(nrf_drv_gpiote_in_init(kButtonPin, &in_config, int_handler));
	
	//nrf_drv_gpiote_in_event_enable(kButtonPin,true);			//
}

void button_set_wake_up(bool enable, bool off_mode,
                        button_wake_up_callback_t callback) {
  if (enable) {
    m_wake_up_callback = callback;
    nrf_drv_gpiote_in_event_enable(kButtonPin, true);
    if (off_mode) {
      nrf_gpio_cfg_sense_input(kButtonPin, NRF_GPIO_PIN_PULLDOWN, NRF_GPIO_PIN_SENSE_HIGH);//改为拉低引脚电平，开启高电平检测
			delayed_system_off(NULL);
    }
  } else {
    nrf_drv_gpiote_in_event_disable(kButtonPin);
    nrf_gpio_cfg_sense_input(kButtonPin, NRF_GPIO_PIN_PULLDOWN, NRF_GPIO_PIN_NOSENSE);//改为拉低引脚电平，不开启电平检测
  }
}

static void int_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action) {
   //NRF_LOG_DEBUG("pint int: %d action: %d\n", pin, action); 
  if (pin == kButtonPin && action == NRF_GPIOTE_POLARITY_LOTOHI) //改为低到高
	{
			led_blink(0,200);//验证按下按钮时灯闪烁
			if(m_wake_up_callback)
				m_wake_up_callback();
			//TODO:做个复位功能，连续短按两下复位？？
  }
	
	
}
static void delayed_system_off(void* p_arguments) {
  if (flash_is_idle()) {
		ret_code_t err_code;
    NRF_LOG_INFO("system off 1\n");
		//APP_ERROR_CHECK(sd_power_ramon_set( POWER_RAMON_OFFRAM1_Msk));			//保存数据
		//熄灯
		led_set(0,0);
		led_set(1,0);
		led_blink(0, 100);
		nrf_delay_ms(100);
		led_blink(0,100);
		nrf_delay_ms(100);
		led_blink(0,100);
		err_code = sd_power_system_off();
		NRF_LOG_INFO("error: %d\n", err_code);
//    APP_ERROR_CHECK(err_code);  //仿真模式下执行会报错，待解决
  } 
		else {
    rtc_run_delay(100, kKX022Channel, delayed_system_off, NULL);
  }
}
