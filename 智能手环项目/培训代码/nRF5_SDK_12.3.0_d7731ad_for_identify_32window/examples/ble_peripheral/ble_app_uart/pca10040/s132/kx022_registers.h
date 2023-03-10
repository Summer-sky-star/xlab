#ifndef _KX022_REGISTERS_H_
#define _KX022_REGISTERS_H_

#define KX022_ADDRESS 0x1e

#define KX022_REG_XOUT_L 0x06
#define KX022_REG_XOUT_H 0x07
#define KX022_REG_YOUT_L 0x08
#define KX022_REG_YOUT_H 0x09
#define KX022_REG_ZOUT_L 0x0a
#define KX022_REG_ZOUT_H 0x0b
#define KX022_REG_WHO_AM_I 0x0f
#define KX022_REG_INS2 0x13
#define KX022_REG_INT_REL 0x17
#define KX022_REG_CNTL1 0x18
#define KX022_REG_CNTL2 0x19
#define KX022_REG_CNTL3 0x1a
#define KX022_REG_ODCNTL 0x1b
#define KX022_REG_INC1 0x1c
#define KX022_REG_INC2 0x1d
#define KX022_REG_INC3 0x1e
#define KX022_REG_INC4 0x1f
#define KX022_REG_WUFC 0x23
#define KX022_REG_ATH 0x30

#define KX022_MASK_CNTL1_PC1   0x80
#define KX022_MASK_CNTL1_RES   0x40
#define KX022_MASK_CNTL1_DRDYE 0x20
#define KX022_MASK_CNTL1_TDTE  0x04
#define KX022_MASK_CNTL1_WUFE  0x02
#define KX022_MASK_CNTL1_TPE   0x01
#define KX022_SHIFT_CNTL1_GSEL 3
#define KX022_CNTL1_GSEL_2G (0 << KX022_SHIFT_CNTL1_GSEL)
#define KX022_CNTL1_GSEL_4G (1 << KX022_SHIFT_CNTL1_GSEL)
#define KX022_CNTL1_GSEL_8G (2 << KX022_SHIFT_CNTL1_GSEL)

#define KX022_CNTL2_RESET_VALUE 0x3f
#define KX022_MASK_CNTL2_SRST 0x80

#define KX022_SHIFT_CNTL3_OTP 6
#define KX022_CNTL3_OTP_1_563HZ (0 << KX022_SHIFT_CNTL3_OTP)
#define KX022_CNTL3_OTP_6_25HZ  (1 << KX022_SHIFT_CNTL3_OTP)
#define KX022_CNTL3_OTP_12_5HZ  (2 << KX022_SHIFT_CNTL3_OTP)
#define KX022_CNTL3_OTP_50HZ    (3 << KX022_SHIFT_CNTL3_OTP)
#define KX022_CNTL3_OTP_DEFAULT KX022_CNTL3_OTP_12_5HZ

#define KX022_SHIFT_CNTL3_OTDT 3
#define KX022_CNTL3_OTDT_50HZ   (0 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_100HZ  (1 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_200HZ  (2 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_400HZ  (3 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_12_5HZ (4 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_25HZ   (5 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_800HZ  (6 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_1600HZ (7 << KX022_SHIFT_CNTL3_OTDT)
#define KX022_CNTL3_OTDT_DEFAULT KX022_CNTL3_OTDT_400HZ

#define KX022_SHIFT_CNTL3_OWUF 0
#define KX022_CNTL3_OWUF_0_781HZ (0 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_1_563HZ (1 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_3_125HZ (2 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_6_250HZ (3 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_12_5HZ  (4 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_25HZ    (5 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_50HZ    (6 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_100HZ   (7 << KX022_SHIFT_CNTL3_OWUF)
#define KX022_CNTL3_OWUF_DEFAULT KX022_CNTL3_OWUF_0_781HZ

#define KX022_SHIFT_ODCNTL_OSA 0
#define KX022_MASK_ODCNTL_OSA 0x0f
#define KX022_ODCNTL_OSA_12_5HZ  (0x0 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_25HZ    (0x1 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_50HZ    (0x2 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_100HZ   (0x3 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_200HZ   (0x4 << KX022_SHIFT_ODCNTL_OSA)
// 400Hz, 800Hz and 1600Hz are available in high power mode
#define KX022_ODCNTL_OSA_400HZ   (0x5 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_800HZ   (0x6 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_1600HZ  (0x7 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_0_781HZ (0x8 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_1_563HZ (0x9 << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_3_125HZ (0xa << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_6_25HZ  (0xb << KX022_SHIFT_ODCNTL_OSA)
#define KX022_ODCNTL_OSA_DEFAULT KX022_ODCNTL_OSA_50HZ

#define KX022_MASK_INC1_IEN 0x20
#define KX022_MASK_INC1_IEA 0x10
#define KX022_MASK_INC1_IEL 0x08
#define KX022_MASK_INC1_STPOL 0x02
#define KX022_MASK_INC1_SPI3E 0x01

#define KX022_MASK_INC4_BFI 0x40
#define KX022_MASK_INC4_WMI 0x20
#define KX022_MASK_INC4_DRDYI 0x10
#define KX022_MASK_INC4_TDTI 0x04
#define KX022_MASK_INC4_WUFI 0x02
#define KX022_MASK_INC4_TPI 0x01

#define KX022_MASK_INS2_DRDY 0x10
#define KX022_MASK_INS2_WUFS 0x02

#endif /* _KX022_REGISTERS_ */
