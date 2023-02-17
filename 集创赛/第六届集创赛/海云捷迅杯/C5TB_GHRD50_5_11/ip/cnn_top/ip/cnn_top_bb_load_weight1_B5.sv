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

// SystemVerilog created from cnn_top_bb_load_weight1_B5
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B5 (
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_load_weight1_B5_stall_region_out_intel_reserved_ffwd_21_0;
    wire [0:0] bb_load_weight1_B5_stall_region_out_stall_out;
    wire [0:0] bb_load_weight1_B5_stall_region_out_valid_out;
    wire [0:0] load_weight1_B5_branch_out_stall_out;
    wire [0:0] load_weight1_B5_branch_out_valid_out_0;
    wire [0:0] load_weight1_B5_merge_out_stall_out_0;
    wire [0:0] load_weight1_B5_merge_out_valid_out;


    // load_weight1_B5_merge(BLACKBOX,12)
    cnn_top_load_weight1_B5_merge theload_weight1_B5_merge (
        .in_stall_in(bb_load_weight1_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(load_weight1_B5_merge_out_stall_out_0),
        .out_valid_out(load_weight1_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight1_B5_branch(BLACKBOX,11)
    cnn_top_load_weight1_B5_branch theload_weight1_B5_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight1_B5_stall_region_out_valid_out),
        .out_stall_out(load_weight1_B5_branch_out_stall_out),
        .out_valid_out_0(load_weight1_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight1_B5_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight1_B5_stall_region thebb_load_weight1_B5_stall_region (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(load_weight1_B5_branch_out_stall_out),
        .in_valid_in(load_weight1_B5_merge_out_valid_out),
        .out_intel_reserved_ffwd_21_0(bb_load_weight1_B5_stall_region_out_intel_reserved_ffwd_21_0),
        .out_stall_out(bb_load_weight1_B5_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight1_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_21_0(GPOUT,13)
    assign out_intel_reserved_ffwd_21_0 = bb_load_weight1_B5_stall_region_out_intel_reserved_ffwd_21_0;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = load_weight1_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,15)
    assign out_valid_out_0 = load_weight1_B5_branch_out_valid_out_0;

endmodule
