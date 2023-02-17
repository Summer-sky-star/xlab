#ifndef _CONFIG_H_
#define _CONFIG_H_

extern const uint32_t kConfigDataAddress;
extern const uint8_t kConfigRecordError;
extern const uint32_t kConfigDataByteCount;
void config_init(void);
void config_save(void);
// 注意等待初始化完成
void config_set_value(uint16_t offset, const uint8_t* p_data, uint16_t length);
void config_get_value(uint16_t offset, void* p_data, uint16_t length);

#endif /* _CONFIG_H_ */
