#ifndef _FLASH_BUFFER_H_
#define _FLASH_BUFFER_H_

#include "flash.h"
#include <stdint.h>
#define FLASH_BUFFER_MIN_SIZE (FLASH_PAGE_SIZE + 20)

// 数据记录类，实现闪存数据的自动缓存、自动切换闪存sector、蓝牙发送功能
struct flash_buffer_t_;
typedef struct flash_buffer_t_ flash_buffer_t;

// 写入到闪存新sector时执行的回调函数
typedef void (*new_sector_callback_t)(flash_buffer_t* p_flash_buffer);
// 结束一个sector时执行的回调函数
typedef void (*switch_sector_callback_t)(flash_buffer_t* p_flash_buffer);
//TODO:FLASH_BUFFER_ERROR_NO_MEMORY目前看来并不代表存储器满了而是分配空间满了，加个存储器满了的状态。
typedef enum {
  FLASH_BUFFER_ERROR_NONE,
  FLASH_BUFFER_ERROR_ERASE_FAILED,
  FLASH_BUFFER_ERROR_NO_MEMORY,
	FLASH_ERROR_FULL
} flash_buffer_error_t;
// 写入到闪存出现错误时的回调函数
typedef void (*flash_buffer_error_callback_t)(flash_buffer_t* p_flash_buffer,
                                              flash_buffer_error_t error_code);

// new一个记录类，使用外部的数据缓冲区，必须为一个page的大小，额外20字节用于处理溢出的情况
/* flash_buffer_t* flash_buffer_new(uint8_t p_data_buffer[FLASH_BUFFER_MIN_SIZE]); */
flash_buffer_t* flash_buffer_new(uint8_t p_data_buffer[FLASH_BUFFER_MIN_SIZE],
                                 uint32_t start_address,
                                 new_sector_callback_t new_sector_cb,
                                 switch_sector_callback_t switch_sector_cb,
                                 flash_buffer_error_callback_t error_cb);
void flash_buffer_stop(flash_buffer_t* p_buffer);
// 输入数据
void flash_buffer_push(flash_buffer_t* p_buffer,
                       const uint8_t* p_data, uint16_t length);
// 直接往当前使用的sector里写入数据，一般用于结束一个sector时写入数据
void flash_buffer_write_sector(flash_buffer_t* p_buffer, uint16_t offset,
                         const uint8_t* p_data, uint16_t length);
void flash_buffer_write_crc(flash_buffer_t* p_buffer, uint16_t offset);
void flash_buffer_free(flash_buffer_t* p_buffer);
uint32_t flash_buffer_get_data_address(flash_buffer_t* p_flash_buffer);
uint32_t flash_buffer_get_sector_bytes_count(flash_buffer_t* p_flash_buffer);

#endif /* _FLASH_BUFFER_H_ */
