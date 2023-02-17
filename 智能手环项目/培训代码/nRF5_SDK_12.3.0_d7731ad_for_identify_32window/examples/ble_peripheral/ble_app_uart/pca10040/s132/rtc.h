#ifndef _RTC_H_
#define _RTC_H_
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
typedef void (*rtc_handler_t)(void* p_arguments);

// The channel number for rtc_run_delay() or rtc_run_at()
static const uint8_t kKX022Channel = 0;
static const uint8_t kFlashChannel = 1;
static const uint8_t kSHT3Channel = 2;
static const uint8_t kRecordChannel = 3;

void rtc_init(void);
bool rtc_reset_time(void);
void rtc_update_time(uint64_t new_time);
uint64_t rtc_get_time(void);
uint32_t rtc_get_counter(void);
void rtc_print_time(uint64_t time_to_print);
void rtc_run_delay(uint32_t delay_time, uint8_t channel,
                   rtc_handler_t handler, void* p_arguments);
void rtc_repeat_run_delay(uint32_t delay_ms, uint32_t period_ms, uint8_t channel,
                          rtc_handler_t handler, void* p_arguments);
void rtc_run_at(uint64_t start_time, uint8_t channel,
                rtc_handler_t handler, void* p_arguments);
void rtc_repeat_run_at(uint64_t start_time, uint32_t period, uint8_t channel,
                       rtc_handler_t handler, void* p_arguments);
void rtc_cancel(uint8_t channel);
uint8_t rtc_active_tasks(void);

#endif /* _RTC_H_ */
