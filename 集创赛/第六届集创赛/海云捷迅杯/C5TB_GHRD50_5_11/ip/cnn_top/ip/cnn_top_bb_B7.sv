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

// SystemVerilog created from cnn_top_bb_B7
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B7 (
    input wire [31:0] in_intel_reserved_ffwd_24_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_24_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_25_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_25_0_1_tpl,
    input wire [63:0] in_intel_reserved_ffwd_38_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_38_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_39_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_39_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_40_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_40_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_41_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_41_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_42_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_42_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_20_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_21_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_22_tpl,
    input wire [31:0] in_intel_reserved_ffwd_42_0_23_tpl,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_iord_bl_return_conv_process_i_fifodata,
    input wire [0:0] in_iord_bl_return_conv_process_i_fifovalid,
    input wire [0:0] in_iord_bl_return_load_input0_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_input0_i_fifovalid,
    input wire [0:0] in_iord_bl_return_load_input1_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_input1_i_fifovalid,
    input wire [0:0] in_iord_bl_return_load_weight0_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_weight0_i_fifovalid,
    input wire [0:0] in_iord_bl_return_load_weight1_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_weight1_i_fifovalid,
    input wire [0:0] in_iowr_bl_call_conv_process_i_fifoready,
    input wire [0:0] in_iowr_bl_call_load_input0_i_fifoready,
    input wire [0:0] in_iowr_bl_call_load_input1_i_fifoready,
    input wire [0:0] in_iowr_bl_call_load_weight0_i_fifoready,
    input wire [0:0] in_iowr_bl_call_load_weight1_i_fifoready,
    input wire [31:0] in_pre2_0,
    input wire [31:0] in_pre2_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tr_i_0115_0,
    input wire [31:0] in_tr_i_0115_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_inc_i,
    output wire [0:0] out_iord_bl_return_conv_process_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_conv_process_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_input0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_load_input0_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_input1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_load_input1_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_weight0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_load_weight0_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_weight1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_load_weight1_o_fifoready,
    output wire [831:0] out_iowr_bl_call_conv_process_o_fifodata,
    output wire [0:0] out_iowr_bl_call_conv_process_o_fifovalid,
    output wire [703:0] out_iowr_bl_call_load_input0_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_input0_o_fifovalid,
    output wire [703:0] out_iowr_bl_call_load_input1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_input1_o_fifovalid,
    output wire [703:0] out_iowr_bl_call_load_weight0_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_weight0_o_fifovalid,
    output wire [703:0] out_iowr_bl_call_load_weight1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_weight1_o_fifovalid,
    output wire [31:0] out_pre2,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_cnn_top_B7_stall_region_out_inc_i;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoready;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoready;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoready;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoready;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoready;
    wire [831:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifodata;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifodata;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifodata;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifodata;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifodata;
    wire [0:0] bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifovalid;
    wire [31:0] bb_cnn_top_B7_stall_region_out_pre2;
    wire [0:0] bb_cnn_top_B7_stall_region_out_stall_out;
    wire [0:0] bb_cnn_top_B7_stall_region_out_unnamed_cnn_top56;
    wire [0:0] bb_cnn_top_B7_stall_region_out_valid_out;
    wire [31:0] cnn_top_B7_branch_out_inc_i;
    wire [31:0] cnn_top_B7_branch_out_pre2;
    wire [0:0] cnn_top_B7_branch_out_stall_out;
    wire [0:0] cnn_top_B7_branch_out_valid_out_0;
    wire [0:0] cnn_top_B7_branch_out_valid_out_1;
    wire [31:0] cnn_top_B7_merge_out_pre2;
    wire [0:0] cnn_top_B7_merge_out_stall_out_0;
    wire [0:0] cnn_top_B7_merge_out_stall_out_1;
    wire [31:0] cnn_top_B7_merge_out_tr_i_0115;
    wire [0:0] cnn_top_B7_merge_out_valid_out;


    // cnn_top_B7_merge(BLACKBOX,154)
    cnn_top_B7_merge thecnn_top_B7_merge (
        .in_pre2_0(in_pre2_0),
        .in_pre2_1(in_pre2_1),
        .in_stall_in(bb_cnn_top_B7_stall_region_out_stall_out),
        .in_tr_i_0115_0(in_tr_i_0115_0),
        .in_tr_i_0115_1(in_tr_i_0115_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_pre2(cnn_top_B7_merge_out_pre2),
        .out_stall_out_0(cnn_top_B7_merge_out_stall_out_0),
        .out_stall_out_1(cnn_top_B7_merge_out_stall_out_1),
        .out_tr_i_0115(cnn_top_B7_merge_out_tr_i_0115),
        .out_valid_out(cnn_top_B7_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B7_stall_region(BLACKBOX,152)
    cnn_top_bb_B7_stall_region thebb_cnn_top_B7_stall_region (
        .in_intel_reserved_ffwd_24_0_0_tpl(in_intel_reserved_ffwd_24_0_0_tpl),
        .in_intel_reserved_ffwd_24_0_1_tpl(in_intel_reserved_ffwd_24_0_1_tpl),
        .in_intel_reserved_ffwd_24_0_2_tpl(in_intel_reserved_ffwd_24_0_2_tpl),
        .in_intel_reserved_ffwd_24_0_3_tpl(in_intel_reserved_ffwd_24_0_3_tpl),
        .in_intel_reserved_ffwd_24_0_4_tpl(in_intel_reserved_ffwd_24_0_4_tpl),
        .in_intel_reserved_ffwd_24_0_5_tpl(in_intel_reserved_ffwd_24_0_5_tpl),
        .in_intel_reserved_ffwd_24_0_6_tpl(in_intel_reserved_ffwd_24_0_6_tpl),
        .in_intel_reserved_ffwd_24_0_7_tpl(in_intel_reserved_ffwd_24_0_7_tpl),
        .in_intel_reserved_ffwd_24_0_8_tpl(in_intel_reserved_ffwd_24_0_8_tpl),
        .in_intel_reserved_ffwd_24_0_9_tpl(in_intel_reserved_ffwd_24_0_9_tpl),
        .in_intel_reserved_ffwd_24_0_10_tpl(in_intel_reserved_ffwd_24_0_10_tpl),
        .in_intel_reserved_ffwd_24_0_11_tpl(in_intel_reserved_ffwd_24_0_11_tpl),
        .in_intel_reserved_ffwd_24_0_12_tpl(in_intel_reserved_ffwd_24_0_12_tpl),
        .in_intel_reserved_ffwd_24_0_13_tpl(in_intel_reserved_ffwd_24_0_13_tpl),
        .in_intel_reserved_ffwd_24_0_14_tpl(in_intel_reserved_ffwd_24_0_14_tpl),
        .in_intel_reserved_ffwd_24_0_15_tpl(in_intel_reserved_ffwd_24_0_15_tpl),
        .in_intel_reserved_ffwd_25_0_0_tpl(in_intel_reserved_ffwd_25_0_0_tpl),
        .in_intel_reserved_ffwd_25_0_1_tpl(in_intel_reserved_ffwd_25_0_1_tpl),
        .in_intel_reserved_ffwd_38_0_0_tpl(in_intel_reserved_ffwd_38_0_0_tpl),
        .in_intel_reserved_ffwd_38_0_1_tpl(in_intel_reserved_ffwd_38_0_1_tpl),
        .in_intel_reserved_ffwd_38_0_2_tpl(in_intel_reserved_ffwd_38_0_2_tpl),
        .in_intel_reserved_ffwd_38_0_3_tpl(in_intel_reserved_ffwd_38_0_3_tpl),
        .in_intel_reserved_ffwd_38_0_4_tpl(in_intel_reserved_ffwd_38_0_4_tpl),
        .in_intel_reserved_ffwd_38_0_5_tpl(in_intel_reserved_ffwd_38_0_5_tpl),
        .in_intel_reserved_ffwd_38_0_6_tpl(in_intel_reserved_ffwd_38_0_6_tpl),
        .in_intel_reserved_ffwd_38_0_7_tpl(in_intel_reserved_ffwd_38_0_7_tpl),
        .in_intel_reserved_ffwd_38_0_8_tpl(in_intel_reserved_ffwd_38_0_8_tpl),
        .in_intel_reserved_ffwd_38_0_9_tpl(in_intel_reserved_ffwd_38_0_9_tpl),
        .in_intel_reserved_ffwd_38_0_10_tpl(in_intel_reserved_ffwd_38_0_10_tpl),
        .in_intel_reserved_ffwd_38_0_11_tpl(in_intel_reserved_ffwd_38_0_11_tpl),
        .in_intel_reserved_ffwd_38_0_12_tpl(in_intel_reserved_ffwd_38_0_12_tpl),
        .in_intel_reserved_ffwd_38_0_13_tpl(in_intel_reserved_ffwd_38_0_13_tpl),
        .in_intel_reserved_ffwd_38_0_14_tpl(in_intel_reserved_ffwd_38_0_14_tpl),
        .in_intel_reserved_ffwd_38_0_15_tpl(in_intel_reserved_ffwd_38_0_15_tpl),
        .in_intel_reserved_ffwd_38_0_16_tpl(in_intel_reserved_ffwd_38_0_16_tpl),
        .in_intel_reserved_ffwd_38_0_17_tpl(in_intel_reserved_ffwd_38_0_17_tpl),
        .in_intel_reserved_ffwd_38_0_18_tpl(in_intel_reserved_ffwd_38_0_18_tpl),
        .in_intel_reserved_ffwd_38_0_19_tpl(in_intel_reserved_ffwd_38_0_19_tpl),
        .in_intel_reserved_ffwd_38_0_20_tpl(in_intel_reserved_ffwd_38_0_20_tpl),
        .in_intel_reserved_ffwd_39_0_0_tpl(in_intel_reserved_ffwd_39_0_0_tpl),
        .in_intel_reserved_ffwd_39_0_1_tpl(in_intel_reserved_ffwd_39_0_1_tpl),
        .in_intel_reserved_ffwd_39_0_2_tpl(in_intel_reserved_ffwd_39_0_2_tpl),
        .in_intel_reserved_ffwd_39_0_3_tpl(in_intel_reserved_ffwd_39_0_3_tpl),
        .in_intel_reserved_ffwd_39_0_4_tpl(in_intel_reserved_ffwd_39_0_4_tpl),
        .in_intel_reserved_ffwd_39_0_5_tpl(in_intel_reserved_ffwd_39_0_5_tpl),
        .in_intel_reserved_ffwd_39_0_6_tpl(in_intel_reserved_ffwd_39_0_6_tpl),
        .in_intel_reserved_ffwd_39_0_7_tpl(in_intel_reserved_ffwd_39_0_7_tpl),
        .in_intel_reserved_ffwd_39_0_8_tpl(in_intel_reserved_ffwd_39_0_8_tpl),
        .in_intel_reserved_ffwd_39_0_9_tpl(in_intel_reserved_ffwd_39_0_9_tpl),
        .in_intel_reserved_ffwd_39_0_10_tpl(in_intel_reserved_ffwd_39_0_10_tpl),
        .in_intel_reserved_ffwd_39_0_11_tpl(in_intel_reserved_ffwd_39_0_11_tpl),
        .in_intel_reserved_ffwd_39_0_12_tpl(in_intel_reserved_ffwd_39_0_12_tpl),
        .in_intel_reserved_ffwd_39_0_13_tpl(in_intel_reserved_ffwd_39_0_13_tpl),
        .in_intel_reserved_ffwd_39_0_14_tpl(in_intel_reserved_ffwd_39_0_14_tpl),
        .in_intel_reserved_ffwd_39_0_15_tpl(in_intel_reserved_ffwd_39_0_15_tpl),
        .in_intel_reserved_ffwd_39_0_16_tpl(in_intel_reserved_ffwd_39_0_16_tpl),
        .in_intel_reserved_ffwd_39_0_17_tpl(in_intel_reserved_ffwd_39_0_17_tpl),
        .in_intel_reserved_ffwd_39_0_18_tpl(in_intel_reserved_ffwd_39_0_18_tpl),
        .in_intel_reserved_ffwd_39_0_19_tpl(in_intel_reserved_ffwd_39_0_19_tpl),
        .in_intel_reserved_ffwd_39_0_20_tpl(in_intel_reserved_ffwd_39_0_20_tpl),
        .in_intel_reserved_ffwd_40_0_0_tpl(in_intel_reserved_ffwd_40_0_0_tpl),
        .in_intel_reserved_ffwd_40_0_1_tpl(in_intel_reserved_ffwd_40_0_1_tpl),
        .in_intel_reserved_ffwd_40_0_2_tpl(in_intel_reserved_ffwd_40_0_2_tpl),
        .in_intel_reserved_ffwd_40_0_3_tpl(in_intel_reserved_ffwd_40_0_3_tpl),
        .in_intel_reserved_ffwd_40_0_4_tpl(in_intel_reserved_ffwd_40_0_4_tpl),
        .in_intel_reserved_ffwd_40_0_5_tpl(in_intel_reserved_ffwd_40_0_5_tpl),
        .in_intel_reserved_ffwd_40_0_6_tpl(in_intel_reserved_ffwd_40_0_6_tpl),
        .in_intel_reserved_ffwd_40_0_7_tpl(in_intel_reserved_ffwd_40_0_7_tpl),
        .in_intel_reserved_ffwd_40_0_8_tpl(in_intel_reserved_ffwd_40_0_8_tpl),
        .in_intel_reserved_ffwd_40_0_9_tpl(in_intel_reserved_ffwd_40_0_9_tpl),
        .in_intel_reserved_ffwd_40_0_10_tpl(in_intel_reserved_ffwd_40_0_10_tpl),
        .in_intel_reserved_ffwd_40_0_11_tpl(in_intel_reserved_ffwd_40_0_11_tpl),
        .in_intel_reserved_ffwd_40_0_12_tpl(in_intel_reserved_ffwd_40_0_12_tpl),
        .in_intel_reserved_ffwd_40_0_13_tpl(in_intel_reserved_ffwd_40_0_13_tpl),
        .in_intel_reserved_ffwd_40_0_14_tpl(in_intel_reserved_ffwd_40_0_14_tpl),
        .in_intel_reserved_ffwd_40_0_15_tpl(in_intel_reserved_ffwd_40_0_15_tpl),
        .in_intel_reserved_ffwd_40_0_16_tpl(in_intel_reserved_ffwd_40_0_16_tpl),
        .in_intel_reserved_ffwd_40_0_17_tpl(in_intel_reserved_ffwd_40_0_17_tpl),
        .in_intel_reserved_ffwd_40_0_18_tpl(in_intel_reserved_ffwd_40_0_18_tpl),
        .in_intel_reserved_ffwd_40_0_19_tpl(in_intel_reserved_ffwd_40_0_19_tpl),
        .in_intel_reserved_ffwd_41_0_0_tpl(in_intel_reserved_ffwd_41_0_0_tpl),
        .in_intel_reserved_ffwd_41_0_1_tpl(in_intel_reserved_ffwd_41_0_1_tpl),
        .in_intel_reserved_ffwd_41_0_2_tpl(in_intel_reserved_ffwd_41_0_2_tpl),
        .in_intel_reserved_ffwd_41_0_3_tpl(in_intel_reserved_ffwd_41_0_3_tpl),
        .in_intel_reserved_ffwd_41_0_4_tpl(in_intel_reserved_ffwd_41_0_4_tpl),
        .in_intel_reserved_ffwd_41_0_5_tpl(in_intel_reserved_ffwd_41_0_5_tpl),
        .in_intel_reserved_ffwd_41_0_6_tpl(in_intel_reserved_ffwd_41_0_6_tpl),
        .in_intel_reserved_ffwd_41_0_7_tpl(in_intel_reserved_ffwd_41_0_7_tpl),
        .in_intel_reserved_ffwd_41_0_8_tpl(in_intel_reserved_ffwd_41_0_8_tpl),
        .in_intel_reserved_ffwd_41_0_9_tpl(in_intel_reserved_ffwd_41_0_9_tpl),
        .in_intel_reserved_ffwd_41_0_10_tpl(in_intel_reserved_ffwd_41_0_10_tpl),
        .in_intel_reserved_ffwd_41_0_11_tpl(in_intel_reserved_ffwd_41_0_11_tpl),
        .in_intel_reserved_ffwd_41_0_12_tpl(in_intel_reserved_ffwd_41_0_12_tpl),
        .in_intel_reserved_ffwd_41_0_13_tpl(in_intel_reserved_ffwd_41_0_13_tpl),
        .in_intel_reserved_ffwd_41_0_14_tpl(in_intel_reserved_ffwd_41_0_14_tpl),
        .in_intel_reserved_ffwd_41_0_15_tpl(in_intel_reserved_ffwd_41_0_15_tpl),
        .in_intel_reserved_ffwd_41_0_16_tpl(in_intel_reserved_ffwd_41_0_16_tpl),
        .in_intel_reserved_ffwd_41_0_17_tpl(in_intel_reserved_ffwd_41_0_17_tpl),
        .in_intel_reserved_ffwd_41_0_18_tpl(in_intel_reserved_ffwd_41_0_18_tpl),
        .in_intel_reserved_ffwd_41_0_19_tpl(in_intel_reserved_ffwd_41_0_19_tpl),
        .in_intel_reserved_ffwd_42_0_0_tpl(in_intel_reserved_ffwd_42_0_0_tpl),
        .in_intel_reserved_ffwd_42_0_1_tpl(in_intel_reserved_ffwd_42_0_1_tpl),
        .in_intel_reserved_ffwd_42_0_2_tpl(in_intel_reserved_ffwd_42_0_2_tpl),
        .in_intel_reserved_ffwd_42_0_3_tpl(in_intel_reserved_ffwd_42_0_3_tpl),
        .in_intel_reserved_ffwd_42_0_4_tpl(in_intel_reserved_ffwd_42_0_4_tpl),
        .in_intel_reserved_ffwd_42_0_5_tpl(in_intel_reserved_ffwd_42_0_5_tpl),
        .in_intel_reserved_ffwd_42_0_6_tpl(in_intel_reserved_ffwd_42_0_6_tpl),
        .in_intel_reserved_ffwd_42_0_7_tpl(in_intel_reserved_ffwd_42_0_7_tpl),
        .in_intel_reserved_ffwd_42_0_8_tpl(in_intel_reserved_ffwd_42_0_8_tpl),
        .in_intel_reserved_ffwd_42_0_9_tpl(in_intel_reserved_ffwd_42_0_9_tpl),
        .in_intel_reserved_ffwd_42_0_10_tpl(in_intel_reserved_ffwd_42_0_10_tpl),
        .in_intel_reserved_ffwd_42_0_11_tpl(in_intel_reserved_ffwd_42_0_11_tpl),
        .in_intel_reserved_ffwd_42_0_12_tpl(in_intel_reserved_ffwd_42_0_12_tpl),
        .in_intel_reserved_ffwd_42_0_13_tpl(in_intel_reserved_ffwd_42_0_13_tpl),
        .in_intel_reserved_ffwd_42_0_14_tpl(in_intel_reserved_ffwd_42_0_14_tpl),
        .in_intel_reserved_ffwd_42_0_15_tpl(in_intel_reserved_ffwd_42_0_15_tpl),
        .in_intel_reserved_ffwd_42_0_16_tpl(in_intel_reserved_ffwd_42_0_16_tpl),
        .in_intel_reserved_ffwd_42_0_17_tpl(in_intel_reserved_ffwd_42_0_17_tpl),
        .in_intel_reserved_ffwd_42_0_18_tpl(in_intel_reserved_ffwd_42_0_18_tpl),
        .in_intel_reserved_ffwd_42_0_19_tpl(in_intel_reserved_ffwd_42_0_19_tpl),
        .in_intel_reserved_ffwd_42_0_20_tpl(in_intel_reserved_ffwd_42_0_20_tpl),
        .in_intel_reserved_ffwd_42_0_21_tpl(in_intel_reserved_ffwd_42_0_21_tpl),
        .in_intel_reserved_ffwd_42_0_22_tpl(in_intel_reserved_ffwd_42_0_22_tpl),
        .in_intel_reserved_ffwd_42_0_23_tpl(in_intel_reserved_ffwd_42_0_23_tpl),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_iord_bl_return_conv_process_i_fifodata(in_iord_bl_return_conv_process_i_fifodata),
        .in_iord_bl_return_conv_process_i_fifovalid(in_iord_bl_return_conv_process_i_fifovalid),
        .in_iord_bl_return_load_input0_i_fifodata(in_iord_bl_return_load_input0_i_fifodata),
        .in_iord_bl_return_load_input0_i_fifovalid(in_iord_bl_return_load_input0_i_fifovalid),
        .in_iord_bl_return_load_input1_i_fifodata(in_iord_bl_return_load_input1_i_fifodata),
        .in_iord_bl_return_load_input1_i_fifovalid(in_iord_bl_return_load_input1_i_fifovalid),
        .in_iord_bl_return_load_weight0_i_fifodata(in_iord_bl_return_load_weight0_i_fifodata),
        .in_iord_bl_return_load_weight0_i_fifovalid(in_iord_bl_return_load_weight0_i_fifovalid),
        .in_iord_bl_return_load_weight1_i_fifodata(in_iord_bl_return_load_weight1_i_fifodata),
        .in_iord_bl_return_load_weight1_i_fifovalid(in_iord_bl_return_load_weight1_i_fifovalid),
        .in_iowr_bl_call_conv_process_i_fifoready(in_iowr_bl_call_conv_process_i_fifoready),
        .in_iowr_bl_call_load_input0_i_fifoready(in_iowr_bl_call_load_input0_i_fifoready),
        .in_iowr_bl_call_load_input1_i_fifoready(in_iowr_bl_call_load_input1_i_fifoready),
        .in_iowr_bl_call_load_weight0_i_fifoready(in_iowr_bl_call_load_weight0_i_fifoready),
        .in_iowr_bl_call_load_weight1_i_fifoready(in_iowr_bl_call_load_weight1_i_fifoready),
        .in_pre2(cnn_top_B7_merge_out_pre2),
        .in_stall_in(cnn_top_B7_branch_out_stall_out),
        .in_tr_i_0115(cnn_top_B7_merge_out_tr_i_0115),
        .in_valid_in(cnn_top_B7_merge_out_valid_out),
        .out_inc_i(bb_cnn_top_B7_stall_region_out_inc_i),
        .out_iord_bl_return_conv_process_o_fifoalmost_full(bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoalmost_full),
        .out_iord_bl_return_conv_process_o_fifoready(bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoready),
        .out_iord_bl_return_load_input0_o_fifoalmost_full(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoalmost_full),
        .out_iord_bl_return_load_input0_o_fifoready(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoready),
        .out_iord_bl_return_load_input1_o_fifoalmost_full(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoalmost_full),
        .out_iord_bl_return_load_input1_o_fifoready(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoready),
        .out_iord_bl_return_load_weight0_o_fifoalmost_full(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoalmost_full),
        .out_iord_bl_return_load_weight0_o_fifoready(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoready),
        .out_iord_bl_return_load_weight1_o_fifoalmost_full(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoalmost_full),
        .out_iord_bl_return_load_weight1_o_fifoready(bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoready),
        .out_iowr_bl_call_conv_process_o_fifodata(bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifodata),
        .out_iowr_bl_call_conv_process_o_fifovalid(bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifovalid),
        .out_iowr_bl_call_load_input0_o_fifodata(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifodata),
        .out_iowr_bl_call_load_input0_o_fifovalid(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifovalid),
        .out_iowr_bl_call_load_input1_o_fifodata(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifodata),
        .out_iowr_bl_call_load_input1_o_fifovalid(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifovalid),
        .out_iowr_bl_call_load_weight0_o_fifodata(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifodata),
        .out_iowr_bl_call_load_weight0_o_fifovalid(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifovalid),
        .out_iowr_bl_call_load_weight1_o_fifodata(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifodata),
        .out_iowr_bl_call_load_weight1_o_fifovalid(bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifovalid),
        .out_pre2(bb_cnn_top_B7_stall_region_out_pre2),
        .out_stall_out(bb_cnn_top_B7_stall_region_out_stall_out),
        .out_unnamed_cnn_top56(bb_cnn_top_B7_stall_region_out_unnamed_cnn_top56),
        .out_valid_out(bb_cnn_top_B7_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B7_branch(BLACKBOX,153)
    cnn_top_B7_branch thecnn_top_B7_branch (
        .in_inc_i(bb_cnn_top_B7_stall_region_out_inc_i),
        .in_pre2(bb_cnn_top_B7_stall_region_out_pre2),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_unnamed_cnn_top56(bb_cnn_top_B7_stall_region_out_unnamed_cnn_top56),
        .in_valid_in(bb_cnn_top_B7_stall_region_out_valid_out),
        .out_inc_i(cnn_top_B7_branch_out_inc_i),
        .out_pre2(cnn_top_B7_branch_out_pre2),
        .out_stall_out(cnn_top_B7_branch_out_stall_out),
        .out_valid_out_0(cnn_top_B7_branch_out_valid_out_0),
        .out_valid_out_1(cnn_top_B7_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_inc_i(GPOUT,155)
    assign out_inc_i = cnn_top_B7_branch_out_inc_i;

    // out_iord_bl_return_conv_process_o_fifoalmost_full(GPOUT,156)
    assign out_iord_bl_return_conv_process_o_fifoalmost_full = bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoalmost_full;

    // out_iord_bl_return_conv_process_o_fifoready(GPOUT,157)
    assign out_iord_bl_return_conv_process_o_fifoready = bb_cnn_top_B7_stall_region_out_iord_bl_return_conv_process_o_fifoready;

    // out_iord_bl_return_load_input0_o_fifoalmost_full(GPOUT,158)
    assign out_iord_bl_return_load_input0_o_fifoalmost_full = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoalmost_full;

    // out_iord_bl_return_load_input0_o_fifoready(GPOUT,159)
    assign out_iord_bl_return_load_input0_o_fifoready = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input0_o_fifoready;

    // out_iord_bl_return_load_input1_o_fifoalmost_full(GPOUT,160)
    assign out_iord_bl_return_load_input1_o_fifoalmost_full = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoalmost_full;

    // out_iord_bl_return_load_input1_o_fifoready(GPOUT,161)
    assign out_iord_bl_return_load_input1_o_fifoready = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_input1_o_fifoready;

    // out_iord_bl_return_load_weight0_o_fifoalmost_full(GPOUT,162)
    assign out_iord_bl_return_load_weight0_o_fifoalmost_full = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoalmost_full;

    // out_iord_bl_return_load_weight0_o_fifoready(GPOUT,163)
    assign out_iord_bl_return_load_weight0_o_fifoready = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight0_o_fifoready;

    // out_iord_bl_return_load_weight1_o_fifoalmost_full(GPOUT,164)
    assign out_iord_bl_return_load_weight1_o_fifoalmost_full = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoalmost_full;

    // out_iord_bl_return_load_weight1_o_fifoready(GPOUT,165)
    assign out_iord_bl_return_load_weight1_o_fifoready = bb_cnn_top_B7_stall_region_out_iord_bl_return_load_weight1_o_fifoready;

    // out_iowr_bl_call_conv_process_o_fifodata(GPOUT,166)
    assign out_iowr_bl_call_conv_process_o_fifodata = bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifodata;

    // out_iowr_bl_call_conv_process_o_fifovalid(GPOUT,167)
    assign out_iowr_bl_call_conv_process_o_fifovalid = bb_cnn_top_B7_stall_region_out_iowr_bl_call_conv_process_o_fifovalid;

    // out_iowr_bl_call_load_input0_o_fifodata(GPOUT,168)
    assign out_iowr_bl_call_load_input0_o_fifodata = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifodata;

    // out_iowr_bl_call_load_input0_o_fifovalid(GPOUT,169)
    assign out_iowr_bl_call_load_input0_o_fifovalid = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input0_o_fifovalid;

    // out_iowr_bl_call_load_input1_o_fifodata(GPOUT,170)
    assign out_iowr_bl_call_load_input1_o_fifodata = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifodata;

    // out_iowr_bl_call_load_input1_o_fifovalid(GPOUT,171)
    assign out_iowr_bl_call_load_input1_o_fifovalid = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_input1_o_fifovalid;

    // out_iowr_bl_call_load_weight0_o_fifodata(GPOUT,172)
    assign out_iowr_bl_call_load_weight0_o_fifodata = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifodata;

    // out_iowr_bl_call_load_weight0_o_fifovalid(GPOUT,173)
    assign out_iowr_bl_call_load_weight0_o_fifovalid = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight0_o_fifovalid;

    // out_iowr_bl_call_load_weight1_o_fifodata(GPOUT,174)
    assign out_iowr_bl_call_load_weight1_o_fifodata = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifodata;

    // out_iowr_bl_call_load_weight1_o_fifovalid(GPOUT,175)
    assign out_iowr_bl_call_load_weight1_o_fifovalid = bb_cnn_top_B7_stall_region_out_iowr_bl_call_load_weight1_o_fifovalid;

    // out_pre2(GPOUT,176)
    assign out_pre2 = cnn_top_B7_branch_out_pre2;

    // out_stall_in_0(GPOUT,177)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,178)
    assign out_stall_out_0 = cnn_top_B7_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,179)
    assign out_stall_out_1 = cnn_top_B7_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,180)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,181)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,182)
    assign out_valid_out_0 = cnn_top_B7_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,183)
    assign out_valid_out_1 = cnn_top_B7_branch_out_valid_out_1;

endmodule
