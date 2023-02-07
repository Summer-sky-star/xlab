#ifndef _FLAHS_H_
#define _FLAHS_H_
#include "flash_commands.h"

#define FLASH_PAGE_SIZE 256
/* #define FLASH_SECTOR_ADDR_MASK 0xffffff00 */
#define FLASH_SECTOR_SIZE 4096
/* #define FLASH_SECTOR_ADDR_MASK 0xfffff000 */

typedef enum {
  FLASH_ERASE_SECTOR = 0,
  FLASH_ERASE_BLOCK_32KB = 1,
  FLASH_ERASE_BLOCK_64KB = 2,
  FLASH_ERASE_CHIP = 3
} flash_erase_t;

typedef void (*flash_data_handler_t)(const uint8_t* p_data, uint16_t length);

// const定义有重定义的问题，加了extern声明的不能用于数组大小的定义和其它const的定义
extern const uint32_t kFlashPageSize;
extern const uint32_t kFlashPageAddressMask;
extern const uint32_t kFlashSectorSize;
extern const uint32_t kFlashSectorAddressMask;

extern const uint32_t kFlashMinAddress;
extern const uint32_t kFlashMaxAddress;

void flash_init(void);
void flash_test(void);
void flash_read(uint32_t address, uint16_t length, flash_data_handler_t handler);
void flash_write(uint32_t address, const uint8_t* p_data, uint16_t length);
void flash_erase(uint32_t address, flash_erase_t erase_type);
void flash_enable(void);
void flash_disable(void);
bool flash_is_idle(void);

#endif /* _FLAHS_H_ */
