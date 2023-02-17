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

// SystemVerilog created from cnn_top_bb_conv_process_B1_start_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B1_start_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire [831:0] in_iord_bl_call_conv_process_i_fifodata,
    input wire [0:0] in_iord_bl_call_conv_process_i_fifovalid,
    output wire [0:0] out_iord_bl_call_conv_process_o_fifoready,
    output wire [0:0] out_iord_bl_call_conv_process_o_fifoalmost_full,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add3_conv_process7_sel_x_b;
    wire [31:0] bgTrunc_i_add5_conv_process8_sel_x_b;
    wire [31:0] bgTrunc_i_add_conv_process6_sel_x_b;
    wire [63:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_20_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_22_tpl;
    wire [31:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoready;
    wire [0:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_valid;
    wire [0:0] conv_process_B1_start_merge_reg_out_stall_out;
    wire [0:0] conv_process_B1_start_merge_reg_out_valid_out;
    wire [32:0] i_add3_conv_process7_a;
    wire [32:0] i_add3_conv_process7_b;
    logic [32:0] i_add3_conv_process7_o;
    wire [32:0] i_add3_conv_process7_q;
    wire [32:0] i_add5_conv_process8_a;
    wire [32:0] i_add5_conv_process8_b;
    logic [32:0] i_add5_conv_process8_o;
    wire [32:0] i_add5_conv_process8_q;
    wire [32:0] i_add_conv_process6_a;
    wire [32:0] i_add_conv_process6_b;
    logic [32:0] i_add_conv_process6_o;
    wire [32:0] i_add_conv_process6_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_valid_out;
    wire [3:0] i_mul_conv_process5_vt_const_3_q;
    wire [31:0] i_mul_conv_process5_vt_join_q;
    wire [27:0] i_mul_conv_process5_vt_select_31_b;
    wire [27:0] leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid117_i_mul_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid119_i_mul_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid119_i_mul_conv_process0_shift_x_q;
    wire [63:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    reg [63:0] coalesced_delay_0_0_q;
    wire [575:0] bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_f;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_l;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_m;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_n;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_o;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_p;
    wire [31:0] bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_b;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg6;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed6;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg7;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed7;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg8;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed8;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg9;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed9;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg10;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed10;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg11;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg11;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed11;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg12;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg12;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed12;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg13;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg13;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed13;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg14;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg14;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed14;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg15;
    reg [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg15;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed15;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or5;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or6;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or7;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or8;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or9;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or10;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or11;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or12;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or13;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or14;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V5;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V6;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V7;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V8;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V9;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V10;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V11;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V12;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V13;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V14;
    wire [0:0] SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V15;
    wire [0:0] SE_out_conv_process_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_conv_process_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_conv_process_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and9;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and10;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and11;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and12;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and13;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and14;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_V0;


    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23(STALLENABLE,173)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg(STALLENABLE,254)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_V0 = SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_backStall = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_wireValid = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg(STALLENABLE,248)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17(STALLENABLE,163)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_V0 = SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_backStall = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_wireValid = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg(STALLENABLE,249)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21(STALLENABLE,171)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg(STALLENABLE,253)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20(STALLENABLE,169)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg(STALLENABLE,252)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg(STALLENABLE,251)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18(STALLENABLE,165)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg(STALLENABLE,250)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16(STALLENABLE,187)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg(STALLENABLE,260)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15(STALLENABLE,185)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg(STALLENABLE,259)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14(STALLENABLE,183)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg(STALLENABLE,258)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13(STALLENABLE,181)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg(STALLENABLE,257)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12(STALLENABLE,179)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg(STALLENABLE,256)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11(STALLENABLE,177)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg(STALLENABLE,255)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10(STALLENABLE,191)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_V0 = SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_wireValid = i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg(STALLENABLE,262)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9(STALLENABLE,189)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_V0 = SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_wireValid = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg(STALLENABLE,261)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall & bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24(STALLENABLE,175)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and3 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and5 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and6 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and7 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and8 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and7;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and9 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and8;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and10 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and9;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and11 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and10;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and12 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and11;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and13 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and12;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and14 = bubble_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and13;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_and14;

    // leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x(BITSELECT,115)@2
    assign leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_in = bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d[27:0];
    assign leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_b = leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_in[27:0];

    // leftShiftStage0Idx1_uid117_i_mul_conv_process0_shift_x(BITJOIN,116)@2
    assign leftShiftStage0Idx1_uid117_i_mul_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng4_uid116_i_mul_conv_process0_shift_x_b, i_mul_conv_process5_vt_const_3_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid119_i_mul_conv_process0_shift_x(MUX,118)@2
    assign leftShiftStage0_uid119_i_mul_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid119_i_mul_conv_process0_shift_x_s or bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d or leftShiftStage0Idx1_uid117_i_mul_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid119_i_mul_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid119_i_mul_conv_process0_shift_x_q = bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d;
            1'b1 : leftShiftStage0_uid119_i_mul_conv_process0_shift_x_q = leftShiftStage0Idx1_uid117_i_mul_conv_process0_shift_x_q;
            default : leftShiftStage0_uid119_i_mul_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_conv_process5_vt_select_31(BITSELECT,63)@2
    assign i_mul_conv_process5_vt_select_31_b = leftShiftStage0_uid119_i_mul_conv_process0_shift_x_q[31:4];

    // i_mul_conv_process5_vt_const_3(CONSTANT,61)
    assign i_mul_conv_process5_vt_const_3_q = $unsigned(4'b0000);

    // i_mul_conv_process5_vt_join(BITJOIN,62)@2
    assign i_mul_conv_process5_vt_join_q = {i_mul_conv_process5_vt_select_31_b, i_mul_conv_process5_vt_const_3_q};

    // i_add3_conv_process7(ADD,41)@2
    assign i_add3_conv_process7_a = {1'b0, bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_j};
    assign i_add3_conv_process7_b = {1'b0, i_mul_conv_process5_vt_join_q};
    assign i_add3_conv_process7_o = $unsigned(i_add3_conv_process7_a) + $unsigned(i_add3_conv_process7_b);
    assign i_add3_conv_process7_q = i_add3_conv_process7_o[32:0];

    // bgTrunc_i_add3_conv_process7_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_add3_conv_process7_sel_x_b = i_add3_conv_process7_q[31:0];

    // join_for_coalesced_delay_0(BITJOIN,123)
    assign join_for_coalesced_delay_0_q = {bgTrunc_i_add3_conv_process7_sel_x_b, bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_h};

    // coalesced_delay_0_0(REG,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,124)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);

    // i_add5_conv_process8(ADD,42)@3
    assign i_add5_conv_process8_a = {1'b0, sel_for_coalesced_delay_0_c};
    assign i_add5_conv_process8_b = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_add5_conv_process8_o = $unsigned(i_add5_conv_process8_a) + $unsigned(i_add5_conv_process8_b);
    assign i_add5_conv_process8_q = i_add5_conv_process8_o[32:0];

    // bgTrunc_i_add5_conv_process8_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_add5_conv_process8_sel_x_b = i_add5_conv_process8_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24(BLACKBOX,51)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess16_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bgTrunc_i_add5_conv_process8_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V0),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,203)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_stall_out & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V15;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_add_conv_process6(ADD,43)@2
    assign i_add_conv_process6_a = {1'b0, bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_h};
    assign i_add_conv_process6_b = {1'b0, i_mul_conv_process5_vt_join_q};
    assign i_add_conv_process6_o = $unsigned(i_add_conv_process6_a) + $unsigned(i_add_conv_process6_b);
    assign i_add_conv_process6_q = i_add_conv_process6_o[32:0];

    // bgTrunc_i_add_conv_process6_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_add_conv_process6_sel_x_b = i_add_conv_process6_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23(BLACKBOX,50)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess15_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(bgTrunc_i_add_conv_process6_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V14),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10(BLACKBOX,59)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1029s_c0000ocess2_conv_process0 thei_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V13),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9(BLACKBOX,58)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1027s_c0000ocess1_conv_process0 thei_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V12),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16(BLACKBOX,57)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess8_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_n),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V11),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15(BLACKBOX,56)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess7_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_l),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V10),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14(BLACKBOX,55)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess6_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_g),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V9),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13(BLACKBOX,54)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess5_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_f),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V8),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12(BLACKBOX,53)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess4_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_e),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V7),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11(BLACKBOX,52)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ocess3_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V6),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21(BLACKBOX,49)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess13_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_o),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V5),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20(BLACKBOX,48)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess12_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_m),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V4),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18(BLACKBOX,46)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess10_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_i),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V2),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17(BLACKBOX,45)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000ocess9_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_p),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V1),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22(BLACKBOX,44)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess14_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V0),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,196)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // conv_process_B1_start_merge_reg(BLACKBOX,33)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B1_start_merge_reg theconv_process_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_conv_process_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(conv_process_B1_start_merge_reg_out_stall_out),
        .out_valid_out(conv_process_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B1_start_merge_reg(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_conv_process_B1_start_merge_reg_V0 = SE_out_conv_process_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_conv_process_B1_start_merge_reg_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_stall_out | ~ (SE_out_conv_process_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B1_start_merge_reg_wireValid = conv_process_B1_start_merge_reg_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0(BLACKBOX,60)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_backStall),
        .in_valid_in(SE_out_conv_process_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0(STALLENABLE,193)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_backStall = i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0(BITJOIN,147)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0(BITSELECT,148)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_q[0:0]);

    // i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x(BLACKBOX,21)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_conv_process_o_fifoalmost_full@20000000
    // out out_iord_bl_call_conv_process_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_call_conv_process_unna0000ocess0_conv_process0 thei_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_b),
        .in_i_stall(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_V0),
        .in_iord_bl_call_conv_process_i_fifodata(in_iord_bl_call_conv_process_i_fifodata),
        .in_iord_bl_call_conv_process_i_fifovalid(in_iord_bl_call_conv_process_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(),
        .out_o_data_7_tpl(),
        .out_o_data_8_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(),
        .out_o_data_11_tpl(),
        .out_o_data_12_tpl(),
        .out_o_data_13_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(),
        .out_o_data_18_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(),
        .out_o_data_20_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(),
        .out_o_data_22_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_23_tpl),
        .out_iord_bl_call_conv_process_o_fifoalmost_full(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoalmost_full),
        .out_iord_bl_call_conv_process_o_fifoready(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoready),
        .out_o_stall(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x(STALLENABLE,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg5 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg6 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg7 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg8 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg9 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg10 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg11 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg12 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg13 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg14 <= '0;
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg15 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg5 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg6 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg7 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg8 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg9 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg10 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg10;
            // Successor 11
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg11 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg11;
            // Successor 12
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg12 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg12;
            // Successor 13
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg13 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg13;
            // Successor 14
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg14 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg14;
            // Successor 15
            SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg15 <= SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg15;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg5;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg6;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg7;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg8;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg9;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg10;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed11 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg11;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed12 = (~ (i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg12;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed13 = (~ (i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg13;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed14 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_stall_out) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg14;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed15 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg15;
    // Consuming
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_backStall & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg0 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg1 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg2 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg3 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg4 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg5 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed5;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg6 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed6;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg7 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed7;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg8 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed8;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg9 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed9;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg10 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed10;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg11 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed11;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg12 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed12;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg13 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed13;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg14 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed14;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_toReg15 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_StallValid & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed15;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or0 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or1 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed1 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or2 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed2 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or3 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed3 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or4 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed4 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or3;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or5 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed5 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or4;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or6 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed6 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or5;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or7 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed7 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or6;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or8 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed8 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or7;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or9 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed9 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or8;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or10 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed10 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or9;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or11 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed11 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or10;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or12 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed12 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or11;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or13 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed13 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or12;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or14 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed14 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or13;
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_consumed15 & SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_or14);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_backStall = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V0 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V1 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V2 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V3 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V4 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V5 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg5);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V6 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg6);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V7 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg7);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V8 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg8);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V9 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg9);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V10 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg10);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V11 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg11);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V12 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg12);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V13 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg13);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V14 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg14);
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V15 = SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_fromReg15);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_wireValid = i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19(STALLENABLE,167)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_valid_out;

    // bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x(BITJOIN,127)
    assign bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q = {i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_23_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_22_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_20_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_18_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_16_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_15_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_14_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_13_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_9_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_8_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_5_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x(BITSELECT,128)
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[159:128]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[191:160]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[223:192]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[255:224]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[287:256]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[319:288]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[351:320]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[383:352]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[415:384]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_m = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[447:416]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_n = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[479:448]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_o = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[511:480]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_p = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[543:512]);
    assign bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q = $unsigned(bubble_join_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_q[575:544]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19(BLACKBOX,47)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess11_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bubble_select_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_k),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_V3),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process11_conv_process19_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,6)@3
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_V0;

    // dupName_1_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process12_conv_process20_out_intel_reserved_ffwd_11_0;

    // dupName_2_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process13_conv_process21_out_intel_reserved_ffwd_12_0;

    // dupName_3_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process14_conv_process22_out_intel_reserved_ffwd_13_0;

    // dupName_4_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process15_conv_process23_out_intel_reserved_ffwd_14_0;

    // dupName_5_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process16_conv_process24_out_intel_reserved_ffwd_15_0;

    // dupName_6_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_conv_process2_conv_process10_out_intel_reserved_ffwd_1_0;

    // dupName_7_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process3_conv_process11_out_intel_reserved_ffwd_2_0;

    // dupName_8_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process4_conv_process12_out_intel_reserved_ffwd_3_0;

    // dupName_9_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process5_conv_process13_out_intel_reserved_ffwd_4_0;

    // dupName_10_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process6_conv_process14_out_intel_reserved_ffwd_5_0;

    // dupName_11_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process7_conv_process15_out_intel_reserved_ffwd_6_0;

    // dupName_12_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process8_conv_process16_out_intel_reserved_ffwd_7_0;

    // dupName_13_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process9_conv_process17_out_intel_reserved_ffwd_8_0;

    // dupName_14_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process10_conv_process18_out_intel_reserved_ffwd_9_0;

    // ext_sig_sync_out(GPOUT,37)
    assign out_iord_bl_call_conv_process_o_fifoready = i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoready;
    assign out_iord_bl_call_conv_process_o_fifoalmost_full = i_iord_bl_call_conv_process_unnamed_conv_process0_conv_process1_aunroll_x_out_iord_bl_call_conv_process_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,39)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_conv_process0_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,102)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_conv_process1_conv_process9_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,106)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
