/*
 ******************************************************************************
 * @file    lsm6dso_reg.h
 * @author  Sensors Software Solution Team
 * @brief   This file contains all the functions prototypes for the
 *          lsm6dso_reg.c driver.
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef LSM6DSO_REGS_H
#define LSM6DSO_REGS_H
#endif

#include <stdint.h>
#include <math.h>



#define PROPERTY_DISABLE                (0U)
#define PROPERTY_ENABLE                 (1U)


#define LSM6DSO_I2C_ADD                      0x6a  //修改为高七位从机地址

/** Device Identification (Who am I) **/
#define LSM6DSO_ID                           0x6C
#define LSM6DSO_FUNC_CFG_ACCESS              0x01U
#define LSM6DSO_PIN_CTRL                     0x02U
#define LSM6DSO_FIFO_CTRL1                   0x07U
#define LSM6DSO_FIFO_CTRL2                   0x08U
#define LSM6DSO_FIFO_CTRL3                   0x09U
#define LSM6DSO_FIFO_CTRL4                   0x0AU
#define LSM6DSO_COUNTER_BDR_REG1             0x0BU
#define LSM6DSO_COUNTER_BDR_REG2             0x0CU
#define LSM6DSO_INT1_CTRL  0x0D
#define LSM6DSO_INT2_CTRL                    0x0EU
#define LSM6DSO_WHO_AM_I                     0x0FU
#define LSM6DSO_CTRL1_XL                     0x10U
#define LSM6DSO_CTRL2_G                      0x11U
#define LSM6DSO_CTRL3_C                      0x12U
#define LSM6DSO_CTRL4_C                      0x13U
#define LSM6DSO_CTRL5_C                      0x14U
#define LSM6DSO_CTRL6_C                      0x15U
#define LSM6DSO_CTRL7_G                      0x16U
#define LSM6DSO_CTRL8_XL                     0x17U
#define LSM6DSO_CTRL9_XL                     0x18U
#define LSM6DSO_CTRL10_C                     0x19U
#define LSM6DSO_ALL_INT_SRC                  0x1AU
#define LSM6DSO_WAKE_UP_SRC                  0x1BU
#define LSM6DSO_TAP_SRC                      0x1CU
#define LSM6DSO_D6D_SRC                      0x1DU
#define LSM6DSO_STATUS_REG                   0x1EU
#define LSM6DSO_STATUS_SPIAUX                0x1EU
#define LSM6DSO_OUT_TEMP_L                   0x20U
#define LSM6DSO_OUT_TEMP_H                   0x21U
#define LSM6DSO_OUTX_L_G                     0x22U
#define LSM6DSO_OUTX_H_G                     0x23U
#define LSM6DSO_OUTY_L_G                     0x24U
#define LSM6DSO_OUTY_H_G                     0x25U
#define LSM6DSO_OUTZ_L_G                     0x26U
#define LSM6DSO_OUTZ_H_G                     0x27U
#define LSM6DSO_OUTX_L_A                     0x28U
#define LSM6DSO_OUTX_H_A                     0x29U
#define LSM6DSO_OUTY_L_A                     0x2AU
#define LSM6DSO_OUTY_H_A                     0x2BU
#define LSM6DSO_OUTZ_L_A                     0x2CU
#define LSM6DSO_OUTZ_H_A                     0x2DU
#define LSM6DSO_EMB_FUNC_STATUS_MAINPAGE     0x35U
#define LSM6DSO_FSM_STATUS_A_MAINPAGE        0x36U
#define LSM6DSO_FSM_STATUS_B_MAINPAGE        0x37U
#define LSM6DSO_STATUS_MASTER_MAINPAGE       0x39U
#define LSM6DSO_FIFO_STATUS1                 0x3AU
#define LSM6DSO_FIFO_STATUS2                 0x3B
#define LSM6DSO_TIMESTAMP0                   0x40U
#define LSM6DSO_TIMESTAMP1                   0x41U
#define LSM6DSO_TIMESTAMP2                   0x42U
#define LSM6DSO_TIMESTAMP3                   0x43U
#define LSM6DSO_TAP_CFG0                     0x56U
#define LSM6DSO_TAP_CFG1                     0x57U
#define LSM6DSO_TAP_CFG2                     0x58U
#define LSM6DSO_TAP_THS_6D                   0x59U
#define LSM6DSO_INT_DUR2                     0x5AU
#define LSM6DSO_WAKE_UP_THS                  0x5BU
#define LSM6DSO_WAKE_UP_DUR                  0x5CU
#define LSM6DSO_FREE_FALL                    0x5DU
#define LSM6DSO_MD1_CFG                      0x5EU
#define LSM6DSO_MD2_CFG                      0x5FU
#define LSM6DSO_I3C_BUS_AVB                  0x62U
#define LSM6DSO_INTERNAL_FREQ_FINE           0x63U
#define LSM6DSO_INT_OIS                      0x6FU
#define LSM6DSO_CTRL1_OIS                    0x70U
#define LSM6DSO_CTRL2_OIS                    0x71U
#define LSM6DSO_CTRL3_OIS                    0x72U
#define LSM6DSO_X_OFS_USR                    0x73U
#define LSM6DSO_Y_OFS_USR                    0x74U
#define LSM6DSO_Z_OFS_USR                    0x75U
#define LSM6DSO_FIFO_DATA_OUT_TAG            0x78U
#define LSM6DSO_FIFO_DATA_OUT_X_L            0x79U
#define LSM6DSO_FIFO_DATA_OUT_X_H            0x7AU
#define LSM6DSO_FIFO_DATA_OUT_Y_L            0x7BU
#define LSM6DSO_FIFO_DATA_OUT_Y_H            0x7CU
#define LSM6DSO_FIFO_DATA_OUT_Z_L            0x7DU
#define LSM6DSO_FIFO_DATA_OUT_Z_H            0x7EU
#define LSM6DSO_PAGE_SEL                     0x02U
#define LSM6DSO_EMB_FUNC_EN_A                0x04U
#define LSM6DSO_EMB_FUNC_EN_B                0x05U
#define LSM6DSO_PAGE_ADDRESS                 0x08U
#define LSM6DSO_PAGE_VALUE                   0x09U
#define LSM6DSO_EMB_FUNC_INT1                0x0AU
#define LSM6DSO_FSM_INT1_A                   0x0BU
#define LSM6DSO_FSM_INT1_B                   0x0CU
#define LSM6DSO_EMB_FUNC_INT2                0x0EU
#define LSM6DSO_FSM_INT2_A                   0x0FU
#define LSM6DSO_FSM_INT2_B                   0x10U
#define LSM6DSO_EMB_FUNC_STATUS              0x12U
#define LSM6DSO_FSM_STATUS_A                 0x13U
#define LSM6DSO_FSM_STATUS_B                 0x14U
#define LSM6DSO_PAGE_RW                      0x17U
#define LSM6DSO_EMB_FUNC_FIFO_CFG             0x44U
#define LSM6DSO_FSM_ENABLE_A                 0x46U
#define LSM6DSO_FSM_ENABLE_B                 0x47U
#define LSM6DSO_FSM_LONG_COUNTER_L           0x48U
#define LSM6DSO_FSM_LONG_COUNTER_H           0x49U
#define LSM6DSO_FSM_LONG_COUNTER_CLEAR       0x4AU
#define LSM6DSO_FSM_OUTS1                    0x4CU
#define LSM6DSO_FSM_OUTS2                    0x4DU
#define LSM6DSO_FSM_OUTS3                    0x4EU
#define LSM6DSO_FSM_OUTS4                    0x4FU
#define LSM6DSO_FSM_OUTS5                    0x50U
#define LSM6DSO_FSM_OUTS6                    0x51U
#define LSM6DSO_FSM_OUTS7                    0x52U
#define LSM6DSO_FSM_OUTS8                    0x53U
#define LSM6DSO_FSM_OUTS9                    0x54U
#define LSM6DSO_FSM_OUTS10                   0x55U
#define LSM6DSO_FSM_OUTS11                   0x56U
#define LSM6DSO_FSM_OUTS12                   0x57U
#define LSM6DSO_FSM_OUTS13                   0x58U
#define LSM6DSO_FSM_OUTS14                   0x59U
#define LSM6DSO_FSM_OUTS15                   0x5AU
#define LSM6DSO_FSM_OUTS16                   0x5BU
#define LSM6DSO_EMB_FUNC_ODR_CFG_B           0x5FU
#define LSM6DSO_STEP_COUNTER_L               0x62U
#define LSM6DSO_STEP_COUNTER_H               0x63U
#define LSM6DSO_EMB_FUNC_SRC                 0x64U
#define LSM6DSO_EMB_FUNC_INIT_A              0x66U
#define LSM6DSO_EMB_FUNC_INIT_B              0x67U
#define LSM6DSO_MAG_SENSITIVITY_L            0xBAU
#define LSM6DSO_MAG_SENSITIVITY_H            0xBBU
#define LSM6DSO_MAG_OFFX_L                   0xC0U
#define LSM6DSO_MAG_OFFX_H                   0xC1U
#define LSM6DSO_MAG_OFFY_L                   0xC2U
#define LSM6DSO_MAG_OFFY_H                   0xC3U
#define LSM6DSO_MAG_OFFZ_L                   0xC4U
#define LSM6DSO_MAG_OFFZ_H                   0xC5U
#define LSM6DSO_MAG_SI_XX_L                  0xC6U
#define LSM6DSO_MAG_SI_XX_H                  0xC7U
#define LSM6DSO_MAG_SI_XY_L                  0xC8U
#define LSM6DSO_MAG_SI_XY_H                  0xC9U
#define LSM6DSO_MAG_SI_XZ_L                  0xCAU
#define LSM6DSO_MAG_SI_XZ_H                  0xCBU
#define LSM6DSO_MAG_SI_YY_L                  0xCCU
#define LSM6DSO_MAG_SI_YY_H                  0xCDU
#define LSM6DSO_MAG_SI_YZ_L                  0xCEU
#define LSM6DSO_MAG_SI_YZ_H                  0xCFU
#define LSM6DSO_MAG_SI_ZZ_L                  0xD0U
#define LSM6DSO_MAG_SI_ZZ_H                  0xD1U
#define LSM6DSO_MAG_CFG_A                    0xD4U
#define LSM6DSO_MAG_CFG_B                    0xD5U
#define LSM6DSO_FSM_LC_TIMEOUT_L             0x17AU
#define LSM6DSO_FSM_LC_TIMEOUT_H             0x17BU
#define LSM6DSO_FSM_PROGRAMS                 0x17CU
#define LSM6DSO_FSM_START_ADD_L              0x17EU
#define LSM6DSO_FSM_START_ADD_H              0x17FU
#define LSM6DSO_PEDO_CMD_REG                 0x183U
#define LSM6DSO_PEDO_DEB_STEPS_CONF          0x184U
#define LSM6DSO_PEDO_SC_DELTAT_L             0x1D0U
#define LSM6DSO_PEDO_SC_DELTAT_H             0x1D1U
#define LSM6DSO_SENSOR_HUB_1                 0x02U
#define LSM6DSO_SENSOR_HUB_2                 0x03U
#define LSM6DSO_SENSOR_HUB_3                 0x04U
#define LSM6DSO_SENSOR_HUB_4                 0x05U
#define LSM6DSO_SENSOR_HUB_5                 0x06U
#define LSM6DSO_SENSOR_HUB_6                 0x07U
#define LSM6DSO_SENSOR_HUB_7                 0x08U
#define LSM6DSO_SENSOR_HUB_8                 0x09U
#define LSM6DSO_SENSOR_HUB_9                 0x0AU
#define LSM6DSO_SENSOR_HUB_10                0x0BU
#define LSM6DSO_SENSOR_HUB_11                0x0CU
#define LSM6DSO_SENSOR_HUB_12                0x0DU
#define LSM6DSO_SENSOR_HUB_13                0x0EU
#define LSM6DSO_SENSOR_HUB_14                0x0FU
#define LSM6DSO_SENSOR_HUB_15                0x10U
#define LSM6DSO_SENSOR_HUB_16                0x11U
#define LSM6DSO_SENSOR_HUB_17                0x12U
#define LSM6DSO_SENSOR_HUB_18                0x13U
#define LSM6DSO_MASTER_CONFIG                0x14U
#define LSM6DSO_SLV0_ADD                     0x15U
#define LSM6DSO_SLV0_SUBADD                  0x16U
#define LSM6DSO_SLV0_CONFIG                  0x17U
#define LSM6DSO_SLV1_ADD                     0x18U
#define LSM6DSO_SLV1_SUBADD                  0x19U
#define LSM6DSO_SLV1_CONFIG                  0x1AU
#define LSM6DSO_SLV2_ADD                     0x1BU
#define LSM6DSO_SLV2_SUBADD                  0x1CU
#define LSM6DSO_SLV2_CONFIG                  0x1DU
#define LSM6DSO_SLV3_ADD                     0x1EU
#define LSM6DSO_SLV3_SUBADD                  0x1FU
#define LSM6DSO_SLV3_CONFIG                  0x20U
#define LSM6DSO_DATAWRITE_SLV0               0x21U
#define LSM6DSO_STATUS_MASTER                0x22U
#define LSM6DSO_START_FSM_ADD                0x0400U


