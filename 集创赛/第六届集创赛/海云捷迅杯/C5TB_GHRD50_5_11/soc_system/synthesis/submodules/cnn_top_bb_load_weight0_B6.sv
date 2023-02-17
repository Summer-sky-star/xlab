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

// SystemVerilog created from cnn_top_bb_load_weight0_B6
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B6 (
    input wire [0:0] in_forked50_0,
    input wire [0:0] in_forked50_1,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
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

    wire [0:0] bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_stall_out;
    wire [0:0] bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_valid_out;
    wire [31:0] bb_load_weight0_B6_stall_region_out_c0_exe1;
    wire [0:0] bb_load_weight0_B6_stall_region_out_c0_exe3;
    wire [31:0] bb_load_weight0_B6_stall_region_out_c0_exe4;
    wire [0:0] bb_load_weight0_B6_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B6_stall_region_out_stall_out;
    wire [0:0] bb_load_weight0_B6_stall_region_out_valid_out;
    wire [31:0] load_weight0_B6_branch_out_c0_exe1;
    wire [0:0] load_weight0_B6_branch_out_c0_exe3;
    wire [31:0] load_weight0_B6_branch_out_c0_exe4;
    wire [0:0] load_weight0_B6_branch_out_stall_out;
    wire [0:0] load_weight0_B6_branch_out_valid_out_0;
    wire [0:0] load_weight0_B6_merge_out_forked50;
    wire [0:0] load_weight0_B6_merge_out_stall_out_0;
    wire [0:0] load_weight0_B6_merge_out_stall_out_1;
    wire [0:0] load_weight0_B6_merge_out_valid_out;


    // load_weight0_B6_merge(BLACKBOX,11)
    cnn_top_load_weight0_B6_merge theload_weight0_B6_merge (
        .in_forked50_0(in_forked50_0),
        .in_forked50_1(in_forked50_1),
        .in_stall_in(bb_load_weight0_B6_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked50(load_weight0_B6_merge_out_forked50),
        .out_stall_out_0(load_weight0_B6_merge_out_stall_out_0),
        .out_stall_out_1(load_weight0_B6_merge_out_stall_out_1),
        .out_valid_out(load_weight0_B6_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B6_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight0_B6_stall_region thebb_load_weight0_B6_stall_region (
        .in_forked50(load_weight0_B6_merge_out_forked50),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(load_weight0_B6_branch_out_stall_out),
        .in_valid_in(load_weight0_B6_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_stall_out(bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_valid_out(bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_valid_out),
        .out_c0_exe1(bb_load_weight0_B6_stall_region_out_c0_exe1),
        .out_c0_exe3(bb_load_weight0_B6_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_load_weight0_B6_stall_region_out_c0_exe4),
        .out_pipeline_valid_out(bb_load_weight0_B6_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight0_B6_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight0_B6_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B6_branch(BLACKBOX,10)
    cnn_top_load_weight0_B6_branch theload_weight0_B6_branch (
        .in_c0_exe1(bb_load_weight0_B6_stall_region_out_c0_exe1),
        .in_c0_exe3(bb_load_weight0_B6_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_load_weight0_B6_stall_region_out_c0_exe4),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight0_B6_stall_region_out_valid_out),
        .out_c0_exe1(load_weight0_B6_branch_out_c0_exe1),
        .out_c0_exe3(load_weight0_B6_branch_out_c0_exe3),
        .out_c0_exe4(load_weight0_B6_branch_out_c0_exe4),
        .out_stall_out(load_weight0_B6_branch_out_stall_out),
        .out_valid_out_0(load_weight0_B6_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1(GPOUT,12)
    assign out_c0_exe1 = load_weight0_B6_branch_out_c0_exe1;

    // out_c0_exe3(GPOUT,13)
    assign out_c0_exe3 = load_weight0_B6_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,14)
    assign out_c0_exe4 = load_weight0_B6_branch_out_c0_exe4;

    // out_exiting_stall_out(GPOUT,15)
    assign out_exiting_stall_out = bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,16)
    assign out_exiting_valid_out = bb_load_weight0_B6_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight02_exiting_valid_out;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = load_weight0_B6_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = load_weight0_B6_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,19)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,20)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = load_weight0_B6_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,23)
    assign out_pipeline_valid_out = bb_load_weight0_B6_stall_region_out_pipeline_valid_out;

endmodule
