#ifndef _KX022_H_
#define _KX022_H_
#include "kx022_registers.h"

typedef struct {
  uint16_t number;
  int16_t x, y, z;
} kx022_data_t;

// output data rate type
typedef enum {
  KX022_ODR_12_5HZ = KX022_ODCNTL_OSA_12_5HZ,
  KX022_ODR_25HZ = KX022_ODCNTL_OSA_25HZ,
  KX022_ODR_50HZ = KX022_ODCNTL_OSA_50HZ,
  KX022_ODR_100HZ = KX022_ODCNTL_OSA_100HZ,
  KX022_ODR_200HZ = KX022_ODCNTL_OSA_200HZ,
  KX022_ODR_400HZ = KX022_ODCNTL_OSA_400HZ,
  KX022_ODR_800HZ = KX022_ODCNTL_OSA_800HZ,
  KX022_ODR_1600HZ = KX022_ODCNTL_OSA_1600HZ,
  KX022_ODR_0_781HZ = KX022_ODCNTL_OSA_0_781HZ,
  KX022_ODR_1_563HZ = KX022_ODCNTL_OSA_1_563HZ,
  KX022_ODR_3_125HZ = KX022_ODCNTL_OSA_3_125HZ,
  KX022_ODR_6_25HZ = KX022_ODCNTL_OSA_6_25HZ
} kx022_odr_t;

typedef void (*kx022_data_handler_t)(kx022_data_t data);
typedef void (*kx022_wake_up_callback_t)(void);

void kx022_init(app_twi_t* app_twi);
void kx022_start(void* data_handler);  // rtc_handler_t
void kx022_stop(void);
void kx022_set_wake_up(bool enable, bool off_mode,
                       kx022_wake_up_callback_t callback);
void kx022_read_data(void);
void kx022_set_output_data_rate(kx022_odr_t output_data_rate);

#endif /* _KX022_H_ */
