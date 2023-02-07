#ifndef _RECORD_H_
#define _RECORD_H_
#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
//#include "lsm6dso.h"
void record_init(void);
void record_start(uint64_t start_time, lsm6dso_odr_xl_t odr, uint8_t humiture_period);
void record_stop(void);

//21 10.2 from record.c
bool record_is_recording(void);
uint32_t record_data_bytes_count(void);
void record_start_upload_real_time_data(void);
void record_stop_upload_real_time_data(void);
void uart_start_record(void);
void uart_start_record_test(void);
/*2019.9.28*/
void uart_start_record_testagain(void);
/*2019.9.28*/
#endif /* _RECORD_H_ */
