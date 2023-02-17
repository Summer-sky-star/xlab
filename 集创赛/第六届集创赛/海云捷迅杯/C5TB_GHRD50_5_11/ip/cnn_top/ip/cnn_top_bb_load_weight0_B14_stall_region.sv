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

// SystemVerilog created from cnn_top_bb_load_weight0_B14_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B14_stall_region (
    output wire [31:0] out_c0_exe10289,
    output wire [0:0] out_c0_exe11290,
    output wire [31:0] out_c0_exe12291,
    output wire [0:0] out_c0_exe1280,
    output wire [0:0] out_c0_exe13292,
    output wire [31:0] out_c0_exe14293,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe3282,
    output wire [31:0] out_c0_exe4283,
    output wire [0:0] out_c0_exe5284,
    output wire [31:0] out_c0_exe6285,
    output wire [0:0] out_c0_exe7286,
    output wire [31:0] out_c0_exe8287,
    output wire [0:0] out_c0_exe9288,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add79142,
    input wire [0:0] in_forked43,
    input wire [31:0] in_li_075117,
    input wire [31:0] in_li_07591_pop22133,
    input wire [31:0] in_li_07592_pop33148,
    input wire [31:0] in_mul78123,
    input wire [31:0] in_mul7897_pop35139,
    input wire [0:0] in_notcmp78145,
    input wire [0:0] in_notcmp82100_pop36154,
    input wire [0:0] in_notcmp82128,
    input wire [0:0] in_pop23138,
    input wire [0:0] in_pop34151,
    input wire [0:0] in_unnamed_load_weight044,
    input wire [0:0] in_unnamed_load_weight045,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_17_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_19_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_22_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_pipeline_valid_out;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_weight0_B14_merge_reg_aunroll_x_out_valid_out;
    wire [299:0] bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_s;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_v;
    wire [199:0] bubble_join_load_weight0_B14_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_load_weight0_B14_merge_reg_aunroll_x_o;
    wire [199:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_V0;
    wire [0:0] SE_out_load_weight0_B14_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_weight0_B14_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_weight0_B14_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,36)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_weight0_B14_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,29)
    assign bubble_join_stall_entry_q = {in_unnamed_load_weight045, in_unnamed_load_weight044, in_pop34151, in_pop23138, in_notcmp82128, in_notcmp82100_pop36154, in_notcmp78145, in_mul7897_pop35139, in_mul78123, in_li_07592_pop33148, in_li_07591_pop22133, in_li_075117, in_forked43, in_add79142};

    // bubble_select_stall_entry(BITSELECT,30)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[193:193]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[194:194]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[195:195]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[196:196]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[197:197]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[198:198]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[199:199]);

    // load_weight0_B14_merge_reg_aunroll_x(BLACKBOX,4)@0
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
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_weight0_B14_merge_reg theload_weight0_B14_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_n),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_k),
        .in_data_in_5_tpl(bubble_select_stall_entry_e),
        .in_data_in_6_tpl(bubble_select_stall_entry_l),
        .in_data_in_7_tpl(bubble_select_stall_entry_o),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_b),
        .in_data_in_10_tpl(bubble_select_stall_entry_i),
        .in_data_in_11_tpl(bubble_select_stall_entry_f),
        .in_data_in_12_tpl(bubble_select_stall_entry_m),
        .in_data_in_13_tpl(bubble_select_stall_entry_j),
        .in_stall_in(SE_out_load_weight0_B14_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(load_weight0_B14_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_stall_out(load_weight0_B14_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_weight0_B14_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_weight0_B14_merge_reg_aunroll_x(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_load_weight0_B14_merge_reg_aunroll_x_V0 = SE_out_load_weight0_B14_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_load_weight0_B14_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_stall | ~ (SE_out_load_weight0_B14_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_load_weight0_B14_merge_reg_aunroll_x_wireValid = load_weight0_B14_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_load_weight0_B14_merge_reg_aunroll_x(BITJOIN,25)
    assign bubble_join_load_weight0_B14_merge_reg_aunroll_x_q = {load_weight0_B14_merge_reg_aunroll_x_out_data_out_13_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_12_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_11_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_10_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_9_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_8_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_7_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_6_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_5_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_4_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_3_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_2_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_1_tpl, load_weight0_B14_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_weight0_B14_merge_reg_aunroll_x(BITSELECT,26)
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_d = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_e = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[65:34]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_f = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_g = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_h = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[99:99]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_i = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[100:100]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_j = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_k = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_l = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_m = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_n = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[198:198]);
    assign bubble_select_load_weight0_B14_merge_reg_aunroll_x_o = $unsigned(bubble_join_load_weight0_B14_merge_reg_aunroll_x_q[199:199]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x(BLACKBOX,3)@1
    // in in_i_stall@20000000
    // out out_c0_exit279_0_tpl@5
    // out out_c0_exit279_1_tpl@5
    // out out_c0_exit279_2_tpl@5
    // out out_c0_exit279_3_tpl@5
    // out out_c0_exit279_4_tpl@5
    // out out_c0_exit279_5_tpl@5
    // out out_c0_exit279_6_tpl@5
    // out out_c0_exit279_7_tpl@5
    // out out_c0_exit279_8_tpl@5
    // out out_c0_exit279_9_tpl@5
    // out out_c0_exit279_10_tpl@5
    // out out_c0_exit279_11_tpl@5
    // out out_c0_exit279_12_tpl@5
    // out out_c0_exit279_13_tpl@5
    // out out_c0_exit279_14_tpl@5
    // out out_c0_exit279_15_tpl@5
    // out out_c0_exit279_16_tpl@5
    // out out_c0_exit279_17_tpl@5
    // out out_c0_exit279_18_tpl@5
    // out out_c0_exit279_19_tpl@5
    // out out_c0_exit279_20_tpl@5
    // out out_c0_exit279_21_tpl@5
    // out out_c0_exit279_22_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond63_prehead0000r25718_load_weight01 thei_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x (
        .in_c0_eni14_0_tpl(GND_q),
        .in_c0_eni14_1_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_b),
        .in_c0_eni14_2_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_i),
        .in_c0_eni14_3_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_m),
        .in_c0_eni14_4_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_n),
        .in_c0_eni14_5_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_j),
        .in_c0_eni14_6_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_o),
        .in_c0_eni14_7_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_k),
        .in_c0_eni14_8_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_l),
        .in_c0_eni14_9_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_c),
        .in_c0_eni14_10_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_d),
        .in_c0_eni14_11_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_e),
        .in_c0_eni14_12_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_f),
        .in_c0_eni14_13_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_g),
        .in_c0_eni14_14_tpl(bubble_select_load_weight0_B14_merge_reg_aunroll_x_h),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_backStall),
        .in_i_valid(SE_out_load_weight0_B14_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit279_0_tpl(),
        .out_c0_exit279_1_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_1_tpl),
        .out_c0_exit279_2_tpl(),
        .out_c0_exit279_3_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_3_tpl),
        .out_c0_exit279_4_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_4_tpl),
        .out_c0_exit279_5_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_5_tpl),
        .out_c0_exit279_6_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_6_tpl),
        .out_c0_exit279_7_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_7_tpl),
        .out_c0_exit279_8_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_8_tpl),
        .out_c0_exit279_9_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_9_tpl),
        .out_c0_exit279_10_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_10_tpl),
        .out_c0_exit279_11_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_11_tpl),
        .out_c0_exit279_12_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_12_tpl),
        .out_c0_exit279_13_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_13_tpl),
        .out_c0_exit279_14_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_14_tpl),
        .out_c0_exit279_15_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_15_tpl),
        .out_c0_exit279_16_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_16_tpl),
        .out_c0_exit279_17_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_17_tpl),
        .out_c0_exit279_18_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_18_tpl),
        .out_c0_exit279_19_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_19_tpl),
        .out_c0_exit279_20_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_20_tpl),
        .out_c0_exit279_21_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_21_tpl),
        .out_c0_exit279_22_tpl(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_22_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x(STALLENABLE,33)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x(BITJOIN,22)
    assign bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q = {i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_22_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_21_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_20_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_19_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_18_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_17_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_16_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_15_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_14_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_13_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_12_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_11_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_10_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_9_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_8_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_7_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_6_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_5_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_4_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_3_tpl, i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_c0_exit279_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x(BITSELECT,23)
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[66:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[99:68]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[100:100]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[132:101]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[165:134]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[166:166]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[198:167]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[199:199]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[200:200]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[232:201]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[264:233]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[265:265]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[297:266]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[298:298]);
    assign bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q[299:299]);

    // dupName_0_sync_out_x(GPOUT,2)@5
    assign out_c0_exe10289 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_j;
    assign out_c0_exe11290 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_k;
    assign out_c0_exe12291 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_l;
    assign out_c0_exe1280 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_b;
    assign out_c0_exe13292 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_m;
    assign out_c0_exe14293 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_n;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_o;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_p;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_q;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_r;
    assign out_c0_exe19 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_s;
    assign out_c0_exe20 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_t;
    assign out_c0_exe21 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_u;
    assign out_c0_exe22 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_v;
    assign out_c0_exe3282 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_c;
    assign out_c0_exe4283 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_d;
    assign out_c0_exe5284 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_e;
    assign out_c0_exe6285 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_f;
    assign out_c0_exe7286 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_g;
    assign out_c0_exe8287 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_h;
    assign out_c0_exe9288 = bubble_select_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out = i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out = i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,14)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond63_preheader_load_weight0s_c0_enter25718_load_weight01_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,19)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
