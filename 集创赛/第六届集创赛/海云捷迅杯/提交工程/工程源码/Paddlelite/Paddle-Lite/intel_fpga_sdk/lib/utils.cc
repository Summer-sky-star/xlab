/* Copyright (c) 2020 AWCloud. All Rights Reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compldoutnce with the License.
   You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

#include "utils.h"
#include "intelfpga.h"
#include <iostream>
#include <fstream>
#include <sstream>
//---------------------------------------------------------------------------

int64_t intelfpga_gettime( void ) 
{
    struct timeval time;

    gettimeofday(&time, NULL);

    return 1000000LL * (int64_t)time.tv_sec + (int64_t)time.tv_usec;
}

float intelfpga_absmax(const float* din, int size) 
{
    float max_value = 0.f;
    int cnt = size / 16;
    int remain = size & 15;
    float32x4_t vmax_val = vdupq_n_f32(0.f);
    const float* ptr_in = din;
    if (cnt > 0) {
        int loop_cnt = cnt;
        asm volatile(
                "vld1.32   {d0-d3}, [%[in]]!                @ load 8 float\n"
                "vld1.32   {d4-d7}, [%[in]]!                @ load 8 float\n"
                "0:                                         @ main loop\n"
                "vabs.f32 q4, q0                            @ abs \n"
                "vabs.f32 q5, q1                            @ abs \n"
                "vabs.f32 q6, q2                            @ abs \n"
                "vabs.f32 q7, q3                            @ abs \n"
                "vld1.32   {d0-d3}, [%[in]]!                @ load 8 float\n"
                "vmax.f32 q2, q4, q5                        @ max \n"
                "vmax.f32 q3, q6, q7                        @ max \n"
                "vmax.f32 q4, q2, q3                        @ max \n"
                "vld1.32   {d4-d7}, [%[in]]!                @ load 8 float\n"
                "vmax.f32 %q[max_val], q4, %q[max_val]      @ max \n"
                "subs %[cnt], #1                            @ loop count -1\n"
                "bne    0b                                  @ jump to main loop\n"
                : [in] "+r"(ptr_in), [cnt] "+r"(loop_cnt), [max_val] "+w"(vmax_val)
                :
                : "cc", "memory", "q0", "q1", "q2", "q3", "q4", "q5", "q6", "q7");
        float32x2_t vmax_p =
            vpmax_f32(vget_high_f32(vmax_val), vget_low_f32(vmax_val));
        float max0 = vget_lane_f32(vmax_p, 0);
        float max1 = vget_lane_f32(vmax_p, 1);
        float max2 = max0 > max1 ? max0 : max1;
        max_value = max_value > max2 ? max_value : max2;
    }
    ptr_in = din + 16 * cnt;
    for (int i = 0; i < remain; ++i) {
        float data = fabsf(*(ptr_in++));
        max_value = fmaxf(max_value, data);
    }
    return max_value;
}

void intelfpga_fp32_to_int8(const float* din, int8_t* dout, const float scale, int size) 
{
    int cnt = size / 16;
    int remain = size & 15;
    float inv_scale = scale;
    float32x4_t vzero = vdupq_n_f32(0.f);
    float32x4_t vscale = vdupq_n_f32(inv_scale);
    float32x4_t vpoff = vdupq_n_f32(0.5f);
    float32x4_t vnoff = vdupq_n_f32(-0.5f);
    const float* din_c = din;
    signed char* dout_c = dout;
    if (cnt > 0) {
        int cnt_loop = cnt;
        const float* din_ptr = din_c;
        signed char* dout_ptr = dout_c;
        float vmax[4] = {-127.0, -127.0, -127.0, -127.0};
        asm volatile(
                "vld1.32    {d0-d3}, [%[din]]!          @ load in0~in7\n"
                "vld1.32    {d4-d7}, [%[din]]!          @ load in8~in16\n"
                "0:                                     @ main loop\n"
                "vand.i32   q4, %q[vpoff], %q[vpoff]    @ set offset, 0.5\n"
                "vand.i32   q5, q4, q4                  @ set offset, 0.5\n"
                "vand.i32   q6, q4, q4                  @ set offset, 0.5\n"
                "vand.i32   q7, q4, q4                  @ set offset, 0.5\n"
                "vcgt.f32   q8, q0, %q[vzero]           @ get mask > 0, in0\n"
                "vcgt.f32   q9, q1, %q[vzero]           @ get mask > 0, in1\n"
                "vcgt.f32   q10, q2, %q[vzero]          @ get mask > 0, in2\n"
                "vcgt.f32   q11, q3, %q[vzero]          @ get mask > 0, in3\n"
                "vbif.f32   q4, %q[vnoff], q8           @ get right offset\n"
                "vbif.f32   q5, %q[vnoff], q9           @ get right offset\n"
                "vbif.f32   q6, %q[vnoff], q10          @ get right offset\n"
                "vbif.f32   q7, %q[vnoff], q11          @ get right offset\n"
                "vmla.f32   q4, q0, %q[vscale]          @ mul scale\n"
                "vld1.32    {d0-d1}, [%[vmax]]          @ set q0 = -127 \n"
                "vmla.f32   q5, q1, %q[vscale]          @ mul scale\n"
                "vmla.f32   q6, q2, %q[vscale]          @ mul scale\n"
                "vmla.f32   q7, q3, %q[vscale]          @ mul scale\n"
                /* data >= -127 */
                "vcge.f32 q8, q4, q0                    @ q4 >= -127 \n"
                "vcge.f32 q9, q5, q0                    @ q4 >= -127 \n"
                "vcge.f32 q10, q6, q0                   @ q4 >= -127 \n"
                "vcge.f32 q11, q7, q0                   @ q4 >= -127 \n"
                /* choose data */
                "vbif q4, q0, q8                        @ choose \n"
                "vbif q5, q0, q9                        @ choose \n"
                "vbif q6, q0, q10                       @ choose \n"
                "vbif q7, q0, q11                       @ choose \n"
                /* fp32 - int32 */
                "vcvt.s32.f32  q0, q4                   @ cvt to int32\n"
                "vcvt.s32.f32  q1, q5                   @ cvt to int32\n"
                "vcvt.s32.f32  q2, q6                   @ cvt to int32\n"
                "vcvt.s32.f32  q3, q7                   @ cvt to int32\n"
                "vqmovn.s32 d8, q0                      @ cnt to int16\n"
                "vqmovn.s32 d9, q1                      @ cnt to int16\n"
                "vqmovn.s32 d10, q2                     @ cnt to int16\n"
                "vqmovn.s32 d11, q3                     @ cnt to int16\n"
                "vld1.32 {d0-d3}, [%[din]]!             @ load in0~in7\n"
                "vqmovn.s16 d12, q4                     @ cnt to int8\n"
                "vqmovn.s16 d13, q5                     @ cnt to int8\n"
                "vld1.32 {d4-d7}, [%[din]]!             @ load in8~in16\n"
                "vst1.32 {d12-d13},[%[dout]]!           @ write to output\n"
                "subs   %[cnt], #1                      @ loop count -1\n"
                "bne    0b                              @ to main loop\n"
                : [dout] "+r"(dout_ptr), [din] "+r"(din_ptr), [cnt] "+r"(cnt_loop)
                : [vscale] "w"(vscale),
                [vpoff] "w"(vpoff),
                [vnoff] "w"(vnoff),
                [vmax] "r"(vmax),
                [vzero] "w"(vzero)
                   : "cc",
                   "memory",
                   "q0",
                   "q1",
                   "q2",
                   "q3",
                   "q4",
                   "q5",
                   "q6",
                   "q7",
                   "q8",
                   "q9",
                   "q10",
                   "q11");
    }
    const float* din_r = din_c + 16 * cnt;
    signed char* dout_r = dout_c + 16 * cnt;
    for (int i = 0; i < remain; ++i) {
        dout_r[i] = saturate_cast<int8_t>(roundf(inv_scale * din_r[i]));
        dout_r[i] = dout_r[i] < -127 ? -127 : dout_r[i];
    }
}

