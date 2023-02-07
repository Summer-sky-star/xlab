#ifndef _QUEUE_H_
#define _QUEUE_H_
#include <stdint.h>
#include <stdbool.h>

#define QUEUE_INIT(_queue_size, _element_size) {        \
    .data = NULL,                                       \
    .front = 0,                                         \
    .back = 0,                                          \
    .element_size = (_element_size),                    \
    .data_size = ((_queue_size) + 1) * (_element_size)  \
  }

typedef struct {
  void* data;
  uint32_t front, back;
  uint32_t element_size, data_size;
} queue_t;

void queue_free(queue_t* queue);
void queue_push(queue_t* queue, void* data);
void* queue_front(queue_t queue);
void queue_pop(queue_t* queue);
bool queue_is_empty(queue_t queue);
void queue_test(void);

#endif /* _QUEUE_H_ */
