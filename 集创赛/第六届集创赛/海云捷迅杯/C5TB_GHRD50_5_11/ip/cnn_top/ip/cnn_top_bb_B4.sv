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

// SystemVerilog created from cnn_top_bb_B4
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B4 (
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
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [0:0] out_intel_reserved_ffwd_26_0,
    output wire [0:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
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
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_1_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_20_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_20_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_19_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_19_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_0_tpl;
    wire [63:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_20_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_21_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_22_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_23_tpl;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_23_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_26_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_27_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_35_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_36_0;
    wire [0:0] bb_cnn_top_B4_stall_region_out_stall_out;
    wire [0:0] bb_cnn_top_B4_stall_region_out_valid_out;
    wire [0:0] cnn_top_B4_branch_out_stall_out;
    wire [0:0] cnn_top_B4_branch_out_valid_out_0;
    wire [0:0] cnn_top_B4_merge_out_stall_out_0;
    wire [0:0] cnn_top_B4_merge_out_valid_out;


    // cnn_top_B4_merge(BLACKBOX,139)
    cnn_top_B4_merge thecnn_top_B4_merge (
        .in_stall_in(bb_cnn_top_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(cnn_top_B4_merge_out_stall_out_0),
        .out_valid_out(cnn_top_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B4_branch(BLACKBOX,138)
    cnn_top_B4_branch thecnn_top_B4_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_top_B4_stall_region_out_valid_out),
        .out_stall_out(cnn_top_B4_branch_out_stall_out),
        .out_valid_out_0(cnn_top_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B4_stall_region(BLACKBOX,137)
    cnn_top_bb_B4_stall_region thebb_cnn_top_B4_stall_region (
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
        .in_stall_in(cnn_top_B4_branch_out_stall_out),
        .in_valid_in(cnn_top_B4_merge_out_valid_out),
        .out_intel_reserved_ffwd_24_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_0_tpl),
        .out_intel_reserved_ffwd_24_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_1_tpl),
        .out_intel_reserved_ffwd_24_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_2_tpl),
        .out_intel_reserved_ffwd_24_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_3_tpl),
        .out_intel_reserved_ffwd_24_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_4_tpl),
        .out_intel_reserved_ffwd_24_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_5_tpl),
        .out_intel_reserved_ffwd_24_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_6_tpl),
        .out_intel_reserved_ffwd_24_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_7_tpl),
        .out_intel_reserved_ffwd_24_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_8_tpl),
        .out_intel_reserved_ffwd_24_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_9_tpl),
        .out_intel_reserved_ffwd_24_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_10_tpl),
        .out_intel_reserved_ffwd_24_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_11_tpl),
        .out_intel_reserved_ffwd_24_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_12_tpl),
        .out_intel_reserved_ffwd_24_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_13_tpl),
        .out_intel_reserved_ffwd_24_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_14_tpl),
        .out_intel_reserved_ffwd_24_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_15_tpl),
        .out_intel_reserved_ffwd_25_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_0_tpl),
        .out_intel_reserved_ffwd_25_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_0_tpl),
        .out_intel_reserved_ffwd_29_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_2_tpl),
        .out_intel_reserved_ffwd_29_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_3_tpl),
        .out_intel_reserved_ffwd_29_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_4_tpl),
        .out_intel_reserved_ffwd_29_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_5_tpl),
        .out_intel_reserved_ffwd_29_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_6_tpl),
        .out_intel_reserved_ffwd_29_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_7_tpl),
        .out_intel_reserved_ffwd_29_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_8_tpl),
        .out_intel_reserved_ffwd_29_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_9_tpl),
        .out_intel_reserved_ffwd_29_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_10_tpl),
        .out_intel_reserved_ffwd_29_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_11_tpl),
        .out_intel_reserved_ffwd_29_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_12_tpl),
        .out_intel_reserved_ffwd_29_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_13_tpl),
        .out_intel_reserved_ffwd_29_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_14_tpl),
        .out_intel_reserved_ffwd_29_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_15_tpl),
        .out_intel_reserved_ffwd_29_0_16_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_16_tpl),
        .out_intel_reserved_ffwd_29_0_17_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_17_tpl),
        .out_intel_reserved_ffwd_29_0_18_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_18_tpl),
        .out_intel_reserved_ffwd_29_0_19_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_19_tpl),
        .out_intel_reserved_ffwd_29_0_20_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_20_tpl),
        .out_intel_reserved_ffwd_30_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_0_tpl),
        .out_intel_reserved_ffwd_30_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_1_tpl),
        .out_intel_reserved_ffwd_30_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_2_tpl),
        .out_intel_reserved_ffwd_30_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_3_tpl),
        .out_intel_reserved_ffwd_30_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_4_tpl),
        .out_intel_reserved_ffwd_30_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_5_tpl),
        .out_intel_reserved_ffwd_30_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_6_tpl),
        .out_intel_reserved_ffwd_30_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_7_tpl),
        .out_intel_reserved_ffwd_30_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_8_tpl),
        .out_intel_reserved_ffwd_30_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_9_tpl),
        .out_intel_reserved_ffwd_30_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_10_tpl),
        .out_intel_reserved_ffwd_30_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_11_tpl),
        .out_intel_reserved_ffwd_30_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_12_tpl),
        .out_intel_reserved_ffwd_30_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_13_tpl),
        .out_intel_reserved_ffwd_30_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_14_tpl),
        .out_intel_reserved_ffwd_30_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_15_tpl),
        .out_intel_reserved_ffwd_30_0_16_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_16_tpl),
        .out_intel_reserved_ffwd_30_0_17_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_17_tpl),
        .out_intel_reserved_ffwd_30_0_18_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_18_tpl),
        .out_intel_reserved_ffwd_30_0_19_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_19_tpl),
        .out_intel_reserved_ffwd_30_0_20_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_20_tpl),
        .out_intel_reserved_ffwd_31_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_0_tpl),
        .out_intel_reserved_ffwd_31_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_1_tpl),
        .out_intel_reserved_ffwd_31_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_2_tpl),
        .out_intel_reserved_ffwd_31_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_3_tpl),
        .out_intel_reserved_ffwd_31_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_4_tpl),
        .out_intel_reserved_ffwd_31_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_5_tpl),
        .out_intel_reserved_ffwd_31_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_6_tpl),
        .out_intel_reserved_ffwd_31_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_7_tpl),
        .out_intel_reserved_ffwd_31_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_8_tpl),
        .out_intel_reserved_ffwd_31_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_9_tpl),
        .out_intel_reserved_ffwd_31_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_10_tpl),
        .out_intel_reserved_ffwd_31_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_11_tpl),
        .out_intel_reserved_ffwd_31_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_12_tpl),
        .out_intel_reserved_ffwd_31_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_13_tpl),
        .out_intel_reserved_ffwd_31_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_14_tpl),
        .out_intel_reserved_ffwd_31_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_15_tpl),
        .out_intel_reserved_ffwd_31_0_16_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_16_tpl),
        .out_intel_reserved_ffwd_31_0_17_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_17_tpl),
        .out_intel_reserved_ffwd_31_0_18_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_18_tpl),
        .out_intel_reserved_ffwd_31_0_19_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_19_tpl),
        .out_intel_reserved_ffwd_32_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_0_tpl),
        .out_intel_reserved_ffwd_32_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_1_tpl),
        .out_intel_reserved_ffwd_32_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_2_tpl),
        .out_intel_reserved_ffwd_32_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_3_tpl),
        .out_intel_reserved_ffwd_32_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_4_tpl),
        .out_intel_reserved_ffwd_32_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_5_tpl),
        .out_intel_reserved_ffwd_32_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_6_tpl),
        .out_intel_reserved_ffwd_32_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_7_tpl),
        .out_intel_reserved_ffwd_32_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_8_tpl),
        .out_intel_reserved_ffwd_32_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_9_tpl),
        .out_intel_reserved_ffwd_32_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_10_tpl),
        .out_intel_reserved_ffwd_32_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_11_tpl),
        .out_intel_reserved_ffwd_32_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_12_tpl),
        .out_intel_reserved_ffwd_32_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_13_tpl),
        .out_intel_reserved_ffwd_32_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_14_tpl),
        .out_intel_reserved_ffwd_32_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_15_tpl),
        .out_intel_reserved_ffwd_32_0_16_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_16_tpl),
        .out_intel_reserved_ffwd_32_0_17_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_17_tpl),
        .out_intel_reserved_ffwd_32_0_18_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_18_tpl),
        .out_intel_reserved_ffwd_32_0_19_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_0_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_0_tpl),
        .out_intel_reserved_ffwd_33_0_1_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_1_tpl),
        .out_intel_reserved_ffwd_33_0_2_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_2_tpl),
        .out_intel_reserved_ffwd_33_0_3_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_3_tpl),
        .out_intel_reserved_ffwd_33_0_4_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_4_tpl),
        .out_intel_reserved_ffwd_33_0_5_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_5_tpl),
        .out_intel_reserved_ffwd_33_0_6_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_6_tpl),
        .out_intel_reserved_ffwd_33_0_7_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_7_tpl),
        .out_intel_reserved_ffwd_33_0_8_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_8_tpl),
        .out_intel_reserved_ffwd_33_0_9_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_9_tpl),
        .out_intel_reserved_ffwd_33_0_10_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_10_tpl),
        .out_intel_reserved_ffwd_33_0_11_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_11_tpl),
        .out_intel_reserved_ffwd_33_0_12_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_12_tpl),
        .out_intel_reserved_ffwd_33_0_13_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_13_tpl),
        .out_intel_reserved_ffwd_33_0_14_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_14_tpl),
        .out_intel_reserved_ffwd_33_0_15_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_15_tpl),
        .out_intel_reserved_ffwd_33_0_16_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_16_tpl),
        .out_intel_reserved_ffwd_33_0_17_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_17_tpl),
        .out_intel_reserved_ffwd_33_0_18_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_18_tpl),
        .out_intel_reserved_ffwd_33_0_19_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_20_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_20_tpl),
        .out_intel_reserved_ffwd_33_0_21_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_21_tpl),
        .out_intel_reserved_ffwd_33_0_22_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_22_tpl),
        .out_intel_reserved_ffwd_33_0_23_tpl(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_23_tpl),
        .out_intel_reserved_ffwd_21_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_26_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_34_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_36_0),
        .out_stall_out(bb_cnn_top_B4_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_top_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_24_0_0_tpl(GPOUT,2)
    assign out_intel_reserved_ffwd_24_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_0_tpl;

    // out_intel_reserved_ffwd_24_0_1_tpl(GPOUT,3)
    assign out_intel_reserved_ffwd_24_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_1_tpl;

    // out_intel_reserved_ffwd_24_0_2_tpl(GPOUT,4)
    assign out_intel_reserved_ffwd_24_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_2_tpl;

    // out_intel_reserved_ffwd_24_0_3_tpl(GPOUT,5)
    assign out_intel_reserved_ffwd_24_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_3_tpl;

    // out_intel_reserved_ffwd_24_0_4_tpl(GPOUT,6)
    assign out_intel_reserved_ffwd_24_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_4_tpl;

    // out_intel_reserved_ffwd_24_0_5_tpl(GPOUT,7)
    assign out_intel_reserved_ffwd_24_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_5_tpl;

    // out_intel_reserved_ffwd_24_0_6_tpl(GPOUT,8)
    assign out_intel_reserved_ffwd_24_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_6_tpl;

    // out_intel_reserved_ffwd_24_0_7_tpl(GPOUT,9)
    assign out_intel_reserved_ffwd_24_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_7_tpl;

    // out_intel_reserved_ffwd_24_0_8_tpl(GPOUT,10)
    assign out_intel_reserved_ffwd_24_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_8_tpl;

    // out_intel_reserved_ffwd_24_0_9_tpl(GPOUT,11)
    assign out_intel_reserved_ffwd_24_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_9_tpl;

    // out_intel_reserved_ffwd_24_0_10_tpl(GPOUT,12)
    assign out_intel_reserved_ffwd_24_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_10_tpl;

    // out_intel_reserved_ffwd_24_0_11_tpl(GPOUT,13)
    assign out_intel_reserved_ffwd_24_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_11_tpl;

    // out_intel_reserved_ffwd_24_0_12_tpl(GPOUT,14)
    assign out_intel_reserved_ffwd_24_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_12_tpl;

    // out_intel_reserved_ffwd_24_0_13_tpl(GPOUT,15)
    assign out_intel_reserved_ffwd_24_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_13_tpl;

    // out_intel_reserved_ffwd_24_0_14_tpl(GPOUT,16)
    assign out_intel_reserved_ffwd_24_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_14_tpl;

    // out_intel_reserved_ffwd_24_0_15_tpl(GPOUT,17)
    assign out_intel_reserved_ffwd_24_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_24_0_15_tpl;

    // out_intel_reserved_ffwd_25_0_0_tpl(GPOUT,18)
    assign out_intel_reserved_ffwd_25_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_0_tpl;

    // out_intel_reserved_ffwd_25_0_1_tpl(GPOUT,19)
    assign out_intel_reserved_ffwd_25_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_25_0_1_tpl;

    // out_intel_reserved_ffwd_29_0_0_tpl(GPOUT,20)
    assign out_intel_reserved_ffwd_29_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_0_tpl;

    // out_intel_reserved_ffwd_29_0_1_tpl(GPOUT,21)
    assign out_intel_reserved_ffwd_29_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_1_tpl;

    // out_intel_reserved_ffwd_29_0_2_tpl(GPOUT,22)
    assign out_intel_reserved_ffwd_29_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_2_tpl;

    // out_intel_reserved_ffwd_29_0_3_tpl(GPOUT,23)
    assign out_intel_reserved_ffwd_29_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_3_tpl;

    // out_intel_reserved_ffwd_29_0_4_tpl(GPOUT,24)
    assign out_intel_reserved_ffwd_29_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_4_tpl;

    // out_intel_reserved_ffwd_29_0_5_tpl(GPOUT,25)
    assign out_intel_reserved_ffwd_29_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_5_tpl;

    // out_intel_reserved_ffwd_29_0_6_tpl(GPOUT,26)
    assign out_intel_reserved_ffwd_29_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_6_tpl;

    // out_intel_reserved_ffwd_29_0_7_tpl(GPOUT,27)
    assign out_intel_reserved_ffwd_29_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_7_tpl;

    // out_intel_reserved_ffwd_29_0_8_tpl(GPOUT,28)
    assign out_intel_reserved_ffwd_29_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_8_tpl;

    // out_intel_reserved_ffwd_29_0_9_tpl(GPOUT,29)
    assign out_intel_reserved_ffwd_29_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_9_tpl;

    // out_intel_reserved_ffwd_29_0_10_tpl(GPOUT,30)
    assign out_intel_reserved_ffwd_29_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_10_tpl;

    // out_intel_reserved_ffwd_29_0_11_tpl(GPOUT,31)
    assign out_intel_reserved_ffwd_29_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_11_tpl;

    // out_intel_reserved_ffwd_29_0_12_tpl(GPOUT,32)
    assign out_intel_reserved_ffwd_29_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_12_tpl;

    // out_intel_reserved_ffwd_29_0_13_tpl(GPOUT,33)
    assign out_intel_reserved_ffwd_29_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_13_tpl;

    // out_intel_reserved_ffwd_29_0_14_tpl(GPOUT,34)
    assign out_intel_reserved_ffwd_29_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_14_tpl;

    // out_intel_reserved_ffwd_29_0_15_tpl(GPOUT,35)
    assign out_intel_reserved_ffwd_29_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_15_tpl;

    // out_intel_reserved_ffwd_29_0_16_tpl(GPOUT,36)
    assign out_intel_reserved_ffwd_29_0_16_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_16_tpl;

    // out_intel_reserved_ffwd_29_0_17_tpl(GPOUT,37)
    assign out_intel_reserved_ffwd_29_0_17_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_17_tpl;

    // out_intel_reserved_ffwd_29_0_18_tpl(GPOUT,38)
    assign out_intel_reserved_ffwd_29_0_18_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_18_tpl;

    // out_intel_reserved_ffwd_29_0_19_tpl(GPOUT,39)
    assign out_intel_reserved_ffwd_29_0_19_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_19_tpl;

    // out_intel_reserved_ffwd_29_0_20_tpl(GPOUT,40)
    assign out_intel_reserved_ffwd_29_0_20_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_29_0_20_tpl;

    // out_intel_reserved_ffwd_30_0_0_tpl(GPOUT,41)
    assign out_intel_reserved_ffwd_30_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_0_tpl;

    // out_intel_reserved_ffwd_30_0_1_tpl(GPOUT,42)
    assign out_intel_reserved_ffwd_30_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_1_tpl;

    // out_intel_reserved_ffwd_30_0_2_tpl(GPOUT,43)
    assign out_intel_reserved_ffwd_30_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_2_tpl;

    // out_intel_reserved_ffwd_30_0_3_tpl(GPOUT,44)
    assign out_intel_reserved_ffwd_30_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_3_tpl;

    // out_intel_reserved_ffwd_30_0_4_tpl(GPOUT,45)
    assign out_intel_reserved_ffwd_30_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_4_tpl;

    // out_intel_reserved_ffwd_30_0_5_tpl(GPOUT,46)
    assign out_intel_reserved_ffwd_30_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_5_tpl;

    // out_intel_reserved_ffwd_30_0_6_tpl(GPOUT,47)
    assign out_intel_reserved_ffwd_30_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_6_tpl;

    // out_intel_reserved_ffwd_30_0_7_tpl(GPOUT,48)
    assign out_intel_reserved_ffwd_30_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_7_tpl;

    // out_intel_reserved_ffwd_30_0_8_tpl(GPOUT,49)
    assign out_intel_reserved_ffwd_30_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_8_tpl;

    // out_intel_reserved_ffwd_30_0_9_tpl(GPOUT,50)
    assign out_intel_reserved_ffwd_30_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_9_tpl;

    // out_intel_reserved_ffwd_30_0_10_tpl(GPOUT,51)
    assign out_intel_reserved_ffwd_30_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_10_tpl;

    // out_intel_reserved_ffwd_30_0_11_tpl(GPOUT,52)
    assign out_intel_reserved_ffwd_30_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_11_tpl;

    // out_intel_reserved_ffwd_30_0_12_tpl(GPOUT,53)
    assign out_intel_reserved_ffwd_30_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_12_tpl;

    // out_intel_reserved_ffwd_30_0_13_tpl(GPOUT,54)
    assign out_intel_reserved_ffwd_30_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_13_tpl;

    // out_intel_reserved_ffwd_30_0_14_tpl(GPOUT,55)
    assign out_intel_reserved_ffwd_30_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_14_tpl;

    // out_intel_reserved_ffwd_30_0_15_tpl(GPOUT,56)
    assign out_intel_reserved_ffwd_30_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_15_tpl;

    // out_intel_reserved_ffwd_30_0_16_tpl(GPOUT,57)
    assign out_intel_reserved_ffwd_30_0_16_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_16_tpl;

    // out_intel_reserved_ffwd_30_0_17_tpl(GPOUT,58)
    assign out_intel_reserved_ffwd_30_0_17_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_17_tpl;

    // out_intel_reserved_ffwd_30_0_18_tpl(GPOUT,59)
    assign out_intel_reserved_ffwd_30_0_18_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_18_tpl;

    // out_intel_reserved_ffwd_30_0_19_tpl(GPOUT,60)
    assign out_intel_reserved_ffwd_30_0_19_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_19_tpl;

    // out_intel_reserved_ffwd_30_0_20_tpl(GPOUT,61)
    assign out_intel_reserved_ffwd_30_0_20_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_30_0_20_tpl;

    // out_intel_reserved_ffwd_31_0_0_tpl(GPOUT,62)
    assign out_intel_reserved_ffwd_31_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_0_tpl;

    // out_intel_reserved_ffwd_31_0_1_tpl(GPOUT,63)
    assign out_intel_reserved_ffwd_31_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_1_tpl;

    // out_intel_reserved_ffwd_31_0_2_tpl(GPOUT,64)
    assign out_intel_reserved_ffwd_31_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_2_tpl;

    // out_intel_reserved_ffwd_31_0_3_tpl(GPOUT,65)
    assign out_intel_reserved_ffwd_31_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_3_tpl;

    // out_intel_reserved_ffwd_31_0_4_tpl(GPOUT,66)
    assign out_intel_reserved_ffwd_31_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_4_tpl;

    // out_intel_reserved_ffwd_31_0_5_tpl(GPOUT,67)
    assign out_intel_reserved_ffwd_31_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_5_tpl;

    // out_intel_reserved_ffwd_31_0_6_tpl(GPOUT,68)
    assign out_intel_reserved_ffwd_31_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_6_tpl;

    // out_intel_reserved_ffwd_31_0_7_tpl(GPOUT,69)
    assign out_intel_reserved_ffwd_31_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_7_tpl;

    // out_intel_reserved_ffwd_31_0_8_tpl(GPOUT,70)
    assign out_intel_reserved_ffwd_31_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_8_tpl;

    // out_intel_reserved_ffwd_31_0_9_tpl(GPOUT,71)
    assign out_intel_reserved_ffwd_31_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_9_tpl;

    // out_intel_reserved_ffwd_31_0_10_tpl(GPOUT,72)
    assign out_intel_reserved_ffwd_31_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_10_tpl;

    // out_intel_reserved_ffwd_31_0_11_tpl(GPOUT,73)
    assign out_intel_reserved_ffwd_31_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_11_tpl;

    // out_intel_reserved_ffwd_31_0_12_tpl(GPOUT,74)
    assign out_intel_reserved_ffwd_31_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_12_tpl;

    // out_intel_reserved_ffwd_31_0_13_tpl(GPOUT,75)
    assign out_intel_reserved_ffwd_31_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_13_tpl;

    // out_intel_reserved_ffwd_31_0_14_tpl(GPOUT,76)
    assign out_intel_reserved_ffwd_31_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_14_tpl;

    // out_intel_reserved_ffwd_31_0_15_tpl(GPOUT,77)
    assign out_intel_reserved_ffwd_31_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_15_tpl;

    // out_intel_reserved_ffwd_31_0_16_tpl(GPOUT,78)
    assign out_intel_reserved_ffwd_31_0_16_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_16_tpl;

    // out_intel_reserved_ffwd_31_0_17_tpl(GPOUT,79)
    assign out_intel_reserved_ffwd_31_0_17_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_17_tpl;

    // out_intel_reserved_ffwd_31_0_18_tpl(GPOUT,80)
    assign out_intel_reserved_ffwd_31_0_18_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_18_tpl;

    // out_intel_reserved_ffwd_31_0_19_tpl(GPOUT,81)
    assign out_intel_reserved_ffwd_31_0_19_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_31_0_19_tpl;

    // out_intel_reserved_ffwd_32_0_0_tpl(GPOUT,82)
    assign out_intel_reserved_ffwd_32_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_0_tpl;

    // out_intel_reserved_ffwd_32_0_1_tpl(GPOUT,83)
    assign out_intel_reserved_ffwd_32_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_1_tpl;

    // out_intel_reserved_ffwd_32_0_2_tpl(GPOUT,84)
    assign out_intel_reserved_ffwd_32_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_2_tpl;

    // out_intel_reserved_ffwd_32_0_3_tpl(GPOUT,85)
    assign out_intel_reserved_ffwd_32_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_3_tpl;

    // out_intel_reserved_ffwd_32_0_4_tpl(GPOUT,86)
    assign out_intel_reserved_ffwd_32_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_4_tpl;

    // out_intel_reserved_ffwd_32_0_5_tpl(GPOUT,87)
    assign out_intel_reserved_ffwd_32_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_5_tpl;

    // out_intel_reserved_ffwd_32_0_6_tpl(GPOUT,88)
    assign out_intel_reserved_ffwd_32_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_6_tpl;

    // out_intel_reserved_ffwd_32_0_7_tpl(GPOUT,89)
    assign out_intel_reserved_ffwd_32_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_7_tpl;

    // out_intel_reserved_ffwd_32_0_8_tpl(GPOUT,90)
    assign out_intel_reserved_ffwd_32_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_8_tpl;

    // out_intel_reserved_ffwd_32_0_9_tpl(GPOUT,91)
    assign out_intel_reserved_ffwd_32_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_9_tpl;

    // out_intel_reserved_ffwd_32_0_10_tpl(GPOUT,92)
    assign out_intel_reserved_ffwd_32_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_10_tpl;

    // out_intel_reserved_ffwd_32_0_11_tpl(GPOUT,93)
    assign out_intel_reserved_ffwd_32_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_11_tpl;

    // out_intel_reserved_ffwd_32_0_12_tpl(GPOUT,94)
    assign out_intel_reserved_ffwd_32_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_12_tpl;

    // out_intel_reserved_ffwd_32_0_13_tpl(GPOUT,95)
    assign out_intel_reserved_ffwd_32_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_13_tpl;

    // out_intel_reserved_ffwd_32_0_14_tpl(GPOUT,96)
    assign out_intel_reserved_ffwd_32_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_14_tpl;

    // out_intel_reserved_ffwd_32_0_15_tpl(GPOUT,97)
    assign out_intel_reserved_ffwd_32_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_15_tpl;

    // out_intel_reserved_ffwd_32_0_16_tpl(GPOUT,98)
    assign out_intel_reserved_ffwd_32_0_16_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_16_tpl;

    // out_intel_reserved_ffwd_32_0_17_tpl(GPOUT,99)
    assign out_intel_reserved_ffwd_32_0_17_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_17_tpl;

    // out_intel_reserved_ffwd_32_0_18_tpl(GPOUT,100)
    assign out_intel_reserved_ffwd_32_0_18_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_18_tpl;

    // out_intel_reserved_ffwd_32_0_19_tpl(GPOUT,101)
    assign out_intel_reserved_ffwd_32_0_19_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_32_0_19_tpl;

    // out_intel_reserved_ffwd_33_0_0_tpl(GPOUT,102)
    assign out_intel_reserved_ffwd_33_0_0_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_0_tpl;

    // out_intel_reserved_ffwd_33_0_1_tpl(GPOUT,103)
    assign out_intel_reserved_ffwd_33_0_1_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_1_tpl;

    // out_intel_reserved_ffwd_33_0_2_tpl(GPOUT,104)
    assign out_intel_reserved_ffwd_33_0_2_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_2_tpl;

    // out_intel_reserved_ffwd_33_0_3_tpl(GPOUT,105)
    assign out_intel_reserved_ffwd_33_0_3_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_3_tpl;

    // out_intel_reserved_ffwd_33_0_4_tpl(GPOUT,106)
    assign out_intel_reserved_ffwd_33_0_4_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_4_tpl;

    // out_intel_reserved_ffwd_33_0_5_tpl(GPOUT,107)
    assign out_intel_reserved_ffwd_33_0_5_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_5_tpl;

    // out_intel_reserved_ffwd_33_0_6_tpl(GPOUT,108)
    assign out_intel_reserved_ffwd_33_0_6_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_6_tpl;

    // out_intel_reserved_ffwd_33_0_7_tpl(GPOUT,109)
    assign out_intel_reserved_ffwd_33_0_7_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_7_tpl;

    // out_intel_reserved_ffwd_33_0_8_tpl(GPOUT,110)
    assign out_intel_reserved_ffwd_33_0_8_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_8_tpl;

    // out_intel_reserved_ffwd_33_0_9_tpl(GPOUT,111)
    assign out_intel_reserved_ffwd_33_0_9_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_9_tpl;

    // out_intel_reserved_ffwd_33_0_10_tpl(GPOUT,112)
    assign out_intel_reserved_ffwd_33_0_10_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_10_tpl;

    // out_intel_reserved_ffwd_33_0_11_tpl(GPOUT,113)
    assign out_intel_reserved_ffwd_33_0_11_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_11_tpl;

    // out_intel_reserved_ffwd_33_0_12_tpl(GPOUT,114)
    assign out_intel_reserved_ffwd_33_0_12_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_12_tpl;

    // out_intel_reserved_ffwd_33_0_13_tpl(GPOUT,115)
    assign out_intel_reserved_ffwd_33_0_13_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_13_tpl;

    // out_intel_reserved_ffwd_33_0_14_tpl(GPOUT,116)
    assign out_intel_reserved_ffwd_33_0_14_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_14_tpl;

    // out_intel_reserved_ffwd_33_0_15_tpl(GPOUT,117)
    assign out_intel_reserved_ffwd_33_0_15_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_15_tpl;

    // out_intel_reserved_ffwd_33_0_16_tpl(GPOUT,118)
    assign out_intel_reserved_ffwd_33_0_16_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_16_tpl;

    // out_intel_reserved_ffwd_33_0_17_tpl(GPOUT,119)
    assign out_intel_reserved_ffwd_33_0_17_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_17_tpl;

    // out_intel_reserved_ffwd_33_0_18_tpl(GPOUT,120)
    assign out_intel_reserved_ffwd_33_0_18_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_18_tpl;

    // out_intel_reserved_ffwd_33_0_19_tpl(GPOUT,121)
    assign out_intel_reserved_ffwd_33_0_19_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_19_tpl;

    // out_intel_reserved_ffwd_33_0_20_tpl(GPOUT,122)
    assign out_intel_reserved_ffwd_33_0_20_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_20_tpl;

    // out_intel_reserved_ffwd_33_0_21_tpl(GPOUT,123)
    assign out_intel_reserved_ffwd_33_0_21_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_21_tpl;

    // out_intel_reserved_ffwd_33_0_22_tpl(GPOUT,124)
    assign out_intel_reserved_ffwd_33_0_22_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_22_tpl;

    // out_intel_reserved_ffwd_33_0_23_tpl(GPOUT,125)
    assign out_intel_reserved_ffwd_33_0_23_tpl = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_33_0_23_tpl;

    // out_intel_reserved_ffwd_21_0(GPOUT,126)
    assign out_intel_reserved_ffwd_21_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,127)
    assign out_intel_reserved_ffwd_22_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,128)
    assign out_intel_reserved_ffwd_23_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,129)
    assign out_intel_reserved_ffwd_26_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,130)
    assign out_intel_reserved_ffwd_27_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,131)
    assign out_intel_reserved_ffwd_28_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,132)
    assign out_intel_reserved_ffwd_34_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,133)
    assign out_intel_reserved_ffwd_35_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,134)
    assign out_intel_reserved_ffwd_36_0 = bb_cnn_top_B4_stall_region_out_intel_reserved_ffwd_36_0;

    // out_stall_out_0(GPOUT,135)
    assign out_stall_out_0 = cnn_top_B4_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,136)
    assign out_valid_out_0 = cnn_top_B4_branch_out_valid_out_0;

endmodule
