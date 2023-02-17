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

// SystemVerilog created from cnn_top_bb_B5
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B5 (
    input wire [31:0] in_intel_reserved_ffwd_24_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_15_tpl,
    input wire [63:0] in_intel_reserved_ffwd_29_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_30_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_31_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_32_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_33_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_33_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_20_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_21_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_22_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_23_tpl,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_too_i_0117_0,
    input wire [31:0] in_too_i_0117_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_38_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_39_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_40_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_41_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_42_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_42_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_20_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_21_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_22_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_23_tpl,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_pre,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_20_tpl;
    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_20_tpl;
    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_19_tpl;
    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_19_tpl;
    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_0_tpl;
    wire [63:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_20_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_21_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_22_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_23_tpl;
    wire [31:0] bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_cnn_top_B5_stall_region_out_pre;
    wire [0:0] bb_cnn_top_B5_stall_region_out_stall_out;
    wire [0:0] bb_cnn_top_B5_stall_region_out_valid_out;
    wire [31:0] cnn_top_B5_branch_out_pre;
    wire [0:0] cnn_top_B5_branch_out_stall_out;
    wire [0:0] cnn_top_B5_branch_out_valid_out_0;
    wire [0:0] cnn_top_B5_merge_out_stall_out_0;
    wire [0:0] cnn_top_B5_merge_out_stall_out_1;
    wire [31:0] cnn_top_B5_merge_out_too_i_0117;
    wire [0:0] cnn_top_B5_merge_out_valid_out;


    // cnn_top_B5_merge(BLACKBOX,248)
    cnn_top_B5_merge thecnn_top_B5_merge (
        .in_stall_in(bb_cnn_top_B5_stall_region_out_stall_out),
        .in_too_i_0117_0(in_too_i_0117_0),
        .in_too_i_0117_1(in_too_i_0117_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(cnn_top_B5_merge_out_stall_out_0),
        .out_stall_out_1(cnn_top_B5_merge_out_stall_out_1),
        .out_too_i_0117(cnn_top_B5_merge_out_too_i_0117),
        .out_valid_out(cnn_top_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B5_branch(BLACKBOX,247)
    cnn_top_B5_branch thecnn_top_B5_branch (
        .in_pre(bb_cnn_top_B5_stall_region_out_pre),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_cnn_top_B5_stall_region_out_valid_out),
        .out_pre(cnn_top_B5_branch_out_pre),
        .out_stall_out(cnn_top_B5_branch_out_stall_out),
        .out_valid_out_0(cnn_top_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B5_stall_region(BLACKBOX,246)
    cnn_top_bb_B5_stall_region thebb_cnn_top_B5_stall_region (
        .in_intel_reserved_ffwd_24_0_0_tpl(in_intel_reserved_ffwd_24_0_0_tpl),
        .in_intel_reserved_ffwd_24_0_1_tpl(in_intel_reserved_ffwd_24_0_1_tpl),
        .in_intel_reserved_ffwd_24_0_2_tpl(in_intel_reserved_ffwd_24_0_2_tpl),
        .in_intel_reserved_ffwd_24_0_3_tpl(in_intel_reserved_ffwd_24_0_3_tpl),
        .in_intel_reserved_ffwd_24_0_4_tpl(in_intel_reserved_ffwd_24_0_4_tpl),
        .in_intel_reserved_ffwd_24_0_5_tpl(in_intel_reserved_ffwd_24_0_5_tpl),
        .in_intel_reserved_ffwd_24_0_6_tpl(in_intel_reserved_ffwd_24_0_6_tpl),
        .in_intel_reserved_ffwd_24_0_7_tpl(in_intel_reserved_ffwd_24_0_7_tpl),
        .in_intel_reserved_ffwd_24_0_8_tpl(in_intel_reserved_ffwd_24_0_8_tpl),
        .in_intel_reserved_ffwd_24_0_9_tpl(in_intel_reserved_ffwd_24_0_9_tpl),
        .in_intel_reserved_ffwd_24_0_10_tpl(in_intel_reserved_ffwd_24_0_10_tpl),
        .in_intel_reserved_ffwd_24_0_11_tpl(in_intel_reserved_ffwd_24_0_11_tpl),
        .in_intel_reserved_ffwd_24_0_12_tpl(in_intel_reserved_ffwd_24_0_12_tpl),
        .in_intel_reserved_ffwd_24_0_13_tpl(in_intel_reserved_ffwd_24_0_13_tpl),
        .in_intel_reserved_ffwd_24_0_14_tpl(in_intel_reserved_ffwd_24_0_14_tpl),
        .in_intel_reserved_ffwd_24_0_15_tpl(in_intel_reserved_ffwd_24_0_15_tpl),
        .in_intel_reserved_ffwd_29_0_0_tpl(in_intel_reserved_ffwd_29_0_0_tpl),
        .in_intel_reserved_ffwd_29_0_1_tpl(in_intel_reserved_ffwd_29_0_1_tpl),
        .in_intel_reserved_ffwd_29_0_2_tpl(in_intel_reserved_ffwd_29_0_2_tpl),
        .in_intel_reserved_ffwd_29_0_3_tpl(in_intel_reserved_ffwd_29_0_3_tpl),
        .in_intel_reserved_ffwd_29_0_4_tpl(in_intel_reserved_ffwd_29_0_4_tpl),
        .in_intel_reserved_ffwd_29_0_5_tpl(in_intel_reserved_ffwd_29_0_5_tpl),
        .in_intel_reserved_ffwd_29_0_6_tpl(in_intel_reserved_ffwd_29_0_6_tpl),
        .in_intel_reserved_ffwd_29_0_7_tpl(in_intel_reserved_ffwd_29_0_7_tpl),
        .in_intel_reserved_ffwd_29_0_8_tpl(in_intel_reserved_ffwd_29_0_8_tpl),
        .in_intel_reserved_ffwd_29_0_9_tpl(in_intel_reserved_ffwd_29_0_9_tpl),
        .in_intel_reserved_ffwd_29_0_10_tpl(in_intel_reserved_ffwd_29_0_10_tpl),
        .in_intel_reserved_ffwd_29_0_11_tpl(in_intel_reserved_ffwd_29_0_11_tpl),
        .in_intel_reserved_ffwd_29_0_12_tpl(in_intel_reserved_ffwd_29_0_12_tpl),
        .in_intel_reserved_ffwd_29_0_13_tpl(in_intel_reserved_ffwd_29_0_13_tpl),
        .in_intel_reserved_ffwd_29_0_14_tpl(in_intel_reserved_ffwd_29_0_14_tpl),
        .in_intel_reserved_ffwd_29_0_15_tpl(in_intel_reserved_ffwd_29_0_15_tpl),
        .in_intel_reserved_ffwd_29_0_16_tpl(in_intel_reserved_ffwd_29_0_16_tpl),
        .in_intel_reserved_ffwd_29_0_17_tpl(in_intel_reserved_ffwd_29_0_17_tpl),
        .in_intel_reserved_ffwd_29_0_18_tpl(in_intel_reserved_ffwd_29_0_18_tpl),
        .in_intel_reserved_ffwd_29_0_19_tpl(in_intel_reserved_ffwd_29_0_19_tpl),
        .in_intel_reserved_ffwd_29_0_20_tpl(in_intel_reserved_ffwd_29_0_20_tpl),
        .in_intel_reserved_ffwd_30_0_0_tpl(in_intel_reserved_ffwd_30_0_0_tpl),
        .in_intel_reserved_ffwd_30_0_1_tpl(in_intel_reserved_ffwd_30_0_1_tpl),
        .in_intel_reserved_ffwd_30_0_2_tpl(in_intel_reserved_ffwd_30_0_2_tpl),
        .in_intel_reserved_ffwd_30_0_3_tpl(in_intel_reserved_ffwd_30_0_3_tpl),
        .in_intel_reserved_ffwd_30_0_4_tpl(in_intel_reserved_ffwd_30_0_4_tpl),
        .in_intel_reserved_ffwd_30_0_5_tpl(in_intel_reserved_ffwd_30_0_5_tpl),
        .in_intel_reserved_ffwd_30_0_6_tpl(in_intel_reserved_ffwd_30_0_6_tpl),
        .in_intel_reserved_ffwd_30_0_7_tpl(in_intel_reserved_ffwd_30_0_7_tpl),
        .in_intel_reserved_ffwd_30_0_8_tpl(in_intel_reserved_ffwd_30_0_8_tpl),
        .in_intel_reserved_ffwd_30_0_9_tpl(in_intel_reserved_ffwd_30_0_9_tpl),
        .in_intel_reserved_ffwd_30_0_10_tpl(in_intel_reserved_ffwd_30_0_10_tpl),
        .in_intel_reserved_ffwd_30_0_11_tpl(in_intel_reserved_ffwd_30_0_11_tpl),
        .in_intel_reserved_ffwd_30_0_12_tpl(in_intel_reserved_ffwd_30_0_12_tpl),
        .in_intel_reserved_ffwd_30_0_13_tpl(in_intel_reserved_ffwd_30_0_13_tpl),
        .in_intel_reserved_ffwd_30_0_14_tpl(in_intel_reserved_ffwd_30_0_14_tpl),
        .in_intel_reserved_ffwd_30_0_15_tpl(in_intel_reserved_ffwd_30_0_15_tpl),
        .in_intel_reserved_ffwd_30_0_16_tpl(in_intel_reserved_ffwd_30_0_16_tpl),
        .in_intel_reserved_ffwd_30_0_17_tpl(in_intel_reserved_ffwd_30_0_17_tpl),
        .in_intel_reserved_ffwd_30_0_18_tpl(in_intel_reserved_ffwd_30_0_18_tpl),
        .in_intel_reserved_ffwd_30_0_19_tpl(in_intel_reserved_ffwd_30_0_19_tpl),
        .in_intel_reserved_ffwd_30_0_20_tpl(in_intel_reserved_ffwd_30_0_20_tpl),
        .in_intel_reserved_ffwd_31_0_0_tpl(in_intel_reserved_ffwd_31_0_0_tpl),
        .in_intel_reserved_ffwd_31_0_1_tpl(in_intel_reserved_ffwd_31_0_1_tpl),
        .in_intel_reserved_ffwd_31_0_2_tpl(in_intel_reserved_ffwd_31_0_2_tpl),
        .in_intel_reserved_ffwd_31_0_3_tpl(in_intel_reserved_ffwd_31_0_3_tpl),
        .in_intel_reserved_ffwd_31_0_4_tpl(in_intel_reserved_ffwd_31_0_4_tpl),
        .in_intel_reserved_ffwd_31_0_5_tpl(in_intel_reserved_ffwd_31_0_5_tpl),
        .in_intel_reserved_ffwd_31_0_6_tpl(in_intel_reserved_ffwd_31_0_6_tpl),
        .in_intel_reserved_ffwd_31_0_7_tpl(in_intel_reserved_ffwd_31_0_7_tpl),
        .in_intel_reserved_ffwd_31_0_8_tpl(in_intel_reserved_ffwd_31_0_8_tpl),
        .in_intel_reserved_ffwd_31_0_9_tpl(in_intel_reserved_ffwd_31_0_9_tpl),
        .in_intel_reserved_ffwd_31_0_10_tpl(in_intel_reserved_ffwd_31_0_10_tpl),
        .in_intel_reserved_ffwd_31_0_11_tpl(in_intel_reserved_ffwd_31_0_11_tpl),
        .in_intel_reserved_ffwd_31_0_12_tpl(in_intel_reserved_ffwd_31_0_12_tpl),
        .in_intel_reserved_ffwd_31_0_13_tpl(in_intel_reserved_ffwd_31_0_13_tpl),
        .in_intel_reserved_ffwd_31_0_14_tpl(in_intel_reserved_ffwd_31_0_14_tpl),
        .in_intel_reserved_ffwd_31_0_15_tpl(in_intel_reserved_ffwd_31_0_15_tpl),
        .in_intel_reserved_ffwd_31_0_16_tpl(in_intel_reserved_ffwd_31_0_16_tpl),
        .in_intel_reserved_ffwd_31_0_17_tpl(in_intel_reserved_ffwd_31_0_17_tpl),
        .in_intel_reserved_ffwd_31_0_18_tpl(in_intel_reserved_ffwd_31_0_18_tpl),
        .in_intel_reserved_ffwd_31_0_19_tpl(in_intel_reserved_ffwd_31_0_19_tpl),
        .in_intel_reserved_ffwd_32_0_0_tpl(in_intel_reserved_ffwd_32_0_0_tpl),
        .in_intel_reserved_ffwd_32_0_1_tpl(in_intel_reserved_ffwd_32_0_1_tpl),
        .in_intel_reserved_ffwd_32_0_2_tpl(in_intel_reserved_ffwd_32_0_2_tpl),
        .in_intel_reserved_ffwd_32_0_3_tpl(in_intel_reserved_ffwd_32_0_3_tpl),
        .in_intel_reserved_ffwd_32_0_4_tpl(in_intel_reserved_ffwd_32_0_4_tpl),
        .in_intel_reserved_ffwd_32_0_5_tpl(in_intel_reserved_ffwd_32_0_5_tpl),
        .in_intel_reserved_ffwd_32_0_6_tpl(in_intel_reserved_ffwd_32_0_6_tpl),
        .in_intel_reserved_ffwd_32_0_7_tpl(in_intel_reserved_ffwd_32_0_7_tpl),
        .in_intel_reserved_ffwd_32_0_8_tpl(in_intel_reserved_ffwd_32_0_8_tpl),
        .in_intel_reserved_ffwd_32_0_9_tpl(in_intel_reserved_ffwd_32_0_9_tpl),
        .in_intel_reserved_ffwd_32_0_10_tpl(in_intel_reserved_ffwd_32_0_10_tpl),
        .in_intel_reserved_ffwd_32_0_11_tpl(in_intel_reserved_ffwd_32_0_11_tpl),
        .in_intel_reserved_ffwd_32_0_12_tpl(in_intel_reserved_ffwd_32_0_12_tpl),
        .in_intel_reserved_ffwd_32_0_13_tpl(in_intel_reserved_ffwd_32_0_13_tpl),
        .in_intel_reserved_ffwd_32_0_14_tpl(in_intel_reserved_ffwd_32_0_14_tpl),
        .in_intel_reserved_ffwd_32_0_15_tpl(in_intel_reserved_ffwd_32_0_15_tpl),
        .in_intel_reserved_ffwd_32_0_16_tpl(in_intel_reserved_ffwd_32_0_16_tpl),
        .in_intel_reserved_ffwd_32_0_17_tpl(in_intel_reserved_ffwd_32_0_17_tpl),
        .in_intel_reserved_ffwd_32_0_18_tpl(in_intel_reserved_ffwd_32_0_18_tpl),
        .in_intel_reserved_ffwd_32_0_19_tpl(in_intel_reserved_ffwd_32_0_19_tpl),
        .in_intel_reserved_ffwd_33_0_0_tpl(in_intel_reserved_ffwd_33_0_0_tpl),
        .in_intel_reserved_ffwd_33_0_1_tpl(in_intel_reserved_ffwd_33_0_1_tpl),
        .in_intel_reserved_ffwd_33_0_2_tpl(in_intel_reserved_ffwd_33_0_2_tpl),
        .in_intel_reserved_ffwd_33_0_3_tpl(in_intel_reserved_ffwd_33_0_3_tpl),
        .in_intel_reserved_ffwd_33_0_4_tpl(in_intel_reserved_ffwd_33_0_4_tpl),
        .in_intel_reserved_ffwd_33_0_5_tpl(in_intel_reserved_ffwd_33_0_5_tpl),
        .in_intel_reserved_ffwd_33_0_6_tpl(in_intel_reserved_ffwd_33_0_6_tpl),
        .in_intel_reserved_ffwd_33_0_7_tpl(in_intel_reserved_ffwd_33_0_7_tpl),
        .in_intel_reserved_ffwd_33_0_8_tpl(in_intel_reserved_ffwd_33_0_8_tpl),
        .in_intel_reserved_ffwd_33_0_9_tpl(in_intel_reserved_ffwd_33_0_9_tpl),
        .in_intel_reserved_ffwd_33_0_10_tpl(in_intel_reserved_ffwd_33_0_10_tpl),
        .in_intel_reserved_ffwd_33_0_11_tpl(in_intel_reserved_ffwd_33_0_11_tpl),
        .in_intel_reserved_ffwd_33_0_12_tpl(in_intel_reserved_ffwd_33_0_12_tpl),
        .in_intel_reserved_ffwd_33_0_13_tpl(in_intel_reserved_ffwd_33_0_13_tpl),
        .in_intel_reserved_ffwd_33_0_14_tpl(in_intel_reserved_ffwd_33_0_14_tpl),
        .in_intel_reserved_ffwd_33_0_15_tpl(in_intel_reserved_ffwd_33_0_15_tpl),
        .in_intel_reserved_ffwd_33_0_16_tpl(in_intel_reserved_ffwd_33_0_16_tpl),
        .in_intel_reserved_ffwd_33_0_17_tpl(in_intel_reserved_ffwd_33_0_17_tpl),
        .in_intel_reserved_ffwd_33_0_18_tpl(in_intel_reserved_ffwd_33_0_18_tpl),
        .in_intel_reserved_ffwd_33_0_19_tpl(in_intel_reserved_ffwd_33_0_19_tpl),
        .in_intel_reserved_ffwd_33_0_20_tpl(in_intel_reserved_ffwd_33_0_20_tpl),
        .in_intel_reserved_ffwd_33_0_21_tpl(in_intel_reserved_ffwd_33_0_21_tpl),
        .in_intel_reserved_ffwd_33_0_22_tpl(in_intel_reserved_ffwd_33_0_22_tpl),
        .in_intel_reserved_ffwd_33_0_23_tpl(in_intel_reserved_ffwd_33_0_23_tpl),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(cnn_top_B5_branch_out_stall_out),
        .in_too_i_0117(cnn_top_B5_merge_out_too_i_0117),
        .in_valid_in(cnn_top_B5_merge_out_valid_out),
        .out_intel_reserved_ffwd_38_0_0_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_0_tpl),
        .out_intel_reserved_ffwd_38_0_1_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_1_tpl),
        .out_intel_reserved_ffwd_38_0_2_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_2_tpl),
        .out_intel_reserved_ffwd_38_0_3_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_3_tpl),
        .out_intel_reserved_ffwd_38_0_4_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_4_tpl),
        .out_intel_reserved_ffwd_38_0_5_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_5_tpl),
        .out_intel_reserved_ffwd_38_0_6_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_6_tpl),
        .out_intel_reserved_ffwd_38_0_7_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_7_tpl),
        .out_intel_reserved_ffwd_38_0_8_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_8_tpl),
        .out_intel_reserved_ffwd_38_0_9_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_9_tpl),
        .out_intel_reserved_ffwd_38_0_10_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_10_tpl),
        .out_intel_reserved_ffwd_38_0_11_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_11_tpl),
        .out_intel_reserved_ffwd_38_0_12_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_12_tpl),
        .out_intel_reserved_ffwd_38_0_13_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_13_tpl),
        .out_intel_reserved_ffwd_38_0_14_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_14_tpl),
        .out_intel_reserved_ffwd_38_0_15_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_15_tpl),
        .out_intel_reserved_ffwd_38_0_16_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_16_tpl),
        .out_intel_reserved_ffwd_38_0_17_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_17_tpl),
        .out_intel_reserved_ffwd_38_0_18_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_18_tpl),
        .out_intel_reserved_ffwd_38_0_19_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_19_tpl),
        .out_intel_reserved_ffwd_38_0_20_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_20_tpl),
        .out_intel_reserved_ffwd_39_0_0_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_0_tpl),
        .out_intel_reserved_ffwd_39_0_1_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_1_tpl),
        .out_intel_reserved_ffwd_39_0_2_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_2_tpl),
        .out_intel_reserved_ffwd_39_0_3_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_3_tpl),
        .out_intel_reserved_ffwd_39_0_4_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_4_tpl),
        .out_intel_reserved_ffwd_39_0_5_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_5_tpl),
        .out_intel_reserved_ffwd_39_0_6_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_6_tpl),
        .out_intel_reserved_ffwd_39_0_7_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_7_tpl),
        .out_intel_reserved_ffwd_39_0_8_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_8_tpl),
        .out_intel_reserved_ffwd_39_0_9_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_9_tpl),
        .out_intel_reserved_ffwd_39_0_10_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_10_tpl),
        .out_intel_reserved_ffwd_39_0_11_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_11_tpl),
        .out_intel_reserved_ffwd_39_0_12_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_12_tpl),
        .out_intel_reserved_ffwd_39_0_13_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_13_tpl),
        .out_intel_reserved_ffwd_39_0_14_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_14_tpl),
        .out_intel_reserved_ffwd_39_0_15_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_15_tpl),
        .out_intel_reserved_ffwd_39_0_16_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_16_tpl),
        .out_intel_reserved_ffwd_39_0_17_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_17_tpl),
        .out_intel_reserved_ffwd_39_0_18_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_18_tpl),
        .out_intel_reserved_ffwd_39_0_19_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_19_tpl),
        .out_intel_reserved_ffwd_39_0_20_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_20_tpl),
        .out_intel_reserved_ffwd_40_0_0_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_0_tpl),
        .out_intel_reserved_ffwd_40_0_1_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_1_tpl),
        .out_intel_reserved_ffwd_40_0_2_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_2_tpl),
        .out_intel_reserved_ffwd_40_0_3_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_3_tpl),
        .out_intel_reserved_ffwd_40_0_4_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_4_tpl),
        .out_intel_reserved_ffwd_40_0_5_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_5_tpl),
        .out_intel_reserved_ffwd_40_0_6_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_6_tpl),
        .out_intel_reserved_ffwd_40_0_7_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_7_tpl),
        .out_intel_reserved_ffwd_40_0_8_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_8_tpl),
        .out_intel_reserved_ffwd_40_0_9_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_9_tpl),
        .out_intel_reserved_ffwd_40_0_10_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_10_tpl),
        .out_intel_reserved_ffwd_40_0_11_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_11_tpl),
        .out_intel_reserved_ffwd_40_0_12_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_12_tpl),
        .out_intel_reserved_ffwd_40_0_13_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_13_tpl),
        .out_intel_reserved_ffwd_40_0_14_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_14_tpl),
        .out_intel_reserved_ffwd_40_0_15_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_15_tpl),
        .out_intel_reserved_ffwd_40_0_16_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_16_tpl),
        .out_intel_reserved_ffwd_40_0_17_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_17_tpl),
        .out_intel_reserved_ffwd_40_0_18_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_18_tpl),
        .out_intel_reserved_ffwd_40_0_19_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_19_tpl),
        .out_intel_reserved_ffwd_41_0_0_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_0_tpl),
        .out_intel_reserved_ffwd_41_0_1_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_1_tpl),
        .out_intel_reserved_ffwd_41_0_2_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_2_tpl),
        .out_intel_reserved_ffwd_41_0_3_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_3_tpl),
        .out_intel_reserved_ffwd_41_0_4_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_4_tpl),
        .out_intel_reserved_ffwd_41_0_5_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_5_tpl),
        .out_intel_reserved_ffwd_41_0_6_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_6_tpl),
        .out_intel_reserved_ffwd_41_0_7_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_7_tpl),
        .out_intel_reserved_ffwd_41_0_8_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_8_tpl),
        .out_intel_reserved_ffwd_41_0_9_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_9_tpl),
        .out_intel_reserved_ffwd_41_0_10_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_10_tpl),
        .out_intel_reserved_ffwd_41_0_11_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_11_tpl),
        .out_intel_reserved_ffwd_41_0_12_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_12_tpl),
        .out_intel_reserved_ffwd_41_0_13_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_13_tpl),
        .out_intel_reserved_ffwd_41_0_14_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_14_tpl),
        .out_intel_reserved_ffwd_41_0_15_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_15_tpl),
        .out_intel_reserved_ffwd_41_0_16_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_16_tpl),
        .out_intel_reserved_ffwd_41_0_17_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_17_tpl),
        .out_intel_reserved_ffwd_41_0_18_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_18_tpl),
        .out_intel_reserved_ffwd_41_0_19_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_19_tpl),
        .out_intel_reserved_ffwd_42_0_0_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_0_tpl),
        .out_intel_reserved_ffwd_42_0_1_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_1_tpl),
        .out_intel_reserved_ffwd_42_0_2_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_2_tpl),
        .out_intel_reserved_ffwd_42_0_3_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_3_tpl),
        .out_intel_reserved_ffwd_42_0_4_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_4_tpl),
        .out_intel_reserved_ffwd_42_0_5_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_5_tpl),
        .out_intel_reserved_ffwd_42_0_6_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_6_tpl),
        .out_intel_reserved_ffwd_42_0_7_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_7_tpl),
        .out_intel_reserved_ffwd_42_0_8_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_8_tpl),
        .out_intel_reserved_ffwd_42_0_9_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_9_tpl),
        .out_intel_reserved_ffwd_42_0_10_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_10_tpl),
        .out_intel_reserved_ffwd_42_0_11_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_11_tpl),
        .out_intel_reserved_ffwd_42_0_12_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_12_tpl),
        .out_intel_reserved_ffwd_42_0_13_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_13_tpl),
        .out_intel_reserved_ffwd_42_0_14_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_14_tpl),
        .out_intel_reserved_ffwd_42_0_15_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_15_tpl),
        .out_intel_reserved_ffwd_42_0_16_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_16_tpl),
        .out_intel_reserved_ffwd_42_0_17_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_17_tpl),
        .out_intel_reserved_ffwd_42_0_18_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_18_tpl),
        .out_intel_reserved_ffwd_42_0_19_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_19_tpl),
        .out_intel_reserved_ffwd_42_0_20_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_20_tpl),
        .out_intel_reserved_ffwd_42_0_21_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_21_tpl),
        .out_intel_reserved_ffwd_42_0_22_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_22_tpl),
        .out_intel_reserved_ffwd_42_0_23_tpl(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_23_tpl),
        .out_intel_reserved_ffwd_37_0(bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_37_0),
        .out_pre(bb_cnn_top_B5_stall_region_out_pre),
        .out_stall_out(bb_cnn_top_B5_stall_region_out_stall_out),
        .out_valid_out(bb_cnn_top_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_38_0_0_tpl(GPOUT,133)
    assign out_intel_reserved_ffwd_38_0_0_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_0_tpl;

    // out_intel_reserved_ffwd_38_0_1_tpl(GPOUT,134)
    assign out_intel_reserved_ffwd_38_0_1_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_1_tpl;

    // out_intel_reserved_ffwd_38_0_2_tpl(GPOUT,135)
    assign out_intel_reserved_ffwd_38_0_2_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_2_tpl;

    // out_intel_reserved_ffwd_38_0_3_tpl(GPOUT,136)
    assign out_intel_reserved_ffwd_38_0_3_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_3_tpl;

    // out_intel_reserved_ffwd_38_0_4_tpl(GPOUT,137)
    assign out_intel_reserved_ffwd_38_0_4_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_4_tpl;

    // out_intel_reserved_ffwd_38_0_5_tpl(GPOUT,138)
    assign out_intel_reserved_ffwd_38_0_5_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_5_tpl;

    // out_intel_reserved_ffwd_38_0_6_tpl(GPOUT,139)
    assign out_intel_reserved_ffwd_38_0_6_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_6_tpl;

    // out_intel_reserved_ffwd_38_0_7_tpl(GPOUT,140)
    assign out_intel_reserved_ffwd_38_0_7_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_7_tpl;

    // out_intel_reserved_ffwd_38_0_8_tpl(GPOUT,141)
    assign out_intel_reserved_ffwd_38_0_8_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_8_tpl;

    // out_intel_reserved_ffwd_38_0_9_tpl(GPOUT,142)
    assign out_intel_reserved_ffwd_38_0_9_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_9_tpl;

    // out_intel_reserved_ffwd_38_0_10_tpl(GPOUT,143)
    assign out_intel_reserved_ffwd_38_0_10_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_10_tpl;

    // out_intel_reserved_ffwd_38_0_11_tpl(GPOUT,144)
    assign out_intel_reserved_ffwd_38_0_11_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_11_tpl;

    // out_intel_reserved_ffwd_38_0_12_tpl(GPOUT,145)
    assign out_intel_reserved_ffwd_38_0_12_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_12_tpl;

    // out_intel_reserved_ffwd_38_0_13_tpl(GPOUT,146)
    assign out_intel_reserved_ffwd_38_0_13_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_13_tpl;

    // out_intel_reserved_ffwd_38_0_14_tpl(GPOUT,147)
    assign out_intel_reserved_ffwd_38_0_14_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_14_tpl;

    // out_intel_reserved_ffwd_38_0_15_tpl(GPOUT,148)
    assign out_intel_reserved_ffwd_38_0_15_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_15_tpl;

    // out_intel_reserved_ffwd_38_0_16_tpl(GPOUT,149)
    assign out_intel_reserved_ffwd_38_0_16_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_16_tpl;

    // out_intel_reserved_ffwd_38_0_17_tpl(GPOUT,150)
    assign out_intel_reserved_ffwd_38_0_17_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_17_tpl;

    // out_intel_reserved_ffwd_38_0_18_tpl(GPOUT,151)
    assign out_intel_reserved_ffwd_38_0_18_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_18_tpl;

    // out_intel_reserved_ffwd_38_0_19_tpl(GPOUT,152)
    assign out_intel_reserved_ffwd_38_0_19_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_19_tpl;

    // out_intel_reserved_ffwd_38_0_20_tpl(GPOUT,153)
    assign out_intel_reserved_ffwd_38_0_20_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_38_0_20_tpl;

    // out_intel_reserved_ffwd_39_0_0_tpl(GPOUT,154)
    assign out_intel_reserved_ffwd_39_0_0_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_0_tpl;

    // out_intel_reserved_ffwd_39_0_1_tpl(GPOUT,155)
    assign out_intel_reserved_ffwd_39_0_1_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_1_tpl;

    // out_intel_reserved_ffwd_39_0_2_tpl(GPOUT,156)
    assign out_intel_reserved_ffwd_39_0_2_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_2_tpl;

    // out_intel_reserved_ffwd_39_0_3_tpl(GPOUT,157)
    assign out_intel_reserved_ffwd_39_0_3_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_3_tpl;

    // out_intel_reserved_ffwd_39_0_4_tpl(GPOUT,158)
    assign out_intel_reserved_ffwd_39_0_4_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_4_tpl;

    // out_intel_reserved_ffwd_39_0_5_tpl(GPOUT,159)
    assign out_intel_reserved_ffwd_39_0_5_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_5_tpl;

    // out_intel_reserved_ffwd_39_0_6_tpl(GPOUT,160)
    assign out_intel_reserved_ffwd_39_0_6_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_6_tpl;

    // out_intel_reserved_ffwd_39_0_7_tpl(GPOUT,161)
    assign out_intel_reserved_ffwd_39_0_7_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_7_tpl;

    // out_intel_reserved_ffwd_39_0_8_tpl(GPOUT,162)
    assign out_intel_reserved_ffwd_39_0_8_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_8_tpl;

    // out_intel_reserved_ffwd_39_0_9_tpl(GPOUT,163)
    assign out_intel_reserved_ffwd_39_0_9_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_9_tpl;

    // out_intel_reserved_ffwd_39_0_10_tpl(GPOUT,164)
    assign out_intel_reserved_ffwd_39_0_10_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_10_tpl;

    // out_intel_reserved_ffwd_39_0_11_tpl(GPOUT,165)
    assign out_intel_reserved_ffwd_39_0_11_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_11_tpl;

    // out_intel_reserved_ffwd_39_0_12_tpl(GPOUT,166)
    assign out_intel_reserved_ffwd_39_0_12_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_12_tpl;

    // out_intel_reserved_ffwd_39_0_13_tpl(GPOUT,167)
    assign out_intel_reserved_ffwd_39_0_13_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_13_tpl;

    // out_intel_reserved_ffwd_39_0_14_tpl(GPOUT,168)
    assign out_intel_reserved_ffwd_39_0_14_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_14_tpl;

    // out_intel_reserved_ffwd_39_0_15_tpl(GPOUT,169)
    assign out_intel_reserved_ffwd_39_0_15_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_15_tpl;

    // out_intel_reserved_ffwd_39_0_16_tpl(GPOUT,170)
    assign out_intel_reserved_ffwd_39_0_16_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_16_tpl;

    // out_intel_reserved_ffwd_39_0_17_tpl(GPOUT,171)
    assign out_intel_reserved_ffwd_39_0_17_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_17_tpl;

    // out_intel_reserved_ffwd_39_0_18_tpl(GPOUT,172)
    assign out_intel_reserved_ffwd_39_0_18_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_18_tpl;

    // out_intel_reserved_ffwd_39_0_19_tpl(GPOUT,173)
    assign out_intel_reserved_ffwd_39_0_19_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_19_tpl;

    // out_intel_reserved_ffwd_39_0_20_tpl(GPOUT,174)
    assign out_intel_reserved_ffwd_39_0_20_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_39_0_20_tpl;

    // out_intel_reserved_ffwd_40_0_0_tpl(GPOUT,175)
    assign out_intel_reserved_ffwd_40_0_0_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_0_tpl;

    // out_intel_reserved_ffwd_40_0_1_tpl(GPOUT,176)
    assign out_intel_reserved_ffwd_40_0_1_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_1_tpl;

    // out_intel_reserved_ffwd_40_0_2_tpl(GPOUT,177)
    assign out_intel_reserved_ffwd_40_0_2_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_2_tpl;

    // out_intel_reserved_ffwd_40_0_3_tpl(GPOUT,178)
    assign out_intel_reserved_ffwd_40_0_3_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_3_tpl;

    // out_intel_reserved_ffwd_40_0_4_tpl(GPOUT,179)
    assign out_intel_reserved_ffwd_40_0_4_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_4_tpl;

    // out_intel_reserved_ffwd_40_0_5_tpl(GPOUT,180)
    assign out_intel_reserved_ffwd_40_0_5_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_5_tpl;

    // out_intel_reserved_ffwd_40_0_6_tpl(GPOUT,181)
    assign out_intel_reserved_ffwd_40_0_6_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_6_tpl;

    // out_intel_reserved_ffwd_40_0_7_tpl(GPOUT,182)
    assign out_intel_reserved_ffwd_40_0_7_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_7_tpl;

    // out_intel_reserved_ffwd_40_0_8_tpl(GPOUT,183)
    assign out_intel_reserved_ffwd_40_0_8_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_8_tpl;

    // out_intel_reserved_ffwd_40_0_9_tpl(GPOUT,184)
    assign out_intel_reserved_ffwd_40_0_9_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_9_tpl;

    // out_intel_reserved_ffwd_40_0_10_tpl(GPOUT,185)
    assign out_intel_reserved_ffwd_40_0_10_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_10_tpl;

    // out_intel_reserved_ffwd_40_0_11_tpl(GPOUT,186)
    assign out_intel_reserved_ffwd_40_0_11_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_11_tpl;

    // out_intel_reserved_ffwd_40_0_12_tpl(GPOUT,187)
    assign out_intel_reserved_ffwd_40_0_12_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_12_tpl;

    // out_intel_reserved_ffwd_40_0_13_tpl(GPOUT,188)
    assign out_intel_reserved_ffwd_40_0_13_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_13_tpl;

    // out_intel_reserved_ffwd_40_0_14_tpl(GPOUT,189)
    assign out_intel_reserved_ffwd_40_0_14_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_14_tpl;

    // out_intel_reserved_ffwd_40_0_15_tpl(GPOUT,190)
    assign out_intel_reserved_ffwd_40_0_15_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_15_tpl;

    // out_intel_reserved_ffwd_40_0_16_tpl(GPOUT,191)
    assign out_intel_reserved_ffwd_40_0_16_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_16_tpl;

    // out_intel_reserved_ffwd_40_0_17_tpl(GPOUT,192)
    assign out_intel_reserved_ffwd_40_0_17_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_17_tpl;

    // out_intel_reserved_ffwd_40_0_18_tpl(GPOUT,193)
    assign out_intel_reserved_ffwd_40_0_18_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_18_tpl;

    // out_intel_reserved_ffwd_40_0_19_tpl(GPOUT,194)
    assign out_intel_reserved_ffwd_40_0_19_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_40_0_19_tpl;

    // out_intel_reserved_ffwd_41_0_0_tpl(GPOUT,195)
    assign out_intel_reserved_ffwd_41_0_0_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_0_tpl;

    // out_intel_reserved_ffwd_41_0_1_tpl(GPOUT,196)
    assign out_intel_reserved_ffwd_41_0_1_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_1_tpl;

    // out_intel_reserved_ffwd_41_0_2_tpl(GPOUT,197)
    assign out_intel_reserved_ffwd_41_0_2_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_2_tpl;

    // out_intel_reserved_ffwd_41_0_3_tpl(GPOUT,198)
    assign out_intel_reserved_ffwd_41_0_3_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_3_tpl;

    // out_intel_reserved_ffwd_41_0_4_tpl(GPOUT,199)
    assign out_intel_reserved_ffwd_41_0_4_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_4_tpl;

    // out_intel_reserved_ffwd_41_0_5_tpl(GPOUT,200)
    assign out_intel_reserved_ffwd_41_0_5_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_5_tpl;

    // out_intel_reserved_ffwd_41_0_6_tpl(GPOUT,201)
    assign out_intel_reserved_ffwd_41_0_6_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_6_tpl;

    // out_intel_reserved_ffwd_41_0_7_tpl(GPOUT,202)
    assign out_intel_reserved_ffwd_41_0_7_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_7_tpl;

    // out_intel_reserved_ffwd_41_0_8_tpl(GPOUT,203)
    assign out_intel_reserved_ffwd_41_0_8_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_8_tpl;

    // out_intel_reserved_ffwd_41_0_9_tpl(GPOUT,204)
    assign out_intel_reserved_ffwd_41_0_9_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_9_tpl;

    // out_intel_reserved_ffwd_41_0_10_tpl(GPOUT,205)
    assign out_intel_reserved_ffwd_41_0_10_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_10_tpl;

    // out_intel_reserved_ffwd_41_0_11_tpl(GPOUT,206)
    assign out_intel_reserved_ffwd_41_0_11_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_11_tpl;

    // out_intel_reserved_ffwd_41_0_12_tpl(GPOUT,207)
    assign out_intel_reserved_ffwd_41_0_12_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_12_tpl;

    // out_intel_reserved_ffwd_41_0_13_tpl(GPOUT,208)
    assign out_intel_reserved_ffwd_41_0_13_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_13_tpl;

    // out_intel_reserved_ffwd_41_0_14_tpl(GPOUT,209)
    assign out_intel_reserved_ffwd_41_0_14_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_14_tpl;

    // out_intel_reserved_ffwd_41_0_15_tpl(GPOUT,210)
    assign out_intel_reserved_ffwd_41_0_15_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_15_tpl;

    // out_intel_reserved_ffwd_41_0_16_tpl(GPOUT,211)
    assign out_intel_reserved_ffwd_41_0_16_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_16_tpl;

    // out_intel_reserved_ffwd_41_0_17_tpl(GPOUT,212)
    assign out_intel_reserved_ffwd_41_0_17_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_17_tpl;

    // out_intel_reserved_ffwd_41_0_18_tpl(GPOUT,213)
    assign out_intel_reserved_ffwd_41_0_18_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_18_tpl;

    // out_intel_reserved_ffwd_41_0_19_tpl(GPOUT,214)
    assign out_intel_reserved_ffwd_41_0_19_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_41_0_19_tpl;

    // out_intel_reserved_ffwd_42_0_0_tpl(GPOUT,215)
    assign out_intel_reserved_ffwd_42_0_0_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_0_tpl;

    // out_intel_reserved_ffwd_42_0_1_tpl(GPOUT,216)
    assign out_intel_reserved_ffwd_42_0_1_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_1_tpl;

    // out_intel_reserved_ffwd_42_0_2_tpl(GPOUT,217)
    assign out_intel_reserved_ffwd_42_0_2_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_2_tpl;

    // out_intel_reserved_ffwd_42_0_3_tpl(GPOUT,218)
    assign out_intel_reserved_ffwd_42_0_3_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_3_tpl;

    // out_intel_reserved_ffwd_42_0_4_tpl(GPOUT,219)
    assign out_intel_reserved_ffwd_42_0_4_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_4_tpl;

    // out_intel_reserved_ffwd_42_0_5_tpl(GPOUT,220)
    assign out_intel_reserved_ffwd_42_0_5_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_5_tpl;

    // out_intel_reserved_ffwd_42_0_6_tpl(GPOUT,221)
    assign out_intel_reserved_ffwd_42_0_6_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_6_tpl;

    // out_intel_reserved_ffwd_42_0_7_tpl(GPOUT,222)
    assign out_intel_reserved_ffwd_42_0_7_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_7_tpl;

    // out_intel_reserved_ffwd_42_0_8_tpl(GPOUT,223)
    assign out_intel_reserved_ffwd_42_0_8_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_8_tpl;

    // out_intel_reserved_ffwd_42_0_9_tpl(GPOUT,224)
    assign out_intel_reserved_ffwd_42_0_9_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_9_tpl;

    // out_intel_reserved_ffwd_42_0_10_tpl(GPOUT,225)
    assign out_intel_reserved_ffwd_42_0_10_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_10_tpl;

    // out_intel_reserved_ffwd_42_0_11_tpl(GPOUT,226)
    assign out_intel_reserved_ffwd_42_0_11_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_11_tpl;

    // out_intel_reserved_ffwd_42_0_12_tpl(GPOUT,227)
    assign out_intel_reserved_ffwd_42_0_12_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_12_tpl;

    // out_intel_reserved_ffwd_42_0_13_tpl(GPOUT,228)
    assign out_intel_reserved_ffwd_42_0_13_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_13_tpl;

    // out_intel_reserved_ffwd_42_0_14_tpl(GPOUT,229)
    assign out_intel_reserved_ffwd_42_0_14_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_14_tpl;

    // out_intel_reserved_ffwd_42_0_15_tpl(GPOUT,230)
    assign out_intel_reserved_ffwd_42_0_15_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_15_tpl;

    // out_intel_reserved_ffwd_42_0_16_tpl(GPOUT,231)
    assign out_intel_reserved_ffwd_42_0_16_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_16_tpl;

    // out_intel_reserved_ffwd_42_0_17_tpl(GPOUT,232)
    assign out_intel_reserved_ffwd_42_0_17_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_17_tpl;

    // out_intel_reserved_ffwd_42_0_18_tpl(GPOUT,233)
    assign out_intel_reserved_ffwd_42_0_18_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_18_tpl;

    // out_intel_reserved_ffwd_42_0_19_tpl(GPOUT,234)
    assign out_intel_reserved_ffwd_42_0_19_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_19_tpl;

    // out_intel_reserved_ffwd_42_0_20_tpl(GPOUT,235)
    assign out_intel_reserved_ffwd_42_0_20_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_20_tpl;

    // out_intel_reserved_ffwd_42_0_21_tpl(GPOUT,236)
    assign out_intel_reserved_ffwd_42_0_21_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_21_tpl;

    // out_intel_reserved_ffwd_42_0_22_tpl(GPOUT,237)
    assign out_intel_reserved_ffwd_42_0_22_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_22_tpl;

    // out_intel_reserved_ffwd_42_0_23_tpl(GPOUT,238)
    assign out_intel_reserved_ffwd_42_0_23_tpl = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_42_0_23_tpl;

    // out_intel_reserved_ffwd_37_0(GPOUT,239)
    assign out_intel_reserved_ffwd_37_0 = bb_cnn_top_B5_stall_region_out_intel_reserved_ffwd_37_0;

    // out_pre(GPOUT,240)
    assign out_pre = cnn_top_B5_branch_out_pre;

    // out_stall_out_0(GPOUT,241)
    assign out_stall_out_0 = cnn_top_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,242)
    assign out_stall_out_1 = cnn_top_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,243)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,244)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,245)
    assign out_valid_out_0 = cnn_top_B5_branch_out_valid_out_0;

endmodule
