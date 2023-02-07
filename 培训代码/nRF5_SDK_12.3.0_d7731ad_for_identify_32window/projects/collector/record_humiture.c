/*
 * 实现温湿度的定时记录。
 * 数据结构：以4K为一个单元（即一个sector）
 * 000h 开头留空5个字节
 * 005h 1个字节数据类型，表示温湿度数据
 * 006h 8个字节开始时间
 * 00eh 4个字节采样周期
 * 012h 2个字节数据个数
 * 014h 4个字节CRC-32
 * 018h 剩余4096-24=4072个字节为数据
 */

#include <string.h>
#define NRF_LOG_MODULE_NAME "record_humiture"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "config.h"
#include "ble_nus.h"
#include "crc32.h"
#include "sht3.h"
#include "rtc.h"
#include "flash.h"
#include "record_humiture.h"

static const uint8_t kDataTypeHumiture = 0xef;
static const uint32_t kDataTypeOffset = 0x005;
static const uint32_t kDataTimeOffset = 0x006;
static const uint32_t kDataPeriodOffset = 0x00e;
static const uint32_t kDataNumberOffset = 0x012;
static const uint32_t kDataOffset = 0x018;

static uint32_t m_start_address;  // 数据储存的开始地址
static uint32_t m_data_address;  // 目前数据储存的sector地址
static uint32_t m_data_offset;  // 数据储存sector内偏移量
static uint8_t m_buffer[FLASH_PAGE_SIZE];  // 数据内存缓冲区
static uint32_t m_buffer_pointer;  // 数据内存缓冲区的指针
static uint32_t m_crc32;
static uint16_t m_sector_data_count = 0;
static bool m_new_sector_flag;

static uint32_t m_period_ms;
static volatile bool m_is_recording = false;
static uint32_t m_data_count;

static void upload_data(const uint8_t* p_data, uint16_t length);
static void send_data(void* p_arguments);
/* static void record_humiture_read(void); */
/* static void read_callback(const uint8_t* p_data, */
/*                           uint16_t length); */
static void record_task(void* p_arguments);
static void sht3_data_handler(sht3_data_t data);
static void flush_buffer(bool switch_sector);

static void upload_humiture(void* p_arguments);
static void upload_humiture_callback(sht3_data_t data);

extern ret_code_t ble_send_data(const uint8_t* p_data, uint16_t length);

void record_humiture_start(uint64_t start_time, uint32_t period_ms) {
  /* flash_enable(); */
  record_humiture_stop_upload_humiture();
  m_data_count = 0;
  m_is_recording = true;
  m_data_offset = 0;
  /* m_start_address = config_get_humiture_address(); */
  config_get_value(kConfigHumitureAddr,
                   (void*)&m_start_address, sizeof(m_start_address));
  m_data_address = m_start_address;
  m_period_ms = period_ms;
  m_new_sector_flag = true;
  m_crc32 = 0;
  rtc_repeat_run_at(start_time, period_ms, kRecordChannel, record_task, NULL);

  NRF_LOG_INFO("Start record humiture, period: %d ms\n", period_ms);
  rtc_print_time(0);
  rtc_print_time(start_time);
}

void record_humiture_stop(void) {
  NRF_LOG_DEBUG("Stop recording.\n");
  rtc_cancel(kRecordChannel);
  rtc_cancel(kSHT3Channel);  // 关闭可能正在采样的数据回调
  flush_buffer(true);
  /* config_set_humiture_address(m_data_address); */
  config_set_value(kConfigHumitureAddr,
                   (void*)&m_data_address, sizeof(m_data_address));
  flash_enable();
  /* record_humiture_read(); */
  m_is_recording = false;
  upload_data(NULL, 0);
}

bool record_humiture_is_recording(void) {
  return m_is_recording;
}

uint32_t record_humiture_data_number(void) {
  return m_data_count;
}