#define ODR_12Hz5         0x00
#define ODR_26Hz          0x01
#define ODR_52Hz          0x02
#define ODR_104Hz         0x03
#define ODR_208Hz         0x04
#define ODR_417Hz         0x05
#define ODR_833Hz         0x06
#define ODR_1667Hz        0x07
#define ODR_3333Hz        0x08
#define ODR_6667Hz        0x09
#define ODR_1Hz6          0x0a






/**
  * @defgroup LSM6DSO_Register_Union
  * @brief    This union group all the registers that has a bitfield
  *           description.
  *           This union is useful but not need by the driver.
  *
  *           REMOVING this union you are compliant with:
  *           MISRA-C 2012 [Rule 19.2] -> " Union are not allowed "
  *
  * @{
  *
  */


//typedef enum {
//  LSM6DSO_2g   = 0,
//  LSM6DSO_16g  = 1, /* if XL_FS_MODE = ‘1’ -> LSM6DSO_2g */
//  LSM6DSO_4g   = 2,
//  LSM6DSO_8g   = 3,
//} lsm6dso_fs_xl_t;


//typedef enum {
//  LSM6DSO_XL_ODR_OFF    = 0,
//  LSM6DSO_XL_ODR_12Hz5  = 1,
//  LSM6DSO_XL_ODR_26Hz   = 2,
//  LSM6DSO_XL_ODR_52Hz   = 3,
//  LSM6DSO_XL_ODR_104Hz  = 4,
//  LSM6DSO_XL_ODR_208Hz  = 5,
//  LSM6DSO_XL_ODR_417Hz  = 6,
//  LSM6DSO_XL_ODR_833Hz  = 7,
//  LSM6DSO_XL_ODR_1667Hz = 8,
//  LSM6DSO_XL_ODR_3333Hz = 9,
//  LSM6DSO_XL_ODR_6667Hz = 10,
//  LSM6DSO_XL_ODR_1Hz6   = 11, /* (low power only) */
//} lsm6dso_odr_xl_t;


//typedef enum {
//  LSM6DSO_250dps   = 0,
//  LSM6DSO_125dps   = 1,
//  LSM6DSO_500dps   = 2,
//  LSM6DSO_1000dps  = 4,
//  LSM6DSO_2000dps  = 6,
//} lsm6dso_fs_g_t;


//typedef enum {
//  LSM6DSO_GY_ODR_OFF    = 0,
//  LSM6DSO_GY_ODR_12Hz5  = 1,
//  LSM6DSO_GY_ODR_26Hz   = 2,
//  LSM6DSO_GY_ODR_52Hz   = 3,
//  LSM6DSO_GY_ODR_104Hz  = 4,
//  LSM6DSO_GY_ODR_208Hz  = 5,
//  LSM6DSO_GY_ODR_417Hz  = 6,
//  LSM6DSO_GY_ODR_833Hz  = 7,
//  LSM6DSO_GY_ODR_1667Hz = 8,
//  LSM6DSO_GY_ODR_3333Hz = 9,
//  LSM6DSO_GY_ODR_6667Hz = 10,
//} lsm6dso_odr_g_t;

