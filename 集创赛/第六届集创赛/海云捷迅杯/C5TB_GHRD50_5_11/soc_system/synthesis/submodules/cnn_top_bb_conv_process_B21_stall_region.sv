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

// SystemVerilog created from cnn_top_bb_conv_process_B21_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B21_stall_region (
    output wire [0:0] out_c0_exe10908,
    output wire [0:0] out_c0_exe11909,
    output wire [0:0] out_c0_exe12910,
    output wire [0:0] out_c0_exe13911,
    output wire [0:0] out_c0_exe14912,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2900,
    output wire [31:0] out_c0_exe3901,
    output wire [0:0] out_c0_exe4902,
    output wire [0:0] out_c0_exe5903,
    output wire [0:0] out_c0_exe6904,
    output wire [0:0] out_c0_exe7905,
    output wire [0:0] out_c0_exe8906,
    output wire [0:0] out_c0_exe9907,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [32:0] in_intel_reserved_ffwd_57_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked126,
    input wire [0:0] in_lnot281_pop74641,
    input wire [0:0] in_lnot282_pop83652,
    input wire [0:0] in_lnot283_pop99661,
    input wire [0:0] in_lnot626,
    input wire [0:0] in_notcmp198658,
    input wire [0:0] in_notcmp202299_pop101667,
    input wire [0:0] in_notcmp202647,
    input wire [0:0] in_notcmp206292_pop84657,
    input wire [0:0] in_notcmp206293_pop100664,
    input wire [0:0] in_notcmp206634,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv_process_B21_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_pipeline_valid_out;
    wire [10:0] bubble_join_conv_process_B21_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_conv_process_B21_merge_reg_aunroll_x_l;
    wire [46:0] bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q;
    wire [10:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] SE_out_conv_process_B21_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv_process_B21_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv_process_B21_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,37)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B21_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,30)
    assign bubble_join_stall_entry_q = {in_notcmp206634, in_notcmp206293_pop100664, in_notcmp206292_pop84657, in_notcmp202647, in_notcmp202299_pop101667, in_notcmp198658, in_lnot626, in_lnot283_pop99661, in_lnot282_pop83652, in_lnot281_pop74641, in_forked126};

    // bubble_select_stall_entry(BITSELECT,31)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[6:6]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[7:7]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[8:8]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[9:9]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[10:10]);

    // conv_process_B21_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B21_merge_reg theconv_process_B21_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_f),
        .in_data_in_2_tpl(bubble_select_stall_entry_l),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_i),
        .in_data_in_5_tpl(bubble_select_stall_entry_d),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_g),
        .in_data_in_8_tpl(bubble_select_stall_entry_e),
        .in_data_in_9_tpl(bubble_select_stall_entry_k),
        .in_data_in_10_tpl(bubble_select_stall_entry_h),
        .in_stall_in(SE_out_conv_process_B21_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv_process_B21_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_stall_out(conv_process_B21_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv_process_B21_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B21_merge_reg_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_conv_process_B21_merge_reg_aunroll_x_V0 = SE_out_conv_process_B21_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv_process_B21_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_conv_process_B21_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B21_merge_reg_aunroll_x_wireValid = conv_process_B21_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv_process_B21_merge_reg_aunroll_x(BITJOIN,23)
    assign bubble_join_conv_process_B21_merge_reg_aunroll_x_q = {conv_process_B21_merge_reg_aunroll_x_out_data_out_10_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_9_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_8_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_7_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_6_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_5_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_4_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_3_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_2_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_1_tpl, conv_process_B21_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv_process_B21_merge_reg_aunroll_x(BITSELECT,24)
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[5:5]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[6:6]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[7:7]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[8:8]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[9:9]);
    assign bubble_select_conv_process_B21_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv_process_B21_merge_reg_aunroll_x_q[10:10]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit898_0_tpl@5
    // out out_c0_exit898_1_tpl@5
    // out out_c0_exit898_2_tpl@5
    // out out_c0_exit898_3_tpl@5
    // out out_c0_exit898_4_tpl@5
    // out out_c0_exit898_5_tpl@5
    // out out_c0_exit898_6_tpl@5
    // out out_c0_exit898_7_tpl@5
    // out out_c0_exit898_8_tpl@5
    // out out_c0_exit898_9_tpl@5
    // out out_c0_exit898_10_tpl@5
    // out out_c0_exit898_11_tpl@5
    // out out_c0_exit898_12_tpl@5
    // out out_c0_exit898_13_tpl@5
    // out out_c0_exit898_14_tpl@5
    // out out_c0_exit898_15_tpl@5
    // out out_c0_exit898_16_tpl@5
    // out out_c0_exit898_17_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond15_i_prehe0000r87235_conv_process1 thei_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x (
        .in_c0_eni11871_0_tpl(GND_q),
        .in_c0_eni11871_1_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_b),
        .in_c0_eni11871_2_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_j),
        .in_c0_eni11871_3_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_k),
        .in_c0_eni11871_4_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_l),
        .in_c0_eni11871_5_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_i),
        .in_c0_eni11871_6_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_c),
        .in_c0_eni11871_7_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_d),
        .in_c0_eni11871_8_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_e),
        .in_c0_eni11871_9_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_f),
        .in_c0_eni11871_10_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_g),
        .in_c0_eni11871_11_tpl(bubble_select_conv_process_B21_merge_reg_aunroll_x_h),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_backStall),
        .in_i_valid(SE_out_conv_process_B21_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit898_0_tpl(),
        .out_c0_exit898_1_tpl(),
        .out_c0_exit898_2_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_2_tpl),
        .out_c0_exit898_3_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_3_tpl),
        .out_c0_exit898_4_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_4_tpl),
        .out_c0_exit898_5_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_5_tpl),
        .out_c0_exit898_6_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_6_tpl),
        .out_c0_exit898_7_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_7_tpl),
        .out_c0_exit898_8_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_8_tpl),
        .out_c0_exit898_9_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_9_tpl),
        .out_c0_exit898_10_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_10_tpl),
        .out_c0_exit898_11_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_11_tpl),
        .out_c0_exit898_12_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_12_tpl),
        .out_c0_exit898_13_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_13_tpl),
        .out_c0_exit898_14_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_14_tpl),
        .out_c0_exit898_15_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_15_tpl),
        .out_c0_exit898_16_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_16_tpl),
        .out_c0_exit898_17_tpl(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_17_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x(BITJOIN,27)
    assign bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q = {i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_17_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_16_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_15_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_14_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_13_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_12_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_11_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_10_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_9_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_8_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_7_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_6_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_5_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_4_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_3_tpl, i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_c0_exit898_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x(BITSELECT,28)
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[35:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[36:36]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[37:37]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[38:38]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[39:39]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[40:40]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[41:41]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[42:42]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[43:43]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[44:44]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[45:45]);
    assign bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q[46:46]);

    // dupName_0_sync_out_x(GPOUT,3)@5
    assign out_c0_exe10908 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_j;
    assign out_c0_exe11909 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_k;
    assign out_c0_exe12910 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_l;
    assign out_c0_exe13911 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_m;
    assign out_c0_exe14912 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_q;
    assign out_c0_exe2900 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_b;
    assign out_c0_exe3901 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_c;
    assign out_c0_exe4902 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_d;
    assign out_c0_exe5903 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_e;
    assign out_c0_exe6904 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_f;
    assign out_c0_exe7905 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_g;
    assign out_c0_exe8906 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_h;
    assign out_c0_exe9907 = bubble_select_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out = i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out = i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,14)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond15_i_preheader_conv_processs_c0_enter87235_conv_process1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,20)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
