#include <stdlib.h>
#include <string.h>
#include "app_util_platform.h"
#include "app_error.h"
#define NRF_LOG_MODULE_NAME "flash"
#define NRF_LOG_LEVEL 3
#include "nrf_log.h"
#include "nrf_delay.h"
#include "nrf_queue.h"
#include "nrf_drv_spi_nrf51.h"
#include "rtc.h"
#include "flash.h"

/* #define BUFFER_SIZE 256 */
const uint32_t kFlashPageSize = FLASH_PAGE_SIZE;
const uint32_t kFlashPageAddressMask = ~(kFlashPageSize - 1);
const uint32_t kFlashSectorSize = 4096;
const uint32_t kFlashSectorAddressMask = ~(kFlashSectorSize - 1);

const uint32_t kFlashMinAddress = 0x1000;
const uint32_t kFlashMaxAddress = 0x1ffffff;

typedef enum {
  FLASH_READ = 0,
  FLASH_WRITE,
  FLASH_ERASE,
  FLASH_ENABLE,
  FLASH_DISABLE,
  FLASH_NONE
} op_type_t;

typedef struct {
  uint32_t address;
  uint16_t length;
  flash_data_handler_t handler;
} read_op_t;

typedef struct {
  uint32_t address;
  uint16_t length;
  uint8_t* p_data;
} write_op_t;

typedef struct {
  uint32_t address;
  flash_erase_t erase_type;
} erase_op_t;

typedef struct {
  op_type_t op_type;
  void* p_actual_op;
} flash_op_t;

typedef void (*handler_t)(void);

static const uint8_t kEraseCommand[] = {
  MX25_SECTOR_ERASE_4B,
  MX25_BLOCK_ERASE_32KB_4B,
  MX25_BLOCK_ERASE_64KB_4B,
  MX25_CHIP_ERASE
};
static const uint32_t kEraseTimeMs[] = {
  30, 180, 380, 110000
};

static const uint32_t kFlashBufferSize = FLASH_PAGE_SIZE + 5;
static const uint32_t kTestAddress = 0x12320fa;
static const uint8_t kTestData[FLASH_PAGE_SIZE] = {0x66, 0x66, 0xa3, 0xa4, 0xa5,
                                                   0xa6, 0xa7, 0xa8, 0xa9, 0xaa};

static const nrf_drv_spi_t kSPI1 = NRF_DRV_SPI_INSTANCE(1);

NRF_QUEUE_DEF(flash_op_t, m_op_queue, 20, NRF_QUEUE_MODE_NO_OVERFLOW);
NRF_QUEUE_INTERFACE_DEC(flash_op_t, op_queue);
NRF_QUEUE_INTERFACE_DEF(flash_op_t, op_queue, &m_op_queue);

/* static volatile bool m_is_enable = false; */
static uint8_t m_rx_buffer[kFlashBufferSize];
static uint8_t m_tx_buffer[kFlashBufferSize];
static flash_op_t volatile m_current_op = {
  .op_type = FLASH_NONE,
  .p_actual_op = NULL
};
static volatile handler_t m_handler;

static void spi_init(void);
/* static void check_id(void); */
/* static void check_id_callback(ret_code_t result, void* p_user_data); */
static void check_erase(const uint8_t* p_data, uint16_t length);
static void check_write(const uint8_t* p_data, uint16_t length);
static void op_start(void);
static void spi_send_data(uint16_t tx_length, uint16_t rx_length);
static void spi_handler(nrf_drv_spi_evt_t const* p_event);
static void write_enable(void* p_arguments);
static void read_status(void);
static void check_status(void);
static void op_end(void);
static void delayed_op_start(void* p_arguments);

void flash_init(void) {
  spi_init();
  nrf_spi_disable(NRF_SPI1);
}

static void spi_init(void) {
  const nrf_drv_spi_config_t spi_config = {
    .sck_pin = 14,
    .mosi_pin = 13,
    .miso_pin = 12,
    .ss_pin = 11,
    .irq_priority = APP_IRQ_PRIORITY_LOW,
    .orc = 0xff,
    .frequency = NRF_DRV_SPI_FREQ_1M,
    .mode = NRF_DRV_SPI_MODE_3,
    .bit_order = NRF_DRV_SPI_BIT_ORDER_MSB_FIRST
  };
  APP_ERROR_CHECK(nrf_drv_spi_init(&kSPI1, &spi_config, spi_handler));
}

