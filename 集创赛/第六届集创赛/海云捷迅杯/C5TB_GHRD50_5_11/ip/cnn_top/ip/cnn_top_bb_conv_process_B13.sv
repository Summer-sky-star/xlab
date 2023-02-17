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

// SystemVerilog created from cnn_top_bb_conv_process_B13
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B13 (
    input wire [31:0] in_c0_exe1078010_0,
    input wire [31:0] in_c0_exe67763_0,
    input wire [0:0] in_c0_exe77775_0,
    input wire [0:0] in_c0_exe87787_0,
    input wire [0:0] in_c0_exe97798_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1078010,
    output wire [31:0] out_c0_exe67763,
    output wire [0:0] out_c0_exe77775,
    output wire [0:0] out_c0_exe87787,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv_process_B13_stall_region_out_c0_exe1078010;
    wire [31:0] bb_conv_process_B13_stall_region_out_c0_exe67763;
    wire [0:0] bb_conv_process_B13_stall_region_out_c0_exe77775;
    wire [0:0] bb_conv_process_B13_stall_region_out_c0_exe87787;
    wire [0:0] bb_conv_process_B13_stall_region_out_c0_exe97798;
    wire [0:0] bb_conv_process_B13_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B13_stall_region_out_valid_out;
    wire [31:0] conv_process_B13_branch_out_c0_exe1078010;
    wire [31:0] conv_process_B13_branch_out_c0_exe67763;
    wire [0:0] conv_process_B13_branch_out_c0_exe77775;
    wire [0:0] conv_process_B13_branch_out_c0_exe87787;
    wire [0:0] conv_process_B13_branch_out_stall_out;
    wire [0:0] conv_process_B13_branch_out_valid_out_0;
    wire [0:0] conv_process_B13_branch_out_valid_out_1;
    wire [31:0] conv_process_B13_merge_out_c0_exe1078010;
    wire [31:0] conv_process_B13_merge_out_c0_exe67763;
    wire [0:0] conv_process_B13_merge_out_c0_exe77775;
    wire [0:0] conv_process_B13_merge_out_c0_exe87787;
    wire [0:0] conv_process_B13_merge_out_c0_exe97798;
    wire [0:0] conv_process_B13_merge_out_stall_out_0;
    wire [0:0] conv_process_B13_merge_out_valid_out;


    // conv_process_B13_merge(BLACKBOX,4)
    cnn_top_conv_process_B13_merge theconv_process_B13_merge (
        .in_c0_exe1078010_0(in_c0_exe1078010_0),
        .in_c0_exe67763_0(in_c0_exe67763_0),
        .in_c0_exe77775_0(in_c0_exe77775_0),
        .in_c0_exe87787_0(in_c0_exe87787_0),
        .in_c0_exe97798_0(in_c0_exe97798_0),
        .in_stall_in(bb_conv_process_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe1078010(conv_process_B13_merge_out_c0_exe1078010),
        .out_c0_exe67763(conv_process_B13_merge_out_c0_exe67763),
        .out_c0_exe77775(conv_process_B13_merge_out_c0_exe77775),
        .out_c0_exe87787(conv_process_B13_merge_out_c0_exe87787),
        .out_c0_exe97798(conv_process_B13_merge_out_c0_exe97798),
        .out_stall_out_0(conv_process_B13_merge_out_stall_out_0),
        .out_valid_out(conv_process_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B13_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B13_stall_region thebb_conv_process_B13_stall_region (
        .in_c0_exe1078010(conv_process_B13_merge_out_c0_exe1078010),
        .in_c0_exe67763(conv_process_B13_merge_out_c0_exe67763),
        .in_c0_exe77775(conv_process_B13_merge_out_c0_exe77775),
        .in_c0_exe87787(conv_process_B13_merge_out_c0_exe87787),
        .in_c0_exe97798(conv_process_B13_merge_out_c0_exe97798),
        .in_stall_in(conv_process_B13_branch_out_stall_out),
        .in_valid_in(conv_process_B13_merge_out_valid_out),
        .out_c0_exe1078010(bb_conv_process_B13_stall_region_out_c0_exe1078010),
        .out_c0_exe67763(bb_conv_process_B13_stall_region_out_c0_exe67763),
        .out_c0_exe77775(bb_conv_process_B13_stall_region_out_c0_exe77775),
        .out_c0_exe87787(bb_conv_process_B13_stall_region_out_c0_exe87787),
        .out_c0_exe97798(bb_conv_process_B13_stall_region_out_c0_exe97798),
        .out_stall_out(bb_conv_process_B13_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B13_branch(BLACKBOX,3)
    cnn_top_conv_process_B13_branch theconv_process_B13_branch (
        .in_c0_exe1078010(bb_conv_process_B13_stall_region_out_c0_exe1078010),
        .in_c0_exe67763(bb_conv_process_B13_stall_region_out_c0_exe67763),
        .in_c0_exe77775(bb_conv_process_B13_stall_region_out_c0_exe77775),
        .in_c0_exe87787(bb_conv_process_B13_stall_region_out_c0_exe87787),
        .in_c0_exe97798(bb_conv_process_B13_stall_region_out_c0_exe97798),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B13_stall_region_out_valid_out),
        .out_c0_exe1078010(conv_process_B13_branch_out_c0_exe1078010),
        .out_c0_exe67763(conv_process_B13_branch_out_c0_exe67763),
        .out_c0_exe77775(conv_process_B13_branch_out_c0_exe77775),
        .out_c0_exe87787(conv_process_B13_branch_out_c0_exe87787),
        .out_stall_out(conv_process_B13_branch_out_stall_out),
        .out_valid_out_0(conv_process_B13_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1078010(GPOUT,13)
    assign out_c0_exe1078010 = conv_process_B13_branch_out_c0_exe1078010;

    // out_c0_exe67763(GPOUT,14)
    assign out_c0_exe67763 = conv_process_B13_branch_out_c0_exe67763;

    // out_c0_exe77775(GPOUT,15)
    assign out_c0_exe77775 = conv_process_B13_branch_out_c0_exe77775;

    // out_c0_exe87787(GPOUT,16)
    assign out_c0_exe87787 = conv_process_B13_branch_out_c0_exe87787;

    // out_stall_in_0(GPOUT,17)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = conv_process_B13_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = conv_process_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = conv_process_B13_branch_out_valid_out_1;

endmodule
