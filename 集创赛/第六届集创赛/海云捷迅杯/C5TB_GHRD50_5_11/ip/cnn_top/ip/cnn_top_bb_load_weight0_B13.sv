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

// SystemVerilog created from cnn_top_bb_load_weight0_B13
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B13 (
    input wire [0:0] in_c0_exe53503_0,
    input wire [0:0] in_c0_exe63516_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe53503,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_load_weight0_B13_stall_region_out_c0_exe53503;
    wire [0:0] bb_load_weight0_B13_stall_region_out_c0_exe63516;
    wire [0:0] bb_load_weight0_B13_stall_region_out_stall_out;
    wire [0:0] bb_load_weight0_B13_stall_region_out_valid_out;
    wire [0:0] load_weight0_B13_branch_out_c0_exe53503;
    wire [0:0] load_weight0_B13_branch_out_stall_out;
    wire [0:0] load_weight0_B13_branch_out_valid_out_0;
    wire [0:0] load_weight0_B13_branch_out_valid_out_1;
    wire [0:0] load_weight0_B13_merge_out_c0_exe53503;
    wire [0:0] load_weight0_B13_merge_out_c0_exe63516;
    wire [0:0] load_weight0_B13_merge_out_stall_out_0;
    wire [0:0] load_weight0_B13_merge_out_valid_out;


    // load_weight0_B13_merge(BLACKBOX,9)
    cnn_top_load_weight0_B13_merge theload_weight0_B13_merge (
        .in_c0_exe53503_0(in_c0_exe53503_0),
        .in_c0_exe63516_0(in_c0_exe63516_0),
        .in_stall_in(bb_load_weight0_B13_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe53503(load_weight0_B13_merge_out_c0_exe53503),
        .out_c0_exe63516(load_weight0_B13_merge_out_c0_exe63516),
        .out_stall_out_0(load_weight0_B13_merge_out_stall_out_0),
        .out_valid_out(load_weight0_B13_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B13_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight0_B13_stall_region thebb_load_weight0_B13_stall_region (
        .in_c0_exe53503(load_weight0_B13_merge_out_c0_exe53503),
        .in_c0_exe63516(load_weight0_B13_merge_out_c0_exe63516),
        .in_stall_in(load_weight0_B13_branch_out_stall_out),
        .in_valid_in(load_weight0_B13_merge_out_valid_out),
        .out_c0_exe53503(bb_load_weight0_B13_stall_region_out_c0_exe53503),
        .out_c0_exe63516(bb_load_weight0_B13_stall_region_out_c0_exe63516),
        .out_stall_out(bb_load_weight0_B13_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight0_B13_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B13_branch(BLACKBOX,8)
    cnn_top_load_weight0_B13_branch theload_weight0_B13_branch (
        .in_c0_exe53503(bb_load_weight0_B13_stall_region_out_c0_exe53503),
        .in_c0_exe63516(bb_load_weight0_B13_stall_region_out_c0_exe63516),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_load_weight0_B13_stall_region_out_valid_out),
        .out_c0_exe53503(load_weight0_B13_branch_out_c0_exe53503),
        .out_stall_out(load_weight0_B13_branch_out_stall_out),
        .out_valid_out_0(load_weight0_B13_branch_out_valid_out_0),
        .out_valid_out_1(load_weight0_B13_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe53503(GPOUT,10)
    assign out_c0_exe53503 = load_weight0_B13_branch_out_c0_exe53503;

    // out_stall_in_0(GPOUT,11)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = load_weight0_B13_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,13)
    assign out_valid_out_0 = load_weight0_B13_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,14)
    assign out_valid_out_1 = load_weight0_B13_branch_out_valid_out_1;

endmodule
