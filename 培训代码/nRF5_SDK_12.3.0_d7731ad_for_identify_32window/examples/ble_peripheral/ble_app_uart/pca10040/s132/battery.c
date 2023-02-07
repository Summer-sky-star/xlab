#include "nrf_gpio.h"
#include "nrf_drv_saadc.h"//2021.3.25修改
//#define NRF_LOG_MODULE_NAME "adc" 2021.3.25删去
#define NRF_LOG_MODULE_NAME "saadc"//2021.3.25修改
#include "nrf_log.h"
#include "rtc.h"
#include "battery.h"
#define SAADC_BUFFER_SIZE 1 //2021.3.25这个好像用不上

//static const nrf_saadc_input_t kAnalogInput = NRF_SAADC_INPUT_AIN2;//2021.3.25删去
static const uint8_t kCathodePin = 30;
/* // rtc_handler_t */
/* static void check_voltage_task(void* p_arguments); */
void saadc_callback(nrf_drv_saadc_evt_t const * p_event){}//2021.3.25设置回调事件，可以为空
void battery_init(void) {
	ret_code_t err_code;
  nrf_gpio_cfg_output(kCathodePin);
  nrf_gpio_pin_write(kCathodePin, 1);
  nrf_drv_saadc_config_t config = NRF_DRV_SAADC_DEFAULT_CONFIG;//2021.3.25修改
	nrf_saadc_channel_config_t channel_config =
  NRF_DRV_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN7);//2021.3.25新增配置通道，根据电路图设置物理引脚ain7
	err_code = nrf_drv_saadc_init(&config, saadc_callback);
	APP_ERROR_CHECK(err_code);
//  APP_ERROR_CHECK(nrf_drv_saadc_init(&config, NULL));//2021.3.25修改，新增回调事件，第一个参数不知是否要修改
	err_code = nrf_drv_saadc_channel_init(0, &channel_config);
	APP_ERROR_CHECK(err_code);
//	APP_ERROR_CHECK(nrf_drv_saadc_channel_init(0, &channel_config));//2021.3.25新增通道初始化，第一个参数是通道值
  int16_t value = (int16_t)(battery_get_raw_data());
  NRF_LOG_INFO("Power voltage: " NRF_LOG_FLOAT_MARKER "V\n",
               NRF_LOG_FLOAT((float)value / 1024 * 1.2 * 3 * 2));
}

int16_t battery_get_raw_data(void) {
  nrf_gpio_pin_write(kCathodePin, 0);
//  static nrf_drv_adc_channel_t channel = {{{
//        .resolution = NRF_ADC_CONFIG_RES_10BIT,
//        .input      = NRF_ADC_CONFIG_SCALING_INPUT_ONE_THIRD,
//        .reference  = NRF_ADC_CONFIG_REF_VBG,
//        .ain        = kAnalogInput
//      }}, NULL};//2021.3.25删去
	
  int16_t value;
  nrf_drv_saadc_sample_convert(0, &value);//2021.3.25第一个参数由channel修改为0
  nrf_gpio_pin_write(kCathodePin, 1);
  return (int16_t)(1.16*value);
}

/* void battery_start_monitor(void) { */
/*   // 测试功耗使用 */
/*   rtc_repeat_run_delay(10, 10000, kKX022Channel, check_voltage_task, NULL); */
/* } */

/* static void check_voltage_task(void* p_arguments) { */
/*   int16_t value = battery_get_raw_data(); */
/*   float voltage = (float)value / 1024 * 1.2 * 3 * 2; */
/*   NRF_LOG_INFO("Check voltage: " NRF_LOG_FLOAT_MARKER "V value: %d t: %d\n", */
/*                NRF_LOG_FLOAT(voltage), value, (uint32_t)rtc_get_time()); */
/* } */
