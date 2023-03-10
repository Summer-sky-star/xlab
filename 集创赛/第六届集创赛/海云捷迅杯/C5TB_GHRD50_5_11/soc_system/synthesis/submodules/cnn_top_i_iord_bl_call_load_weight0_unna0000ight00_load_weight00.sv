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

// SystemVerilog created from cnn_top_i_iord_bl_call_load_weight0_unna0000ight00_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_iord_bl_call_load_weight0_unna0000ight00_load_weight00 (
    output wire [63:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_iord_bl_call_load_weight0_o_fifoready,
    input wire [703:0] in_iord_bl_call_load_weight0_i_fifodata,
    input wire [0:0] in_iord_bl_call_load_weight0_i_fifovalid,
    output wire [0:0] out_iord_bl_call_load_weight0_o_fifoalmost_full,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [703:0] iord_i_fifodata;
    wire [0:0] iord_i_fifoempty;
    wire iord_i_fifoempty_bitsignaltemp;
    wire [0:0] iord_i_fifoendofpacket;
    wire iord_i_fifoendofpacket_bitsignaltemp;
    wire [31:0] iord_i_fifosize;
    wire [0:0] iord_i_fifostartofpacket;
    wire iord_i_fifostartofpacket_bitsignaltemp;
    wire [0:0] iord_i_fifovalid;
    wire iord_i_fifovalid_bitsignaltemp;
    wire [0:0] iord_i_predicate;
    wire iord_i_predicate_bitsignaltemp;
    wire [0:0] iord_i_stall;
    wire iord_i_stall_bitsignaltemp;
    wire [0:0] iord_i_valid;
    wire iord_i_valid_bitsignaltemp;
    wire [703:0] iord_o_data;
    wire [0:0] iord_o_fifoalmost_full;
    wire iord_o_fifoalmost_full_bitsignaltemp;
    wire [0:0] iord_o_fifoready;
    wire iord_o_fifoready_bitsignaltemp;
    wire [0:0] iord_o_stall;
    wire iord_o_stall_bitsignaltemp;
    wire [0:0] iord_o_valid;
    wire iord_o_valid_bitsignaltemp;
    wire [31:0] iord_profile_total_fifo_size_incr;
    wire [511:0] ip_dsdk_adapt_bitselect10_b;
    wire [31:0] ip_dsdk_adapt_bitselect12_b;
    wire [31:0] ip_dsdk_adapt_bitselect14_b;
    wire [31:0] ip_dsdk_adapt_bitselect16_b;
    wire [31:0] ip_dsdk_adapt_bitselect18_b;
    wire [63:0] ip_dsdk_adapt_bitselect2_b;
    wire [31:0] ip_dsdk_adapt_bitselect20_b;
    wire [31:0] ip_dsdk_adapt_bitselect22_b;
    wire [31:0] ip_dsdk_adapt_bitselect24_b;
    wire [31:0] ip_dsdk_adapt_bitselect26_b;
    wire [31:0] ip_dsdk_adapt_bitselect28_b;
    wire [31:0] ip_dsdk_adapt_bitselect30_b;
    wire [31:0] ip_dsdk_adapt_bitselect32_b;
    wire [31:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [31:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect4_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [31:0] ip_dsdk_adapt_bitselect6_b;
    wire [31:0] ip_dsdk_adapt_bitselect8_b;


    // c32_0(CONSTANT,5)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord(EXTIFACE,7)
    assign iord_i_fifodata = in_iord_bl_call_load_weight0_i_fifodata;
    assign iord_i_fifoempty = GND_q;
    assign iord_i_fifoendofpacket = GND_q;
    assign iord_i_fifosize = c32_0_q;
    assign iord_i_fifostartofpacket = GND_q;
    assign iord_i_fifovalid = in_iord_bl_call_load_weight0_i_fifovalid;
    assign iord_i_predicate = GND_q;
    assign iord_i_stall = in_i_stall;
    assign iord_i_valid = in_i_valid;
    assign iord_i_fifoempty_bitsignaltemp = iord_i_fifoempty[0];
    assign iord_i_fifoendofpacket_bitsignaltemp = iord_i_fifoendofpacket[0];
    assign iord_i_fifostartofpacket_bitsignaltemp = iord_i_fifostartofpacket[0];
    assign iord_i_fifovalid_bitsignaltemp = iord_i_fifovalid[0];
    assign iord_i_predicate_bitsignaltemp = iord_i_predicate[0];
    assign iord_i_stall_bitsignaltemp = iord_i_stall[0];
    assign iord_i_valid_bitsignaltemp = iord_i_valid[0];
    assign iord_o_fifoalmost_full[0] = iord_o_fifoalmost_full_bitsignaltemp;
    assign iord_o_fifoready[0] = iord_o_fifoready_bitsignaltemp;
    assign iord_o_stall[0] = iord_o_stall_bitsignaltemp;
    assign iord_o_valid[0] = iord_o_valid_bitsignaltemp;
    hld_iord #(
        .ADD_CAPACITY_UPSTREAM(0),
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_UPSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .STAGING_CAPACITY(0),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(704),
        .EMPTY_WIDTH(0),
        .NON_BLOCKING(0),
        .NO_PREDICATION(1),
        .SYNCHRONIZE_RESET(0)
    ) theiord (
        .i_fifodata(in_iord_bl_call_load_weight0_i_fifodata),
        .i_fifoempty(iord_i_fifoempty_bitsignaltemp),
        .i_fifoendofpacket(iord_i_fifoendofpacket_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_fifostartofpacket(iord_i_fifostartofpacket_bitsignaltemp),
        .i_fifovalid(iord_i_fifovalid_bitsignaltemp),
        .i_predicate(iord_i_predicate_bitsignaltemp),
        .i_stall(iord_i_stall_bitsignaltemp),
        .i_valid(iord_i_valid_bitsignaltemp),
        .o_data(iord_o_data),
        .o_fifoalmost_full(iord_o_fifoalmost_full_bitsignaltemp),
        .o_fifoready(iord_o_fifoready_bitsignaltemp),
        .o_stall(iord_o_stall_bitsignaltemp),
        .o_valid(iord_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect10(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect10_b = iord_o_data[671:160];

    // ip_dsdk_adapt_bitselect42(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect42_b = ip_dsdk_adapt_bitselect10_b[511:480];

    // ip_dsdk_adapt_bitselect40(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect40_b = ip_dsdk_adapt_bitselect10_b[479:448];

    // ip_dsdk_adapt_bitselect38(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect38_b = ip_dsdk_adapt_bitselect10_b[447:416];

    // ip_dsdk_adapt_bitselect36(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect36_b = ip_dsdk_adapt_bitselect10_b[415:384];

    // ip_dsdk_adapt_bitselect34(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect34_b = ip_dsdk_adapt_bitselect10_b[383:352];

    // ip_dsdk_adapt_bitselect32(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect32_b = ip_dsdk_adapt_bitselect10_b[351:320];

    // ip_dsdk_adapt_bitselect30(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect30_b = ip_dsdk_adapt_bitselect10_b[319:288];

    // ip_dsdk_adapt_bitselect28(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect28_b = ip_dsdk_adapt_bitselect10_b[287:256];

    // ip_dsdk_adapt_bitselect26(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect26_b = ip_dsdk_adapt_bitselect10_b[255:224];

    // ip_dsdk_adapt_bitselect24(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect24_b = ip_dsdk_adapt_bitselect10_b[223:192];

    // ip_dsdk_adapt_bitselect22(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect22_b = ip_dsdk_adapt_bitselect10_b[191:160];

    // ip_dsdk_adapt_bitselect20(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect20_b = ip_dsdk_adapt_bitselect10_b[159:128];

    // ip_dsdk_adapt_bitselect18(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect18_b = ip_dsdk_adapt_bitselect10_b[127:96];

    // ip_dsdk_adapt_bitselect16(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect16_b = ip_dsdk_adapt_bitselect10_b[95:64];

    // ip_dsdk_adapt_bitselect14(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect14_b = ip_dsdk_adapt_bitselect10_b[63:32];

    // ip_dsdk_adapt_bitselect12(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect12_b = ip_dsdk_adapt_bitselect10_b[31:0];

    // ip_dsdk_adapt_bitselect8(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect8_b = iord_o_data[159:128];

    // ip_dsdk_adapt_bitselect6(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect6_b = iord_o_data[127:96];

    // ip_dsdk_adapt_bitselect4(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect4_b = iord_o_data[95:64];

    // ip_dsdk_adapt_bitselect2(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect2_b = iord_o_data[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_o_data_0_tpl = ip_dsdk_adapt_bitselect2_b;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect4_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect6_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect8_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect12_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect16_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect18_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_valid = iord_o_valid;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_iord_bl_call_load_weight0_o_fifoready = iord_o_fifoready;

    // regfree_osync(GPOUT,51)
    assign out_iord_bl_call_load_weight0_o_fifoalmost_full = iord_o_fifoalmost_full;

    // sync_out(GPOUT,53)@20000000
    assign out_o_stall = iord_o_stall;

endmodule