// 启动定时发送数据任务，用于刷新APP上的数据实时显示
void record_humiture_start_upload_humiture(void) {
  if (!m_is_recording) {
    NRF_LOG_DEBUG("start upload.\n");
    rtc_repeat_run_delay(20, 5000, kRecordChannel, upload_humiture, NULL);
  }
}

// 结束定时发送数据任务
void record_humiture_stop_upload_humiture(void) {
  if (!m_is_recording) {
    NRF_LOG_DEBUG("stop upload.\n");
    rtc_cancel(kRecordChannel);
    rtc_cancel(kSHT3Channel);
  }
}

// 发送闪存内的数据到APP
// p_data: 输入，从闪存读取回调的数据指针，启动上传时为NULL
// length: 输入，数据长度，启动上传时为0
static void upload_data(const uint8_t* p_data, uint16_t length) {
  static uint32_t address;  // 当前读取的闪存地址
  static uint16_t data_number;  // 数据字节数
  static uint8_t arguments[6];  // 传给定时蓝牙发送函数的参数
  if (p_data == NULL && length == 0) {
    address = m_start_address;
  }
  if (p_data) {
    NRF_LOG_DEBUG("Upload data: address %x len %d\n", address, length);
  }
  switch (address & ~kFlashSectorAddressMask) {  // 取sector内地址
  case 0:
    if (address != m_data_address) {
      // 开始上传一个新的sector
      address |= kDataTimeOffset;
      flash_read(address, 18, upload_data);
    } else {
      // 数据上传完成
      uint8_t data[] = {0x03, 0xff};
      ble_send_data(data, sizeof(data));
      flash_disable();
      record_humiture_start_upload_humiture();
    }
    break;

  case kDataTimeOffset:
    // 完成读取sector数据头
    m_buffer[0] = 3;
    memcpy(m_buffer + 1, p_data, length);
    ble_send_data(m_buffer, length + 1);

    data_number = p_data[kDataNumberOffset - kDataTimeOffset];
    data_number |= (uint16_t)p_data[kDataNumberOffset - kDataTimeOffset + 1] << 8;
    data_number <<= 2;
    NRF_LOG_DEBUG("%d bytes data to upload.\n", data_number);
    // 开始读取温湿度数据部分
    address = (address & kFlashSectorAddressMask) | kDataOffset;
    // 最多一次读取240字节，240是20的倍数，方便蓝牙发送
    flash_read(address, 240 <= data_number ? 240 : data_number, upload_data);
    break;

  default:
    // 已从闪存取到数据，启动定时蓝牙发送
    if (p_data != NULL) {
      data_number -= length;
      if (data_number) {
        address += length;
      } else {
        // 当前sector读取完成，跳到下一sector
        address = (address & kFlashSectorAddressMask) + kFlashSectorSize;
        if (address > kFlashMaxAddress) {
          address = kFlashMinAddress;
        }
      }

      NRF_LOG_DEBUG("to send data:\n");
      if (length > 64) {
        /* NRF_LOG_HEXDUMP_DEBUG(p_data + length - 64, 64); */
        NRF_LOG_HEXDUMP_DEBUG(p_data, 64);
      } else {
        NRF_LOG_HEXDUMP_DEBUG(p_data, length);
      }

      memcpy(arguments, &p_data, sizeof(uint8_t*));
      arguments[4] = length;
      arguments[5] = length >> 8 & 0xff;
      rtc_repeat_run_delay(1, 10, kRecordChannel, send_data, (void*)arguments);
    } else if (data_number) {
      // p_data为空，length非0，是蓝牙发送完毕的标志
      flash_read(address, 240 <= data_number ? 240 : data_number, upload_data);
    }
    break;
  }
}

