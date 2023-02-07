#ifndef _RECORD_HUMITURE_H_
#define _RECORD_HUMITURE_H_

void record_humiture_start(uint64_t start_time, uint32_t period_ms);
void record_humiture_stop(void);
bool record_humiture_is_recording(void);
uint32_t record_humiture_data_number(void);
void record_humiture_start_upload_humiture(void);
void record_humiture_stop_upload_humiture(void);
/* void record_humiture_read(void); */

#endif /* _RECORD_HUMITURE_H_ */