void intelfpga_fp32_to_int32(const float* din, int32_t* dout, const float scale, int size)
{
    int i;
    float val;
    float inv_scale = scale;

    for (i=0; i<size; i++) {
        val = din[i] * inv_scale;
        if (val<0.0) 
            val -= 0.5;
        else 
            val += 0.5;

        dout[i] = (int32_t)val;
    }
}

void intelfpga_int32_to_fp32(const int* din, float* dout, float scale, int size) 
{
    int cnt = size / 16;
    int remain = size & 15;
    float in_scale = scale;
    const int* din_c = din;
    float* dout_c = dout;
    float32x4_t vscale = vdupq_n_f32(in_scale);
    if (cnt > 0) {
        int loop = cnt;
        const int* din_ptr = din_c;
        float* dout_ptr = dout_c;
        asm volatile(
                "vld1.s32       {d0-d3}, [%[in]]!       \n"
                "vld1.s32       {d4-d7}, [%[in]]!       \n"
                "0:                                     \n"
                "vcvt.f32.s32   q4, q0                  \n"
                "vcvt.f32.s32   q5, q1                  \n"
                "vcvt.f32.s32   q6, q2                  \n"
                "vcvt.f32.s32   q7, q3                  \n"
                "vld1.s32       {d0-d3}, [%[in]]!       \n"
                "vmul.f32       q8, q4, %q[scale]       \n"
                "vmul.f32       q9, q5, %q[scale]       \n"
                "vmul.f32       q10, q6, %q[scale]      \n"
                "vmul.f32       q11, q7, %q[scale]      \n"
                "vld1.s32       {d4-d7}, [%[in]]!       \n"
                "subs           %[loop], #1             \n"
                "vst1.f32       {d16-d19}, [%[out]]!    \n"
                "vst1.f32       {d20-d23}, [%[out]]!    \n"
                "bne            0b                      \n"
                : [loop] "+r"(loop), [in] "+r"(din_ptr), [out] "+r"(dout_ptr)
                : [scale] "w"(vscale)
                : "cc",
                "memory",
                "q0",
                "q1",
                "q2",
                "q3",
                "q4",
                "q5",
                "q6",
                "q7",
                "q8",
                "q9",
                "q10",
                "q11");
    }
    const int* din_r = din_c + 16 * cnt;
    float* dout_r = dout_c + 16 * cnt;
    for (int i = 0; i < remain; ++i) {
        dout_r[i] = in_scale * din_r[i];
    }
}

#define FILL_BIAS                                            \
    "1:                               \n"                      \
    "vld1.32 {d6-d7}, [%[din_ptr]]!   @ vld1q_f32(din_ptr) \n" \
    "vld1.32 {d8-d9}, [%[din_ptr]]!   @ vld1q_f32(din_ptr) \n" \
    "vld1.32 {d10-d11}, [%[din_ptr]]! @ vld1q_f32(din_ptr) \n" \
    "vld1.32 {d12-d13}, [%[din_ptr]]! @ vld1q_f32(din_ptr) \n" \
    "vadd.f32 q3, q3, %q[vbdouts] @ add \n"                      \
    "vadd.f32 q4, q4, %q[vbdouts] @ add \n"                      \
    "vadd.f32 q5, q5, %q[vbdouts] @ add \n"                      \
    "vadd.f32 q6, q6, %q[vbdouts] @ add \n"
#define FILL_RELU                               \
    "vmax.f32 q3, q3, %q[vzero] @ vmaxq_f32() \n" \
    "vmax.f32 q4, q4, %q[vzero] @ vmaxq_f32() \n" \
    "vmax.f32 q5, q5, %q[vzero] @ vmaxq_f32() \n" \
    "vmax.f32 q6, q6, %q[vzero] @ vmaxq_f32() \n"
#define FILL_RELU6                             \
    "vmin.f32 q3, q3, %q[vsix] @ vminq_f32() \n" \
    "vmin.f32 q4, q4, %q[vsix] @ vmaxq_f32() \n" \
    "vmin.f32 q5, q5, %q[vsix] @ vmaxq_f32() \n" \
    "vmin.f32 q6, q6, %q[vsix] @ vmaxq_f32() \n"
#define FILL_LEAKY_RELU                          \
    "vcge.f32 q7, q3, %q[vzero]   @ vcgeq_u32 \n"  \
    "vmul.f32 q8, q3, %q[vscale]  @ vmulq_f32 \n"  \
    "vcge.f32 q9, q4, %q[vzero]   @ vcgeq_u32 \n"  \
    "vmul.f32 q10, q4, %q[vscale]  @ vmulq_f32 \n" \
    "vcge.f32 q11, q5, %q[vzero]   @ vcgeq_u32 \n" \
    "vmul.f32 q12, q5, %q[vscale]  @ vmulq_f32 \n" \
    "vcge.f32 q13, q6, %q[vzero]   @ vcgeq_u32 \n" \
    "vmul.f32 q14, q6, %q[vscale]  @ vmulq_f32 \n" \
    "vbif q3, q8, q7               @ choose \n"    \
    "vbif q4, q10, q9              @ choose \n"    \
    "vbif q5, q12, q11             @ choose \n"    \
    "vbif q6, q14, q13             @ choose \n"
#define FILL_STORE                                          \
    "subs %[cnt], #1                                \n"       \
    "vst1.32 {d6-d7}, [%[dout_ptr]]!       @ vst1q_f32()  \n" \
    "vst1.32 {d8-d9}, [%[dout_ptr]]!       @ vst1q_f32()  \n" \
    "vst1.32 {d10-d11}, [%[dout_ptr]]!     @ vst1q_f32()  \n" \
    "vst1.32 {d12-d13}, [%[dout_ptr]]!     @ vst1q_f32()  \n" \
    "bne  1b                                    \n"