//typedef enum {
//  LSM6DSO_LSb_1mg  = 0,
//  LSM6DSO_LSb_16mg = 1,
//} lsm6dso_usr_off_w_t;


//typedef enum {
//  LSM6DSO_HIGH_PERFORMANCE_MD  = 0,
//  LSM6DSO_LOW_NORMAL_POWER_MD  = 1,
//  LSM6DSO_ULTRA_LOW_POWER_MD   = 2,
//} lsm6dso_xl_hm_mode_t;


//typedef enum {
//  LSM6DSO_GY_HIGH_PERFORMANCE  = 0,
//  LSM6DSO_GY_NORMAL            = 1,
//} lsm6dso_g_hm_mode_t;


//typedef enum {
//  LSM6DSO_NO_ROUND      = 0,
//  LSM6DSO_ROUND_XL      = 1,
//  LSM6DSO_ROUND_GY      = 2,
//  LSM6DSO_ROUND_GY_XL   = 3,
//} lsm6dso_rounding_t;


//typedef enum {
//  LSM6DSO_USER_BANK           = 0,
//  LSM6DSO_SENSOR_HUB_BANK     = 1,
//  LSM6DSO_EMBEDDED_FUNC_BANK  = 2,
//} lsm6dso_reg_access_t;


//typedef enum {
//  LSM6DSO_DRDY_LATCHED = 0,
//  LSM6DSO_DRDY_PULSED  = 1,
//} lsm6dso_dataready_pulsed_t;


//typedef enum {
//  LSM6DSO_XL_ST_DISABLE  = 0,
//  LSM6DSO_XL_ST_POSITIVE = 1,
//  LSM6DSO_XL_ST_NEGATIVE = 2,
//} lsm6dso_st_xl_t;


//typedef enum {
//  LSM6DSO_GY_ST_DISABLE  = 0,
//  LSM6DSO_GY_ST_POSITIVE = 1,
//  LSM6DSO_GY_ST_NEGATIVE = 3,
//} lsm6dso_st_g_t;

//typedef enum {
//  LSM6DSO_ULTRA_LIGHT  = 0,
//  LSM6DSO_VERY_LIGHT   = 1,
//  LSM6DSO_LIGHT        = 2,
//  LSM6DSO_MEDIUM       = 3,
//  LSM6DSO_STRONG       = 4, /* not available for data rate > 1k670Hz */
//  LSM6DSO_VERY_STRONG  = 5, /* not available for data rate > 1k670Hz */
//  LSM6DSO_AGGRESSIVE   = 6, /* not available for data rate > 1k670Hz */
//  LSM6DSO_XTREME       = 7, /* not available for data rate > 1k670Hz */
//} lsm6dso_ftype_t;

//typedef enum {
//  LSM6DSO_HP_PATH_DISABLE_ON_OUT    = 0x00,
//  LSM6DSO_SLOPE_ODR_DIV_4           = 0x10,
//  LSM6DSO_HP_ODR_DIV_10             = 0x11,
//  LSM6DSO_HP_ODR_DIV_20             = 0x12,
//  LSM6DSO_HP_ODR_DIV_45             = 0x13,
//  LSM6DSO_HP_ODR_DIV_100            = 0x14,
//  LSM6DSO_HP_ODR_DIV_200            = 0x15,
//  LSM6DSO_HP_ODR_DIV_400            = 0x16,
//  LSM6DSO_HP_ODR_DIV_800            = 0x17,
//  LSM6DSO_HP_REF_MD_ODR_DIV_10      = 0x31,
//  LSM6DSO_HP_REF_MD_ODR_DIV_20      = 0x32,
//  LSM6DSO_HP_REF_MD_ODR_DIV_45      = 0x33,
//  LSM6DSO_HP_REF_MD_ODR_DIV_100     = 0x34,
//  LSM6DSO_HP_REF_MD_ODR_DIV_200     = 0x35,
//  LSM6DSO_HP_REF_MD_ODR_DIV_400     = 0x36,
//  LSM6DSO_HP_REF_MD_ODR_DIV_800     = 0x37,
//  LSM6DSO_LP_ODR_DIV_10             = 0x01,
//  LSM6DSO_LP_ODR_DIV_20             = 0x02,
//  LSM6DSO_LP_ODR_DIV_45             = 0x03,
//  LSM6DSO_LP_ODR_DIV_100            = 0x04,
//  LSM6DSO_LP_ODR_DIV_200            = 0x05,
//  LSM6DSO_LP_ODR_DIV_400            = 0x06,
//  LSM6DSO_LP_ODR_DIV_800            = 0x07,
//} lsm6dso_hp_slope_xl_en_t;


//typedef enum {
//  LSM6DSO_USE_SLOPE = 0,
//  LSM6DSO_USE_HPF   = 1,
//} lsm6dso_slope_fds_t;


//typedef enum {
//  LSM6DSO_HP_FILTER_NONE     = 0x00,
//  LSM6DSO_HP_FILTER_16mHz    = 0x80,
//  LSM6DSO_HP_FILTER_65mHz    = 0x81,
//  LSM6DSO_HP_FILTER_260mHz   = 0x82,
//  LSM6DSO_HP_FILTER_1Hz04    = 0x83,
//} lsm6dso_hpm_g_t;


//typedef enum {
//  LSM6DSO_AUX_PULL_UP_DISC       = 0,
//  LSM6DSO_AUX_PULL_UP_CONNECT    = 1,
//} lsm6dso_ois_pu_dis_t;


//typedef enum {
//  LSM6DSO_AUX_ON                    = 1,
//  LSM6DSO_AUX_ON_BY_AUX_INTERFACE   = 0,
//} lsm6dso_ois_on_t;


//typedef enum {
//  LSM6DSO_USE_SAME_XL_FS        = 0,
//  LSM6DSO_USE_DIFFERENT_XL_FS   = 1,
//} lsm6dso_xl_fs_mode_t;


//typedef enum {
//  LSM6DSO_AUX_XL_DISABLE = 0,
//  LSM6DSO_AUX_XL_POS     = 1,
//  LSM6DSO_AUX_XL_NEG     = 2,
//} lsm6dso_st_xl_ois_t;


//typedef enum {
//  LSM6DSO_AUX_DEN_ACTIVE_LOW     = 0,
//  LSM6DSO_AUX_DEN_ACTIVE_HIGH    = 1,
//} lsm6dso_den_lh_ois_t;


//typedef enum {
//  LSM6DSO_AUX_DEN_DISABLE         = 0,
//  LSM6DSO_AUX_DEN_LEVEL_LATCH     = 3,
//  LSM6DSO_AUX_DEN_LEVEL_TRIG      = 2,
//} lsm6dso_lvl2_ois_t;


//typedef enum {
//  LSM6DSO_AUX_DISABLE  = 0,
//  LSM6DSO_MODE_3_GY    = 1,
//  LSM6DSO_MODE_4_GY_XL = 3,
//} lsm6dso_ois_en_spi2_t;


//typedef enum {
//  LSM6DSO_250dps_AUX  = 0,
//  LSM6DSO_125dps_AUX  = 1,
//  LSM6DSO_500dps_AUX  = 2,
//  LSM6DSO_1000dps_AUX = 4,
//  LSM6DSO_2000dps_AUX = 6,
//} lsm6dso_fs_g_ois_t;


//typedef enum {
//  LSM6DSO_AUX_SPI_4_WIRE = 0,
//  LSM6DSO_AUX_SPI_3_WIRE = 1,
//} lsm6dso_sim_ois_t;


//typedef enum {
//  LSM6DSO_351Hz39 = 0,
//  LSM6DSO_236Hz63 = 1,
//  LSM6DSO_172Hz70 = 2,
//  LSM6DSO_937Hz91 = 3,
//} lsm6dso_ftype_ois_t;

