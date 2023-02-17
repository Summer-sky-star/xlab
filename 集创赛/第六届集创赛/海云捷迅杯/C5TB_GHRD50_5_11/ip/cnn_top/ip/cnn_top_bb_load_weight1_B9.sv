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

// SystemVerilog created from cnn_top_bb_load_weight1_B9
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B9 (
    input wire [0:0] in_forked90_0,
    input wire [0:0] in_forked90_1,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_li_075_0,
    input wire [31:0] in_li_075_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1200,
    output wire [31:0] out_c0_exe3202,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out;
    wire [0:0] bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out;
    wire [0:0] bb_load_weight1_B9_stall_region_out_c0_exe1200;
    wire [31:0] bb_load_weight1_B9_stall_region_out_c0_exe3202;
    wire [0:0] bb_load_weight1_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight1_B9_stall_region_out_stall_out;
    wire [0:0] bb_load_weight1_B9_stall_region_out_valid_out;
    wire [0:0] load_weight1_B9_branch_out_c0_exe1200;
    wire [31:0] load_weight1_B9_branch_out_c0_exe3202;
    wire [0:0] load_weight1_B9_branch_out_stall_out;
    wire [0:0] load_weight1_B9_branch_out_valid_out_0;
    wire [0:0] load_weight1_B9_merge_out_forked90;
    wire [31:0] load_weight1_B9_merge_out_li_075;
    wire [0:0] load_weight1_B9_merge_out_stall_out_0;
    wire [0:0] load_weight1_B9_merge_out_stall_out_1;
    wire [0:0] load_weight1_B9_merge_out_valid_out;


    // load_weight1_B9_merge(BLACKBOX,12)
    cnn_top_load_weight1_B9_merge theload_weight1_B9_merge (
        .in_forked90_0(in_forked90_0),
        .in_forked90_1(in_forked90_1),
        .in_li_075_0(in_li_075_0),
        .in_li_075_1(in_li_075_1),
        .in_stall_in(bb_load_weight1_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked90(load_weight1_B9_merge_out_forked90),
        .out_li_075(load_weight1_B9_merge_out_li_075),
        .out_stall_out_0(load_weight1_B9_merge_out_stall_out_0),
        .out_stall_out_1(load_weight1_B9_merge_out_stall_out_1),
        .out_valid_out(load_weight1_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight1_B9_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight1_B9_stall_region thebb_load_weight1_B9_stall_region (
        .in_forked90(load_weight1_B9_merge_out_forked90),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_li_075(load_weight1_B9_merge_out_li_075),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(load_weight1_B9_branch_out_stall_out),
        .in_valid_in(load_weight1_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out(bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out(bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out),
        .out_c0_exe1200(bb_load_weight1_B9_stall_region_out_c0_exe1200),
        .out_c0_exe3202(bb_load_weight1_B9_stall_region_out_c0_exe3202),
        .out_pipeline_valid_out(bb_load_weight1_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight1_B9_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight1_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight1_B9_branch(BLACKBOX,11)
    cnn_top_load_weight1_B9_branch theload_weight1_B9_branch (
        .in_c0_exe1200(bb_load_weight1_B9_stall_region_out_c0_exe1200),
        .in_c0_exe3202(bb_load_weight1_B9_stall_region_out_c0_exe3202),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight1_B9_stall_region_out_valid_out),
        .out_c0_exe1200(load_weight1_B9_branch_out_c0_exe1200),
        .out_c0_exe3202(load_weight1_B9_branch_out_c0_exe3202),
        .out_stall_out(load_weight1_B9_branch_out_stall_out),
        .out_valid_out_0(load_weight1_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1200(GPOUT,13)
    assign out_c0_exe1200 = load_weight1_B9_branch_out_c0_exe1200;

    // out_c0_exe3202(GPOUT,14)
    assign out_c0_exe3202 = load_weight1_B9_branch_out_c0_exe3202;

    // out_exiting_stall_out(GPOUT,15)
    assign out_exiting_stall_out = bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,16)
    assign out_exiting_valid_out = bb_load_weight1_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = load_weight1_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = load_weight1_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,19)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,20)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = load_weight1_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = bb_load_weight1_B9_stall_region_out_pipeline_valid_out;

endmodule