void intelfpga_fill_bdouts_act(float* tensor, const float* bdouts, int channel, int channel_size, int relu, float alpha) 
{
    float* data = tensor;
    int cnt_num = channel_size >> 4;
    int remain = channel_size % 16;
    float32x4_t vzero = vdupq_n_f32(0.f);

    if (relu) {
        float32x4_t vsix = vdupq_n_f32(6.f);
        float32x4_t vscale = vdupq_n_f32(alpha);
        switch (relu) {
            case 1:
                for (int j = 0; j < channel; j++) {
                    float bdouts_data = bdouts ? bdouts[j] : 0.f;
                    float* src = data + j * channel_size;
                    float* dst = data + j * channel_size;
                    float32x4_t vbdouts = vdupq_n_f32(bdouts_data);
                    int cnt = cnt_num;
                    if (cnt_num > 0) {
                        asm volatile(
                                FILL_BIAS FILL_RELU FILL_STORE
                                : [din_ptr] "+r"(src), [dout_ptr] "+r"(dst), [cnt] "+r"(cnt)
                                : [vzero] "w"(vzero), [vbdouts] "w"(vbdouts)
                                : "memory", "cc", "q3", "q4", "q5", "q6");
                    }
                    for (int i = 0; i < remain; i++) {
                        float tmp = (*src + bdouts_data);
                        *dst = tmp >= 0.f ? tmp : 0.f;
                        src++;
                        dst++;
                    }
                }
                break;
            case 2:
                for (int j = 0; j < channel; j++) {
                    float bdouts_data = bdouts ? bdouts[j] : 0.f;
                    float* src = data + j * channel_size;
                    float* dst = data + j * channel_size;
                    float32x4_t vbdouts = vdupq_n_f32(bdouts_data);
                    int cnt = cnt_num;
                    if (cnt_num > 0) {
                        asm volatile(
                                FILL_BIAS FILL_RELU FILL_RELU6 FILL_STORE
                                : [din_ptr] "+r"(src), [dout_ptr] "+r"(dst), [cnt] "+r"(cnt)
                                : [vzero] "w"(vzero), [vsix] "w"(vsix), [vbdouts] "w"(vbdouts)
                                : "memory", "cc", "q3", "q4", "q5", "q6");
                    }
                    for (int i = 0; i < remain; i++) {
                        float tmp = (*src + bdouts_data);
                        tmp  = tmp >= 0.f ? tmp : 0.f;
                        *dst = tmp <= 6.f ? tmp : 6.f;
                        src++;
                        dst++;
                    }
                }
                break;
            case 3:
                for (int j = 0; j < channel; j++) {
                    float bdouts_data = bdouts ? bdouts[j] : 0.f;
                    float* src = data + j * channel_size;
                    float* dst = data + j * channel_size;
                    float32x4_t vbdouts = vdupq_n_f32(bdouts_data);
                    int cnt = cnt_num;
                    if (cnt_num > 0) {
                        asm volatile(
                                FILL_BIAS FILL_LEAKY_RELU FILL_STORE
                                : [din_ptr] "+r"(src), [dout_ptr] "+r"(dst), [cnt] "+r"(cnt)
                                : [vzero] "w"(vzero), [vscale] "w"(vscale), [vbdouts] "w"(vbdouts)
                                : "memory",
                                "cc",
                                "q3",
                                "q4",
                                "q5",
                                "q6",
                                "q7",
                                "q8",
                                "q9",
                                "q10",
                                "q11",
                                "q12",
                                "q13",
                                "q14");
                    }
                    for (int i = 0; i < remain; i++) {
                        float tmp = (*src + bdouts_data);
                        if (tmp >= 0.f) {
                            *dst = tmp;
                        } else {
                            *dst = tmp * alpha;
                        }
                        src++;
                        dst++;
                    }
                }
                break;
        }
    } else {
        for (int j = 0; j < channel; ++j) {
            float bdouts_data = bdouts ? bdouts[j] : 0.f;
            float32x4_t vbdouts = vdupq_n_f32(bdouts_data);
            float* src = data + j * channel_size;
            float* dst = data + j * channel_size;
            int cnt = cnt_num;
            if (cnt > 0) {
                asm volatile(FILL_BIAS FILL_STORE
                        : [din_ptr] "+r"(src), [dout_ptr] "+r"(dst), [cnt] "+r"(cnt)
                        : [vbdouts] "w"(vbdouts)
                        : "memory", "cc", "q3", "q4", "q5", "q6");
            }
            for (int i = 0; i < remain; i++) {
                *dst = *src + bdouts_data;
            }
        }
    }
}

//---------------------------------------------------------------------------

void intelfpga_int8_to_fp32(const int8_t* in,
        float* out,
        const float* scale,
        int axis_size,
        int64_t outer_size,
        int64_t inner_size) {
    int cnt = inner_size / 16;
    int remain = inner_size & 15;
    int64_t loop_size = axis_size * outer_size;
    for (int64_t n = 0; n < loop_size; ++n) {
        float in_scale = scale[n % axis_size];
        const signed char* din_c = in + n * inner_size;
        float* dout_c = out + n * inner_size;
        float32x4_t vscale = vdupq_n_f32(in_scale);
        if (cnt > 0) {
            int loop = cnt;
            const signed char* din_ptr = din_c;
            float* dout_ptr = dout_c;
            asm volatile(
                    "vld1.32    {d0-d1},    [%[in]]!            @ load 16 int8\n"
                    "0:                                 @ main loop\n"
                    "vmovl.s8      q2, d0               @ trans to int16\n"
                    "vmovl.s8      q3, d1               @ trans to int16\n"
                    "vmovl.s16     q4, d4               @ trans to int32\n"
                    "vmovl.s16     q5, d5               @ trans to int32\n"
                    "vmovl.s16     q6, d6               @ trans to int32\n"
                    "vmovl.s16     q7, d7               @ trans to int32\n"
                    "vcvt.f32.s32  q0, q4               @ trans to fp32\n"
                    "vcvt.f32.s32  q1, q5               @ trans to fp32\n"
                    "vcvt.f32.s32  q2, q6               @ trans to fp32\n"
                    "vcvt.f32.s32  q3, q7               @ trans to fp32\n"
                    "vmul.f32      q4, q0, %q[scale]    @ mul with scale\n"
                    "vmul.f32      q5, q1, %q[scale]    @ mul with scale\n"
                    "vmul.f32      q6, q2, %q[scale]    @ mul with scale\n"
                    "vmul.f32      q7, q3, %q[scale]    @ mul with scale\n"

                    "vld1.32    {d0-d1},    [%[in]]!    @ load 16 int8\n"

                    "subs          %[loop], #1            \n"

                    "vst1.f32      {d8-d11}, [%[out]]!  @ write to memory\n"
                    "vst1.f32      {d12-d15}, [%[out]]! @ write to memory\n"

                    "bne           0b                     \n"
                    : [loop] "+r"(loop), [in] "+r"(din_ptr), [out] "+r"(dout_ptr)
                    : [scale] "w"(vscale)
                       : "cc", "memory", "q0", "q1", "q2", "q3", "q4", "q5", "q6", "q7");
        }
        const signed char* din_r = din_c + 16 * cnt;
        float* dout_r = dout_c + 16 * cnt;
        for (int i = 0; i < remain; ++i) {
            dout_r[i] = in_scale * din_r[i];
        }
    }
}
int8_t Quantize(float x) {
    int sign, exp, mag;
    int y = 0;
    unsigned int x_int_expr =*(int*)&x;
    sign = x_int_expr >> 31;
    exp = ((x_int_expr & 0x7f800000) >> 23); 
    mag = (x_int_expr & 0x7fffff);
    // NON number.
    if(exp == 126) {
        // INF or NaN.
        y = 1;
    } else if(exp < 126) {
        // Subnormal number.
        y = 0;
    } else {
        exp = exp - 127;
        mag = mag >> (23 - exp - 1);
        if((mag & 0x1) == 1) {
            y = y + 1;
        }
        y += (1 << exp) | (mag >> 1);

    }

    if(sign == 1) {
        y = -y;
    }
    if(y > Q_MAX) {
        return Q_MAX;
    }
    if(y < Q_MIN) {
        return Q_MIN;
    }
    return y; 
}

