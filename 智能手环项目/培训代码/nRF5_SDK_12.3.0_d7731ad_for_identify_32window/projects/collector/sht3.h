#ifndef _SHT3_H_
#define _SHT3_H_

#include "app_twi.h"

typedef enum {
  SHT3_LOW_REPEATABLE = 0,
  SHT3_MEDIUM_REPEATABLE = 1,
  SHT3_HIGH_REPEATABLE = 2,
} sht3_repeatability_t;

typedef enum {
  SHT3_CLK_STRETCH_DISABLED = 0,
  SHT3_CLK_STRETCH_ENABLED = 1
} sht3_clock_stretching_t;

typedef struct {
  uint16_t temperature, humidity;
} sht3_data_t;
typedef void (*sht3_data_handler_t)(sht3_data_t data);

void sht3_init(app_twi_t* app_twi);
void sht3_reset(void);
void sht3_test(void);
/* void sht3_read_data(sht3_repeatability_t rep, sht3_data_handler_t handler); */
void sht3_read_data(sht3_data_handler_t handler);

#endif /* _SHT3_H_ */
