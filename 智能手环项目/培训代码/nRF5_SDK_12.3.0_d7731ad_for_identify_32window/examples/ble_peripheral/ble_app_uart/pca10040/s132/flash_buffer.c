#include <stdlib.h>
#include <string.h>
#define NRF_LOG_MODULE_NAME "flash_buffer"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "config.h"
#include "ble_nus.h"
#include "crc32.h"
#include "flash.h"
#include "flash_buffer.h"

// TODO:加入预擦除功能，在启动或新建记录器时设置预擦除的段数

typedef struct {
  // 闪存相关
  uint32_t m_start_address;  // 数据储存的开始地址，一般应为一个sector的起始地址
  uint32_t m_data_sector_address;  // 目前数据储存的sector地址
  uint32_t m_data_sector_offset;  // 数据储存sector内偏移量
  bool m_new_sector_flag;

  new_sector_callback_t m_new_sector_cb;/* // 写入到闪存新sector时执行的回调函数*/
  switch_sector_callback_t m_switch_sector_cb; /* 结束一个sector时执行的回调函数*/
  flash_buffer_error_callback_t m_error_cb; /*写入到闪存出现错误时的回调函数*/

  // 缓冲区相关
  uint8_t* m_buffer;  // 数据内存缓冲区
  uint32_t m_buffer_index;

  uint32_t m_crc32;
} flash_buffer_t_;

static const uint32_t kEraseCheckSize = 64;

static void flush_buffer(flash_buffer_t_* p_buffer, bool switch_sector);
// flash_data_handler_t
static void check_erase(const uint8_t* p_data, uint16_t length, void* p_arguments);

flash_buffer_t* flash_buffer_new(uint8_t p_data_buffer[FLASH_BUFFER_MIN_SIZE],
                                 uint32_t start_address,
                                 new_sector_callback_t new_sector_cb,
                                 switch_sector_callback_t switch_sector_cb,
                                 flash_buffer_error_callback_t error_cb) {
  flash_buffer_t_* p_buffer = (flash_buffer_t_*)malloc(sizeof(flash_buffer_t_)); /*开辟动态内存，将地址转换成flash_buffer_t_*型放在p_buffer中*/
  /* flash_buffer_t* p_buffer = (flash_buffer_t*)malloc(10); */
  if (!p_buffer) {
    NRF_LOG_ERROR("Failed to malloc.\n");
    return NULL;
  }
  p_buffer->m_buffer = p_data_buffer;
  p_buffer->m_buffer_index = 0;

  p_buffer->m_start_address = start_address;
  p_buffer->m_data_sector_address = start_address;
  p_buffer->m_data_sector_offset = 0;
  p_buffer->m_new_sector_flag = true;

  p_buffer->m_new_sector_cb = new_sector_cb;
  p_buffer->m_switch_sector_cb = switch_sector_cb;
  p_buffer->m_error_cb = error_cb;

  p_buffer->m_crc32 = 0;
  return (flash_buffer_t*)p_buffer;
}

/* void flash_buffer_start(flash_buffer_t* p_buffer, uint32_t start_address, */
/*                   new_sector_callback_t new_sector_cb, */
/*                   switch_sector_callback_t switch_sector_cb) { */
/*   if (!p_buffer) { */
/*     NRF_LOG_ERROR("start: p_buffer is NULL.\n"); */
/*     return; */
/*   } */
/*   flash_buffer_t_* p_buffer_ = (flash_buffer_t_*)p_buffer; */
/*   p_buffer_->m_start_address = start_address; */
/*   p_buffer_->m_data_sector_address = start_address; */
/*   p_buffer_->m_data_sector_offset = 0; */
/*   p_buffer_->m_new_sector_flag = true; */

/*   p_buffer_->m_new_sector_cb = new_sector_cb; */
/*   p_buffer_->m_switch_sector_cb = switch_sector_cb; */

/*   p_buffer_->m_buffer_index = 0; */

/*   p_buffer_->m_crc32 = 0; */
/* } */

void flash_buffer_stop(flash_buffer_t* p_buffer) {
  flush_buffer((flash_buffer_t_*)p_buffer, true);
}