// Input: 
void conv_chw_pad(int8_t* din, int8_t* dout, int ch, int h,int w, int pad) {
    int w_2pad = w + 2 * pad;
    int w_stride = w_2pad * (h + 2 * pad);
    int8_t* din_int8 = (int8_t*)din;
    int8_t* dout_int8; 
    for(int c = 0; c < ch; ++c) {
        dout_int8 = dout + w_2pad + c * w_stride; 
        for(int r = 0; r < h; ++r) {
            for(int k = 0; k < w; ++k) {
                *(dout_int8 + pad) = *(din_int8);
                dout_int8++;
                din_int8++;
            }
            dout_int8 += 2 * pad;
        }
    }
}





/*preprocessing weights
 * input weights: [chout, chin/ group, kh, kw] --> outputs weights: [chout / n,
 * chin/ group, kh, kw, n]
 */
bool conv_trans_weights_numc(const int8_t* din,
        int8_t* dout,
        int chout,
        int chin,
        int n,
        int kernel_size) {
    if (n <= 0) {
        std::cout << "ch_n and hei_n are more than zero";
        return false;
    }
    int c_loop = chout / n;
    int chout_round = (chout + n - 1) / n;
    int win_stride = chin * kernel_size;
    int wout_stride = n * win_stride;
    int co = 0;
    for (; co < c_loop; ++co) {
        int8_t* dout_c = dout + co * wout_stride;
        const int8_t* dout_array[n];
        dout_array[0] = din + co * wout_stride;
        for (int i = 1; i < n; i++) {
            dout_array[i] = dout_array[i - 1] + win_stride;
        }
        for (int ci = 0; ci < chin; ++ci) {
            for (int k = 0; k < kernel_size; ++k) {
                for (int i = 0; i < n; i++) {
                    *(dout_c++) = *(dout_array[i]++);
                }
            }
        }
    }
    // pad final chout
    if (chout_round > c_loop) {
        int8_t* dout_c = dout + c_loop * wout_stride;
        const int8_t* dout_array[n];
        dout_array[0] = din + c_loop * wout_stride;
        for (int i = 1; i < n; i++) {
            dout_array[i] = dout_array[i - 1] + win_stride;
        }
        // deal remain
        int cremain = chout_round * n - chout;
        for (int i = 1; i <= cremain; i++) {
            dout_array[n - i] = dout_array[0];
        }
        for (int ci = 0; ci < chin; ++ci) {
            for (int k = 0; k < kernel_size; ++k) {
                for (int i = 0; i < n; i++) {
                    *(dout_c++) = *(dout_array[i]++);
                }
            }
        }
    }
    return true;
}
void PrintTensor(std::string filename, void* din, int size) {
    std::ofstream outfile(filename.c_str(), std::ios::trunc);
    if(!outfile.is_open()) {
        std::cout << "Open file: " << filename <<" failed.\n";
        return;
    }
    outfile << "fpga result\n";
    std::stringstream ss;
    int cnt = 1;
    int8_t* din_int8 = (int8_t*)din;
    for(int i = 0; i < size; i++) {
        ss << (int)din_int8[i] << " ";
        if(cnt++ % 16 ==0) {
            ss << "\n";
        }
    }
    outfile << ss.str();
    outfile.close();
} // End



void InputRearrange(int8_t* din, int8_t* dout, const int c, const int h,
        const int w, const int pad){
    int8_t* dout_array[INPUT_EXTEND_SCALE];//INPUT_EXTEND_SCALE--16//创建一个缓冲输出数组,
    int idx_fpga_idata = 0;
    for(int i = 0; i < UpRound(c, INPUT_EXTEND_SCALE); i++)//i循环次数为原通道数除以16向上取整
    {
        dout_array[0] = din + i * ((h + 2 * pad) * (w + 2 * pad) * INPUT_EXTEND_SCALE); //切换切片位置
        for(int n = 1; n < INPUT_EXTEND_SCALE; n++) 
        {
            dout_array[n] = dout_array[n - 1] + (h + 2 * pad) * (w + 2 * pad);//确定每个切片的P个图片的起始位置 
        }
        for(int r = 0; r < (h + 2 * pad); r++) {
            for(int c = 0; c < (w + 2 * pad); c++) {
                for(int k = 0; k < 16; k++) {
                    dout[idx_fpga_idata++] = *(dout_array[k]++);
                }
            }
        }
    }

}

void OutputRearrange(int8_t* din, int8_t* dout, const int c, const int h,
        const int w){
    int8_t* dout_array[INPUT_EXTEND_SCALE];
    int idx_fpga_idata = 0;
    for(int i = 0; i < UpRound(c, INPUT_EXTEND_SCALE); i++) {
        dout_array[0] = dout + i * h * w * INPUT_EXTEND_SCALE; 
        for(int n = 1; n < INPUT_EXTEND_SCALE; n++) {
            dout_array[n] = dout_array[n - 1] + h * w; 
        }
        for(int r = 0; r < h; r++) {
            for(int c = 0; c < w; c++) {
                for(int k = 0; k < 16; k++) {
                    *(dout_array[k]++) = din[idx_fpga_idata++];
                }
            }
        }
    }

}


/**
 * @brief pad填充(保底,如果一步重排完成,可以不用)
 * @param extent_in_size pad后的总大小
 * @param in_pad pad数
 * @param in_c 通道数
 * @param in_w 宽w
 * @param in_h 高h
 * @param buff 缓冲buff
 */
