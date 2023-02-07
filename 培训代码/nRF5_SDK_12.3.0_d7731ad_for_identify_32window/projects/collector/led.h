#ifndef _LED_H_
#define _LED_H_
#include "nrf_delay.h"
#include "nrf_gpio.h"

#ifdef RADIOLAND
static const uint8_t kLED0Pin = 29;
#else
static const uint8_t kLED0Pin = 6;
#endif
static const uint8_t kLED1Pin = 5;
static const uint8_t kLEDsPins[] = {kLED0Pin, kLED1Pin};

__STATIC_INLINE void led_set(uint8_t led, uint8_t state) {
#ifdef RADIOLAND
  nrf_gpio_pin_write(kLED0Pin, state);
#else
  nrf_gpio_pin_write(kLEDsPins[led], !state);
#endif
}

__STATIC_INLINE void led_init() {
  nrf_gpio_cfg_output(kLED0Pin);
  nrf_gpio_cfg_output(kLED1Pin);
  led_set(0, 0);
  led_set(1, 0);
}

__STATIC_INLINE void led_blink(uint8_t led, uint32_t time_ms) {
  led_set(led, 1);
  nrf_delay_ms(time_ms);
  led_set(led, 0);
}

__STATIC_INLINE void led_toggle(uint8_t led) {
  nrf_gpio_pin_toggle(kLEDsPins[led]);
}

#endif /* _LED_H_ */