void flash_buffer_push(flash_buffer_t* p_buffer,
                       const uint8_t* p_data, uint16_t length) {
  //NRF_LOG_INFO("flash_buffer_push in.\n");
  if (!p_buffer) {
    NRF_LOG_ERROR("push: p_buffer is NULL.\n");
    return;
  }
  flash_buffer_t_* p_buffer_ = (flash_buffer_t_*)p_buffer;
  if (p_buffer_->m_new_sector_flag) {  // 在新的一个sector写入数据
    NRF_LOG_DEBUG("New sector addr: %x.\n", p_buffer_->m_data_sector_address);
    p_buffer_->m_new_sector_flag = false;
    flash_enable();
    flash_erase(p_buffer_->m_data_sector_address, FLASH_ERASE_SECTOR);
    flash_read(p_buffer_->m_data_sector_address + kFlashSectorSize - kEraseCheckSize,
               kEraseCheckSize, check_erase, (void*)p_buffer);
    flash_disable();
    p_buffer_->m_data_sector_offset = 0;
    p_buffer_->m_new_sector_cb(p_buffer);
  }
  memcpy(p_buffer_->m_buffer + p_buffer_->m_buffer_index, p_data, length); /*内存拷贝函数*/
	p_buffer_->m_buffer_index += length;
	
	/*21.10.3if(length!=12){
		NRF_LOG_DEBUG("length= %d.\n", length);
	}*/
	
  // 缓冲区满(每256个字节写一次FLASH)
  if (p_buffer_->m_buffer_index >= FLASH_PAGE_SIZE) {
    flush_buffer(p_buffer_, false);
  }
}

// 刷新数据内存缓冲区，写入到闪存
static void flush_buffer(flash_buffer_t_* p_buffer, bool switch_sector) {
  flash_enable();
  uint32_t overflow_size = 0;
  if (p_buffer->m_buffer_index) {
			
		//NRF_LOG_INFO("(128)11111111 p_buffer_->m_buffer_index=%d  \n",p_buffer->m_buffer_index);
    if (p_buffer->m_buffer_index > FLASH_PAGE_SIZE) {
      overflow_size = p_buffer->m_buffer_index - FLASH_PAGE_SIZE;
      p_buffer->m_buffer_index = FLASH_PAGE_SIZE;
    }

    /* NRF_LOG_DEBUG("flush buffer:(%d)\n", p_buffer->m_buffer_index); */
    /* NRF_LOG_HEXDUMP_DEBUG(p_buffer->m_buffer, p_buffer->m_buffer_index); */
    /* if (p_buffer->m_buffer_index > 64) { */
    /*   /\* NRF_LOG_HEXDUMP_DEBUG(m_buffer + m_buffer_index - 64, 64); *\/ */
    /*   NRF_LOG_HEXDUMP_DEBUG(p_buffer->m_buffer, 64); */
    /* } else { */
    /*   NRF_LOG_HEXDUMP_DEBUG(p_buffer->m_buffer, p_buffer->m_buffer_index); */
    /*   NRF_LOG_HEXDUMP_DEBUG(p_buffer->m_buffer + p_buffer->m_buffer_index - 64, 64); */
    /* } */

    p_buffer->m_crc32 = crc32_compute(p_buffer->m_buffer,
                                      p_buffer->m_buffer_index,
                                      &(p_buffer->m_crc32));
    flash_write(p_buffer->m_data_sector_address + p_buffer->m_data_sector_offset,
                p_buffer->m_buffer, p_buffer->m_buffer_index);
    p_buffer->m_data_sector_offset += p_buffer->m_buffer_index;
    p_buffer->m_buffer_index = 0;
  }
	/*关系运算符优先于逻辑运算符实现自动进入下一个区const uint32_t kFlashSectorSize = 4096*/
  if (p_buffer->m_data_sector_offset >= 3840 || switch_sector) {//21.10.13 3840是6s的6轴数据最少占用的扇区字节数
		//NRF_LOG_INFO("(154)p_buffer->m_data_sector_offset= %d\n", p_buffer->m_data_sector_offset);
    NRF_LOG_DEBUG("switch sector flag: %d\n", switch_sector);
    uint32_t next_data_sector_address = p_buffer->m_data_sector_address + kFlashSectorSize;

		
		/*当前扇区还没完成4096个字节时直接跳出*/
    if (!switch_sector && next_data_sector_address == p_buffer->m_start_address) {
			NRF_LOG_DEBUG("2 if\n");
      p_buffer->m_new_sector_flag = false;
      p_buffer->m_error_cb((flash_buffer_t*)p_buffer, FLASH_BUFFER_ERROR_NO_MEMORY);
      p_buffer->m_switch_sector_cb((flash_buffer_t*)p_buffer);
      return;
    }
		/*完成8192个扇区的写入时*kFlashMaxAddress=4096*8192=33554432直接跳出*/
		if (!switch_sector && next_data_sector_address == kFlashMaxAddress+1) {
			NRF_LOG_DEBUG("3 if\n");
      p_buffer->m_new_sector_flag = false;
      p_buffer->m_error_cb((flash_buffer_t*)p_buffer, FLASH_ERROR_FULL);
      p_buffer->m_switch_sector_cb((flash_buffer_t*)p_buffer);
      return;
    }
		/*完成一个扇区4096个字节写入继续指向下一个扇区的地址*/
    p_buffer->m_switch_sector_cb((flash_buffer_t*)p_buffer); //complete datahead
    p_buffer->m_crc32 = 0;
    p_buffer->m_new_sector_flag = true;
		//NRF_LOG_INFO("m_data_sector_address=%x\n",p_buffer->m_data_sector_address);
    p_buffer->m_data_sector_address = next_data_sector_address;
		//NRF_LOG_INFO("next_data_sector_address=%x\n",next_data_sector_address);
    /* p_buffer->m_data_sector_address += kFlashSectorSize; */
    /* if (p_buffer->m_data_sector_address > kFlashMaxAddress) { */
    /*   p_buffer->m_data_sector_address = kFlashMinAddress; */
    /* } */
    /* if (!switch_sector && p_buffer->m_data_sector_address == p_buffer->m_start_address) { */
    /*   p_buffer->m_new_sector_flag = false; */
    /*   p_buffer->m_error_cb((flash_buffer_t*)p_buffer, FLASH_BUFFER_ERROR_NO_MEMORY); */
    /*   return; */
    /* } */
  }
  if (overflow_size) {//超出一页把多出来的部分放到下一次去存
    //NRF_LOG_INFO("22222222 overflow size: %d\n", overflow_size);
    flash_buffer_push((flash_buffer_t*)p_buffer,
                      p_buffer->m_buffer + FLASH_PAGE_SIZE, overflow_size);
  }
  flash_disable();
}

