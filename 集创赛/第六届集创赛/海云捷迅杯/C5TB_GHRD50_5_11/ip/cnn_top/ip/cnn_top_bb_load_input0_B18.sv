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

// SystemVerilog created from cnn_top_bb_load_input0_B18
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B18 (
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_load_input0_B18_stall_region_out_stall_out;
    wire [0:0] bb_load_input0_B18_stall_region_out_valid_out;
    wire [0:0] load_input0_B18_branch_out_stall_out;
    wire [0:0] load_input0_B18_branch_out_valid_out_0;
    wire [0:0] load_input0_B18_merge_out_stall_out_0;
    wire [0:0] load_input0_B18_merge_out_valid_out;


    // load_input0_B18_branch(BLACKBOX,5)
    cnn_top_load_input0_B18_branch theload_input0_B18_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_input0_B18_stall_region_out_valid_out),
        .out_stall_out(load_input0_B18_branch_out_stall_out),
        .out_valid_out_0(load_input0_B18_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B18_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input0_B18_stall_region thebb_load_input0_B18_stall_region (
        .in_stall_in(load_input0_B18_branch_out_stall_out),
        .in_valid_in(load_input0_B18_merge_out_valid_out),
        .out_stall_out(bb_load_input0_B18_stall_region_out_stall_out),
        .out_valid_out(bb_load_input0_B18_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B18_merge(BLACKBOX,6)
    cnn_top_load_input0_B18_merge theload_input0_B18_merge (
        .in_stall_in(bb_load_input0_B18_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(load_input0_B18_merge_out_stall_out_0),
        .out_valid_out(load_input0_B18_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,7)
    assign out_stall_out_0 = load_input0_B18_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,8)
    assign out_valid_out_0 = load_input0_B18_branch_out_valid_out_0;

endmodule