void flash_test(void) {
  flash_enable();
  /* check_id(); */
  flash_erase(kTestAddress, FLASH_ERASE_SECTOR);
  flash_read(kTestAddress, sizeof(kTestData), check_erase);
  flash_write(kTestAddress, kTestData, sizeof(kTestData));
  flash_read(kTestAddress, sizeof(kTestData), check_write);
  /* flash_read(kTestAddress ^ (1 << 24), sizeof(kTestData), check_write); */
  flash_disable();
}

/* static void check_id(void) { */
  /* static const uint8_t kCommands[] = { */
  /*   MX25_READ_ID, */
  /*   MX25_RES, 0, 0, 0, */
  /*   MX25_REMS, 0, 0, 0 */
  /* }; */
  /* static const nrf_spi_mngr_transfer_t kTransfers[] = { */
  /*   NRF_SPI_MNGR_TRANSFER(kCommands, 1, m_rx_buffer, 1 + 3), */
  /*   NRF_SPI_MNGR_TRANSFER(kCommands + 1, 4, m_rx_buffer + 4, 4 + 1), */
  /*   NRF_SPI_MNGR_TRANSFER(kCommands + 5, 4, m_rx_buffer + 9, 4 + 2) */
  /* }; */
  /* static const nrf_spi_mngr_transaction_t kTransaction = { */
  /*   .begin_callback      = NULL, */
  /*   .end_callback        = check_id_callback, */
  /*   .p_user_data         = (void*)(15), */
  /*   .p_transfers         = kTransfers, */
  /*   .number_of_transfers = sizeof(kTransfers) / sizeof(nrf_spi_mngr_transfer_t), */
  /*   .p_required_spi_cfg  = NULL */
  /* }; */
  /* APP_ERROR_CHECK(nrf_spi_mngr_schedule(&kSPI1Manager, &kTransaction)); */
/* } */

/* static void check_id_callback(ret_code_t result, void* p_user_data) { */
/*   static const uint8_t kIDIndex[] = {   1,    2,    3,    8,   13,   14}; */
/*   static const uint8_t kIDTable[] = {0xc2, 0x20, 0x19, 0x18, 0xc2, 0x18}; */
/*   if (result == NRF_SUCCESS) { */
/*     for (uint8_t i = 0; i < sizeof(kIDTable); ++i) { */
/*       if (m_rx_buffer[kIDIndex[i]] != kIDTable[i]) { */
/*         NRF_LOG_ERROR("Wrong ID!\n"); */
/*         NRF_LOG_HEXDUMP_ERROR(m_rx_buffer, (uint32_t)p_user_data); */
/*         return; */
/*       } */
/*     } */
/*     NRF_LOG_INFO("ID is correct.\n"); */
/*     NRF_LOG_HEXDUMP_DEBUG(m_rx_buffer, (uint32_t)p_user_data); */
/*   } else { */
/*     NRF_LOG_ERROR("Fail to check ID, code:%d!\n", result); */
/*   } */
/* } */

static void check_erase(const uint8_t* p_data, uint16_t length) {
  for (uint16_t i = 0; i < length; ++i) {
    if (p_data[i] != 0xff) {
      NRF_LOG_ERROR("Erase failed!\n");
      NRF_LOG_HEXDUMP_ERROR(p_data, length);
      return;
    }
  }
  NRF_LOG_INFO("Erase succeeded.\n");
  /* NRF_LOG_HEXDUMP_DEBUG(p_data, length); */
}

static void check_write(const uint8_t* p_data, uint16_t length) {
  for (uint16_t i = 0; i < length; ++i) {
    if (p_data[i] != kTestData[i]) {
      NRF_LOG_ERROR("Write failed!\n");
      NRF_LOG_HEXDUMP_ERROR(p_data, length);
      return;
    }
  }
  NRF_LOG_INFO("Write succeeded.\n");
  /* NRF_LOG_HEXDUMP_DEBUG(p_data, length); */
  /* flash_disable(); */
}