//typedef enum {
//  LSM6DSO_AUX_HP_DISABLE = 0x00,
//  LSM6DSO_AUX_HP_Hz016   = 0x10,
//  LSM6DSO_AUX_HP_Hz065   = 0x11,
//  LSM6DSO_AUX_HP_Hz260   = 0x12,
//  LSM6DSO_AUX_HP_1Hz040  = 0x13,
//} lsm6dso_hpm_ois_t;


//typedef enum {
//  LSM6DSO_ENABLE_CLAMP  = 0,
//  LSM6DSO_DISABLE_CLAMP = 1,
//} lsm6dso_st_ois_clampdis_t;


//typedef enum {
//  LSM6DSO_AUX_GY_DISABLE = 0,
//  LSM6DSO_AUX_GY_POS     = 1,
//  LSM6DSO_AUX_GY_NEG     = 3,
//} lsm6dso_st_ois_t;

//typedef enum {
//  LSM6DSO_289Hz = 0,
//  LSM6DSO_258Hz = 1,
//  LSM6DSO_120Hz = 2,
//  LSM6DSO_65Hz2 = 3,
//  LSM6DSO_33Hz2 = 4,
//  LSM6DSO_16Hz6 = 5,
//  LSM6DSO_8Hz30 = 6,
//  LSM6DSO_4Hz15 = 7,
//} lsm6dso_filter_xl_conf_ois_t;


//typedef enum {
//  LSM6DSO_AUX_2g  = 0,
//  LSM6DSO_AUX_16g = 1,
//  LSM6DSO_AUX_4g  = 2,
//  LSM6DSO_AUX_8g  = 3,
//} lsm6dso_fs_xl_ois_t;


//typedef enum {
//  LSM6DSO_PULL_UP_DISC       = 0,
//  LSM6DSO_PULL_UP_CONNECT    = 1,
//} lsm6dso_sdo_pu_en_t;


//typedef enum {
//  LSM6DSO_SPI_4_WIRE = 0,
//  LSM6DSO_SPI_3_WIRE = 1,
//} lsm6dso_sim_t;


//typedef enum {
//  LSM6DSO_I2C_ENABLE  = 0,
//  LSM6DSO_I2C_DISABLE = 1,
//} lsm6dso_i2c_disable_t;


//typedef enum {
//  LSM6DSO_I3C_DISABLE         = 0x80,
//  LSM6DSO_I3C_ENABLE_T_50us   = 0x00,
//  LSM6DSO_I3C_ENABLE_T_2us    = 0x01,
//  LSM6DSO_I3C_ENABLE_T_1ms    = 0x02,
//  LSM6DSO_I3C_ENABLE_T_25ms   = 0x03,
//} lsm6dso_i3c_disable_t;


//typedef enum {
//  LSM6DSO_PULL_DOWN_DISC       = 0,
//  LSM6DSO_PULL_DOWN_CONNECT    = 1,
//} lsm6dso_int1_pd_en_t;;

//typedef enum {
//  LSM6DSO_PUSH_PULL   = 0,
//  LSM6DSO_OPEN_DRAIN  = 1,
//} lsm6dso_pp_od_t;


//typedef enum {
//  LSM6DSO_ACTIVE_HIGH = 0,
//  LSM6DSO_ACTIVE_LOW  = 1,
//} lsm6dso_h_lactive_t;


//typedef enum {
//  LSM6DSO_ALL_INT_PULSED            = 0,
//  LSM6DSO_BASE_LATCHED_EMB_PULSED   = 1,
//  LSM6DSO_BASE_PULSED_EMB_LATCHED   = 2,
//  LSM6DSO_ALL_INT_LATCHED           = 3,
//} lsm6dso_lir_t;


//typedef enum {
//  LSM6DSO_LSb_FS_DIV_64       = 0,
//  LSM6DSO_LSb_FS_DIV_256      = 1,
//} lsm6dso_wake_ths_w_t;

//typedef enum {
//  LSM6DSO_DRIVE_SLEEP_CHG_EVENT = 0,
//  LSM6DSO_DRIVE_SLEEP_STATUS    = 1,
//} lsm6dso_sleep_status_on_int_t;

//typedef enum {
//  LSM6DSO_XL_AND_GY_NOT_AFFECTED      = 0,
//  LSM6DSO_XL_12Hz5_GY_NOT_AFFECTED    = 1,
//  LSM6DSO_XL_12Hz5_GY_SLEEP           = 2,
//  LSM6DSO_XL_12Hz5_GY_PD              = 3,
//} lsm6dso_inact_en_t;

//typedef enum {
//  LSM6DSO_XYZ = 0,
//  LSM6DSO_YXZ = 1,
//  LSM6DSO_XZY = 2,
//  LSM6DSO_ZYX = 3,
//  LSM6DSO_YZX = 5,
//  LSM6DSO_ZXY = 6,
//} lsm6dso_tap_priority_t;

//typedef enum {
//  LSM6DSO_ONLY_SINGLE = 0,
//  LSM6DSO_BOTH_SINGLE_DOUBLE = 1,
//} lsm6dso_single_double_tap_t;

//typedef enum {
//  LSM6DSO_DEG_80  = 0,
//  LSM6DSO_DEG_70  = 1,
//  LSM6DSO_DEG_60  = 2,
//  LSM6DSO_DEG_50  = 3,
//} lsm6dso_sixd_ths_t;

//typedef enum {
//  LSM6DSO_FF_TSH_156mg = 0,
//  LSM6DSO_FF_TSH_219mg = 1,
//  LSM6DSO_FF_TSH_250mg = 2,
//  LSM6DSO_FF_TSH_312mg = 3,
//  LSM6DSO_FF_TSH_344mg = 4,
//  LSM6DSO_FF_TSH_406mg = 5,
//  LSM6DSO_FF_TSH_469mg = 6,
//  LSM6DSO_FF_TSH_500mg = 7,
//} lsm6dso_ff_ths_t;


//typedef enum {
//  LSM6DSO_CMP_DISABLE  = 0x00,
//  LSM6DSO_CMP_ALWAYS   = 0x04,
//  LSM6DSO_CMP_8_TO_1   = 0x05,
//  LSM6DSO_CMP_16_TO_1  = 0x06,
//  LSM6DSO_CMP_32_TO_1  = 0x07,
//} lsm6dso_uncoptr_rate_t;

//typedef enum {
//  LSM6DSO_XL_NOT_BATCHED       =  0,
//  LSM6DSO_XL_BATCHED_AT_12Hz5   =  1,
//  LSM6DSO_XL_BATCHED_AT_26Hz    =  2,
//  LSM6DSO_XL_BATCHED_AT_52Hz    =  3,
//  LSM6DSO_XL_BATCHED_AT_104Hz   =  4,
//  LSM6DSO_XL_BATCHED_AT_208Hz   =  5,
//  LSM6DSO_XL_BATCHED_AT_417Hz   =  6,
//  LSM6DSO_XL_BATCHED_AT_833Hz   =  7,
//  LSM6DSO_XL_BATCHED_AT_1667Hz  =  8,
//  LSM6DSO_XL_BATCHED_AT_3333Hz  =  9,
//  LSM6DSO_XL_BATCHED_AT_6667Hz  = 10,
//  LSM6DSO_XL_BATCHED_AT_6Hz5    = 11,
//} lsm6dso_bdr_xl_t;

//typedef enum {
//  LSM6DSO_GY_NOT_BATCHED         = 0,
//  LSM6DSO_GY_BATCHED_AT_12Hz5    = 1,
//  LSM6DSO_GY_BATCHED_AT_26Hz     = 2,
//  LSM6DSO_GY_BATCHED_AT_52Hz     = 3,
//  LSM6DSO_GY_BATCHED_AT_104Hz    = 4,
//  LSM6DSO_GY_BATCHED_AT_208Hz    = 5,
//  LSM6DSO_GY_BATCHED_AT_417Hz    = 6,
//  LSM6DSO_GY_BATCHED_AT_833Hz    = 7,
//  LSM6DSO_GY_BATCHED_AT_1667Hz   = 8,
//  LSM6DSO_GY_BATCHED_AT_3333Hz   = 9,
//  LSM6DSO_GY_BATCHED_AT_6667Hz   = 10,
//  LSM6DSO_GY_BATCHED_AT_6Hz5     = 11,
//} lsm6dso_bdr_gy_t;


