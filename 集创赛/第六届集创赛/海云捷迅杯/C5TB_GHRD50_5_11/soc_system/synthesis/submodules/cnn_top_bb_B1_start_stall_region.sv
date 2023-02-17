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

// SystemVerilog created from cnn_top_bb_B1_start_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B1_start_stall_region (
    output wire [0:0] out_iord_bl_call_cnn_top_o_fifoready,
    output wire [0:0] out_iord_bl_call_cnn_top_o_fifoalmost_full,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [63:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    input wire [319:0] in_iord_bl_call_cnn_top_i_fifodata,
    input wire [0:0] in_iord_bl_call_cnn_top_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_3_tpl;
    wire [63:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_4_tpl;
    wire [0:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoready;
    wire [0:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] cnn_top_B1_start_merge_reg_out_stall_out;
    wire [0:0] cnn_top_B1_start_merge_reg_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_valid_out;
    wire [319:0] bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_d;
    wire [63:0] bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_e;
    wire [63:0] bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_f;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_b;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_V0;
    wire [0:0] SE_out_cnn_top_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_cnn_top_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_cnn_top_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,85)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_top_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // cnn_top_B1_start_merge_reg(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_B1_start_merge_reg thecnn_top_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_cnn_top_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(cnn_top_B1_start_merge_reg_out_stall_out),
        .out_valid_out(cnn_top_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_top_B1_start_merge_reg(STALLENABLE,72)
    // Valid signal propagation
    assign SE_out_cnn_top_B1_start_merge_reg_V0 = SE_out_cnn_top_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_cnn_top_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_stall | ~ (SE_out_cnn_top_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_cnn_top_B1_start_merge_reg_wireValid = cnn_top_B1_start_merge_reg_out_valid_out;

    // i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_wt_entry_s_c0_enter3_cnn_top0 thei_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x (
        .in_unnamed_cnn_top0_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_backStall),
        .in_i_valid(SE_out_cnn_top_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1(BLACKBOX,26)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_backStall = i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_V0 = SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and0 = i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and1 = i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and2 = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and3 = i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_wireValid = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_and3;

    // bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x(BITJOIN,54)
    assign bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q = {i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x(BITSELECT,55)
    assign bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q[191:128]);
    assign bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q[255:192]);
    assign bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_q[319:256]);

    // i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8(BLACKBOX,25)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1029s_c0000s_unnamed_6_cnn_top0 thei_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_f),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V4),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9(BLACKBOX,24)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1028i32_unnamed_7_cnn_top0 thei_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_e),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V3),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6(BLACKBOX,23)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1027s_c0000s_unnamed_5_cnn_top0 thei_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_d),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5(BLACKBOX,22)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1026s_c0000s_unnamed_4_cnn_top0 thei_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1025s_c0000s_unnamed_3_cnn_top0 thei_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(bubble_select_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V0),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x(STALLENABLE,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_stall_out) & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_stall_out) & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_stall_out) & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_stall_out) & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_stall_out) & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_backStall & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg3 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_toReg4 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_StallValid & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or0 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or1 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or2 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or3 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed3 & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_consumed4 & SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_or3);
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_backStall = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V0 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V1 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V2 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V3 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_V4 = SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_wireValid = i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1(BITJOIN,64)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1(BITSELECT,65)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_q[0:0]);

    // i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x(BLACKBOX,8)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_cnn_top_o_fifoalmost_full@20000000
    // out out_iord_bl_call_cnn_top_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_call_unnamed_cnn_top2_cnn_top0 thei_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_b),
        .in_i_stall(SE_out_i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_V0),
        .in_iord_bl_call_cnn_top_i_fifodata(in_iord_bl_call_cnn_top_i_fifodata),
        .in_iord_bl_call_cnn_top_i_fifovalid(in_iord_bl_call_cnn_top_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_data_4_tpl),
        .out_iord_bl_call_cnn_top_o_fifoalmost_full(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoalmost_full),
        .out_iord_bl_call_cnn_top_o_fifoready(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoready),
        .out_o_stall(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_iord_bl_call_cnn_top_o_fifoready = i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoready;
    assign out_iord_bl_call_cnn_top_o_fifoalmost_full = i_iord_bl_call_cnn_top_unnamed_cnn_top2_cnn_top2_aunroll_x_out_iord_bl_call_cnn_top_o_fifoalmost_full;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_cnn_top4_cnn_top5_out_intel_reserved_ffwd_1_0;

    // dupName_0_sync_out_x(GPOUT,4)@2
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_V0;

    // dupName_1_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1027s_class_ihc_mm_host_10s_unnamed_cnn_top5_cnn_top6_out_intel_reserved_ffwd_2_0;

    // dupName_2_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_p1029s_class_ihc_mm_host_11s_unnamed_cnn_top6_cnn_top8_out_intel_reserved_ffwd_3_0;

    // dupName_3_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1028i32_unnamed_cnn_top7_cnn_top9_out_intel_reserved_ffwd_4_0;

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going91_cnn_top1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,19)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_cnn_top1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_cnn_tops_c0_enter3_cnn_top0_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,47)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_cnn_top3_cnn_top4_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