// 定时数据发送回调函数
static void send_data(void* p_arguments) {
  uint8_t* p_data = *(uint8_t**)p_arguments;
  uint16_t* p_length = (uint16_t*)((char*)p_arguments + 4);
  uint16_t send_length = *p_length > 20 ? 20 : *p_length;

  /* NRF_LOG_DEBUG("send data: p_data %x len %d\n", (uint32_t)p_data, *p_length); */
  /* NRF_LOG_HEXDUMP_DEBUG(p_arguments, 5); */
  /* NRF_LOG_DEBUG("send data:\n"); */
  /* NRF_LOG_HEXDUMP_DEBUG(p_data, send_length); */

  if (ble_send_data(p_data, send_length) != NRF_SUCCESS) {
    return;  // 发送失败，等待重试
  }
  *p_length -= send_length;
  if (*p_length == 0) {
    rtc_cancel(kRecordChannel);
    upload_data(NULL, 0xff);  // 用特殊值参数请求读取闪存后面的数据
  } else {
    *(uint8_t**)p_arguments += send_length;
  }
}

/* static void record_humiture_read(void) { */
/*   NRF_LOG_DEBUG("Read record start address %x data address %x.\n", */
/*                 m_start_address, m_data_address); */
/*   for (uint32_t i = m_start_address; i < m_data_address; i += kFlashSectorSize) { */
/*     flash_read(i, 24, read_callback); */
/*     uint32_t bytes_number = m_sector_data_count * 4 + 20; */
/*     for (uint32_t j = 0; j < bytes_number; j += 240) { */
/*       flash_read(i + kDataOffset + j, 240 < bytes_number - j ? 240 : bytes_number - j, read_callback); */
/*     } */
/*   } */
/* } */

/* static void read_callback(const uint8_t* p_data, */
/*                           uint16_t length) { */
/*   NRF_LOG_DEBUG("humiture data:"); */
/*   uint8_t count = 0; */
/*   for (uint16_t i = 0; i < length; ++i) { */
/*     if (i % 4 == 0) { */
/*       NRF_LOG_RAW_INFO("\n%d ", ++count); */
/*     } */
/*     NRF_LOG_RAW_INFO("%02x ", p_data[i]); */
/*   } */
/*   NRF_LOG_RAW_INFO("\n"); */
/*   NRF_LOG_FLUSH(); */
/* } */

// 数据记录任务第一步：触发数据采集
static void record_task(void* p_arguments) {
  sht3_read_data(sht3_data_handler);
}

// 数据记录任务第二步：数据回调
static void sht3_data_handler(sht3_data_t data) {
  ++m_data_count;
  if (m_new_sector_flag) {  // 在新的一个sector写入数据
    m_new_sector_flag = false;
    NRF_LOG_DEBUG("New sector %x.\n", m_data_address);
    uint64_t current_time = rtc_get_time();
    rtc_print_time(current_time);
    m_data_offset = 0;
    m_buffer_pointer = kDataOffset;
    m_sector_data_count = 0;

    flash_enable();
    flash_erase(m_data_address, FLASH_ERASE_SECTOR);
    flash_disable();

    memset(m_buffer, 0xff, kDataOffset);
    m_buffer[kDataTypeOffset] = kDataTypeHumiture;  // 数据类型
    memcpy(m_buffer + kDataTimeOffset, &current_time, sizeof(uint64_t));
    memcpy(m_buffer + kDataPeriodOffset, &m_period_ms, sizeof(uint32_t));

    NRF_LOG_DEBUG("sector head:\n");
    NRF_LOG_HEXDUMP_DEBUG(m_buffer, kDataOffset);
  }
  memcpy(m_buffer + m_buffer_pointer, &data, sizeof(data));
  upload_humiture((void*)&data);
  ++m_sector_data_count;
  NRF_LOG_RAW_INFO(" %d\n", m_sector_data_count);
  /* nrf_LOG_HEXDUMP_DEBUG(m_buffer, 20); */
  /* NRF_LOG_DEBUG("humiture: " NRF_LOG_FLOAT_MARKER "(%x) " NRF_LOG_FLOAT_MARKER "(%x)", */
  /*               NRF_LOG_FLOAT(-45 + 175 * (float)data.temperature / 65535), */
  /*               data.temperature, */
  /*               NRF_LOG_FLOAT(100 * (float)data.humidity / 65535), */
  /*               data.humidity); */
  m_buffer_pointer += sizeof(data);
  if (m_buffer_pointer >= sizeof(m_buffer)) {
    NRF_LOG_DEBUG("buffer full\n");
    flush_buffer(false);
  }
}

