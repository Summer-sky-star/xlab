// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.2 (Release Build #68.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from cnn_top_bb_B4_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B4_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_24_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_24_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_25_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_25_0_1_tpl,
    output wire [63:0] out_intel_reserved_ffwd_29_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_30_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_30_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_31_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_31_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_32_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_32_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_33_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_33_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_20_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_21_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_22_tpl,
    output wire [31:0] out_intel_reserved_ffwd_33_0_23_tpl,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [0:0] out_intel_reserved_ffwd_26_0,
    output wire [0:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_valid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,56)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x(BLACKBOX,18)@0
    // in in_i_stall@20000000
    // out out_c0_exit101_0_tpl@10
    // out out_intel_reserved_ffwd_24_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_24_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_25_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_25_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_29_0_20_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_30_0_20_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_31_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_32_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_20_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_21_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_22_tpl@20000000
    // out out_intel_reserved_ffwd_33_0_23_tpl@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    cnn_top_i_sfc_s_c0_in_for_cond_cleanup8_s_c0_enter100_cnn_top0 thei_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x (
        .in_unnamed_cnn_top27_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .out_c0_exit101_0_tpl(),
        .out_intel_reserved_ffwd_24_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl),
        .out_intel_reserved_ffwd_24_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl),
        .out_intel_reserved_ffwd_24_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl),
        .out_intel_reserved_ffwd_24_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl),
        .out_intel_reserved_ffwd_24_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl),
        .out_intel_reserved_ffwd_24_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl),
        .out_intel_reserved_ffwd_24_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl),
        .out_intel_reserved_ffwd_24_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl),
        .out_intel_reserved_ffwd_24_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl),
        .out_intel_reserved_ffwd_24_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl),
        .out_intel_reserved_ffwd_24_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl),
        .out_intel_reserved_ffwd_24_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl),
        .out_intel_reserved_ffwd_24_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl),
        .out_intel_reserved_ffwd_24_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl),
        .out_intel_reserved_ffwd_24_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl),
        .out_intel_reserved_ffwd_24_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl),
        .out_intel_reserved_ffwd_25_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl),
        .out_intel_reserved_ffwd_25_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl),
        .out_intel_reserved_ffwd_29_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl),
        .out_intel_reserved_ffwd_29_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl),
        .out_intel_reserved_ffwd_29_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl),
        .out_intel_reserved_ffwd_29_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl),
        .out_intel_reserved_ffwd_29_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl),
        .out_intel_reserved_ffwd_29_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl),
        .out_intel_reserved_ffwd_29_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl),
        .out_intel_reserved_ffwd_29_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl),
        .out_intel_reserved_ffwd_29_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl),
        .out_intel_reserved_ffwd_29_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl),
        .out_intel_reserved_ffwd_29_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl),
        .out_intel_reserved_ffwd_29_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl),
        .out_intel_reserved_ffwd_29_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl),
        .out_intel_reserved_ffwd_29_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl),
        .out_intel_reserved_ffwd_29_0_16_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl),
        .out_intel_reserved_ffwd_29_0_17_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl),
        .out_intel_reserved_ffwd_29_0_18_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl),
        .out_intel_reserved_ffwd_29_0_19_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl),
        .out_intel_reserved_ffwd_29_0_20_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl),
        .out_intel_reserved_ffwd_30_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl),
        .out_intel_reserved_ffwd_30_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl),
        .out_intel_reserved_ffwd_30_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl),
        .out_intel_reserved_ffwd_30_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl),
        .out_intel_reserved_ffwd_30_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl),
        .out_intel_reserved_ffwd_30_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl),
        .out_intel_reserved_ffwd_30_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl),
        .out_intel_reserved_ffwd_30_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl),
        .out_intel_reserved_ffwd_30_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl),
        .out_intel_reserved_ffwd_30_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl),
        .out_intel_reserved_ffwd_30_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl),
        .out_intel_reserved_ffwd_30_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl),
        .out_intel_reserved_ffwd_30_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl),
        .out_intel_reserved_ffwd_30_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl),
        .out_intel_reserved_ffwd_30_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl),
        .out_intel_reserved_ffwd_30_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl),
        .out_intel_reserved_ffwd_30_0_16_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl),
        .out_intel_reserved_ffwd_30_0_17_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl),
        .out_intel_reserved_ffwd_30_0_18_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl),
        .out_intel_reserved_ffwd_30_0_19_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl),
        .out_intel_reserved_ffwd_30_0_20_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl),
        .out_intel_reserved_ffwd_31_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl),
        .out_intel_reserved_ffwd_31_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl),
        .out_intel_reserved_ffwd_31_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl),
        .out_intel_reserved_ffwd_31_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl),
        .out_intel_reserved_ffwd_31_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl),
        .out_intel_reserved_ffwd_31_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl),
        .out_intel_reserved_ffwd_31_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl),
        .out_intel_reserved_ffwd_31_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl),
        .out_intel_reserved_ffwd_31_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl),
        .out_intel_reserved_ffwd_31_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl),
        .out_intel_reserved_ffwd_31_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl),
        .out_intel_reserved_ffwd_31_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl),
        .out_intel_reserved_ffwd_31_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl),
        .out_intel_reserved_ffwd_31_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl),
        .out_intel_reserved_ffwd_31_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl),
        .out_intel_reserved_ffwd_31_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl),
        .out_intel_reserved_ffwd_31_0_16_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl),
        .out_intel_reserved_ffwd_31_0_17_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl),
        .out_intel_reserved_ffwd_31_0_18_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl),
        .out_intel_reserved_ffwd_31_0_19_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl),
        .out_intel_reserved_ffwd_32_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl),
        .out_intel_reserved_ffwd_32_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl),
        .out_intel_reserved_ffwd_32_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl),
        .out_intel_reserved_ffwd_32_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl),
        .out_intel_reserved_ffwd_32_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl),
        .out_intel_reserved_ffwd_32_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl),
        .out_intel_reserved_ffwd_32_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl),
        .out_intel_reserved_ffwd_32_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl),
        .out_intel_reserved_ffwd_32_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl),
        .out_intel_reserved_ffwd_32_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl),
        .out_intel_reserved_ffwd_32_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl),
        .out_intel_reserved_ffwd_32_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl),
        .out_intel_reserved_ffwd_32_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl),
        .out_intel_reserved_ffwd_32_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl),
        .out_intel_reserved_ffwd_32_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl),
        .out_intel_reserved_ffwd_32_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl),
        .out_intel_reserved_ffwd_32_0_16_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl),
        .out_intel_reserved_ffwd_32_0_17_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl),
        .out_intel_reserved_ffwd_32_0_18_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl),
        .out_intel_reserved_ffwd_32_0_19_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_0_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl),
        .out_intel_reserved_ffwd_33_0_1_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl),
        .out_intel_reserved_ffwd_33_0_2_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl),
        .out_intel_reserved_ffwd_33_0_3_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl),
        .out_intel_reserved_ffwd_33_0_4_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl),
        .out_intel_reserved_ffwd_33_0_5_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl),
        .out_intel_reserved_ffwd_33_0_6_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl),
        .out_intel_reserved_ffwd_33_0_7_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl),
        .out_intel_reserved_ffwd_33_0_8_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl),
        .out_intel_reserved_ffwd_33_0_9_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl),
        .out_intel_reserved_ffwd_33_0_10_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl),
        .out_intel_reserved_ffwd_33_0_11_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl),
        .out_intel_reserved_ffwd_33_0_12_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl),
        .out_intel_reserved_ffwd_33_0_13_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl),
        .out_intel_reserved_ffwd_33_0_14_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl),
        .out_intel_reserved_ffwd_33_0_15_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl),
        .out_intel_reserved_ffwd_33_0_16_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl),
        .out_intel_reserved_ffwd_33_0_17_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl),
        .out_intel_reserved_ffwd_33_0_18_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl),
        .out_intel_reserved_ffwd_33_0_19_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_20_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl),
        .out_intel_reserved_ffwd_33_0_21_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl),
        .out_intel_reserved_ffwd_33_0_22_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl),
        .out_intel_reserved_ffwd_33_0_23_tpl(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_aunroll_x(GPOUT,2)
    assign out_intel_reserved_ffwd_24_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl;
    assign out_intel_reserved_ffwd_24_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl;
    assign out_intel_reserved_ffwd_24_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl;
    assign out_intel_reserved_ffwd_24_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl;
    assign out_intel_reserved_ffwd_24_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl;
    assign out_intel_reserved_ffwd_24_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl;
    assign out_intel_reserved_ffwd_24_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl;
    assign out_intel_reserved_ffwd_24_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl;
    assign out_intel_reserved_ffwd_24_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl;
    assign out_intel_reserved_ffwd_24_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl;
    assign out_intel_reserved_ffwd_24_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl;
    assign out_intel_reserved_ffwd_24_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl;
    assign out_intel_reserved_ffwd_24_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl;
    assign out_intel_reserved_ffwd_24_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl;
    assign out_intel_reserved_ffwd_24_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl;
    assign out_intel_reserved_ffwd_24_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl;

    // dupName_3_regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_25_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl;
    assign out_intel_reserved_ffwd_25_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl;

    // dupName_7_regfree_osync_aunroll_x(GPOUT,4)
    assign out_intel_reserved_ffwd_29_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl;
    assign out_intel_reserved_ffwd_29_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl;
    assign out_intel_reserved_ffwd_29_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl;
    assign out_intel_reserved_ffwd_29_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl;
    assign out_intel_reserved_ffwd_29_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl;
    assign out_intel_reserved_ffwd_29_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl;
    assign out_intel_reserved_ffwd_29_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl;
    assign out_intel_reserved_ffwd_29_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl;
    assign out_intel_reserved_ffwd_29_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl;
    assign out_intel_reserved_ffwd_29_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl;
    assign out_intel_reserved_ffwd_29_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl;
    assign out_intel_reserved_ffwd_29_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl;
    assign out_intel_reserved_ffwd_29_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl;
    assign out_intel_reserved_ffwd_29_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl;
    assign out_intel_reserved_ffwd_29_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl;
    assign out_intel_reserved_ffwd_29_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl;
    assign out_intel_reserved_ffwd_29_0_16_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl;
    assign out_intel_reserved_ffwd_29_0_17_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl;
    assign out_intel_reserved_ffwd_29_0_18_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl;
    assign out_intel_reserved_ffwd_29_0_19_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl;
    assign out_intel_reserved_ffwd_29_0_20_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl;

    // dupName_8_regfree_osync_aunroll_x(GPOUT,5)
    assign out_intel_reserved_ffwd_30_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl;
    assign out_intel_reserved_ffwd_30_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl;
    assign out_intel_reserved_ffwd_30_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl;
    assign out_intel_reserved_ffwd_30_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl;
    assign out_intel_reserved_ffwd_30_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl;
    assign out_intel_reserved_ffwd_30_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl;
    assign out_intel_reserved_ffwd_30_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl;
    assign out_intel_reserved_ffwd_30_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl;
    assign out_intel_reserved_ffwd_30_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl;
    assign out_intel_reserved_ffwd_30_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl;
    assign out_intel_reserved_ffwd_30_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl;
    assign out_intel_reserved_ffwd_30_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl;
    assign out_intel_reserved_ffwd_30_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl;
    assign out_intel_reserved_ffwd_30_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl;
    assign out_intel_reserved_ffwd_30_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl;
    assign out_intel_reserved_ffwd_30_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl;
    assign out_intel_reserved_ffwd_30_0_16_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl;
    assign out_intel_reserved_ffwd_30_0_17_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl;
    assign out_intel_reserved_ffwd_30_0_18_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl;
    assign out_intel_reserved_ffwd_30_0_19_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl;
    assign out_intel_reserved_ffwd_30_0_20_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl;

    // dupName_9_regfree_osync_aunroll_x(GPOUT,6)
    assign out_intel_reserved_ffwd_31_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl;
    assign out_intel_reserved_ffwd_31_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl;
    assign out_intel_reserved_ffwd_31_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl;
    assign out_intel_reserved_ffwd_31_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl;
    assign out_intel_reserved_ffwd_31_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl;
    assign out_intel_reserved_ffwd_31_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl;
    assign out_intel_reserved_ffwd_31_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl;
    assign out_intel_reserved_ffwd_31_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl;
    assign out_intel_reserved_ffwd_31_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl;
    assign out_intel_reserved_ffwd_31_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl;
    assign out_intel_reserved_ffwd_31_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl;
    assign out_intel_reserved_ffwd_31_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl;
    assign out_intel_reserved_ffwd_31_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl;
    assign out_intel_reserved_ffwd_31_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl;
    assign out_intel_reserved_ffwd_31_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl;
    assign out_intel_reserved_ffwd_31_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl;
    assign out_intel_reserved_ffwd_31_0_16_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl;
    assign out_intel_reserved_ffwd_31_0_17_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl;
    assign out_intel_reserved_ffwd_31_0_18_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl;
    assign out_intel_reserved_ffwd_31_0_19_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl;

    // dupName_10_regfree_osync_aunroll_x(GPOUT,7)
    assign out_intel_reserved_ffwd_32_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl;
    assign out_intel_reserved_ffwd_32_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl;
    assign out_intel_reserved_ffwd_32_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl;
    assign out_intel_reserved_ffwd_32_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl;
    assign out_intel_reserved_ffwd_32_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl;
    assign out_intel_reserved_ffwd_32_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl;
    assign out_intel_reserved_ffwd_32_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl;
    assign out_intel_reserved_ffwd_32_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl;
    assign out_intel_reserved_ffwd_32_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl;
    assign out_intel_reserved_ffwd_32_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl;
    assign out_intel_reserved_ffwd_32_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl;
    assign out_intel_reserved_ffwd_32_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl;
    assign out_intel_reserved_ffwd_32_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl;
    assign out_intel_reserved_ffwd_32_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl;
    assign out_intel_reserved_ffwd_32_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl;
    assign out_intel_reserved_ffwd_32_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl;
    assign out_intel_reserved_ffwd_32_0_16_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl;
    assign out_intel_reserved_ffwd_32_0_17_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl;
    assign out_intel_reserved_ffwd_32_0_18_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl;
    assign out_intel_reserved_ffwd_32_0_19_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl;

    // dupName_11_regfree_osync_aunroll_x(GPOUT,8)
    assign out_intel_reserved_ffwd_33_0_0_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl;
    assign out_intel_reserved_ffwd_33_0_1_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl;
    assign out_intel_reserved_ffwd_33_0_2_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl;
    assign out_intel_reserved_ffwd_33_0_3_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl;
    assign out_intel_reserved_ffwd_33_0_4_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl;
    assign out_intel_reserved_ffwd_33_0_5_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl;
    assign out_intel_reserved_ffwd_33_0_6_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl;
    assign out_intel_reserved_ffwd_33_0_7_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl;
    assign out_intel_reserved_ffwd_33_0_8_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl;
    assign out_intel_reserved_ffwd_33_0_9_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl;
    assign out_intel_reserved_ffwd_33_0_10_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl;
    assign out_intel_reserved_ffwd_33_0_11_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl;
    assign out_intel_reserved_ffwd_33_0_12_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl;
    assign out_intel_reserved_ffwd_33_0_13_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl;
    assign out_intel_reserved_ffwd_33_0_14_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl;
    assign out_intel_reserved_ffwd_33_0_15_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl;
    assign out_intel_reserved_ffwd_33_0_16_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl;
    assign out_intel_reserved_ffwd_33_0_17_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl;
    assign out_intel_reserved_ffwd_33_0_18_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl;
    assign out_intel_reserved_ffwd_33_0_19_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl;
    assign out_intel_reserved_ffwd_33_0_20_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl;
    assign out_intel_reserved_ffwd_33_0_21_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl;
    assign out_intel_reserved_ffwd_33_0_22_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl;
    assign out_intel_reserved_ffwd_33_0_23_tpl = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl;

    // dupName_0_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_0_sync_out_x(GPOUT,10)@10
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_4_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_5_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_6_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_12_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_13_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_14_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // regfree_osync(GPOUT,46)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c0_in_for_cond_cleanup8_cnn_tops_c0_enter100_cnn_top0_aunroll_x_out_intel_reserved_ffwd_21_0;

    // sync_out(GPOUT,50)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
