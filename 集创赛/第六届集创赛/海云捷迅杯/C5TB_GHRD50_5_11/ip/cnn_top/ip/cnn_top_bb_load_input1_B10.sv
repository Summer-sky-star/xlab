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

// SystemVerilog created from cnn_top_bb_load_input1_B10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B10 (
    input wire [0:0] in_forked49_0,
    input wire [0:0] in_forked49_1,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_li_082120_0,
    input wire [31:0] in_li_082120_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_input142_0,
    input wire [0:0] in_unnamed_load_input142_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2231,
    output wire [31:0] out_c0_exe3232,
    output wire [31:0] out_c0_exe4233,
    output wire [0:0] out_c0_exe5234,
    output wire [31:0] out_c0_exe6235,
    output wire [0:0] out_c0_exe7236,
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

    wire [0:0] bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_stall_out;
    wire [0:0] bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_valid_out;
    wire [0:0] bb_load_input1_B10_stall_region_out_c0_exe2231;
    wire [31:0] bb_load_input1_B10_stall_region_out_c0_exe3232;
    wire [31:0] bb_load_input1_B10_stall_region_out_c0_exe4233;
    wire [0:0] bb_load_input1_B10_stall_region_out_c0_exe5234;
    wire [31:0] bb_load_input1_B10_stall_region_out_c0_exe6235;
    wire [0:0] bb_load_input1_B10_stall_region_out_c0_exe7236;
    wire [0:0] bb_load_input1_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_input1_B10_stall_region_out_stall_out;
    wire [0:0] bb_load_input1_B10_stall_region_out_valid_out;
    wire [0:0] load_input1_B10_branch_out_c0_exe2231;
    wire [31:0] load_input1_B10_branch_out_c0_exe3232;
    wire [31:0] load_input1_B10_branch_out_c0_exe4233;
    wire [0:0] load_input1_B10_branch_out_c0_exe5234;
    wire [31:0] load_input1_B10_branch_out_c0_exe6235;
    wire [0:0] load_input1_B10_branch_out_c0_exe7236;
    wire [0:0] load_input1_B10_branch_out_stall_out;
    wire [0:0] load_input1_B10_branch_out_valid_out_0;
    wire [0:0] load_input1_B10_merge_out_forked49;
    wire [31:0] load_input1_B10_merge_out_li_082120;
    wire [0:0] load_input1_B10_merge_out_stall_out_0;
    wire [0:0] load_input1_B10_merge_out_stall_out_1;
    wire [0:0] load_input1_B10_merge_out_unnamed_load_input142;
    wire [0:0] load_input1_B10_merge_out_valid_out;


    // load_input1_B10_merge(BLACKBOX,15)
    cnn_top_load_input1_B10_merge theload_input1_B10_merge (
        .in_forked49_0(in_forked49_0),
        .in_forked49_1(in_forked49_1),
        .in_li_082120_0(in_li_082120_0),
        .in_li_082120_1(in_li_082120_1),
        .in_stall_in(bb_load_input1_B10_stall_region_out_stall_out),
        .in_unnamed_load_input142_0(in_unnamed_load_input142_0),
        .in_unnamed_load_input142_1(in_unnamed_load_input142_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked49(load_input1_B10_merge_out_forked49),
        .out_li_082120(load_input1_B10_merge_out_li_082120),
        .out_stall_out_0(load_input1_B10_merge_out_stall_out_0),
        .out_stall_out_1(load_input1_B10_merge_out_stall_out_1),
        .out_unnamed_load_input142(load_input1_B10_merge_out_unnamed_load_input142),
        .out_valid_out(load_input1_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input1_B10_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input1_B10_stall_region thebb_load_input1_B10_stall_region (
        .in_forked49(load_input1_B10_merge_out_forked49),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_li_082120(load_input1_B10_merge_out_li_082120),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(load_input1_B10_branch_out_stall_out),
        .in_unnamed_load_input142(load_input1_B10_merge_out_unnamed_load_input142),
        .in_valid_in(load_input1_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_stall_out(bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_valid_out(bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_valid_out),
        .out_c0_exe2231(bb_load_input1_B10_stall_region_out_c0_exe2231),
        .out_c0_exe3232(bb_load_input1_B10_stall_region_out_c0_exe3232),
        .out_c0_exe4233(bb_load_input1_B10_stall_region_out_c0_exe4233),
        .out_c0_exe5234(bb_load_input1_B10_stall_region_out_c0_exe5234),
        .out_c0_exe6235(bb_load_input1_B10_stall_region_out_c0_exe6235),
        .out_c0_exe7236(bb_load_input1_B10_stall_region_out_c0_exe7236),
        .out_pipeline_valid_out(bb_load_input1_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_input1_B10_stall_region_out_stall_out),
        .out_valid_out(bb_load_input1_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input1_B10_branch(BLACKBOX,14)
    cnn_top_load_input1_B10_branch theload_input1_B10_branch (
        .in_c0_exe2231(bb_load_input1_B10_stall_region_out_c0_exe2231),
        .in_c0_exe3232(bb_load_input1_B10_stall_region_out_c0_exe3232),
        .in_c0_exe4233(bb_load_input1_B10_stall_region_out_c0_exe4233),
        .in_c0_exe5234(bb_load_input1_B10_stall_region_out_c0_exe5234),
        .in_c0_exe6235(bb_load_input1_B10_stall_region_out_c0_exe6235),
        .in_c0_exe7236(bb_load_input1_B10_stall_region_out_c0_exe7236),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_input1_B10_stall_region_out_valid_out),
        .out_c0_exe2231(load_input1_B10_branch_out_c0_exe2231),
        .out_c0_exe3232(load_input1_B10_branch_out_c0_exe3232),
        .out_c0_exe4233(load_input1_B10_branch_out_c0_exe4233),
        .out_c0_exe5234(load_input1_B10_branch_out_c0_exe5234),
        .out_c0_exe6235(load_input1_B10_branch_out_c0_exe6235),
        .out_c0_exe7236(load_input1_B10_branch_out_c0_exe7236),
        .out_stall_out(load_input1_B10_branch_out_stall_out),
        .out_valid_out_0(load_input1_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2231(GPOUT,16)
    assign out_c0_exe2231 = load_input1_B10_branch_out_c0_exe2231;

    // out_c0_exe3232(GPOUT,17)
    assign out_c0_exe3232 = load_input1_B10_branch_out_c0_exe3232;

    // out_c0_exe4233(GPOUT,18)
    assign out_c0_exe4233 = load_input1_B10_branch_out_c0_exe4233;

    // out_c0_exe5234(GPOUT,19)
    assign out_c0_exe5234 = load_input1_B10_branch_out_c0_exe5234;

    // out_c0_exe6235(GPOUT,20)
    assign out_c0_exe6235 = load_input1_B10_branch_out_c0_exe6235;

    // out_c0_exe7236(GPOUT,21)
    assign out_c0_exe7236 = load_input1_B10_branch_out_c0_exe7236;

    // out_exiting_stall_out(GPOUT,22)
    assign out_exiting_stall_out = bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,23)
    assign out_exiting_valid_out = bb_load_input1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input12_exiting_valid_out;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = load_input1_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,25)
    assign out_stall_out_1 = load_input1_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,26)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,27)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,28)
    assign out_valid_out_0 = load_input1_B10_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = bb_load_input1_B10_stall_region_out_pipeline_valid_out;

endmodule