void flash_read(uint32_t address, uint16_t length, flash_data_handler_t handler) {
  /* NRF_LOG_DEBUG("flash read addr:%x len:%d\n", address, length); */
  read_op_t* p_read_op = (read_op_t*)malloc(sizeof(read_op_t));
  if (p_read_op == NULL) {
    NRF_LOG_ERROR("Flash read error, no memory!\n");
    return;
  }
  p_read_op->address = address;
  p_read_op->length = length;
  p_read_op->handler = handler;
  flash_op_t op = {
    .op_type = FLASH_READ,
    .p_actual_op = (void*)p_read_op
  };
  ret_code_t err_code = op_queue_push(&op);
  if (err_code == NRF_SUCCESS) {
    op_start();
  } else if (err_code == NRF_ERROR_NO_MEM) {
    NRF_LOG_ERROR("Queue no memory!\n");
  } else {
    NRF_LOG_ERROR("Queue error: %d!\n", err_code);
  }
}

void flash_write(uint32_t address, const uint8_t* p_data, uint16_t length) {
  // 处理跨页写入
  if ((address & ~kFlashPageAddressMask) + length > FLASH_PAGE_SIZE) {
    NRF_LOG_DEBUG("over page addr: %x p_data: %x len: %d\n",
                  address, (uint32_t)p_data, length);
    uint32_t page_address = (address & kFlashPageAddressMask) + kFlashPageSize;
    uint16_t length_in_page = page_address - address;
    flash_write(address, p_data, length_in_page);
    flash_write(page_address, p_data + length_in_page, length - length_in_page);
    return;
  }
  NRF_LOG_DEBUG("flash write addr:%x len:%d\n", address, length);
  write_op_t* p_write_op = (write_op_t*)malloc(sizeof(write_op_t));
  uint8_t* p_data_copy = (uint8_t*)malloc(length);
  if (p_write_op == NULL || p_data_copy == NULL) {
    NRF_LOG_ERROR("Flash write error, no memory!\n");
    return;
  }
  memcpy(p_data_copy, p_data, length);
  p_write_op->address = address;
  p_write_op->length = length;
  p_write_op->p_data = p_data_copy;
  flash_op_t op = {
    .op_type = FLASH_WRITE,
    .p_actual_op = (void*)p_write_op
  };
  ret_code_t err_code = op_queue_push(&op);
  if (err_code == NRF_SUCCESS) {
    op_start();
  } else if (err_code == NRF_ERROR_NO_MEM) {
    NRF_LOG_ERROR("Queue no memory!\n");
  } else {
    NRF_LOG_ERROR("Queue error: %d!\n", err_code);
  }
}

void flash_erase(uint32_t address, flash_erase_t erase_type) {
  /* NRF_LOG_DEBUG("flash erase addr:%x type:%d\n", address, erase_type); */
  erase_op_t* p_erase_op = (erase_op_t*)malloc(sizeof(erase_op_t));
  if (p_erase_op == NULL) {
    NRF_LOG_ERROR("Flash erase error, no memory!\n");
    return;
  }
  p_erase_op->erase_type = erase_type;
  p_erase_op->address = address;
  flash_op_t op = {
    .op_type = FLASH_ERASE,
    .p_actual_op = (void*)p_erase_op
  };
  ret_code_t err_code = op_queue_push(&op);
  if (err_code == NRF_SUCCESS) {
    op_start();
  } else if (err_code == NRF_ERROR_NO_MEM) {
    NRF_LOG_ERROR("Queue no memory!\n");
  } else {
    NRF_LOG_ERROR("Queue error: %d!\n", err_code);
  }
}

void flash_enable(void) {
  /* NRF_LOG_DEBUG("Flash enable.\n"); */
  flash_op_t op = {
    .op_type = FLASH_ENABLE,
    .p_actual_op = NULL
  };
  ret_code_t err_code = op_queue_push(&op);
  if (err_code == NRF_SUCCESS) {
    op_start();
  } else if (err_code == NRF_ERROR_NO_MEM) {
    NRF_LOG_ERROR("Queue no memory!\n");
  } else {
    NRF_LOG_ERROR("Queue error: %d!\n", err_code);
  }
}

void flash_disable(void) {
  /* NRF_LOG_DEBUG("Flash disable.\n"); */
  /* m_is_enable = false; */
  flash_op_t op = {
    .op_type = FLASH_DISABLE,
    .p_actual_op = NULL
  };
  ret_code_t err_code = op_queue_push(&op);
  if (err_code == NRF_SUCCESS) {
    op_start();
  } else if (err_code == NRF_ERROR_NO_MEM) {
    NRF_LOG_ERROR("Queue no memory!\n");
  } else {
    NRF_LOG_ERROR("Queue error: %d!\n", err_code);
  }
}

