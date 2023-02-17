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

// SystemVerilog created from cnn_top_bb_load_input1_B3
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B3 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    input wire [15:0] in_iord_bl_input_ctrl1_i_fifodata,
    input wire [0:0] in_iord_bl_input_ctrl1_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_iord_bl_input_ctrl1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_input_ctrl1_o_fifoready,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_18_0;
    wire [0:0] bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_19_0;
    wire [0:0] bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoalmost_full;
    wire [0:0] bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoready;
    wire [0:0] bb_load_input1_B3_stall_region_out_stall_out;
    wire [0:0] bb_load_input1_B3_stall_region_out_unnamed_load_input122;
    wire [0:0] bb_load_input1_B3_stall_region_out_valid_out;
    wire [0:0] load_input1_B3_branch_out_stall_out;
    wire [0:0] load_input1_B3_branch_out_valid_out_0;
    wire [0:0] load_input1_B3_branch_out_valid_out_1;
    wire [0:0] load_input1_B3_merge_out_forked;
    wire [0:0] load_input1_B3_merge_out_stall_out_0;
    wire [0:0] load_input1_B3_merge_out_stall_out_1;
    wire [0:0] load_input1_B3_merge_out_valid_out;


    // load_input1_B3_branch(BLACKBOX,15)
    cnn_top_load_input1_B3_branch theload_input1_B3_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_load_input122(bb_load_input1_B3_stall_region_out_unnamed_load_input122),
        .in_valid_in(bb_load_input1_B3_stall_region_out_valid_out),
        .out_stall_out(load_input1_B3_branch_out_stall_out),
        .out_valid_out_0(load_input1_B3_branch_out_valid_out_0),
        .out_valid_out_1(load_input1_B3_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input1_B3_merge(BLACKBOX,16)
    cnn_top_load_input1_B3_merge theload_input1_B3_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_load_input1_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(load_input1_B3_merge_out_forked),
        .out_stall_out_0(load_input1_B3_merge_out_stall_out_0),
        .out_stall_out_1(load_input1_B3_merge_out_stall_out_1),
        .out_valid_out(load_input1_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input1_B3_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input1_B3_stall_region thebb_load_input1_B3_stall_region (
        .in_forked(load_input1_B3_merge_out_forked),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_iord_bl_input_ctrl1_i_fifodata(in_iord_bl_input_ctrl1_i_fifodata),
        .in_iord_bl_input_ctrl1_i_fifovalid(in_iord_bl_input_ctrl1_i_fifovalid),
        .in_stall_in(load_input1_B3_branch_out_stall_out),
        .in_valid_in(load_input1_B3_merge_out_valid_out),
        .out_intel_reserved_ffwd_18_0(bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_19_0),
        .out_iord_bl_input_ctrl1_o_fifoalmost_full(bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoalmost_full),
        .out_iord_bl_input_ctrl1_o_fifoready(bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoready),
        .out_stall_out(bb_load_input1_B3_stall_region_out_stall_out),
        .out_unnamed_load_input122(bb_load_input1_B3_stall_region_out_unnamed_load_input122),
        .out_valid_out(bb_load_input1_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_18_0(GPOUT,17)
    assign out_intel_reserved_ffwd_18_0 = bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,18)
    assign out_intel_reserved_ffwd_19_0 = bb_load_input1_B3_stall_region_out_intel_reserved_ffwd_19_0;

    // out_iord_bl_input_ctrl1_o_fifoalmost_full(GPOUT,19)
    assign out_iord_bl_input_ctrl1_o_fifoalmost_full = bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoalmost_full;

    // out_iord_bl_input_ctrl1_o_fifoready(GPOUT,20)
    assign out_iord_bl_input_ctrl1_o_fifoready = bb_load_input1_B3_stall_region_out_iord_bl_input_ctrl1_o_fifoready;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = load_input1_B3_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = load_input1_B3_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,23)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,24)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = load_input1_B3_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,26)
    assign out_valid_out_1 = load_input1_B3_branch_out_valid_out_1;

endmodule
