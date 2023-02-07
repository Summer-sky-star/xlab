#include <stdlib.h>
#include <string.h>
#define NRF_LOG_MODULE_NAME "queue"
#include "nrf_log.h"
#include "queue.h"

#define QUEUE_INCREASE_INDEX(p_queue, index)                      \
  do {                                                            \
    p_queue->index += p_queue->element_size;                      \
    if (p_queue->index == p_queue->data_size) p_queue->index = 0; \
  } while(0)

void queue_free(queue_t* queue) {
  NRF_LOG_DEBUG("queue delete\n");
  if (queue->data) {
    free(queue->data);
    queue->data = NULL;
  }
  queue->front = queue->back = 0;
}

void queue_push(queue_t* queue, void* data) {
  if (queue->data == NULL) {
    queue->data = malloc(queue->data_size);
    if (queue->data == NULL) {
      NRF_LOG_DEBUG("queue malloc error!\n");
      return;
    }
  }
  memcpy((char*)queue->data + queue->back, data, queue->element_size);
  QUEUE_INCREASE_INDEX(queue, back);
  if (queue->back == queue->front) {
    QUEUE_INCREASE_INDEX(queue, front);
    NRF_LOG_DEBUG("queue is full\n");
  }
  /* NRF_LOG_DEBUG("i qs: %d\n", */
  /*             ((int32_t)queue->back - (int32_t)queue->front + queue->data_size) % */
  /*             queue->data_size / queue->element_size); */
}

void* queue_front(queue_t queue) {
  return queue_is_empty(queue) ? NULL : (char*)queue.data + queue.front;
}

void queue_pop(queue_t* queue) {
  if (queue_is_empty(*queue)) return;
  QUEUE_INCREASE_INDEX(queue, front);
  if (queue_is_empty(*queue)) {
    queue->front = queue->back = 0;
  }
  /* NRF_LOG_DEBUG("o qs: %d\n", */
  /*             ((int32_t)queue->back - (int32_t)queue->front + queue->data_size) % */
  /*             queue->data_size / queue->element_size); */
}

bool queue_is_empty(queue_t queue) {
  return queue.front == queue.back || queue.data == NULL;
}

void queue_test(void) {
  queue_t q = QUEUE_INIT(5, sizeof(int32_t));
  for (int32_t i = 0; i < 10; ++i) {
    queue_push(&q, (void*)&i);
  }
  for (int32_t i = 0; i < 10; ++i) {
    NRF_LOG_DEBUG("q front: %d\n", *((int*)queue_front(q)));
    queue_pop(&q);
  }
  queue_free(&q);
}