static void op_start(void) {
  /* CRITICAL_REGION_ENTER(); */
  if (m_current_op.op_type != FLASH_NONE || op_queue_is_empty()) {
    return;
  }
  if (op_queue_pop((flash_op_t*)&m_current_op) != NRF_SUCCESS) {
    NRF_LOG_ERROR("queue pop error!\n");
    m_current_op.op_type = FLASH_NONE;
    return;
  }
  /* CRITICAL_REGION_EXIT(); */
  switch (m_current_op.op_type) {
  case FLASH_READ:
    NRF_LOG_DEBUG("op: read queue: %d\n", op_queue_utilization_get());
    break;
  case FLASH_WRITE:
    NRF_LOG_DEBUG("op: write queue: %d\n", op_queue_utilization_get());
    break;
  case FLASH_ERASE:
    NRF_LOG_DEBUG("op: erase queue: %d\n", op_queue_utilization_get());
    break;
  case FLASH_ENABLE:
    NRF_LOG_DEBUG("op: enable queue: %d\n", op_queue_utilization_get());
    break;
  case FLASH_DISABLE:
    NRF_LOG_DEBUG("op: disable queue: %d\n", op_queue_utilization_get());
    break;
  }
  /* uint32_t address; */
  m_handler = op_end;
  switch (m_current_op.op_type) {
  case FLASH_READ:
    read_status();
    break;

  case FLASH_WRITE:
  case FLASH_ERASE:
    write_enable(NULL);
    break;

  case FLASH_ENABLE:
    nrf_spi_enable(NRF_SPI1);
    m_tx_buffer[0] = MX25_WAKE_UP;
    spi_send_data(1, 0);
    break;

  case FLASH_DISABLE:
    if (op_queue_is_empty()) {
      // 队列中没有其它操作可以关闭flash
      m_tx_buffer[0] = MX25_DEEP_POWER_DOWN;
      spi_send_data(1, 0);
    } else {
      // 如果如果下一个操作是使能，可以跳过
      flash_op_t op;
      ret_code_t err_code = op_queue_peek(&op);
      if (err_code == NRF_SUCCESS && op.op_type == FLASH_ENABLE) {
        APP_ERROR_CHECK(op_queue_pop(&op));
      }
      m_current_op.op_type = FLASH_NONE;
      op_start();
    }
    break;

  default:
    NRF_LOG_ERROR("Invalid operation type!\n");
    break;
  }
}

static void spi_send_data(uint16_t tx_length, uint16_t rx_length) {
  /* NRF_LOG_DEBUG("rx(%d) tx(%d):\n", rx_length, tx_length); */
  /* NRF_LOG_HEXDUMP_DEBUG(m_tx_buffer, tx_length); */
  ret_code_t err_code = nrf_drv_spi_transfer(&kSPI1, m_tx_buffer, tx_length,
                                             m_rx_buffer, rx_length + tx_length);
  if (err_code != NRF_SUCCESS) {
    NRF_LOG_ERROR("spi_send_data error, code: %d\n", err_code);
  }
}

static void spi_handler(nrf_drv_spi_evt_t const* p_event) {
  if (p_event->type == NRF_DRV_SPI_EVENT_DONE) {
    if (m_handler) {
      m_handler();
    } else {
      NRF_LOG_ERROR("SPI handler error, m_handler is NULL!\n");
    }
  } else {
    NRF_LOG_ERROR("SPI handler error!\n");
  }
}

static void write_enable(void* p_arguments) {
  /* NRF_LOG_DEBUG("Write enable.\n"); */
  m_handler = read_status;
  m_tx_buffer[0] = MX25_WRITE_ENABLE;
  spi_send_data(1, 0);
}

static void read_status(void) {
  /* NRF_LOG_DEBUG("Read status.\n"); */
  m_handler = check_status;
  m_tx_buffer[0] = MX25_READ_STATUS_REG;
  spi_send_data(1, MX25_READ_STATUS_REG_RX_LEN);
}