void pad_with_neon(int extent_in_size,int in_pad,int in_c,int in_w ,int in_h,int8_t *buff)
{
	int8_t* changebuff = buff;
	int cnt = UpRound(extent_in_size,128);
	asm volatile(
	//clear q0,q1,q2,q3,q4,q5,q6,q7
	"veor.s8	q0, q0, q0			\n"
        "veor.s8        q1, q1, q1                      \n"
        "veor.s8        q2, q2, q2                      \n"
        "veor.s8        q3, q3, q3                      \n"
	"veor.s8	q4, q4, q4			\n"
        "veor.s8        q5, q5, q5                      \n"
        "veor.s8        q6, q6, q6                      \n"
        "veor.s8        q7, q7, q7                      \n"

	"padloop:								\n"
	"vst1.s8 	{d0-d3},[%[dout]]!	\n"
 	"vst1.s8	{d4-d7},[%[dout]]!	\n"
	"vst1.s8 	{d8-d11},[%[dout]]!	\n"
 	"vst1.s8	{d12-d15},[%[dout]]!	\n"

	"subs   %[cnt], #1     			\n"
	"bne    padloop 						\n"
	: [dout] "+r"(changebuff), [cnt] "+r"(cnt)
	:
	:"cc","memory","q0","q1","q2","q3","q4","q5","q6","q7"
	);
}

/**
 * @brief 完成填充(保底程序,如果一步重排完成,可以不用)
 * @param din 输入
 * @param dout 输出
 * @param ch 
 * @param h 
 * @param w 
 * @param pad 
 */
void conv_chw_pad_with_neon(int8_t* din, int8_t* dout, int ch, int h,int w, int pad)
{
    int w_2pad = w + 2 * pad;
    int pad2 = pad<<2;
    int w_cnt = 32;int h_cnt = 1;int c_cnt = 1;
    //int w_stride = w_2pad * (h + 2 * pad);
    int8_t* din_int8 = (int8_t*)din;
    int8_t*dout_int8 = dout + w_2pad+pad;
    asm volatile(
    "veor	q0,	q0,	q0					\n"
    "veor	q1,	q1,	q1					\n"
    "veor	q2,	q2,	q2					\n"
    "veor	q3,	q3,	q3					\n"
    "wloopconvchw:								\n"
    "cmp	%[wcnt],	%[w]			\n"
    "bgt 	wcntlessconvchw					\n"
    "vld1.s8 {d0-d3},[%[din]]!			\n"
    "b		normalstconvchw					\n"

    "wcntlessconvchw:							\n"
    "subs	%[wcnt], %[wcnt],	#32		\n"
    "add    %[hcnt], %[hcnt], #1		\n"
    "sub   %[wcnt], %[w] ,	%[wcnt]		\n "
    "vld1.s8 {d0-d3},[%[din]],	%[wcnt]\n"
    "b 		wlessstconvchw					\n"

    "normalstconvchw:							\n"
    "add	%[wcnt],	%[wcnt],	#32	\n"
    "vst1.s8 {d0-d3},[%[doutint8]]!	    \n"
    "b		wloopconvchw						\n"

    "wlessstconvchw:							\n"
    "vst1.s8 {d0-d3},[%[doutint8]],%[wcnt] \n"
    "vst1.s8 {d4-d7},[%[doutint8]],%[pad2]	\n"
    "mov	%[wcnt], #32				\n"//将w_cnt位重置为32
    "cmp 	%[hcnt],%[h]				\n"
    "ble	wloopconvchw						\n"//改变ch

    "add	%[ccnt],%[ccnt],#1		\n"
    "vst1.s8 {d4-d7},[%[doutint8]],%[w2pad]\n"
    "vst1.s8 {d4-d7},[%[doutint8]],%[w2pad]\n"
    "mov	%[hcnt], #1				\n"//清空h_cnt
    "cmp	%[ccnt],%[c]				\n"
    "ble    wloopconvchw						\n"
    : [doutint8] "+r"(dout_int8),
	  [din] "+r"(din),
	  [wcnt] "+r"(w_cnt),
	  [w]"+r"(w),
	  [hcnt] "+r"(h_cnt),
	  [h]"+r"(h),
	  [ccnt] "+r"(c_cnt),
	  [c]"+r"(ch),
	  [pad2] "+r"(pad2),
	  [w2pad] "+r"(w_2pad)
    :
	:"cc","memory","q0","q1","q2","q3"
	 );
}



/**
 * @brief 输出重排
 * @param din 输入
 * @param dout 输出
 * @param c 通道数
 * @param h 高
 * @param w 宽w
 */