//typedef enum {
//  LSM6DSO_BYPASS_MODE             = 0,
//  LSM6DSO_FIFO_MODE               = 1,
//  LSM6DSO_STREAM_TO_FIFO_MODE     = 3,
//  LSM6DSO_BYPASS_TO_STREAM_MODE   = 4,
//  LSM6DSO_STREAM_MODE             = 6,
//  LSM6DSO_BYPASS_TO_FIFO_MODE     = 7,
//} lsm6dso_fifo_mode_t;


//typedef enum {
//  LSM6DSO_TEMP_NOT_BATCHED        = 0,
//  LSM6DSO_TEMP_BATCHED_AT_1Hz6    = 1,
//  LSM6DSO_TEMP_BATCHED_AT_12Hz5   = 2,
//  LSM6DSO_TEMP_BATCHED_AT_52Hz    = 3,
//} lsm6dso_odr_t_batch_t;

//typedef enum {
//  LSM6DSO_NO_DECIMATION = 0,
//  LSM6DSO_DEC_1         = 1,
//  LSM6DSO_DEC_8         = 2,
//  LSM6DSO_DEC_32        = 3,
//} lsm6dso_odr_ts_batch_t;


//typedef enum {
//  LSM6DSO_XL_BATCH_EVENT   = 0,
//  LSM6DSO_GYRO_BATCH_EVENT = 1,
//} lsm6dso_trig_counter_bdr_t;

//typedef enum {
//  LSM6DSO_GYRO_NC_TAG    = 1,
//  LSM6DSO_XL_NC_TAG,
//  LSM6DSO_TEMPERATURE_TAG,
//  LSM6DSO_TIMESTAMP_TAG,
//  LSM6DSO_CFG_CHANGE_TAG,
//  LSM6DSO_XL_NC_T_2_TAG,
//  LSM6DSO_XL_NC_T_1_TAG,
//  LSM6DSO_XL_2XC_TAG,
//  LSM6DSO_XL_3XC_TAG,
//  LSM6DSO_GYRO_NC_T_2_TAG,
//  LSM6DSO_GYRO_NC_T_1_TAG,
//  LSM6DSO_GYRO_2XC_TAG,
//  LSM6DSO_GYRO_3XC_TAG,
//  LSM6DSO_SENSORHUB_SLAVE0_TAG,
//  LSM6DSO_SENSORHUB_SLAVE1_TAG,
//  LSM6DSO_SENSORHUB_SLAVE2_TAG,
//  LSM6DSO_SENSORHUB_SLAVE3_TAG,
//  LSM6DSO_STEP_CPUNTER_TAG,
//  LSM6DSO_GAME_ROTATION_TAG,
//  LSM6DSO_GEOMAG_ROTATION_TAG,
//  LSM6DSO_ROTATION_TAG,
//  LSM6DSO_SENSORHUB_NACK_TAG  = 0x19,
//} lsm6dso_fifo_tag_t;

//typedef enum {
//  LSM6DSO_DEN_DISABLE    = 0,
//  LSM6DSO_LEVEL_FIFO     = 6,
//  LSM6DSO_LEVEL_LETCHED  = 3,
//  LSM6DSO_LEVEL_TRIGGER  = 2,
//  LSM6DSO_EDGE_TRIGGER   = 4,
//} lsm6dso_den_mode_t;

//typedef enum {
//  LSM6DSO_DEN_ACT_LOW  = 0,
//  LSM6DSO_DEN_ACT_HIGH = 1,
//} lsm6dso_den_lh_t;


//typedef enum {
//  LSM6DSO_STAMP_IN_GY_DATA     = 0,
//  LSM6DSO_STAMP_IN_XL_DATA     = 1,
//  LSM6DSO_STAMP_IN_GY_XL_DATA  = 2,
//} lsm6dso_den_xl_g_t;

//typedef enum {
//  LSM6DSO_PEDO_BASE_MODE            = 0x00,
//  LSM6DSO_FALSE_STEP_REJ            = 0x10,
//  LSM6DSO_FALSE_STEP_REJ_ADV_MODE   = 0x30,
//} lsm6dso_pedo_md_t;

//typedef enum {
//  LSM6DSO_EVERY_STEP     = 0,
//  LSM6DSO_COUNT_OVERFLOW = 1,
//} lsm6dso_carry_count_en_t;

//typedef enum {
//  LSM6DSO_Z_EQ_Y     = 0,
//  LSM6DSO_Z_EQ_MIN_Y = 1,
//  LSM6DSO_Z_EQ_X     = 2,
//  LSM6DSO_Z_EQ_MIN_X = 3,
//  LSM6DSO_Z_EQ_MIN_Z = 4,
//  LSM6DSO_Z_EQ_Z     = 5,
//} lsm6dso_mag_z_axis_t;

//typedef enum {
//  LSM6DSO_Y_EQ_Y     = 0,
//  LSM6DSO_Y_EQ_MIN_Y = 1,
//  LSM6DSO_Y_EQ_X     = 2,
//  LSM6DSO_Y_EQ_MIN_X = 3,
//  LSM6DSO_Y_EQ_MIN_Z = 4,
//  LSM6DSO_Y_EQ_Z     = 5,
//} lsm6dso_mag_y_axis_t;

//typedef enum {
//  LSM6DSO_X_EQ_Y     = 0,
//  LSM6DSO_X_EQ_MIN_Y = 1,
//  LSM6DSO_X_EQ_X     = 2,
//  LSM6DSO_X_EQ_MIN_X = 3,
//  LSM6DSO_X_EQ_MIN_Z = 4,
//  LSM6DSO_X_EQ_Z     = 5,
//} lsm6dso_mag_x_axis_t;

//typedef enum {
//  LSM6DSO_LC_NORMAL     = 0,
//  LSM6DSO_LC_CLEAR      = 1,
//  LSM6DSO_LC_CLEAR_DONE = 2,
//} lsm6dso_fsm_lc_clr_t;


//typedef enum {
//  LSM6DSO_ODR_FSM_12Hz5 = 0,
//  LSM6DSO_ODR_FSM_26Hz  = 1,
//  LSM6DSO_ODR_FSM_52Hz  = 2,
//  LSM6DSO_ODR_FSM_104Hz = 3,
//} lsm6dso_fsm_odr_t;


//typedef enum {
//  LSM6DSO_SLV_0       = 0,
//  LSM6DSO_SLV_0_1     = 1,
//  LSM6DSO_SLV_0_1_2   = 2,
//  LSM6DSO_SLV_0_1_2_3 = 3,
//} lsm6dso_aux_sens_on_t;


//typedef enum {
//  LSM6DSO_EXT_PULL_UP      = 0,
//  LSM6DSO_INTERNAL_PULL_UP = 1,
//} lsm6dso_shub_pu_en_t;


//typedef enum {
//  LSM6DSO_EXT_ON_INT2_PIN = 1,
//  LSM6DSO_XL_GY_DRDY      = 0,
//} lsm6dso_start_config_t;


//typedef enum {
//  LSM6DSO_EACH_SH_CYCLE    = 0,
//  LSM6DSO_ONLY_FIRST_CYCLE = 1,
//} lsm6dso_write_once_t;


//typedef enum {
//  LSM6DSO_SH_ODR_104Hz = 0,
//  LSM6DSO_SH_ODR_52Hz  = 1,
//  LSM6DSO_SH_ODR_26Hz  = 2,
//  LSM6DSO_SH_ODR_13Hz  = 3,
//} lsm6dso_shub_odr_t;


//typedef struct {
//  uint8_t   slv0_add;
//  uint8_t   slv0_subadd;
//  uint8_t   slv0_data;
//} lsm6dso_sh_cfg_write_t;


//typedef struct {
//  uint8_t   slv_add;
//  uint8_t   slv_subadd;
//  uint8_t   slv_len;
//} lsm6dso_sh_cfg_read_t;