static void check_erase(const uint8_t* p_data, uint16_t length, void* p_arguments) {
  /* // 伪造错误，测试使用 */
  /* static uint8_t count = 0; */
  /* if (++count > 2) { */
  /*   NRF_LOG_WARNING("Fake error.\n"); */
  /*   flash_buffer_t_* p_buffer = (flash_buffer_t_*)p_arguments; */
  /*   p_buffer->m_error_cb((flash_buffer_t*)p_arguments, */
  /*                        FLASH_BUFFER_ERROR_ERASE_FAILED); */
  /*   return; */
  /* } */

  for (uint16_t i = 0; i < length; ++i) {
    if (p_data[i] != 0xff) {
      flash_buffer_t_* p_buffer = (flash_buffer_t_*)p_arguments;
      p_buffer->m_error_cb((flash_buffer_t*)p_arguments,
                           FLASH_BUFFER_ERROR_ERASE_FAILED);
      NRF_LOG_ERROR("Erase failed!\n");
      NRF_LOG_HEXDUMP_ERROR(p_data, length);
      return;
    }
  }
  NRF_LOG_DEBUG("Erase succeeded.\n");
}

void flash_buffer_write_sector(flash_buffer_t* p_buffer, uint16_t offset,
                         const uint8_t* p_data, uint16_t length) {
  if (!p_buffer) {
    NRF_LOG_ERROR("write_sector: p_buffer is NULL.\n");
    return;
  }
  flash_enable();
  flash_write(((flash_buffer_t_*)p_buffer)->m_data_sector_address + offset, p_data, length);
  flash_disable();
}

void flash_buffer_write_crc(flash_buffer_t* p_buffer, uint16_t offset) {
  if (!p_buffer) {
    NRF_LOG_ERROR("write_crc: p_buffer is NULL.\n");
    return;
  }
  flash_buffer_t_* p_buffer_ = (flash_buffer_t_*)p_buffer;
  flash_enable();
  flash_write(p_buffer_->m_data_sector_address + offset,
              (uint8_t*)&(p_buffer_->m_crc32), sizeof(uint32_t));
  flash_disable();
}

void flash_buffer_free(flash_buffer_t* p_buffer) {
  free(p_buffer);
}

uint32_t flash_buffer_get_data_address(flash_buffer_t* p_flash_buffer) {
  return ((flash_buffer_t_*)p_flash_buffer)->m_data_sector_address;
}

uint32_t flash_buffer_get_sector_bytes_count(flash_buffer_t* p_flash_buffer) {
  return ((flash_buffer_t_*)p_flash_buffer)->m_data_sector_offset;
}

