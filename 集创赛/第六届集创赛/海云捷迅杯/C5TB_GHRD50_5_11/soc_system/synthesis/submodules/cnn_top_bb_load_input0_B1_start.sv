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

// SystemVerilog created from cnn_top_bb_load_input0_B1_start
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B1_start (
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [703:0] in_iord_bl_call_load_input0_i_fifodata,
    input wire [0:0] in_iord_bl_call_load_input0_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [32:0] out_intel_reserved_ffwd_14_0,
    output wire [32:0] out_intel_reserved_ffwd_15_0,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    output wire [32:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_iord_bl_call_load_input0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_load_input0_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_load_input0_B1_start_stall_region_out_feedback_stall_out_1;
    wire [63:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_12_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_13_0;
    wire [32:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_14_0;
    wire [32:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_15_0;
    wire [32:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_16_0;
    wire [32:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoalmost_full;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoready;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_load_input0_B1_start_stall_region_out_valid_out;
    wire [0:0] load_input0_B1_start_branch_out_stall_out;
    wire [0:0] load_input0_B1_start_branch_out_valid_out_0;
    wire [0:0] load_input0_B1_start_merge_out_stall_out_0;
    wire [0:0] load_input0_B1_start_merge_out_stall_out_1;
    wire [0:0] load_input0_B1_start_merge_out_valid_out;


    // load_input0_B1_start_merge(BLACKBOX,12)
    cnn_top_load_input0_B1_start_merge theload_input0_B1_start_merge (
        .in_stall_in(bb_load_input0_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(load_input0_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(load_input0_B1_start_merge_out_stall_out_1),
        .out_valid_out(load_input0_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B1_start_branch(BLACKBOX,11)
    cnn_top_load_input0_B1_start_branch theload_input0_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_input0_B1_start_stall_region_out_valid_out),
        .out_stall_out(load_input0_B1_start_branch_out_stall_out),
        .out_valid_out_0(load_input0_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B1_start_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input0_B1_start_stall_region thebb_load_input0_B1_start_stall_region (
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_iord_bl_call_load_input0_i_fifodata(in_iord_bl_call_load_input0_i_fifodata),
        .in_iord_bl_call_load_input0_i_fifovalid(in_iord_bl_call_load_input0_i_fifovalid),
        .in_stall_in(load_input0_B1_start_branch_out_stall_out),
        .in_valid_in(load_input0_B1_start_merge_out_valid_out),
        .out_feedback_stall_out_1(bb_load_input0_B1_start_stall_region_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_1_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_load_input0_o_fifoalmost_full(bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoalmost_full),
        .out_iord_bl_call_load_input0_o_fifoready(bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoready),
        .out_stall_out(bb_load_input0_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_load_input0_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_1_sync(GPOUT,4)
    assign out_feedback_stall_out_1 = bb_load_input0_B1_start_stall_region_out_feedback_stall_out_1;

    // out_intel_reserved_ffwd_0_0(GPOUT,13)
    assign out_intel_reserved_ffwd_0_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_0_0;

    // out_intel_reserved_ffwd_10_0(GPOUT,14)
    assign out_intel_reserved_ffwd_10_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_10_0;

    // out_intel_reserved_ffwd_11_0(GPOUT,15)
    assign out_intel_reserved_ffwd_11_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_11_0;

    // out_intel_reserved_ffwd_12_0(GPOUT,16)
    assign out_intel_reserved_ffwd_12_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_12_0;

    // out_intel_reserved_ffwd_13_0(GPOUT,17)
    assign out_intel_reserved_ffwd_13_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_13_0;

    // out_intel_reserved_ffwd_14_0(GPOUT,18)
    assign out_intel_reserved_ffwd_14_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_14_0;

    // out_intel_reserved_ffwd_15_0(GPOUT,19)
    assign out_intel_reserved_ffwd_15_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_15_0;

    // out_intel_reserved_ffwd_16_0(GPOUT,20)
    assign out_intel_reserved_ffwd_16_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,21)
    assign out_intel_reserved_ffwd_17_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_1_0(GPOUT,22)
    assign out_intel_reserved_ffwd_1_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_1_0;

    // out_intel_reserved_ffwd_2_0(GPOUT,23)
    assign out_intel_reserved_ffwd_2_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_2_0;

    // out_intel_reserved_ffwd_3_0(GPOUT,24)
    assign out_intel_reserved_ffwd_3_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_3_0;

    // out_intel_reserved_ffwd_4_0(GPOUT,25)
    assign out_intel_reserved_ffwd_4_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_4_0;

    // out_intel_reserved_ffwd_5_0(GPOUT,26)
    assign out_intel_reserved_ffwd_5_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_5_0;

    // out_intel_reserved_ffwd_6_0(GPOUT,27)
    assign out_intel_reserved_ffwd_6_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_6_0;

    // out_intel_reserved_ffwd_7_0(GPOUT,28)
    assign out_intel_reserved_ffwd_7_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_7_0;

    // out_intel_reserved_ffwd_8_0(GPOUT,29)
    assign out_intel_reserved_ffwd_8_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_8_0;

    // out_intel_reserved_ffwd_9_0(GPOUT,30)
    assign out_intel_reserved_ffwd_9_0 = bb_load_input0_B1_start_stall_region_out_intel_reserved_ffwd_9_0;

    // out_iord_bl_call_load_input0_o_fifoalmost_full(GPOUT,31)
    assign out_iord_bl_call_load_input0_o_fifoalmost_full = bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoalmost_full;

    // out_iord_bl_call_load_input0_o_fifoready(GPOUT,32)
    assign out_iord_bl_call_load_input0_o_fifoready = bb_load_input0_B1_start_stall_region_out_iord_bl_call_load_input0_o_fifoready;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = load_input0_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = load_input0_B1_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,35)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,36)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = load_input0_B1_start_branch_out_valid_out_0;

endmodule
