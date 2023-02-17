#ifndef _UART_RECORD_H_
#define _UART_RECORD_H_

void record_init(void);
void record_start(uint64_t start_time, kx022_odr_t odr, uint8_t humiture_period);
void record_stop(void);
bool record_is_recording(void);
uint32_t record_data_bytes_count(void);
void record_start_upload_real_time_data(void);
void record_stop_upload_real_time_data(void);

#endif /* _RECORD_H_ */
