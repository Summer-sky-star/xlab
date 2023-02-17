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

// SystemVerilog created from cnn_top_bb_conv_process_B15
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B15 (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_53_0,
    input wire [31:0] in_intel_reserved_ffwd_78_0,
    input wire [0:0] in_iowr_bl_input_ctrl0_1_i_fifoready,
    input wire [0:0] in_iowr_bl_input_ctrl1_1_i_fifoready,
    input wire [0:0] in_iowr_bl_weight_ctrl0_1_i_fifoready,
    input wire [0:0] in_iowr_bl_weight_ctrl1_1_i_fifoready,
    input wire [0:0] in_l_0_off0492_0,
    input wire [0:0] in_l_0_off0492_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_intel_reserved_ffwd_75_0,
    output wire [31:0] out_intel_reserved_ffwd_76_0,
    output wire [0:0] out_intel_reserved_ffwd_77_0,
    output wire [15:0] out_iowr_bl_input_ctrl0_1_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl0_1_o_fifovalid,
    output wire [15:0] out_iowr_bl_input_ctrl1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl1_1_o_fifovalid,
    output wire [15:0] out_iowr_bl_weight_ctrl0_1_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl0_1_o_fifovalid,
    output wire [15:0] out_iowr_bl_weight_ctrl1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl1_1_o_fifovalid,
    output wire [0:0] out_lnot,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_75_0;
    wire [31:0] bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_76_0;
    wire [0:0] bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_77_0;
    wire [15:0] bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifovalid;
    wire [0:0] bb_conv_process_B15_stall_region_out_lnot;
    wire [0:0] bb_conv_process_B15_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B15_stall_region_out_valid_out;
    wire [0:0] conv_process_B15_branch_out_lnot;
    wire [0:0] conv_process_B15_branch_out_stall_out;
    wire [0:0] conv_process_B15_branch_out_valid_out_0;
    wire [0:0] conv_process_B15_merge_out_forked;
    wire [0:0] conv_process_B15_merge_out_l_0_off0492;
    wire [0:0] conv_process_B15_merge_out_stall_out_0;
    wire [0:0] conv_process_B15_merge_out_stall_out_1;
    wire [0:0] conv_process_B15_merge_out_valid_out;


    // conv_process_B15_branch(BLACKBOX,3)
    cnn_top_conv_process_B15_branch theconv_process_B15_branch (
        .in_lnot(bb_conv_process_B15_stall_region_out_lnot),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B15_stall_region_out_valid_out),
        .out_lnot(conv_process_B15_branch_out_lnot),
        .out_stall_out(conv_process_B15_branch_out_stall_out),
        .out_valid_out_0(conv_process_B15_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B15_merge(BLACKBOX,4)
    cnn_top_conv_process_B15_merge theconv_process_B15_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_l_0_off0492_0(in_l_0_off0492_0),
        .in_l_0_off0492_1(in_l_0_off0492_1),
        .in_stall_in(bb_conv_process_B15_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(conv_process_B15_merge_out_forked),
        .out_l_0_off0492(conv_process_B15_merge_out_l_0_off0492),
        .out_stall_out_0(conv_process_B15_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B15_merge_out_stall_out_1),
        .out_valid_out(conv_process_B15_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B15_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B15_stall_region thebb_conv_process_B15_stall_region (
        .in_forked(conv_process_B15_merge_out_forked),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_iowr_bl_input_ctrl0_1_i_fifoready(in_iowr_bl_input_ctrl0_1_i_fifoready),
        .in_iowr_bl_input_ctrl1_1_i_fifoready(in_iowr_bl_input_ctrl1_1_i_fifoready),
        .in_iowr_bl_weight_ctrl0_1_i_fifoready(in_iowr_bl_weight_ctrl0_1_i_fifoready),
        .in_iowr_bl_weight_ctrl1_1_i_fifoready(in_iowr_bl_weight_ctrl1_1_i_fifoready),
        .in_l_0_off0492(conv_process_B15_merge_out_l_0_off0492),
        .in_stall_in(conv_process_B15_branch_out_stall_out),
        .in_valid_in(conv_process_B15_merge_out_valid_out),
        .out_intel_reserved_ffwd_75_0(bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_77_0),
        .out_iowr_bl_input_ctrl0_1_o_fifodata(bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifodata),
        .out_iowr_bl_input_ctrl0_1_o_fifovalid(bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifovalid),
        .out_iowr_bl_input_ctrl1_1_o_fifodata(bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifodata),
        .out_iowr_bl_input_ctrl1_1_o_fifovalid(bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifovalid),
        .out_iowr_bl_weight_ctrl0_1_o_fifodata(bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifodata),
        .out_iowr_bl_weight_ctrl0_1_o_fifovalid(bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifovalid),
        .out_iowr_bl_weight_ctrl1_1_o_fifodata(bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifodata),
        .out_iowr_bl_weight_ctrl1_1_o_fifovalid(bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifovalid),
        .out_lnot(bb_conv_process_B15_stall_region_out_lnot),
        .out_stall_out(bb_conv_process_B15_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B15_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_75_0(GPOUT,19)
    assign out_intel_reserved_ffwd_75_0 = bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_75_0;

    // out_intel_reserved_ffwd_76_0(GPOUT,20)
    assign out_intel_reserved_ffwd_76_0 = bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_76_0;

    // out_intel_reserved_ffwd_77_0(GPOUT,21)
    assign out_intel_reserved_ffwd_77_0 = bb_conv_process_B15_stall_region_out_intel_reserved_ffwd_77_0;

    // out_iowr_bl_input_ctrl0_1_o_fifodata(GPOUT,22)
    assign out_iowr_bl_input_ctrl0_1_o_fifodata = bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifodata;

    // out_iowr_bl_input_ctrl0_1_o_fifovalid(GPOUT,23)
    assign out_iowr_bl_input_ctrl0_1_o_fifovalid = bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl0_1_o_fifovalid;

    // out_iowr_bl_input_ctrl1_1_o_fifodata(GPOUT,24)
    assign out_iowr_bl_input_ctrl1_1_o_fifodata = bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifodata;

    // out_iowr_bl_input_ctrl1_1_o_fifovalid(GPOUT,25)
    assign out_iowr_bl_input_ctrl1_1_o_fifovalid = bb_conv_process_B15_stall_region_out_iowr_bl_input_ctrl1_1_o_fifovalid;

    // out_iowr_bl_weight_ctrl0_1_o_fifodata(GPOUT,26)
    assign out_iowr_bl_weight_ctrl0_1_o_fifodata = bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifodata;

    // out_iowr_bl_weight_ctrl0_1_o_fifovalid(GPOUT,27)
    assign out_iowr_bl_weight_ctrl0_1_o_fifovalid = bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl0_1_o_fifovalid;

    // out_iowr_bl_weight_ctrl1_1_o_fifodata(GPOUT,28)
    assign out_iowr_bl_weight_ctrl1_1_o_fifodata = bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifodata;

    // out_iowr_bl_weight_ctrl1_1_o_fifovalid(GPOUT,29)
    assign out_iowr_bl_weight_ctrl1_1_o_fifovalid = bb_conv_process_B15_stall_region_out_iowr_bl_weight_ctrl1_1_o_fifovalid;

    // out_lnot(GPOUT,30)
    assign out_lnot = conv_process_B15_branch_out_lnot;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = conv_process_B15_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = conv_process_B15_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,33)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,34)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = conv_process_B15_branch_out_valid_out_0;

endmodule