//typedef struct {
//  uint8_t ui;
//  uint8_t aux;
//} lsm6dso_id_t;


//typedef struct {
//  enum {
//    LSM6DSO_SEL_BY_HW   = 0x00, /* bus mode select by HW (SPI 3W disable) */
//    LSM6DSO_SPI_4W      = 0x06, /* Only SPI: SDO / SDI separated pins */
//    LSM6DSO_SPI_3W      = 0x07, /* Only SPI: SDO / SDI share the same pin */
//    LSM6DSO_I2C         = 0x04, /* Only I2C */
//    LSM6DSO_I3C_T_50us  = 0x02, /* I3C: available time equal to 50 μs */
//    LSM6DSO_I3C_T_2us   = 0x12, /* I3C: available time equal to 2 μs */
//    LSM6DSO_I3C_T_1ms   = 0x22, /* I3C: available time equal to 1 ms */
//    LSM6DSO_I3C_T_25ms  = 0x32, /* I3C: available time equal to 25 ms */
//  } ui_bus_md;
//  enum {
//    LSM6DSO_SPI_4W_AUX  = 0x00,
//    LSM6DSO_SPI_3W_AUX  = 0x01,
//  } aux_bus_md;
//} lsm6dso_bus_mode_t;


//typedef enum {
//  LSM6DSO_DRV_RDY   = 0x00, /* Initialize the device for driver usage */
//  LSM6DSO_BOOT      = 0x01, /* Restore calib. param. ( it takes 10ms ) */
//  LSM6DSO_RESET     = 0x02, /* Reset configuration registers */
//  LSM6DSO_FIFO_COMP = 0x04, /* FIFO compression initialization request. */
//  LSM6DSO_FSM       = 0x08, /* Finite State Machine initialization request */
//  LSM6DSO_PEDO      = 0x20, /* Pedometer algo initialization request. */
//  LSM6DSO_TILT      = 0x40, /* Tilt algo initialization request */
//  LSM6DSO_SMOTION   = 0x80, /* Significant Motion initialization request */
//} lsm6dso_init_t;

//typedef struct {
//uint8_t sw_reset           :
//  1; /* Restoring configuration registers */
//  uint8_t boot               : 1; /* Restoring calibration parameters */
//  uint8_t drdy_xl            : 1; /* Accelerometer data ready */
//  uint8_t drdy_g             : 1; /* Gyroscope data ready */
//  uint8_t drdy_temp          : 1; /* Temperature data ready */
//  uint8_t ois_drdy_xl        : 1; /* Accelerometer data ready on OIS */
//  uint8_t ois_drdy_g         : 1; /* Gyroscope data ready on OIS */
//uint8_t ois_gyro_settling  :
//  1; /* Gyroscope is in the settling phase */
//} lsm6dso_status_t;

//typedef struct {
//  uint8_t sdo_sa0_pull_up     : 1; /* 1 = pull-up on SDO/SA0 pin */
//uint8_t aux_sdo_ocs_pull_up :
//  1; /* 1 = pull-up on OCS_Aux/SDO_Aux pins */
//  uint8_t int1_int2_push_pull : 1; /* 1 = push-pull / 0 = open-drain*/
//uint8_t int1_pull_down      :
//  1; /* 1 = pull-down always disabled (0=auto) */
//} lsm6dso_pin_conf_t;

//typedef struct {
//  uint8_t active_low   : 1; /* 1 = active low / 0 = active high */
//uint8_t base_latched :
//  1; /* base functions are: FF, WU, 6D, Tap, Act/Inac */
//uint8_t emb_latched  :
//  1; /* emb functions are: Pedo, Tilt, SMot, Timestamp */
//} lsm6dso_int_mode_t;


//typedef struct {
//  uint8_t drdy_xl       : 1; /* Accelerometer data ready */
//  uint8_t drdy_g        : 1; /* Gyroscope data ready */
//uint8_t drdy_temp     :
//  1; /* Temperature data ready (1 = int2 pin disable) */
//  uint8_t boot          : 1; /* Restoring calibration parameters */
//  uint8_t fifo_th       : 1; /* FIFO threshold reached */
//  uint8_t fifo_ovr      : 1; /* FIFO overrun */
//  uint8_t fifo_full     : 1; /* FIFO full */
//  uint8_t fifo_bdr      : 1; /* FIFO Batch counter threshold reached */
//uint8_t den_flag      :
//  1; /* external trigger level recognition (DEN) */
//  uint8_t sh_endop      : 1; /* sensor hub end operation */
//uint8_t timestamp     :
//  1; /* timestamp overflow (1 = int2 pin disable) */
//  uint8_t six_d         : 1; /* orientation change (6D/4D detection) */
//  uint8_t double_tap    : 1; /* double-tap event */
//  uint8_t free_fall     : 1; /* free fall event */
//  uint8_t wake_up       : 1; /* wake up event */
//  uint8_t single_tap    : 1; /* single-tap event */
//uint8_t sleep_change  :
//  1; /* Act/Inact (or Vice-versa) status changed */
//  uint8_t step_detector : 1; /* Step detected */
//  uint8_t tilt          : 1; /* Relative tilt event detected */
//  uint8_t sig_mot       : 1; /* "significant motion" event detected */
//uint8_t fsm_lc        :
//  1; /* fsm long counter timeout interrupt event */
//  uint8_t fsm1          : 1; /* fsm 1 interrupt event */
//  uint8_t fsm2          : 1; /* fsm 2 interrupt event */
//  uint8_t fsm3          : 1; /* fsm 3 interrupt event */
//  uint8_t fsm4          : 1; /* fsm 4 interrupt event */
//  uint8_t fsm5          : 1; /* fsm 5 interrupt event */
//  uint8_t fsm6          : 1; /* fsm 6 interrupt event */
//  uint8_t fsm7          : 1; /* fsm 7 interrupt event */
//  uint8_t fsm8          : 1; /* fsm 8 interrupt event */
//  uint8_t fsm9          : 1; /* fsm 9 interrupt event */
//  uint8_t fsm10         : 1; /* fsm 10 interrupt event */
//  uint8_t fsm11         : 1; /* fsm 11 interrupt event */
//  uint8_t fsm12         : 1; /* fsm 12 interrupt event */
//  uint8_t fsm13         : 1; /* fsm 13 interrupt event */
//  uint8_t fsm14         : 1; /* fsm 14 interrupt event */
//  uint8_t fsm15         : 1; /* fsm 15 interrupt event */
//  uint8_t fsm16         : 1; /* fsm 16 interrupt event */
//  uint8_t mlc1          : 1; /* mlc 1 interrupt event */
//  uint8_t mlc2          : 1; /* mlc 2 interrupt event */
//  uint8_t mlc3          : 1; /* mlc 3 interrupt event */
//  uint8_t mlc4          : 1; /* mlc 4 interrupt event */
//  uint8_t mlc5          : 1; /* mlc 5 interrupt event */
//  uint8_t mlc6          : 1; /* mlc 6 interrupt event */
//  uint8_t mlc7          : 1; /* mlc 7 interrupt event */
//  uint8_t mlc8          : 1; /* mlc 8 interrupt event */
//} lsm6dso_pin_int1_route_t;


