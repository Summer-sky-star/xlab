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

// SystemVerilog created from cnn_top_i_iowr_bl_call_conv_process_unnamed_66_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_iowr_bl_call_conv_process_unnamed_66_cnn_top0 (
    output wire [0:0] out_iowr_bl_call_conv_process_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_valid,
    input wire [63:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [31:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_cnn_top65,
    input wire [0:0] in_iowr_bl_call_conv_process_i_fifoready,
    output wire [831:0] out_iowr_bl_call_conv_process_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] dupName_0_const_0_x_q;
    wire [831:0] dsdk_ip_adapt_bitjoin1_q;
    wire [511:0] dsdk_ip_adapt_bitjoin3_q;
    wire [63:0] dsdk_ip_adapt_bitjoin6_q;
    wire [831:0] iowr_i_data;
    wire [0:0] iowr_i_endofpacket;
    wire iowr_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_i_fifoready;
    wire iowr_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_i_fifosize;
    wire [31:0] iowr_i_packetempty;
    wire [0:0] iowr_i_predicate;
    wire iowr_i_predicate_bitsignaltemp;
    wire [0:0] iowr_i_stall;
    wire iowr_i_stall_bitsignaltemp;
    wire [0:0] iowr_i_startofpacket;
    wire iowr_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_i_valid;
    wire iowr_i_valid_bitsignaltemp;
    wire [0:0] iowr_o_ack;
    wire iowr_o_ack_bitsignaltemp;
    wire [831:0] iowr_o_fifodata;
    wire [0:0] iowr_o_fifoempty;
    wire [0:0] iowr_o_fifovalid;
    wire iowr_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_o_stall;
    wire iowr_o_stall_bitsignaltemp;
    wire [0:0] iowr_o_valid;
    wire iowr_o_valid_bitsignaltemp;
    wire [31:0] iowr_profile_total_fifo_size_incr;


    // dupName_0_const_0_x(CONSTANT,2)
    assign dupName_0_const_0_x_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // dsdk_ip_adapt_bitjoin6(BITJOIN,16)
    assign dsdk_ip_adapt_bitjoin6_q = {in_i_data_23_tpl, in_i_data_22_tpl};

    // dsdk_ip_adapt_bitjoin3(BITJOIN,15)
    assign dsdk_ip_adapt_bitjoin3_q = {in_i_data_21_tpl, in_i_data_20_tpl, in_i_data_19_tpl, in_i_data_18_tpl, in_i_data_17_tpl, in_i_data_16_tpl, in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,14)
    assign dsdk_ip_adapt_bitjoin1_q = {dsdk_ip_adapt_bitjoin6_q, dsdk_ip_adapt_bitjoin3_q, in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl, in_i_data_1_tpl, in_i_data_0_tpl};

    // iowr(EXTIFACE,17)
    assign iowr_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign iowr_i_endofpacket = GND_q;
    assign iowr_i_fifoready = in_iowr_bl_call_conv_process_i_fifoready;
    assign iowr_i_fifosize = dupName_0_const_0_x_q;
    assign iowr_i_packetempty = dupName_0_const_0_x_q;
    assign iowr_i_predicate = in_unnamed_cnn_top65;
    assign iowr_i_stall = in_i_stall;
    assign iowr_i_startofpacket = GND_q;
    assign iowr_i_valid = in_i_valid;
    assign iowr_i_endofpacket_bitsignaltemp = iowr_i_endofpacket[0];
    assign iowr_i_fifoready_bitsignaltemp = iowr_i_fifoready[0];
    assign iowr_i_predicate_bitsignaltemp = iowr_i_predicate[0];
    assign iowr_i_stall_bitsignaltemp = iowr_i_stall[0];
    assign iowr_i_startofpacket_bitsignaltemp = iowr_i_startofpacket[0];
    assign iowr_i_valid_bitsignaltemp = iowr_i_valid[0];
    assign iowr_o_ack[0] = iowr_o_ack_bitsignaltemp;
    assign iowr_o_fifovalid[0] = iowr_o_fifovalid_bitsignaltemp;
    assign iowr_o_stall[0] = iowr_o_stall_bitsignaltemp;
    assign iowr_o_valid[0] = iowr_o_valid_bitsignaltemp;
    hld_iowr #(
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_DOWNSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(832),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiowr (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_endofpacket(iowr_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_i_fifoready_bitsignaltemp),
        .i_fifosize(dupName_0_const_0_x_q),
        .i_packetempty(dupName_0_const_0_x_q),
        .i_predicate(iowr_i_predicate_bitsignaltemp),
        .i_stall(iowr_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_i_valid_bitsignaltemp),
        .o_ack(iowr_o_ack_bitsignaltemp),
        .o_fifodata(iowr_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_o_stall_bitsignaltemp),
        .o_valid(iowr_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_iowr_bl_call_conv_process_o_fifovalid = iowr_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,4)@2
    assign out_o_ack = iowr_o_ack;
    assign out_o_valid = iowr_o_valid;

    // regfree_osync(GPOUT,19)
    assign out_iowr_bl_call_conv_process_o_fifodata = iowr_o_fifodata;

    // sync_out(GPOUT,21)@20000000
    assign out_o_stall = iowr_o_stall;

endmodule