void Outrerange_NEW(int8_t* din, int8_t* dout, const int c, const int h,const int w)
{
	int8_t* dout_buff[8];//c是通道数，默认必定是16的倍数
	int i;
	int qie_pian_shu = UpRound(c, INPUT_EXTEND_SCALE);//切片数必然是十六的倍数
	int qie_pian_shu_twice = qie_pian_shu<<1;
	int8_t* din_buff;
	int x16 = 16;
	int res = ((w*h)&7);
	int cnt = UpRound(w*h,8);
	for(i=0;i<qie_pian_shu_twice;++i)
	{
		cnt = UpRound(w*h,8);
		//第一次
		dout_buff[0] = dout+(i*8)*w*h;
		dout_buff[1] = dout+(i*8+1)*w*h;
		dout_buff[2] = dout+(i*8+2)*w*h;
		dout_buff[3] = dout+(i*8+3)*w*h;
		dout_buff[4] = dout+(i*8+4)*w*h;
		dout_buff[5] = dout+(i*8+5)*w*h;
		dout_buff[6] = dout+(i*8+6)*w*h;
		dout_buff[7] = dout+(i*8+7)*w*h;			
		din_buff = (i/2)*16*w*h+(i%2)*8+din;
		//printf("qie_pian_shu = %d,din_buff = %p\n",qie_pian_shu,din_buff);
		asm volatile(
				"vld1.s8	d0,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d1,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d2,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d3,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d4,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d5,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d6,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d7,	[%[dinbuff]],%[x16]			\n"
				
				"vtrn.s8	d6, d7							\n"
				"vtrn.s8	d4, d5							\n"
				"vtrn.s8	d2, d3							\n"
				"vtrn.s8	d0, d1							\n"

				"vtrn.16	d5, d7							\n"
				"vtrn.16	d1,	d3							\n"
				"vtrn.16	d4, d6							\n"
				"vtrn.16	d0, d2							\n"

				"vtrn.32	d3, d7							\n"
				"vtrn.32	d2,	d6							\n"
				"vtrn.32	d1, d5							\n"
				"vtrn.32	d0, d4							\n"

				"vst1.s8	d0,	[%[dout1]]!				\n"
				"vst1.s8	d1,	[%[dout2]]!				\n"
				"vst1.s8	d2,	[%[dout3]]!				\n"
				"vst1.s8	d3,	[%[dout4]]!				\n"
				"vst1.s8	d4,	[%[dout5]]!				\n"
				"vst1.s8	d5,	[%[dout6]]!				\n"
				"vst1.s8	d6,	[%[dout7]]!				\n"
				"vst1.s8	d7,	[%[dout8]]!				\n"
				: [dinbuff]"+r"(din_buff),
				  [dout1] "+r"(dout_buff[0]),
				  [dout2] "+r"(dout_buff[1]),
				  [dout3] "+r"(dout_buff[2]),
				  [dout4] "+r"(dout_buff[3]),
				  [dout5] "+r"(dout_buff[4]),
				  [dout6] "+r"(dout_buff[5]),
				  [dout7] "+r"(dout_buff[6]),
				  [dout8] "+r"(dout_buff[7]),
				  [x16]"+r"(x16)
				 :
				 :"cc","memory","q0","q1","q2","q3"
		);
		if(w*h<=8)break;
		//校正输入
		//第一次
		dout_buff[0] = dout+(i*8)*w*h+res;
		dout_buff[1] = dout+(i*8+1)*w*h+res;
		dout_buff[2] = dout+(i*8+2)*w*h+res;
		dout_buff[3] = dout+(i*8+3)*w*h+res;
		dout_buff[4] = dout+(i*8+4)*w*h+res;
		dout_buff[5] = dout+(i*8+5)*w*h+res;
		dout_buff[6] = dout+(i*8+6)*w*h+res;
		dout_buff[7] = dout+(i*8+7)*w*h+res;			
		din_buff = (i/2)*16*w*h+(i%2)*8+din+res*16;
				 //(i/2)*16*w*h+(i%2)*8+din;
		cnt-=1;
		//printf("Here!,din_buff = %p,res= %d\n",din_buff,res);
		asm volatile(
				"ldrloopinrewithneonout:					\n"
				"vld1.s8	d0,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d1,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d2,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d3,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d4,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d5,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d6,	[%[dinbuff]],%[x16]			\n"
				"vld1.s8	d7,	[%[dinbuff]],%[x16]			\n"
				
				"vtrn.s8	d6, d7							\n"
				"vtrn.s8	d4, d5							\n"
				"vtrn.s8	d2, d3							\n"
				"vtrn.s8	d0, d1							\n"

				"vtrn.16	d5, d7							\n"
				"vtrn.16	d1,	d3							\n"
				"vtrn.16	d4, d6							\n"
				"vtrn.16	d0, d2							\n"

				"vtrn.32	d3, d7							\n"
				"vtrn.32	d2,	d6							\n"
				"vtrn.32	d1, d5							\n"
				"vtrn.32	d0, d4							\n"

				"vst1.s8	d0,	[%[dout1]]!				\n"
				"vst1.s8	d1,	[%[dout2]]!				\n"
				"vst1.s8	d2,	[%[dout3]]!				\n"
				"vst1.s8	d3,	[%[dout4]]!				\n"
				"vst1.s8	d4,	[%[dout5]]!				\n"
				"vst1.s8	d5,	[%[dout6]]!				\n"
				"vst1.s8	d6,	[%[dout7]]!				\n"
				"vst1.s8	d7,	[%[dout8]]!				\n"
				"subs %[cnt],%[cnt],	#1					\n"
				"bne	ldrloopinrewithneonout				\n"
				: [dinbuff]"+r"(din_buff),
				  [dout1] "+r"(dout_buff[0]),
				  [dout2] "+r"(dout_buff[1]),
				  [dout3] "+r"(dout_buff[2]),
				  [dout4] "+r"(dout_buff[3]),
				  [dout5] "+r"(dout_buff[4]),
				  [dout6] "+r"(dout_buff[5]),
				  [dout7] "+r"(dout_buff[6]),
				  [dout8] "+r"(dout_buff[7]),
				  [x16]"+r"(x16),
				  [cnt]"+r"(cnt)
				 :
				 :"cc","memory","q0","q1","q2","q3"
		);
		//printf("OutRerange!\n");
	}
}


void fill(int8_t* din, int8_t* dout, const int c, const int h,const int w)
{
    int sz = c*h*w;
    int res=sz & 63;
    if (res)
        sz = (sz & -64) + 64;
    asm volatile (
    "NEONCopy1PLD: \n"
            " PLD [%[src],#0x100] \n"  //预取256数据
            " VLDM %[src]!,{d0-d7} \n"//搬运
            " VSTM %[dst]!,{d0-d7} \n"
            " SUBS %[sz],%[sz],#0x40 \n"
            " BGT NEONCopy1PLD \n"
    : [dst]"+r"(dout), [src]"+r"(din), [sz]"+r"(sz) : : "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7", "cc", "memory");
    if (res)
    {memcpy(din,dout,res);}
}


//neon拷贝，余量使用memcpy
void fill_out(int8_t* din, int8_t* dout, const int c, const int h,const int w)
{
	int8_t*di = din;
	int8_t*dou = dout;
	int size = c*w*h;
	int cnt = UpRound(size,32);
	int res = size&31;
	//printf("size = %d",size);
	if(cnt>1)
	{
		cnt-=1;
		asm volatile(
				"copy:										\n"
				"vld1.s8	{d0-d3},	[%[din]]!			\n"
				"vst1.s8	{d0-d3},	[%[doutbuff]]!		\n"
				"subs %[cnt],%[cnt],	#1					\n"
				"bne	copy								\n"
				: [doutbuff]"+r"(dou),
				  [din] "+r"(di),
				  [cnt]"+r"(cnt)
				 :
				 :"cc","memory","q0","q1"
		);
	}
	int j ;
	//printf("anything else?\n");
        memcpy(di,dou,res);
}