//typedef struct {
//  uint8_t drdy_ois      : 1; /* OIS chain data ready */
//  uint8_t drdy_xl       : 1; /* Accelerometer data ready */
//  uint8_t drdy_g        : 1; /* Gyroscope data ready */
//  uint8_t drdy_temp     : 1; /* Temperature data ready */
//  uint8_t fifo_th       : 1; /* FIFO threshold reached */
//  uint8_t fifo_ovr      : 1; /* FIFO overrun */
//  uint8_t fifo_full     : 1; /* FIFO full */
//  uint8_t fifo_bdr      : 1; /* FIFO Batch counter threshold reached */
//  uint8_t timestamp     : 1; /* timestamp overflow */
//  uint8_t six_d         : 1; /* orientation change (6D/4D detection) */
//  uint8_t double_tap    : 1; /* double-tap event */
//  uint8_t free_fall     : 1; /* free fall event */
//  uint8_t wake_up       : 1; /* wake up event */
//  uint8_t single_tap    : 1; /* single-tap event */
//uint8_t sleep_change  :
//  1; /* Act/Inact (or Vice-versa) status changed */
//  uint8_t step_detector : 1; /* Step detected */
//  uint8_t tilt          : 1; /* Relative tilt event detected */
//  uint8_t sig_mot       : 1; /* "significant motion" event detected */
//uint8_t fsm_lc        :
//  1; /* fsm long counter timeout interrupt event */
//  uint8_t fsm1          : 1; /* fsm 1 interrupt event */
//  uint8_t fsm2          : 1; /* fsm 2 interrupt event */
//  uint8_t fsm3          : 1; /* fsm 3 interrupt event */
//  uint8_t fsm4          : 1; /* fsm 4 interrupt event */
//  uint8_t fsm5          : 1; /* fsm 5 interrupt event */
//  uint8_t fsm6          : 1; /* fsm 6 interrupt event */
//  uint8_t fsm7          : 1; /* fsm 7 interrupt event */
//  uint8_t fsm8          : 1; /* fsm 8 interrupt event */
//  uint8_t fsm9          : 1; /* fsm 9 interrupt event */
//  uint8_t fsm10         : 1; /* fsm 10 interrupt event */
//  uint8_t fsm11         : 1; /* fsm 11 interrupt event */
//  uint8_t fsm12         : 1; /* fsm 12 interrupt event */
//  uint8_t fsm13         : 1; /* fsm 13 interrupt event */
//  uint8_t fsm14         : 1; /* fsm 14 interrupt event */
//  uint8_t fsm15         : 1; /* fsm 15 interrupt event */
//  uint8_t fsm16         : 1; /* fsm 16 interrupt event */
//  uint8_t mlc1          : 1; /* mlc 1 interrupt event */
//  uint8_t mlc2          : 1; /* mlc 2 interrupt event */
//  uint8_t mlc3          : 1; /* mlc 3 interrupt event */
//  uint8_t mlc4          : 1; /* mlc 4 interrupt event */
//  uint8_t mlc5          : 1; /* mlc 5 interrupt event */
//  uint8_t mlc6          : 1; /* mlc 6 interrupt event */
//  uint8_t mlc7          : 1; /* mlc 7 interrupt event */
//  uint8_t mlc8          : 1; /* mlc 8 interrupt event */
//} lsm6dso_pin_int2_route_t;


//typedef struct {
//  uint8_t drdy_xl          :  1; /* Accelerometer data ready */
//  uint8_t drdy_g           :  1; /* Gyroscope data ready */
//  uint8_t drdy_temp        :  1; /* Temperature data ready */
//uint8_t den_flag         :
//  1; /* external trigger level recognition (DEN) */
//uint8_t timestamp        :
//  1; /* timestamp overflow (1 = int2 pin disable) */
//  uint8_t free_fall        :  1; /* free fall event */
//  uint8_t wake_up          :  1; /* wake up event */
//  uint8_t wake_up_z        :  1; /* wake up on Z axis event */
//  uint8_t wake_up_y        :  1; /* wake up on Y axis event */
//  uint8_t wake_up_x        :  1; /* wake up on X axis event */
//  uint8_t single_tap       :  1; /* single-tap event */
//  uint8_t double_tap       :  1; /* double-tap event */
//  uint8_t tap_z            :  1; /* single-tap on Z axis event */
//  uint8_t tap_y            :  1; /* single-tap on Y axis event */
//  uint8_t tap_x            :  1; /* single-tap on X axis event */
//  uint8_t tap_sign         :  1; /* sign of tap event (0-pos / 1-neg) */
//uint8_t six_d            :
//  1; /* orientation change (6D/4D detection) */
//uint8_t six_d_xl         :
//  1; /* X-axis low 6D/4D event (under threshold) */
//uint8_t six_d_xh         :
//  1; /* X-axis high 6D/4D event (over threshold) */
//uint8_t six_d_yl         :
//  1; /* Y-axis low 6D/4D event (under threshold) */
//uint8_t six_d_yh         :
//  1; /* Y-axis high 6D/4D event (over threshold) */
//uint8_t six_d_zl         :
//  1; /* Z-axis low 6D/4D event (under threshold) */
//uint8_t six_d_zh         :
//  1; /* Z-axis high 6D/4D event (over threshold) */
//uint8_t sleep_change     :
//  1; /* Act/Inact (or Vice-versa) status changed */
//uint8_t sleep_state      :
//  1; /* Act/Inact status flag (0-Act / 1-Inact) */
//  uint8_t step_detector    :  1; /* Step detected */
//  uint8_t tilt             :  1; /* Relative tilt event detected */
//uint8_t sig_mot          :
//  1; /* "significant motion" event detected */
//uint8_t fsm_lc           :
//  1; /* fsm long counter timeout interrupt event */
//  uint8_t fsm1             :  1; /* fsm 1 interrupt event */
//  uint8_t fsm2             :  1; /* fsm 2 interrupt event */
//  uint8_t fsm3             :  1; /* fsm 3 interrupt event */
//  uint8_t fsm4             :  1; /* fsm 4 interrupt event */
//  uint8_t fsm5             :  1; /* fsm 5 interrupt event */
//  uint8_t fsm6             :  1; /* fsm 6 interrupt event */
//  uint8_t fsm7             :  1; /* fsm 7 interrupt event */
//  uint8_t fsm8             :  1; /* fsm 8 interrupt event */
//  uint8_t fsm9             :  1; /* fsm 9 interrupt event */
//  uint8_t fsm10            :  1; /* fsm 10 interrupt event */
//  uint8_t fsm11            :  1; /* fsm 11 interrupt event */
//  uint8_t fsm12            :  1; /* fsm 12 interrupt event */
//  uint8_t fsm13            :  1; /* fsm 13 interrupt event */
//  uint8_t fsm14            :  1; /* fsm 14 interrupt event */
//  uint8_t fsm15            :  1; /* fsm 15 interrupt event */
//  uint8_t fsm16            :  1; /* fsm 16 interrupt event */
//  uint8_t mlc1             :  1; /* mlc 1 interrupt event */
//  uint8_t mlc2             :  1; /* mlc 2 interrupt event */
//  uint8_t mlc3             :  1; /* mlc 3 interrupt event */
//  uint8_t mlc4             :  1; /* mlc 4 interrupt event */
//  uint8_t mlc5             :  1; /* mlc 5 interrupt event */
//  uint8_t mlc6             :  1; /* mlc 6 interrupt event */
//  uint8_t mlc7             :  1; /* mlc 7 interrupt event */
//  uint8_t mlc8             :  1; /* mlc 8 interrupt event */
//  uint8_t sh_endop         :  1; /* sensor hub end operation */
//uint8_t sh_slave0_nack   :
//  1; /* Not acknowledge on sensor hub slave 0 */
//uint8_t sh_slave1_nack   :
//  1; /* Not acknowledge on sensor hub slave 1 */
//uint8_t sh_slave2_nack   :
//  1; /* Not acknowledge on sensor hub slave 2 */
//uint8_t sh_slave3_nack   :
//  1; /* Not acknowledge on sensor hub slave 3 */
//uint8_t sh_wr_once       :
//  1; /* "WRITE_ONCE" end on sensor hub slave 0 */
//uint16_t fifo_diff       :
//  10; /* Number of unread sensor data in FIFO*/
//  uint8_t fifo_ovr_latched :  1; /* Latched FIFO overrun status */
//uint8_t fifo_bdr         :
//  1; /* FIFO Batch counter threshold reached */
//  uint8_t fifo_full        :  1; /* FIFO full */
//  uint8_t fifo_ovr         :  1; /* FIFO overrun */
//  uint8_t fifo_th          :  1; /* FIFO threshold reached */
//} lsm6dso_all_sources_t;


//typedef struct {
//  uint8_t odr_fine_tune;
//} dev_cal_t;

