#include "nrf_gpio.h"
#include "nrf_drv_adc.h"
#define NRF_LOG_MODULE_NAME "adc"
#include "nrf_log.h"
#include "rtc.h"
#include "battery.h"
#define ADC_BUFFER_SIZE 1

static const nrf_adc_config_input_t kAnalogInput = NRF_ADC_CONFIG_INPUT_2;
static const uint8_t kCathodePin = 2;
/* // rtc_handler_t */
/* static void check_voltage_task(void* p_arguments); */

void battery_init(void) {
  nrf_gpio_cfg_output(kCathodePin);
  nrf_gpio_pin_write(kCathodePin, 1);
  nrf_drv_adc_config_t config = NRF_DRV_ADC_DEFAULT_CONFIG;
  APP_ERROR_CHECK(nrf_drv_adc_init(&config, NULL));

  int16_t value = battery_get_raw_data();
  NRF_LOG_INFO("Power voltage: " NRF_LOG_FLOAT_MARKER "V\n",
               NRF_LOG_FLOAT((float)value / 1024 * 1.2 * 3 * 2));
}

int16_t battery_get_raw_data(void) {
  nrf_gpio_pin_write(kCathodePin, 0);
  static nrf_drv_adc_channel_t channel = {{{
        .resolution = NRF_ADC_CONFIG_RES_10BIT,
        .input      = NRF_ADC_CONFIG_SCALING_INPUT_ONE_THIRD,
        .reference  = NRF_ADC_CONFIG_REF_VBG,
        .ain        = kAnalogInput
      }}, NULL};
  int16_t value;
  nrf_drv_adc_sample_convert(&channel, &value);
  nrf_gpio_pin_write(kCathodePin, 1);
  return value;
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
