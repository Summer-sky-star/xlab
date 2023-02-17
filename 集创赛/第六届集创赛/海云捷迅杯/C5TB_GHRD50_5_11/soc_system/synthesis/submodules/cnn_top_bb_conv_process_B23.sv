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

// SystemVerilog created from cnn_top_bb_conv_process_B23
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B23 (
    input wire [0:0] in_c1_exe1024_0,
    input wire [0:0] in_c1_exe1125_0,
    input wire [0:0] in_c1_exe715_0,
    input wire [0:0] in_c1_exe819_0,
    input wire [0:0] in_c1_exe922_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c1_exe1024,
    output wire [0:0] out_c1_exe715,
    output wire [0:0] out_c1_exe819,
    output wire [0:0] out_c1_exe922,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B23_stall_region_out_c1_exe1024;
    wire [0:0] bb_conv_process_B23_stall_region_out_c1_exe1125;
    wire [0:0] bb_conv_process_B23_stall_region_out_c1_exe715;
    wire [0:0] bb_conv_process_B23_stall_region_out_c1_exe819;
    wire [0:0] bb_conv_process_B23_stall_region_out_c1_exe922;
    wire [0:0] bb_conv_process_B23_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B23_stall_region_out_valid_out;
    wire [0:0] conv_process_B23_branch_out_c1_exe1024;
    wire [0:0] conv_process_B23_branch_out_c1_exe715;
    wire [0:0] conv_process_B23_branch_out_c1_exe819;
    wire [0:0] conv_process_B23_branch_out_c1_exe922;
    wire [0:0] conv_process_B23_branch_out_stall_out;
    wire [0:0] conv_process_B23_branch_out_valid_out_0;
    wire [0:0] conv_process_B23_branch_out_valid_out_1;
    wire [0:0] conv_process_B23_merge_out_c1_exe1024;
    wire [0:0] conv_process_B23_merge_out_c1_exe1125;
    wire [0:0] conv_process_B23_merge_out_c1_exe715;
    wire [0:0] conv_process_B23_merge_out_c1_exe819;
    wire [0:0] conv_process_B23_merge_out_c1_exe922;
    wire [0:0] conv_process_B23_merge_out_stall_out_0;
    wire [0:0] conv_process_B23_merge_out_valid_out;


    // conv_process_B23_merge(BLACKBOX,4)
    cnn_top_conv_process_B23_merge theconv_process_B23_merge (
        .in_c1_exe1024_0(in_c1_exe1024_0),
        .in_c1_exe1125_0(in_c1_exe1125_0),
        .in_c1_exe715_0(in_c1_exe715_0),
        .in_c1_exe819_0(in_c1_exe819_0),
        .in_c1_exe922_0(in_c1_exe922_0),
        .in_stall_in(bb_conv_process_B23_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c1_exe1024(conv_process_B23_merge_out_c1_exe1024),
        .out_c1_exe1125(conv_process_B23_merge_out_c1_exe1125),
        .out_c1_exe715(conv_process_B23_merge_out_c1_exe715),
        .out_c1_exe819(conv_process_B23_merge_out_c1_exe819),
        .out_c1_exe922(conv_process_B23_merge_out_c1_exe922),
        .out_stall_out_0(conv_process_B23_merge_out_stall_out_0),
        .out_valid_out(conv_process_B23_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B23_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B23_stall_region thebb_conv_process_B23_stall_region (
        .in_c1_exe1024(conv_process_B23_merge_out_c1_exe1024),
        .in_c1_exe1125(conv_process_B23_merge_out_c1_exe1125),
        .in_c1_exe715(conv_process_B23_merge_out_c1_exe715),
        .in_c1_exe819(conv_process_B23_merge_out_c1_exe819),
        .in_c1_exe922(conv_process_B23_merge_out_c1_exe922),
        .in_stall_in(conv_process_B23_branch_out_stall_out),
        .in_valid_in(conv_process_B23_merge_out_valid_out),
        .out_c1_exe1024(bb_conv_process_B23_stall_region_out_c1_exe1024),
        .out_c1_exe1125(bb_conv_process_B23_stall_region_out_c1_exe1125),
        .out_c1_exe715(bb_conv_process_B23_stall_region_out_c1_exe715),
        .out_c1_exe819(bb_conv_process_B23_stall_region_out_c1_exe819),
        .out_c1_exe922(bb_conv_process_B23_stall_region_out_c1_exe922),
        .out_stall_out(bb_conv_process_B23_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B23_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B23_branch(BLACKBOX,3)
    cnn_top_conv_process_B23_branch theconv_process_B23_branch (
        .in_c1_exe1024(bb_conv_process_B23_stall_region_out_c1_exe1024),
        .in_c1_exe1125(bb_conv_process_B23_stall_region_out_c1_exe1125),
        .in_c1_exe715(bb_conv_process_B23_stall_region_out_c1_exe715),
        .in_c1_exe819(bb_conv_process_B23_stall_region_out_c1_exe819),
        .in_c1_exe922(bb_conv_process_B23_stall_region_out_c1_exe922),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B23_stall_region_out_valid_out),
        .out_c1_exe1024(conv_process_B23_branch_out_c1_exe1024),
        .out_c1_exe715(conv_process_B23_branch_out_c1_exe715),
        .out_c1_exe819(conv_process_B23_branch_out_c1_exe819),
        .out_c1_exe922(conv_process_B23_branch_out_c1_exe922),
        .out_stall_out(conv_process_B23_branch_out_stall_out),
        .out_valid_out_0(conv_process_B23_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B23_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c1_exe1024(GPOUT,13)
    assign out_c1_exe1024 = conv_process_B23_branch_out_c1_exe1024;

    // out_c1_exe715(GPOUT,14)
    assign out_c1_exe715 = conv_process_B23_branch_out_c1_exe715;

    // out_c1_exe819(GPOUT,15)
    assign out_c1_exe819 = conv_process_B23_branch_out_c1_exe819;

    // out_c1_exe922(GPOUT,16)
    assign out_c1_exe922 = conv_process_B23_branch_out_c1_exe922;

    // out_stall_in_0(GPOUT,17)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = conv_process_B23_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = conv_process_B23_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = conv_process_B23_branch_out_valid_out_1;

endmodule
