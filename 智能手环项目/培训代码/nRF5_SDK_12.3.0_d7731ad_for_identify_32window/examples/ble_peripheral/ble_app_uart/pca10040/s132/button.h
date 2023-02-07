#ifndef _BUTTON_H_
#define _BUTTON_H_

typedef void (*button_wake_up_callback_t)(void);

void button_init(void);
void button_set_wake_up(bool enable, bool off_mode,
                        button_wake_up_callback_t callback);

#endif /* _BUTTON_H_ */
