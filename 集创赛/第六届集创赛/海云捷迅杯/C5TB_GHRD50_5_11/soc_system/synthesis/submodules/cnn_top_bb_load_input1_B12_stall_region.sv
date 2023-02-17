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

// SystemVerilog created from cnn_top_bb_load_input1_B12_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B12_stall_region (
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe2257,
    output wire [31:0] out_c0_exe3258,
    output wire [31:0] out_c0_exe4259,
    output wire [0:0] out_c0_exe5260,
    output wire [0:0] out_c0_exe6261,
    output wire [31:0] out_c0_exe7262,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked50,
    input wire [31:0] in_kh_080_pop21132,
    input wire [31:0] in_li_082126,
    input wire [31:0] in_li_08298_pop22137,
    input wire [0:0] in_notcmp89127,
    input wire [0:0] in_pop23142,
    input wire [0:0] in_unnamed_load_input145,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_pipeline_valid_out;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_input1_B12_merge_reg_aunroll_x_out_valid_out;
    wire [197:0] bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_m;
    wire [99:0] bubble_join_load_input1_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_load_input1_B12_merge_reg_aunroll_x_h;
    wire [99:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_V0;
    wire [0:0] SE_out_load_input1_B12_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_input1_B12_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_input1_B12_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_input1_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,30)
    assign bubble_join_stall_entry_q = {in_unnamed_load_input145, in_pop23142, in_notcmp89127, in_li_08298_pop22137, in_li_082126, in_kh_080_pop21132, in_forked50};

    // bubble_select_stall_entry(BITSELECT,31)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);

    // load_input1_B12_merge_reg_aunroll_x(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_input1_B12_merge_reg theload_input1_B12_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_load_input1_B12_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(load_input1_B12_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_stall_out(load_input1_B12_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_input1_B12_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_input1_B12_merge_reg_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_load_input1_B12_merge_reg_aunroll_x_V0 = SE_out_load_input1_B12_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_load_input1_B12_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_stall | ~ (SE_out_load_input1_B12_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_load_input1_B12_merge_reg_aunroll_x_wireValid = load_input1_B12_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_load_input1_B12_merge_reg_aunroll_x(BITJOIN,26)
    assign bubble_join_load_input1_B12_merge_reg_aunroll_x_q = {load_input1_B12_merge_reg_aunroll_x_out_data_out_6_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_5_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_4_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_3_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_2_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_1_tpl, load_input1_B12_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_input1_B12_merge_reg_aunroll_x(BITSELECT,27)
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_d = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_e = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_f = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[66:35]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_g = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_load_input1_B12_merge_reg_aunroll_x_h = $unsigned(bubble_join_load_input1_B12_merge_reg_aunroll_x_q[99:99]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x(BLACKBOX,3)@1
    // in in_i_stall@20000000
    // out out_c0_exit255_0_tpl@5
    // out out_c0_exit255_1_tpl@5
    // out out_c0_exit255_2_tpl@5
    // out out_c0_exit255_3_tpl@5
    // out out_c0_exit255_4_tpl@5
    // out out_c0_exit255_5_tpl@5
    // out out_c0_exit255_6_tpl@5
    // out out_c0_exit255_7_tpl@5
    // out out_c0_exit255_8_tpl@5
    // out out_c0_exit255_9_tpl@5
    // out out_c0_exit255_10_tpl@5
    // out out_c0_exit255_11_tpl@5
    // out out_c0_exit255_12_tpl@5
    // out out_c0_exit255_13_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond59_prehead0000er24217_load_input11 thei_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x (
        .in_c0_eni7_0_tpl(GND_q),
        .in_c0_eni7_1_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_b),
        .in_c0_eni7_2_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_g),
        .in_c0_eni7_3_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_h),
        .in_c0_eni7_4_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_e),
        .in_c0_eni7_5_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_f),
        .in_c0_eni7_6_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_c),
        .in_c0_eni7_7_tpl(bubble_select_load_input1_B12_merge_reg_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_backStall),
        .in_i_valid(SE_out_load_input1_B12_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit255_0_tpl(),
        .out_c0_exit255_1_tpl(),
        .out_c0_exit255_2_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_2_tpl),
        .out_c0_exit255_3_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_3_tpl),
        .out_c0_exit255_4_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_4_tpl),
        .out_c0_exit255_5_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_5_tpl),
        .out_c0_exit255_6_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_6_tpl),
        .out_c0_exit255_7_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_7_tpl),
        .out_c0_exit255_8_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_8_tpl),
        .out_c0_exit255_9_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_9_tpl),
        .out_c0_exit255_10_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_10_tpl),
        .out_c0_exit255_11_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_11_tpl),
        .out_c0_exit255_12_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_12_tpl),
        .out_c0_exit255_13_tpl(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_13_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q = {i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_13_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_12_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_11_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_10_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_9_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_8_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_7_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_6_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_5_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_4_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_3_tpl, i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_c0_exit255_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[164:133]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[196:165]);
    assign bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_q[197:197]);

    // dupName_0_sync_out_x(GPOUT,2)@5
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_k;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_l;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_m;
    assign out_c0_exe2257 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_b;
    assign out_c0_exe3258 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_c;
    assign out_c0_exe4259 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_d;
    assign out_c0_exe5260 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_e;
    assign out_c0_exe6261 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_f;
    assign out_c0_exe7262 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out = i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out = i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,14)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond59_preheader_load_input1s_c0_enter24217_load_input11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