//neon的矩阵转置
int transposition_neon(int8_t* src,int8_t* dst,int w,int h)
{
    int8x8x4_t mat1;
    int8x8x4_t mat2;
    int8x8x2_t temp1;
    int8x8x2_t temp2;
    int8x8x2_t temp3;
    int8x8x2_t temp4;
    int16x4x4_t temp11;
    int16x4x4_t temp12;
    int16x4x2_t temp5;
    int16x4x2_t temp6;
    int16x4x2_t temp7;
    int16x4x2_t temp8;
    int32x2x4_t temp21;
    int32x2x4_t temp22;
    int32x2x2_t res1;
    int32x2x2_t res2;
    int32x2x2_t res3;
    int32x2x2_t res4;

    int dw=w&7;
    int dh=h&7;
    int sw=w-dw;
    int sh=h-dh;
    int x,y;
    for(y=0;y<sh;y=y+8)
    {
        for(x=0;x<sw;x=x+8)
        {
            mat1.val[0]=vld1_s8(src+y*w+x);
            mat1.val[1]=vld1_s8(src+(y+1)*w+x);
            mat1.val[2]=vld1_s8(src+(y+2)*w+x);
            mat1.val[3]=vld1_s8(src+(y+3)*w+x);
            mat2.val[0]=vld1_s8(src+(y+4)*w+x);
            mat2.val[1]=vld1_s8(src+(y+5)*w+x);
            mat2.val[2]=vld1_s8(src+(y+6)*w+x);
            mat2.val[3]=vld1_s8(src+(y+7)*w+x);
            temp1=vtrn_s8(mat1.val[0],mat1.val[1]);
            temp2=vtrn_s8(mat1.val[2],mat1.val[3]);
            temp3=vtrn_s8(mat2.val[0],mat2.val[1]);
            temp4=vtrn_s8(mat2.val[2],mat2.val[3]);

            temp11.val[0]=vreinterpret_s16_s8(temp1.val[0]);
            temp11.val[1]=vreinterpret_s16_s8(temp1.val[1]);
            temp11.val[2]=vreinterpret_s16_s8(temp2.val[0]);
            temp11.val[3]=vreinterpret_s16_s8(temp2.val[1]);
            temp12.val[0]=vreinterpret_s16_s8(temp3.val[0]);
            temp12.val[1]=vreinterpret_s16_s8(temp3.val[1]);
            temp12.val[2]=vreinterpret_s16_s8(temp4.val[0]);
            temp12.val[3]=vreinterpret_s16_s8(temp4.val[1]);

            temp5=vtrn_s16(temp11.val[0],temp11.val[2]);
            temp6=vtrn_s16(temp11.val[1],temp11.val[3]);
            temp7=vtrn_s16(temp12.val[0],temp12.val[2]);
            temp8=vtrn_s16(temp12.val[1],temp12.val[3]);

            temp21.val[0]=vreinterpret_s32_s16(temp5.val[0]);
            temp21.val[1]=vreinterpret_s32_s16(temp5.val[1]);
            temp21.val[2]=vreinterpret_s32_s16(temp6.val[0]);
            temp21.val[3]=vreinterpret_s32_s16(temp6.val[1]);
            temp22.val[0]=vreinterpret_s32_s16(temp7.val[0]);
            temp22.val[1]=vreinterpret_s32_s16(temp7.val[1]);
            temp22.val[2]=vreinterpret_s32_s16(temp8.val[0]);
            temp22.val[3]=vreinterpret_s32_s16(temp8.val[1]);

            res1=vtrn_s32(temp21.val[0],temp22.val[0]);
            res2=vtrn_s32(temp21.val[1],temp22.val[1]);
            res3=vtrn_s32(temp21.val[2],temp22.val[2]);
            res4=vtrn_s32(temp21.val[3],temp22.val[3]);

            mat1.val[0]=vreinterpret_s8_s32(res1.val[0]);
            mat1.val[1]=vreinterpret_s8_s32(res2.val[0]);
            mat1.val[2]=vreinterpret_s8_s32(res3.val[0]);
            mat1.val[3]=vreinterpret_s8_s32(res4.val[0]);
            mat2.val[0]=vreinterpret_s8_s32(res1.val[1]);
            mat2.val[1]=vreinterpret_s8_s32(res2.val[1]);
            mat2.val[2]=vreinterpret_s8_s32(res3.val[1]);
            mat2.val[3]=vreinterpret_s8_s32(res4.val[1]);

            vst1_s8(dst+x*h+y,mat1.val[0]);
            vst1_s8(dst+(x+1)*h+y,mat1.val[1]);
            vst1_s8(dst+(x+2)*h+y,mat1.val[2]);
            vst1_s8(dst+(x+3)*h+y,mat1.val[3]);
            vst1_s8(dst+(x+4)*h+y,mat2.val[0]);
            vst1_s8(dst+(x+5)*h+y,mat2.val[1]);
            vst1_s8(dst+(x+6)*h+y,mat2.val[2]);
            vst1_s8(dst+(x+7)*h+y,mat2.val[3]);
        }
    }
    for(y=sh-1;y<h;y++)
    {
        for(x=0;x<w;x++)
            dst[x*h+y]=src[y*w+x];
    }
    for(x=sw-1;x<w;x++)
    {    
        for(y=0;y<sh;y++)
        {
            dst[x*h+y]=src[y*w+x];
        }
    }
    return 0;
}


//针对三通道子图融合的数据重排，无pad
void InputRearrange_neon(int8_t* din, int8_t* dout, const int c, const int h,
        const int w){
    int8_t* dout_array[3];
    int idx_fpga_idata = 0;
    int8x16_t buff;
    dout_array[0] = din ;
    int chunk=h *w ;
        for(int n = 1; n < 3; ++n) {
            dout_array[n] = dout_array[n - 1] + chunk; 
        }
        for(int j = 0; j < chunk; ++j) {
                buff=vld1q_lane_s8(dout_array[0]++,buff,0);//进车道
                buff=vld1q_lane_s8(dout_array[1]++,buff,1);//
                buff=vld1q_lane_s8(dout_array[2]++,buff,2);//
                /*vst1q_lane_s8(dout+idx_fpga_idata,buff,0);//逐个通道输出
                vst1q_lane_s8(dout+idx_fpga_idata+1,buff,1);//逐个通道输出
                vst1q_lane_s8(dout+idx_fpga_idata+2,buff,2);//逐个通道输出*/
                vst1q_s8(dout+idx_fpga_idata,buff);

                idx_fpga_idata+=16;
                } 
}
            
//针对三通道子图融合的数据重排，有pad      
void InputRearrange_neon_pad(int8_t* din, int8_t* dout, const int c, const int h,
        const int w,const int pad){
    int8_t* dout_array[3];
    int idx_fpga_idata = 0;
    int8x16_t buff;
    dout_array[0] = din ;
    int chunk=(h+pad*2)*(w+pad*2) ;
        for(int n = 1; n < 3; ++n) {
            dout_array[n] = dout_array[n - 1] + chunk; 
        }
        for(int j = 0; j < chunk; ++j) {
                buff=vld1q_lane_s8(dout_array[0]++,buff,0);//进车道
                buff=vld1q_lane_s8(dout_array[1]++,buff,1);
                buff=vld1q_lane_s8(dout_array[2]++,buff,2);
                /*vst1q_lane_s8(dout+idx_fpga_idata,buff,0);//逐个通道输出
                vst1q_lane_s8(dout+idx_fpga_idata+1,buff,1);//逐个通道输出
                vst1q_lane_s8(dout+idx_fpga_idata+2,buff,2);//逐个通道输出*/
                vst1q_s8(dout+idx_fpga_idata,buff);

                idx_fpga_idata+=16;
                }     

}
/**
 * convert input from CHW format to HWC format
 * \param input A single image. This float array has length of 3*h*w
 * \param h image height
 * \param w image width
 * \param output A byte array. should be freed by caller after use
 */
