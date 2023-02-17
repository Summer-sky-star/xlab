#include "app_twi.h"
#include "lsm6dso_reg.h"


typedef struct {
  uint16_t number;
  int16_t gx, gy, gz, ax, ay, az;
} lsm6dso_data_t;

//typedef struct {
//  enum {
//    LSM6DSO_SEL_BY_HW   = 0x00, /* bus mode select by HW (SPI 3W disable) */
//    LSM6DSO_SPI_4W      = 0x06, /* Only SPI: SDO / SDI separated pins */
//    LSM6DSO_SPI_3W      = 0x07, /* Only SPI: SDO / SDI share the same pin */
//    LSM6DSO_I2C         = 0x04, /* Only I2C */
//    LSM6DSO_I3C_T_50us  = 0x02, /* I3C: available time equal to 50 ¦Ìs */
//    LSM6DSO_I3C_T_2us   = 0x12, /* I3C: available time equal to 2 ¦Ìs */
//    LSM6DSO_I3C_T_1ms   = 0x22, /* I3C: available time equal to 1 ms */
//    LSM6DSO_I3C_T_25ms  = 0x32, /* I3C: available time equal to 25 ms */
//  } ui_bus_md;
//  enum {
//    LSM6DSO_SPI_4W_AUX  = 0x00,
//    LSM6DSO_SPI_3W_AUX  = 0x01,
//  } aux_bus_md;
//} lsm6dso_bus_mode_t;


typedef enum {
  LSM6DSO_XL_ODR_OFF    = 0xff,
  LSM6DSO_XL_ODR_12Hz5  = ODR_12Hz5,
  LSM6DSO_XL_ODR_26Hz   = ODR_26Hz,
  LSM6DSO_XL_ODR_52Hz   = ODR_52Hz,
  LSM6DSO_XL_ODR_104Hz  = ODR_104Hz,
  LSM6DSO_XL_ODR_208Hz  = ODR_208Hz,
  LSM6DSO_XL_ODR_417Hz  = ODR_417Hz,
  LSM6DSO_XL_ODR_833Hz  = ODR_833Hz,
  LSM6DSO_XL_ODR_1667Hz = ODR_1667Hz,
  LSM6DSO_XL_ODR_3333Hz = ODR_3333Hz,
  LSM6DSO_XL_ODR_6667Hz = ODR_6667Hz,
  LSM6DSO_XL_ODR_1Hz6   = ODR_1Hz6, /* (low power only) */
} lsm6dso_odr_xl_t;




typedef void (*lsm6dso_data_handler_t)(lsm6dso_data_t data);
void lsm6dso_start(void* data_handler);
void lsm6dso_check_id(void);
void lsm6dso_init(app_twi_t* app_twi);
void lsm6dso_read_data(void);
void lsm6dso_stop(void);
uint32_t lsm6dso_odr2frequency(lsm6dso_odr_xl_t output_data_rate);

