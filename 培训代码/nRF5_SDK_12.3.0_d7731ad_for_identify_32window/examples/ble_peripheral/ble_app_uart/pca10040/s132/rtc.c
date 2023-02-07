#include <time.h>
#include "nrf_drv_clock.h"
#include "nrf_drv_rtc.h"
#define NRF_LOG_MODULE_NAME "rtc"
#define NRF_LOG_LEVEL 3
#include "nrf_log.h"
#include "rtc.h"

// TODO:了解app_timer的工作原理，清楚清空计数器对app_timer的影响，然后改用app_timer实现这些功能。

static void rtc_handler(nrf_drv_rtc_int_type_t int_type);

static const uint8_t kChannelsNumber = 4;
static const nrf_drv_rtc_t kRTC1 = NRF_DRV_RTC_INSTANCE(1);

static uint64_t m_time = 0;
typedef struct {
  rtc_handler_t handler;
  void* p_arguments;
  uint32_t period_ms;
} task_t;
task_t m_tasks[kChannelsNumber];
uint8_t m_active_tasks_mask = 0;

void rtc_init(void) {
  /* APP_ERROR_CHECK(nrf_drv_clock_init()); */
  nrf_drv_clock_lfclk_request(NULL);

  //Initialize RTC instance
  nrf_drv_rtc_config_t config = NRF_DRV_RTC_DEFAULT_CONFIG;
  APP_ERROR_CHECK(nrf_drv_rtc_init(&kRTC1, &config, rtc_handler));

  nrf_drv_rtc_overflow_enable(&kRTC1, true);

  //Power on RTC instance
  nrf_drv_rtc_enable(&kRTC1);
}

bool rtc_reset_time(void) {
  if (!rtc_active_tasks()) {
    nrf_drv_rtc_counter_clear(&kRTC1);
    return true;
  } else {
    NRF_LOG_INFO("Task is running, can't reset time.\n");
  }
  return false;
}

void rtc_update_time(uint64_t new_time) {
  m_time = new_time;
  //NRF_LOG_INFO("Update time: %d\n",m_time);
  rtc_print_time(new_time);
}

// 返回以毫秒为单位的绝对时间
uint64_t rtc_get_time(void) {
  uint32_t counter = nrf_drv_rtc_counter_get(&kRTC1);
  /* NRF_LOG_DEBUG("counter: %d\n", counter); */
	//NRF_LOG_INFO("rtc_get_time: %d\n",counter);
  return m_time + (uint64_t)counter * 1000 / RTC_DEFAULT_CONFIG_FREQUENCY;
}

uint32_t rtc_get_counter(void) {
  return nrf_drv_rtc_counter_get(&kRTC1);
}

void rtc_print_time(uint64_t time_to_print) {
  uint64_t exact_time = rtc_get_time();
  char time_string[80];
  time_t time = (time_to_print ? time_to_print : exact_time) / 1000;
  struct tm ts = *localtime(&time);
  strftime(time_string, sizeof(time_string), "%Y-%m-%d %H:%M:%S", &ts);
  NRF_LOG_INFO("%s time: %s.%03d\n", (uint32_t)(time_to_print ? "print" : "current"),
               (uint32_t)time_string, exact_time % 1000);
}

void rtc_run_delay(uint32_t delay_ms, uint8_t channel,
                   rtc_handler_t handler, void* p_arguments) {
  rtc_repeat_run_delay(delay_ms, 0, channel, handler, p_arguments);
}

void rtc_repeat_run_delay(uint32_t delay_ms, uint32_t period_ms, uint8_t channel,
                          rtc_handler_t handler, void* p_arguments) {
  uint32_t counter = nrf_drv_rtc_counter_get(&kRTC1);
  /* NRF_LOG_DEBUG("run_delay counter: %d channel %d\n", counter, channel); */
  m_active_tasks_mask |= 1 << channel;
  m_tasks[channel].handler = handler;
  m_tasks[channel].p_arguments = p_arguments;
  m_tasks[channel].period_ms = period_ms;
  APP_ERROR_CHECK(nrf_drv_rtc_cc_set(&kRTC1,
                                     channel,
                                     counter + delay_ms * RTC_DEFAULT_CONFIG_FREQUENCY / 1000,
                                     true));
}

void rtc_run_at(uint64_t start_time, uint8_t channel,
                rtc_handler_t handler, void* p_arguments) {
  rtc_repeat_run_at(start_time, 0, channel, handler, p_arguments);
}

void rtc_repeat_run_at(uint64_t start_time, uint32_t period_ms,
                       uint8_t channel, rtc_handler_t handler,
                       void* p_arguments) {
  m_active_tasks_mask |= 1 << channel;
  m_tasks[channel].handler = handler;
  m_tasks[channel].p_arguments = p_arguments;
  m_tasks[channel].period_ms = period_ms;
  APP_ERROR_CHECK(nrf_drv_rtc_cc_set(&kRTC1,
                                     channel,
                                     (start_time - m_time) * RTC_DEFAULT_CONFIG_FREQUENCY / 1000,
                                     true));
}

void rtc_cancel(uint8_t channel) {
  m_active_tasks_mask &= ~(1 << channel);
  m_tasks[channel].period_ms = 0;
  APP_ERROR_CHECK(nrf_drv_rtc_cc_disable(&kRTC1, channel));
}

uint8_t rtc_active_tasks(void) {
  return m_active_tasks_mask;
}

static void rtc_handler(nrf_drv_rtc_int_type_t int_type) {
  /* uint32_t counter = nrf_drv_rtc_counter_get(&kRTC1); */
  /* NRF_LOG_DEBUG("run_handler counter: %d int %d\n", counter, int_type); */
  if (int_type <= NRF_DRV_RTC_INT_COMPARE3) {
    task_t* task = &m_tasks[int_type];
    if (task->handler) {
      uint32_t next_cc_set;
      if (task->period_ms) {
        next_cc_set = nrf_rtc_cc_get(NRF_RTC1, int_type) +
          task->period_ms * RTC_DEFAULT_CONFIG_FREQUENCY / 1000;
      } else {
        m_active_tasks_mask &= ~(1 << int_type);
      }
      task->handler(task->p_arguments);
      if (task->period_ms) {
        // 若下一个定时时间已过，直接执行回调
        while (next_cc_set < nrf_drv_rtc_counter_get(&kRTC1) + 10) {
          next_cc_set += task->period_ms * RTC_DEFAULT_CONFIG_FREQUENCY / 1000;
          task->handler(task->p_arguments);
        }
        APP_ERROR_CHECK(nrf_drv_rtc_cc_set(&kRTC1, int_type, next_cc_set, true));
      }
    }
  } else if (int_type == NRF_DRV_RTC_INT_OVERFLOW){
    m_time += ((uint64_t)1 << 24) * 1000 / RTC_DEFAULT_CONFIG_FREQUENCY;
  }
}
