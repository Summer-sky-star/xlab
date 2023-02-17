#include <string.h>
#define NRF_LOG_MODULE_NAME "config"
#define NRF_LOG_LEVEL 4
#include "nrf_log.h"
#include "flash.h"
#include "config.h"

// TODO:修改算法，储存按配置长度分块，使用二分法查找块
// 写入时以0清除上一个块，标志字节放在最后一个字节
// 对于全0或全1的特殊配置数据，默认以全1处理
// 因为至少会储存一个地址数据，所以不考虑全0的特殊数据的情况
// 对新旧数据做一个或运算，如果数据不变，则可以直接写到原来的位置，不用清零

// RESET_CONFIG：强制重置配置标志
/* #define RESET_CONFIG */
// 注意修改起始地址会影响配置数据的对齐
static const uint32_t kConfigStartAddress = 0x0000000;
static const uint32_t kConfigEndAddress =
  kConfigStartAddress + FLASH_SECTOR_SIZE - 2;
// 最后一个字节标志配置有效性
static const uint32_t kInitFlagAddress = kConfigEndAddress + 1;
static const uint8_t kInitedFlagNumber = 59;

// 所有配置信息的总长度
static const uint16_t kConfigLength = 4;
static const uint8_t kZeros[kConfigLength] = {0};  // 用于闪存写入零
const uint32_t kConfigHumitureAddr = 0;  // len = 4

static uint16_t m_config_address;  // 闪存中储存配置的地址
// 用于二分法的变量，两个变量均指向配置数据块的最低字节
static int16_t m_config_address_min = kConfigStartAddress;
// 配置数据不能覆盖标志字节，留出一个配置数据的长度，并对齐到配置数据块
static int16_t m_config_address_max =
  (kConfigEndAddress - kConfigLength + 1) / kConfigLength * kConfigLength;
static int16_t m_config_address_middle;

static uint8_t m_config_buffer[kConfigLength];
static bool m_is_modified = false;

// flash_data_handler
static void get_init_flag(const uint8_t* p_data, uint16_t length);
static void search_config(const uint8_t* p_data, uint16_t length);
static void get_config(const uint8_t* p_data, uint16_t length);

void config_init(void) {
  flash_enable();
#ifdef RESET_CONFIG
  NRF_LOG_WARNING("Defined reset config.\n");
  // 传入一个假的数据以触发配置重置
  get_init_flag(kZeros, 1);
#else
  // 检查储存配置的sector是否已经初始化
  flash_read(kInitFlagAddress, sizeof(kInitedFlagNumber), get_init_flag);
#endif /* RESET_CONFIG */
}

static void get_init_flag(const uint8_t* p_data, uint16_t length) {
  if (p_data[0] != kInitedFlagNumber) {
    NRF_LOG_WARNING("Invalid config, erase the sector.\n");
    // 配置重置
    flash_erase(kConfigStartAddress, FLASH_ERASE_SECTOR);
    flash_write(kInitFlagAddress, &kInitedFlagNumber, 1);
    m_config_address = kConfigStartAddress;
    config_set_value(kConfigHumitureAddr,
                     (void*)&kFlashMinAddress, sizeof(kFlashMinAddress));
    flash_write(m_config_address,
                (const uint8_t*)&kFlashMinAddress, sizeof(kFlashMinAddress));
    m_is_modified = false;
    flash_disable();
  } else {
    // 配置有效，二分查找配置的位置
    m_config_address_middle = m_config_address_min + m_config_address_max >> 1;
    flash_read(m_config_address_middle, kConfigLength, search_config);
  }
}

static void search_config(const uint8_t* p_data, uint16_t length) {
  /* NRF_LOG_DEBUG("l %d r %d\n", m_config_address_min, m_config_address_max); */
  bool all_zero = true, all_one = true;
  for (uint16_t i = 0; i < length; ++i) {
    if (p_data[i] == 0xff) {
      all_zero = false;
    } else if (p_data[i]) {
      all_one = false;
      all_zero = false;
      break;
    } else {
      all_one = false;
    }
  }
  if (all_one) {
    m_config_address_max = m_config_address_middle - kConfigLength;
  } else if (all_zero) {
    m_config_address_min = m_config_address_middle + kConfigLength;
  } else {
    m_config_address = m_config_address_middle;
    NRF_LOG_DEBUG("get config address: %d\n", m_config_address);
    flash_read(m_config_address, kConfigLength, get_config);
    flash_disable();
    return;
  }
  // 特殊情况：数据块不是全0就是全1，则认为数据为全1（即不考虑之前存入了全0数据的情况）
  // 地址将置于最后一个全0的位置，下次保存数据时，就会写入到第1个全1的位置
  if (m_config_address_min > m_config_address_max) {
    if (all_one && m_config_address_middle > kConfigStartAddress) {
      m_config_address = m_config_address_middle - kConfigLength;
    } else {
      m_config_address = m_config_address_middle;
    }
    memset(m_config_buffer, 0xff, kConfigLength);
    NRF_LOG_DEBUG("mid: %d all_one: %d all_zero: %d\n",
                  m_config_address_middle, all_one, all_zero);
    NRF_LOG_DEBUG("get config address: %d\n", m_config_address);
    return;
  }
  m_config_address_middle = m_config_address_min + m_config_address_max >> 1;
  flash_read(m_config_address_middle, kConfigLength, search_config);
}

static void get_config(const uint8_t* p_data, uint16_t length) {
  memcpy(m_config_buffer, p_data, length);
  NRF_LOG_DEBUG("All config data:\n");
  NRF_LOG_HEXDUMP_DEBUG(p_data, length);
}

void config_save(void) {
  /* m_is_modified = true; */
  /* memset(m_config_buffer, 0x00, sizeof(m_config_buffer)); */

  if (m_is_modified) {
    /* NRF_LOG_DEBUG("save config data:\n"); */
    /* NRF_LOG_HEXDUMP_DEBUG(m_config_buffer, kConfigLength); */
    flash_enable();
    if (m_config_address + kConfigLength - 1 <= kConfigEndAddress) {
      flash_write(m_config_address, kZeros, kConfigLength);
      m_config_address += kConfigLength;
    } else {
      // 段已用尽，擦除重写
      flash_erase(kConfigStartAddress, FLASH_ERASE_SECTOR);
      flash_write(kInitFlagAddress, &kInitedFlagNumber, 1);
      m_config_address = kConfigStartAddress;
    }
    flash_write(m_config_address, m_config_buffer, kConfigLength);
    flash_disable();
    m_is_modified = false;
  }
}

void config_set_value(uint16_t offset, const uint8_t* p_data, uint16_t length) {
  m_is_modified = true;
  memcpy(m_config_buffer + offset, p_data, length);
}

void config_get_value(uint16_t offset, void* p_data, uint16_t length) {
  memcpy(p_data, m_config_buffer + offset, length);
}
