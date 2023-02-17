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

// SystemVerilog created from cnn_top_bb_load_weight1_B1_start_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B1_start_stall_region (
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [32:0] out_intel_reserved_ffwd_14_0,
    output wire [32:0] out_intel_reserved_ffwd_15_0,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    input wire [703:0] in_iord_bl_call_load_weight1_i_fifodata,
    input wire [0:0] in_iord_bl_call_load_weight1_i_fifovalid,
    output wire [0:0] out_iord_bl_call_load_weight1_o_fifoready,
    output wire [0:0] out_iord_bl_call_load_weight1_o_fifoalmost_full,
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
    wire [63:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_4_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_10_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_11_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_12_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_13_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_14_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_15_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_16_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_17_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_18_tpl;
    wire [31:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_19_tpl;
    wire [0:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoready;
    wire [0:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [32:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [32:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [32:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_valid_out;
    wire [0:0] load_weight1_B1_start_merge_reg_out_stall_out;
    wire [0:0] load_weight1_B1_start_merge_reg_out_valid_out;
    wire [671:0] bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_f;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_l;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_m;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_n;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_o;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_p;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_r;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_s;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_t;
    wire [31:0] bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_u;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_b;
    wire [0:0] SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_V0;
    wire [0:0] SE_out_load_weight1_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_load_weight1_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_load_weight1_B1_start_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,64)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_weight1_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // load_weight1_B1_start_merge_reg(BLACKBOX,36)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_weight1_B1_start_merge_reg theload_weight1_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_load_weight1_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(load_weight1_B1_start_merge_reg_out_stall_out),
        .out_valid_out(load_weight1_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_weight1_B1_start_merge_reg(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_load_weight1_B1_start_merge_reg_V0 = SE_out_load_weight1_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_load_weight1_B1_start_merge_reg_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_stall_out | ~ (SE_out_load_weight1_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_load_weight1_B1_start_merge_reg_wireValid = load_weight1_B1_start_merge_reg_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10 thei_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_backStall),
        .in_valid_in(SE_out_load_weight1_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10(STALLENABLE,61)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_backStall = i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10(BITJOIN,52)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10(BITSELECT,53)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_q[0:0]);

    // i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x(BLACKBOX,19)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_load_weight1_o_fifoalmost_full@20000000
    // out out_iord_bl_call_load_weight1_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_call_load_weight1_unna0000ight10_load_weight10 thei_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_b),
        .in_i_stall(SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_V0),
        .in_iord_bl_call_load_weight1_i_fifodata(in_iord_bl_call_load_weight1_i_fifodata),
        .in_iord_bl_call_load_weight1_i_fifovalid(in_iord_bl_call_load_weight1_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_19_tpl),
        .out_iord_bl_call_load_weight1_o_fifoalmost_full(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoalmost_full),
        .out_iord_bl_call_load_weight1_o_fifoready(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoready),
        .out_o_stall(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x(STALLENABLE,57)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_V0 = SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_wireValid = i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_valid;

    // SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x(BITJOIN,48)
    assign bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q = {i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_19_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_18_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_17_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_16_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_15_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_14_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_13_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_12_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_11_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_10_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_9_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_8_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_7_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_6_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_5_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x(BITSELECT,49)
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[95:64]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[127:96]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[159:128]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[191:160]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[223:192]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[255:224]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[287:256]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[319:288]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[351:320]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[383:352]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_m = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[415:384]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_n = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[447:416]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_o = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[479:448]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_p = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[511:480]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[543:512]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_r = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[575:544]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_s = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[607:576]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_t = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[639:608]);
    assign bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_u = $unsigned(bubble_join_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q[671:640]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x(BLACKBOX,20)@2
    // in in_i_stall@20000000
    // out out_c0_exit_0_tpl@9
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    cnn_top_i_sfc_s_c0_in_wt_entry_load_weig0000nter12_load_weight13 thei_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_b),
        .in_c0_eni1_2_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_c),
        .in_c0_eni1_3_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_d),
        .in_c0_eni1_4_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_e),
        .in_c0_eni1_5_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_f),
        .in_c0_eni1_6_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_g),
        .in_c0_eni1_7_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_h),
        .in_c0_eni1_8_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_i),
        .in_c0_eni1_9_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_j),
        .in_c0_eni1_10_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_k),
        .in_c0_eni1_11_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_l),
        .in_c0_eni1_12_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_m),
        .in_c0_eni1_13_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_n),
        .in_c0_eni1_14_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_o),
        .in_c0_eni1_15_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_p),
        .in_c0_eni1_16_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_q),
        .in_c0_eni1_17_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_r),
        .in_c0_eni1_18_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_s),
        .in_c0_eni1_19_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_t),
        .in_c0_eni1_20_tpl(bubble_select_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_u),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_V0),
        .out_c0_exit_0_tpl(),
        .out_intel_reserved_ffwd_0_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,3)@9
    assign out_valid_out = SE_out_i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_V0;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_11_0;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_8_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_9_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_10_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_11_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_12_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_13_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_14_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_15_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_9_0;

    // ext_sig_sync_out(GPOUT,27)
    assign out_iord_bl_call_load_weight1_o_fifoready = i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoready;
    assign out_iord_bl_call_load_weight1_o_fifoalmost_full = i_iord_bl_call_load_weight1_unnamed_load_weight10_load_weight11_aunroll_x_out_iord_bl_call_load_weight1_o_fifoalmost_full;

    // feedback_stall_out_1_sync(GPOUT,29)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_load_weight10_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,41)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_s_c0_in_wt_entry_load_weight1s_c0_enter12_load_weight13_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,45)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