static void check_status(void) {
  /* NRF_LOG_DEBUG("Check status %d\n", m_rx_buffer[1]); */
  if (!(m_rx_buffer[1] & MX25_MASK_STATUS_REG_WIP) &&
      (m_rx_buffer[1] & MX25_MASK_STATUS_REG_WEL)) {
    /* flash_op_t op; */
    /* APP_ERROR_CHECK(op_queue_peek(&op)); */
    uint32_t address;
    uint16_t temp;
    m_handler = op_end;
    switch (m_current_op.op_type) {
    case FLASH_READ:
      address = ((read_op_t*)m_current_op.p_actual_op)->address;
      m_tx_buffer[0] = MX25_READ_4B;
      m_tx_buffer[1] = (uint8_t)(address >> 24 & 0xff);
      m_tx_buffer[2] = (uint8_t)(address >> 16 & 0xff);
      m_tx_buffer[3] = (uint8_t)(address >> 8 & 0xff);
      m_tx_buffer[4] = (uint8_t)(address & 0xff);
      spi_send_data(5, ((read_op_t*)m_current_op.p_actual_op)->length);
      break;

    case FLASH_WRITE:
      address = ((write_op_t*)m_current_op.p_actual_op)->address;
      m_tx_buffer[0] = MX25_PAGE_PROGRAM_4B;
      m_tx_buffer[1] = (uint8_t)(address >> 24 & 0xff);
      m_tx_buffer[2] = (uint8_t)(address >> 16 & 0xff);
      m_tx_buffer[3] = (uint8_t)(address >> 8 & 0xff);
      m_tx_buffer[4] = (uint8_t)(address & 0xff);
      temp = ((write_op_t*)m_current_op.p_actual_op)->length;
      memcpy(m_tx_buffer + 5, ((write_op_t*)m_current_op.p_actual_op)->p_data, temp);
      spi_send_data(5 + temp, 0);
      break;

    case FLASH_ERASE:
      temp = ((erase_op_t*)m_current_op.p_actual_op)->erase_type;
      m_tx_buffer[0] = kEraseCommand[temp];
      if (temp != FLASH_ERASE_CHIP) {
        address = ((erase_op_t*)m_current_op.p_actual_op)->address;
        m_tx_buffer[1] = (uint8_t)(address >> 24 & 0xff);
        m_tx_buffer[2] = (uint8_t)(address >> 16 & 0xff);
        m_tx_buffer[3] = (uint8_t)(address >> 8 & 0xff);
        m_tx_buffer[4] = (uint8_t)(address & 0xff);
        spi_send_data(5, 0);
      } else {
        spi_send_data(1, 0);
      }
      break;
    }
  } else {
    NRF_LOG_DEBUG("status %x\n", m_rx_buffer[1]);
    rtc_run_delay(kEraseTimeMs[0], kFlashChannel, write_enable, NULL);
  }
}

static void op_end(void) {
  flash_data_handler_t handler;
  switch (m_current_op.op_type) {
  case FLASH_READ:
    handler = ((read_op_t*)m_current_op.p_actual_op)->handler;
    if (handler) {
      handler(m_rx_buffer + 5, ((read_op_t*)m_current_op.p_actual_op)->length);
    }
    free((read_op_t*)m_current_op.p_actual_op);
    break;

  case FLASH_WRITE:
    free(((write_op_t*)m_current_op.p_actual_op)->p_data);
    free((write_op_t*)m_current_op.p_actual_op);
    /* NRF_LOG_DEBUG("Write command sended.\n"); */
    break;

  case FLASH_ERASE:
    /* NRF_LOG_DEBUG("Erase command(%d) sended. Next of start %d ms later.\n", */
    /*               ((erase_op_t*)m_current_op.p_actual_op)->erase_type, */
    /*               kEraseTimeMs[((erase_op_t*)m_current_op.p_actual_op)->erase_type]); */
    rtc_run_delay(kEraseTimeMs[((erase_op_t*)m_current_op.p_actual_op)->erase_type],
                  kFlashChannel, delayed_op_start, NULL);
    free((erase_op_t*)m_current_op.p_actual_op);
    return;

  case FLASH_DISABLE:
    /* NRF_LOG_DEBUG("Flash disable command sended.\n"); */
    nrf_spi_disable(NRF_SPI1);
    break;

  case FLASH_ENABLE:
    /* NRF_LOG_DEBUG("Flash enable command sended.\n"); */
    /* m_is_enable = true; */
    break;

  default:
    break;
  }
  m_current_op.op_type = FLASH_NONE;
  op_start();
}

static void delayed_op_start(void* p_arguments) {
  m_current_op.op_type = FLASH_NONE;
  op_start();
}

bool flash_is_idle(void) {
  return op_queue_is_empty() && m_current_op.op_type == FLASH_NONE;
}