// 刷新数据内存缓冲区，写入到闪存
static void flush_buffer(bool switch_sector) {
  flash_enable();
  if (m_buffer_pointer) {
    m_crc32 = crc32_compute(m_buffer, m_buffer_pointer, &m_crc32);
    flash_write(m_data_address + m_data_offset, m_buffer, m_buffer_pointer);

    NRF_LOG_DEBUG("flush buffer:\n");
    if (m_buffer_pointer > 64) {
      /* NRF_LOG_HEXDUMP_DEBUG(m_buffer + m_buffer_pointer - 64, 64); */
      NRF_LOG_HEXDUMP_DEBUG(m_buffer, 64);
    } else {
      NRF_LOG_HEXDUMP_DEBUG(m_buffer, m_buffer_pointer);
    }

    m_data_offset += m_buffer_pointer;
    m_buffer_pointer = 0;
  }
  if (m_data_offset >= kFlashSectorSize || switch_sector) {
    NRF_LOG_DEBUG("switch sector\n");
    /* m_data_offset = 0;  // 零值用于标记要写入数据到新的sector */
    uint8_t data[6];
    // 数据个数
    data[0] = m_sector_data_count & 0xff;
    data[1] = m_sector_data_count >> 8 & 0xff;
    // 校验码
    memcpy(data + 2, &m_crc32, sizeof(uint32_t));
    m_crc32 = 0;
    flash_write(m_data_address + kDataNumberOffset, data, sizeof(data));
    m_data_address += kFlashSectorSize;
    if (m_data_address > kFlashMaxAddress) {
      m_data_address = kFlashMinAddress;
    }
    m_new_sector_flag = true;
  }
  flash_disable();
}

// 上传APP上显示的实时数据
// p_arguments为NULL时，未有数据记录任务，采集一次数据，通过回调发送
// p_arguments不为NULL时，传入温湿度数据，直接在这个函数里发送
static void upload_humiture(void* p_arguments) {
  if (p_arguments) {
    // 正在执行数据记录任务，使用记录采集的数据刷新
    uint8_t data[9];
    data[0] = 4;
    memcpy(data + 1, p_arguments, sizeof(sht3_data_t));
    memcpy(data + 5, &m_data_count, sizeof(m_data_count));
    ble_send_data(data, sizeof(data));
    NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER "(%x) " NRF_LOG_FLOAT_MARKER "(%x) ",
                  NRF_LOG_FLOAT(-45 + 175 * (float)((sht3_data_t*)p_arguments)->temperature / 65535),
                  ((sht3_data_t*)p_arguments)->temperature,
                  NRF_LOG_FLOAT(100 * (float)((sht3_data_t*)p_arguments)->humidity / 65535),
                  ((sht3_data_t*)p_arguments)->humidity);
  } else {
    sht3_read_data(upload_humiture_callback);
  }
}

// 未执行数据记录任务时，使用此函数刷新APP实时数据
static void upload_humiture_callback(sht3_data_t data) {
  uint8_t ble_data[5];
  ble_data[0] = 4;
  memcpy(ble_data + 1, &data, sizeof(sht3_data_t));
  ble_send_data(ble_data, sizeof(ble_data));
  /* NRF_LOG_DEBUG("upload: " NRF_LOG_FLOAT_MARKER " " NRF_LOG_FLOAT_MARKER "\n", */
  /*               NRF_LOG_FLOAT(-45 + 175 * (float)data.temperature / 65535), */
  /*               NRF_LOG_FLOAT(100 * (float)data.humidity / 65535)); */
}