//typedef struct {
//  struct {
//    struct {
//      enum {
//        LSM6DSO_XL_UI_OFF       = 0x00, /* in power down */
//        LSM6DSO_XL_UI_1Hz6_LP   = 0x1B, /* @1Hz6 (low power) */
//        LSM6DSO_XL_UI_1Hz6_ULP  = 0x2B, /* @1Hz6 (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_12Hz5_HP  = 0x01, /* @12Hz5 (high performance) */
//        LSM6DSO_XL_UI_12Hz5_LP  = 0x11, /* @12Hz5 (low power) */
//        LSM6DSO_XL_UI_12Hz5_ULP = 0x21, /* @12Hz5 (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_26Hz_HP   = 0x02, /* @26Hz  (high performance) */
//        LSM6DSO_XL_UI_26Hz_LP   = 0x12, /* @26Hz  (low power) */
//        LSM6DSO_XL_UI_26Hz_ULP  = 0x22, /* @26Hz  (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_52Hz_HP   = 0x03, /* @52Hz  (high performance) */
//        LSM6DSO_XL_UI_52Hz_LP   = 0x13, /* @52Hz  (low power) */
//        LSM6DSO_XL_UI_52Hz_ULP  = 0x23, /* @52Hz  (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_104Hz_HP  = 0x04, /* @104Hz (high performance) */
//        LSM6DSO_XL_UI_104Hz_NM  = 0x14, /* @104Hz (normal mode) */
//        LSM6DSO_XL_UI_104Hz_ULP = 0x24, /* @104Hz (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_208Hz_HP  = 0x05, /* @208Hz (high performance) */
//        LSM6DSO_XL_UI_208Hz_NM  = 0x15, /* @208Hz (normal mode) */
//        LSM6DSO_XL_UI_208Hz_ULP = 0x25, /* @208Hz (ultra low/Gy, OIS imu off) */
//        LSM6DSO_XL_UI_416Hz_HP  = 0x06, /* @416Hz (high performance) */
//        LSM6DSO_XL_UI_833Hz_HP  = 0x07, /* @833Hz (high performance) */
//        LSM6DSO_XL_UI_1667Hz_HP = 0x08, /* @1kHz66 (high performance) */
//        LSM6DSO_XL_UI_3333Hz_HP = 0x09, /* @3kHz33 (high performance) */
//        LSM6DSO_XL_UI_6667Hz_HP = 0x0A, /* @6kHz66 (high performance) */
//      } odr;
//      enum {
//        LSM6DSO_XL_UI_2g   = 0,
//        LSM6DSO_XL_UI_4g   = 2,
//        LSM6DSO_XL_UI_8g   = 3,
//        LSM6DSO_XL_UI_16g  = 1, /* OIS full scale is also forced to be 16g */
//      } fs;
//    } xl;
//    struct {
//      enum {
//        LSM6DSO_GY_UI_OFF       = 0x00, /* gy in power down */
//        LSM6DSO_GY_UI_12Hz5_LP  = 0x11, /* gy @12Hz5 (low power) */
//        LSM6DSO_GY_UI_12Hz5_HP  = 0x01, /* gy @12Hz5 (high performance) */
//        LSM6DSO_GY_UI_26Hz_LP   = 0x12, /* gy @26Hz  (low power) */
//        LSM6DSO_GY_UI_26Hz_HP   = 0x02, /* gy @26Hz  (high performance) */
//        LSM6DSO_GY_UI_52Hz_LP   = 0x13, /* gy @52Hz  (low power) */
//        LSM6DSO_GY_UI_52Hz_HP   = 0x03, /* gy @52Hz  (high performance) */
//        LSM6DSO_GY_UI_104Hz_NM  = 0x14, /* gy @104Hz (low power) */
//        LSM6DSO_GY_UI_104Hz_HP  = 0x04, /* gy @104Hz (high performance) */
//        LSM6DSO_GY_UI_208Hz_NM  = 0x15, /* gy @208Hz (low power) */
//        LSM6DSO_GY_UI_208Hz_HP  = 0x05, /* gy @208Hz (high performance) */
//        LSM6DSO_GY_UI_416Hz_HP  = 0x06, /* gy @416Hz (high performance) */
//        LSM6DSO_GY_UI_833Hz_HP  = 0x07, /* gy @833Hz (high performance) */
//        LSM6DSO_GY_UI_1667Hz_HP = 0x08, /* gy @1kHz66 (high performance) */
//        LSM6DSO_GY_UI_3333Hz_HP = 0x09, /* gy @3kHz33 (high performance) */
//        LSM6DSO_GY_UI_6667Hz_HP = 0x0A, /* gy @6kHz66 (high performance) */
//      } odr;
//      enum {
//        LSM6DSO_GY_UI_250dps   = 0,
//        LSM6DSO_GY_UI_125dps   = 1,
//        LSM6DSO_GY_UI_500dps   = 2,
//        LSM6DSO_GY_UI_1000dps  = 4,
//        LSM6DSO_GY_UI_2000dps  = 6,
//      } fs;
//    } gy;
//  } ui;
//  struct {
//    enum {
//      LSM6DSO_OIS_ONLY_AUX    = 0x00, /* Auxiliary SPI full control */
//      LSM6DSO_OIS_MIXED       = 0x01, /* Enabling by UI / read-config by AUX */
//    } ctrl_md;
//    struct {
//      enum {
//        LSM6DSO_XL_OIS_OFF       = 0x00, /* in power down */
//        LSM6DSO_XL_OIS_6667Hz_HP = 0x01, /* @6kHz OIS imu active/NO ULP on UI */
//      } odr;
//      enum {
//        LSM6DSO_XL_OIS_2g   = 0,
//        LSM6DSO_XL_OIS_4g   = 2,
//        LSM6DSO_XL_OIS_8g   = 3,
//        LSM6DSO_XL_OIS_16g  = 1, /* UI full scale is also forced to be 16g */
//      } fs;
//    } xl;
//    struct {
//      enum {
//        LSM6DSO_GY_OIS_OFF       = 0x00, /* in power down */
//        LSM6DSO_GY_OIS_6667Hz_HP = 0x01, /* @6kHz No Ultra Low Power*/
//      } odr;
//      enum {
//        LSM6DSO_GY_OIS_250dps   = 0,
//        LSM6DSO_GY_OIS_125dps   = 1,
//        LSM6DSO_GY_OIS_500dps   = 2,
//        LSM6DSO_GY_OIS_1000dps  = 4,
//        LSM6DSO_GY_OIS_2000dps  = 6,
//      } fs;
//    } gy;
//  } ois;
//  struct {
//    enum {
//      LSM6DSO_FSM_DISABLE = 0x00,
//      LSM6DSO_FSM_XL      = 0x01,
//      LSM6DSO_FSM_GY      = 0x02,
//      LSM6DSO_FSM_XL_GY   = 0x03,
//    } sens;
//    enum {
//      LSM6DSO_FSM_12Hz5 = 0x00,
//      LSM6DSO_FSM_26Hz  = 0x01,
//      LSM6DSO_FSM_52Hz  = 0x02,
//      LSM6DSO_FSM_104Hz = 0x03,
//    } odr;
//  } fsm;
//} lsm6dso_md_t;

//typedef struct {
//  struct {
//    struct {
//      float mg[3];
//      int16_t raw[3];
//    } xl;
//    struct {
//      float mdps[3];
//      int16_t raw[3];
//    } gy;
//    struct {
//      float deg_c;
//      int16_t raw;
//    } heat;
//  } ui;
//  struct {
//    struct {
//      float mg[3];
//      int16_t raw[3];
//    } xl;
//    struct {
//      float mdps[3];
//      int16_t raw[3];
//    } gy;
//  } ois;
//} lsm6dso_data_t;


//typedef struct {
//  uint8_t sig_mot      : 1; /* significant motion */
//  uint8_t tilt         : 1; /* tilt detection  */
//  uint8_t step         : 1; /* step counter/detector */
//  uint8_t step_adv     : 1; /* step counter advanced mode */
//  uint8_t fsm          : 1; /* finite state machine */
//  uint8_t fifo_compr   : 1; /* FIFO compression */
//} lsm6dso_emb_sens_t;



/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