void chw_to_hwc(int8_t * input, int h, int w, int8_t* output) {
  int stride = h * w;
  for (int c = 0; c != 3; ++c) {
    int t = c * stride;
    for (int i = 0; i != stride; ++i) {
      int8_t f = input[t + i];
      output[i * 3 + c] = f;
    }
  }
}


//矩阵转置的输入重排，有pad
void InputRearrange_pad(int8_t* din, int8_t* dout, const int c, const int h,
        const int w,const int pad){
    int chunk=((h + 2 * pad) * (w + 2 * pad) * INPUT_EXTEND_SCALE);
    int channel=(h + 2 * pad) * (w + 2 * pad) ;
    for(int i = 0; i < UpRound(c, INPUT_EXTEND_SCALE); ++i) {
        transposition_neon(din+i*chunk,dout+i*chunk,16,channel);
}
}


//sam汇编矩阵转置的输入重排，无pad
void InputRearrange_NEW(int8_t* din, int8_t* dout_in, const int c, const int h,const int w)
{
	//先进行数据转置
	int8_t* din_buff[8];//c是通道数，默认必定是16的倍数
	int i;
	int qie_pian_shu = UpRound(c, INPUT_EXTEND_SCALE);//切片数必然是十六的倍数
	int qie_pian_shu_twice = qie_pian_shu*2;
	int8_t* dout_buff;
	int cnt0,cnt;
	int x16 = 16;
	cnt0 = UpRound(w*h,8);
	int special = 0;
	int res = w*h-((w*h)&7);
	for(i=0;i<qie_pian_shu_twice;++i)
	{
		if(i<qie_pian_shu_twice-2)cnt = cnt0;
		else 
		{
			cnt = res/8;
			special = 1;
		}
		din_buff[0] = din+(i*8)*w*h;
		din_buff[1] = din+(i*8+1)*w*h;
		din_buff[2] = din+(i*8+2)*w*h;
		din_buff[3] = din+(i*8+3)*w*h;
		din_buff[4] = din+(i*8+4)*w*h;
		din_buff[5] = din+(i*8+5)*w*h;
		din_buff[6] = din+(i*8+6)*w*h;
		din_buff[7] = din+(i*8+7)*w*h;
		//printf("res = %d default?\n",res);
		dout_buff = (i/2)*16*w*h+(i%2)*8+dout_in;
		//printf("dout_buff = %p, dout_in = %p\n",dout_buff,dout_in);
		asm volatile(
				"ldrloopinrewithneonxy:						\n"
				"vld1.s8	d0,	[%[din1]]!					\n"
				"vld1.s8	d1,	[%[din2]]!					\n"
				"vld1.s8	d2,	[%[din3]]!					\n"
				"vld1.s8	d3,	[%[din4]]!					\n"
				"vld1.s8	d4,	[%[din5]]!					\n"
				"vld1.s8	d5,	[%[din6]]!					\n"
				"vld1.s8	d6,	[%[din7]]!					\n"
				"vld1.s8	d7,	[%[din8]]!					\n"
				
				"vtrn.s8	d6, d7							\n"
				"vtrn.s8	d4, d5							\n"
				"vtrn.s8	d2, d3							\n"
				"vtrn.s8	d0, d1							\n"

				"vtrn.16	d5, d7							\n"
				"vtrn.16	d1,	d3							\n"
				"vtrn.16	d4, d6							\n"
				"vtrn.16	d0, d2							\n"

				"vtrn.32	d3, d7							\n"
				"vtrn.32	d2,	d6							\n"
				"vtrn.32	d1, d5							\n"
				"vtrn.32	d0, d4							\n"

				"vst1.s8	d0,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d1,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d2,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d3,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d4,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d5,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d6,	[%[doutbuff]],%[x16]		\n"
				"vst1.s8	d7,	[%[doutbuff]],%[x16]		\n"
				"subs %[cnt],%[cnt],	#1					\n"
				"bne	ldrloopinrewithneonxy				\n"
				: [doutbuff]"+r"(dout_buff),
				  [din1] "+r"(din_buff[0]),
				  [din2] "+r"(din_buff[1]),
				  [din3] "+r"(din_buff[2]),
				  [din4] "+r"(din_buff[3]),
				  [din5] "+r"(din_buff[4]),
				  [din6] "+r"(din_buff[5]),
				  [din7] "+r"(din_buff[6]),
				  [din8] "+r"(din_buff[7]),
				  [x16]"+r"(x16),
				  [cnt]"+r"(cnt)
				 :
				 :"cc","memory","q0","q1","q2","q3"
		);
	}
	int y = qie_pian_shu-1;
	int8_t* din_res = din+y*16*w*h+res;
	int8_t* dout_res = dout_in+y*16*w*h+res*16;
	int8_t* dout_res_arr[16]={dout_res,dout_res+1,dout_res+2,dout_res+3,dout_res+4,dout_res+5,dout_res+6,dout_res+7,dout_res+8,dout_res+9,dout_res+10,dout_res+11,dout_res+12,dout_res+13,dout_res+14,dout_res+15};
	int total = w*h;
	int tota[16] = {0,total,2*total,3*total,4*total,5*total,6*total,7*total,8*total,9*total,10*total,11*total,12*total,13*total,14*total,15*total}; 
	//printf("size_of = %d\n",sizeof(dout_res));
	if(special)
	{
		for(i=0;i<((w*h)&7);++i)
		{
			int i16 = i*16;
			*(dout_res_arr[0]+i16) = *(din_res+i); 
			*(dout_res_arr[1]+i16) = *(din_res+i+tota[1]); 
			*(dout_res_arr[2]+i16) = *(din_res+i+tota[2]); 
			*(dout_res_arr[3]+i16) = *(din_res+i+tota[3]); 
			*(dout_res_arr[4]+i16) = *(din_res+i+tota[4]); 
			*(dout_res_arr[5]+i16) = *(din_res+i+tota[5]); 
			*(dout_res_arr[6]+i16) = *(din_res+i+tota[6]); 
			*(dout_res_arr[7]+i16) = *(din_res+i+tota[7]); 
			*(dout_res_arr[8]+i16) = *(din_res+i+tota[8]); 
			*(dout_res_arr[9]+i16) = *(din_res+i+tota[9]); 
			*(dout_res_arr[10]+i16) = *(din_res+i+tota[10]); 
			*(dout_res_arr[11]+i16) = *(din_res+i+tota[11]); 
			*(dout_res_arr[12]+i16) = *(din_res+i+tota[12]); 
			*(dout_res_arr[13]+i16) = *(din_res+i+tota[13]); 
			*(dout_res_arr[14]+i16) = *(din_res+i+tota[14]); 
			*(dout_res_arr[15]+i16) = *(din_res+i+tota[15]); 
		}
	}
	printf("Leave Inputrange!\n");
}
