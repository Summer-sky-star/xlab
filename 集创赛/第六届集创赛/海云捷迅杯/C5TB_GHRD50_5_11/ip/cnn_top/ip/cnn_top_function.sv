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

// SystemVerilog created from cnn_top_function
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_ddr_in1,
    input wire [63:0] in_arg_ddr_out1,
    input wire [63:0] in_arg_ddr_scale,
    input wire [63:0] in_arg_ddr_w1,
    input wire [63:0] in_arg_param,
    input wire [63:0] in_arg_return,
    input wire [319:0] in_iord_bl_call_cnn_top_i_fifodata,
    input wire [0:0] in_iord_bl_call_cnn_top_i_fifovalid,
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
    input wire [0:0] in_iowr_bl_return_cnn_top_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_cnn_top80_cnn_top_avm_readdata,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_readdatavalid,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_writeack,
    input wire [31:0] in_unnamed_cnn_top9_cnn_top_avm_readdata,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_readdatavalid,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_cnn_top_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_cnn_top_o_fifoready,
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
    output wire [0:0] out_iowr_bl_return_cnn_top_o_fifodata,
    output wire [0:0] out_iowr_bl_return_cnn_top_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_cnn_top80_cnn_top_avm_address,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_burstcount,
    output wire [3:0] out_unnamed_cnn_top80_cnn_top_avm_byteenable,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_enable,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_read,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_write,
    output wire [31:0] out_unnamed_cnn_top80_cnn_top_avm_writedata,
    output wire [31:0] out_unnamed_cnn_top9_cnn_top_avm_address,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_burstcount,
    output wire [3:0] out_unnamed_cnn_top9_cnn_top_avm_byteenable,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_enable,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_read,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_write,
    output wire [31:0] out_unnamed_cnn_top9_cnn_top_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_cnn_top_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_cnn_top_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_cnn_top_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B3_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl;
    wire [63:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_stall_out_0;
    wire [0:0] bb_cnn_top_B4_aunroll_x_out_valid_out_0;
    wire [0:0] bb_cnn_top_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl;
    wire [63:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_cnn_top_B5_aunroll_x_out_pre;
    wire [0:0] bb_cnn_top_B5_aunroll_x_out_stall_out_0;
    wire [0:0] bb_cnn_top_B5_aunroll_x_out_stall_out_1;
    wire [0:0] bb_cnn_top_B5_aunroll_x_out_valid_in_0;
    wire [0:0] bb_cnn_top_B5_aunroll_x_out_valid_in_1;
    wire [0:0] bb_cnn_top_B5_aunroll_x_out_valid_out_0;
    wire [31:0] bb_cnn_top_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_cnn_top_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B5_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_cnn_top_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_cnn_top_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B7_aunroll_x_out_inc_i;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoready;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoready;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoready;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoready;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoready;
    wire [831:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid;
    wire [703:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid;
    wire [31:0] bb_cnn_top_B7_aunroll_x_out_pre2;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_stall_in_0;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_stall_out_0;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_stall_out_1;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_valid_in_0;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_valid_in_1;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_valid_out_0;
    wire [0:0] bb_cnn_top_B7_aunroll_x_out_valid_out_1;
    wire [31:0] bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_cnn_top_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_cnn_top_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_cnn_top_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B8_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_cnn_top_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_cnn_top_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_cnn_top_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_cnn_top_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_cnn_top_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_cnn_top_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_cnn_top_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_cnn_top_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_cnn_top_B1_start_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoalmost_full;
    wire [0:0] bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoready;
    wire [0:0] bb_cnn_top_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_cnn_top_B1_start_out_stall_out_0;
    wire [0:0] bb_cnn_top_B1_start_out_valid_in_0;
    wire [0:0] bb_cnn_top_B1_start_out_valid_in_1;
    wire [0:0] bb_cnn_top_B1_start_out_valid_out_0;
    wire [0:0] bb_cnn_top_B2_out_stall_out_0;
    wire [0:0] bb_cnn_top_B2_out_valid_out_0;
    wire [0:0] bb_cnn_top_B3_out_exiting_stall_out;
    wire [0:0] bb_cnn_top_B3_out_exiting_valid_out;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_15_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_cnn_top_B3_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_cnn_top_B3_out_pipeline_valid_out;
    wire [0:0] bb_cnn_top_B3_out_stall_in_0;
    wire [0:0] bb_cnn_top_B3_out_stall_out_0;
    wire [0:0] bb_cnn_top_B3_out_stall_out_1;
    wire [31:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_address;
    wire [0:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_burstcount;
    wire [3:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_byteenable;
    wire [0:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_enable;
    wire [0:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_read;
    wire [0:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_write;
    wire [31:0] bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_writedata;
    wire [0:0] bb_cnn_top_B3_out_valid_in_0;
    wire [0:0] bb_cnn_top_B3_out_valid_in_1;
    wire [0:0] bb_cnn_top_B3_out_valid_out_0;
    wire [31:0] bb_cnn_top_B6_out_pre1;
    wire [0:0] bb_cnn_top_B6_out_stall_in_0;
    wire [0:0] bb_cnn_top_B6_out_stall_out_0;
    wire [0:0] bb_cnn_top_B6_out_valid_out_0;
    wire [0:0] bb_cnn_top_B6_out_valid_out_1;
    wire [0:0] bb_cnn_top_B8_out_feedback_out_1;
    wire [0:0] bb_cnn_top_B8_out_feedback_valid_out_1;
    wire [0:0] bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifodata;
    wire [0:0] bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifovalid;
    wire [0:0] bb_cnn_top_B8_out_stall_in_0;
    wire [0:0] bb_cnn_top_B8_out_stall_out_0;
    wire [0:0] bb_cnn_top_B8_out_valid_out_0;
    wire [0:0] bb_cnn_top_B9_out_exiting_stall_out;
    wire [0:0] bb_cnn_top_B9_out_exiting_valid_out;
    wire [31:0] bb_cnn_top_B9_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_cnn_top_B9_out_intel_reserved_ffwd_44_0;
    wire [0:0] bb_cnn_top_B9_out_pipeline_valid_out;
    wire [0:0] bb_cnn_top_B9_out_stall_in_0;
    wire [0:0] bb_cnn_top_B9_out_stall_out_0;
    wire [0:0] bb_cnn_top_B9_out_stall_out_1;
    wire [31:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_address;
    wire [0:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_burstcount;
    wire [3:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_byteenable;
    wire [0:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_enable;
    wire [0:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_read;
    wire [0:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_write;
    wire [31:0] bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_writedata;
    wire [0:0] bb_cnn_top_B9_out_valid_in_0;
    wire [0:0] bb_cnn_top_B9_out_valid_in_1;
    wire [0:0] bb_cnn_top_B9_out_valid_out_0;
    wire [1:0] c_i2_028_q;
    wire [31:0] c_i32_013_q;
    wire [31:0] c_i32_120_q;
    wire [0:0] cnn_top_B1_start_x_i_capture;
    wire cnn_top_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_clear;
    wire cnn_top_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_enable;
    wire cnn_top_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_shift;
    wire cnn_top_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_stall_pred;
    wire cnn_top_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_stall_succ;
    wire cnn_top_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_valid_loop;
    wire cnn_top_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_valid_pred;
    wire cnn_top_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] cnn_top_B1_start_x_i_valid_succ;
    wire cnn_top_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_capture;
    wire cnn_top_B3_x_i_capture_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_clear;
    wire cnn_top_B3_x_i_clear_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_enable;
    wire cnn_top_B3_x_i_enable_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_shift;
    wire cnn_top_B3_x_i_shift_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_stall_pred;
    wire cnn_top_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_stall_succ;
    wire cnn_top_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_valid_loop;
    wire cnn_top_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_valid_pred;
    wire cnn_top_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] cnn_top_B3_x_i_valid_succ;
    wire cnn_top_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_capture;
    wire cnn_top_B5_x_i_capture_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_clear;
    wire cnn_top_B5_x_i_clear_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_enable;
    wire cnn_top_B5_x_i_enable_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_shift;
    wire cnn_top_B5_x_i_shift_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_stall_pred;
    wire cnn_top_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_stall_succ;
    wire cnn_top_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_valid_loop;
    wire cnn_top_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_valid_pred;
    wire cnn_top_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] cnn_top_B5_x_i_valid_succ;
    wire cnn_top_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_capture;
    wire cnn_top_B7_x_i_capture_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_clear;
    wire cnn_top_B7_x_i_clear_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_enable;
    wire cnn_top_B7_x_i_enable_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_shift;
    wire cnn_top_B7_x_i_shift_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_stall_pred;
    wire cnn_top_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_stall_succ;
    wire cnn_top_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_valid_loop;
    wire cnn_top_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_valid_pred;
    wire cnn_top_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] cnn_top_B7_x_i_valid_succ;
    wire cnn_top_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_capture;
    wire cnn_top_B9_x_i_capture_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_clear;
    wire cnn_top_B9_x_i_clear_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_enable;
    wire cnn_top_B9_x_i_enable_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_shift;
    wire cnn_top_B9_x_i_shift_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_stall_pred;
    wire cnn_top_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_stall_succ;
    wire cnn_top_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_valid_loop;
    wire cnn_top_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_valid_pred;
    wire cnn_top_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] cnn_top_B9_x_i_valid_succ;
    wire cnn_top_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_cnn_top0_out_o_stall;
    wire [0:0] loop_limiter_cnn_top0_out_o_valid;
    wire [0:0] loop_limiter_cnn_top1_out_o_stall;
    wire [0:0] loop_limiter_cnn_top1_out_o_valid;
    wire [0:0] loop_limiter_cnn_top2_out_o_stall;
    wire [0:0] loop_limiter_cnn_top2_out_o_valid;
    wire [0:0] loop_limiter_cnn_top3_out_o_stall;
    wire [0:0] loop_limiter_cnn_top3_out_o_valid;


    // c_i2_028(CONSTANT,46)
    assign c_i2_028_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo(BLACKBOX,62)
    cnn_top_i_llvm_fpga_pipeline_keep_going91_1_valid_fifo thei_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo (
        .in_data_in(c_i2_028_q),
        .in_stall_in(bb_cnn_top_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo(BLACKBOX,60)
    cnn_top_i_llvm_fpga_pipeline_keep_going63_6_valid_fifo thei_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo (
        .in_data_in(c_i2_028_q),
        .in_stall_in(bb_cnn_top_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo(BLACKBOX,64)
    cnn_top_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo (
        .in_data_in(c_i2_028_q),
        .in_stall_in(bb_cnn_top_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B5_sr_0_aunroll_x(BLACKBOX,7)
    cnn_top_bb_B5_sr_0 thebb_cnn_top_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_cnn_top_B6_out_pre1),
        .in_i_stall(bb_cnn_top_B5_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B6_out_valid_out_0),
        .out_o_data_0_tpl(bb_cnn_top_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_cnn_top_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_cnn_top3(BLACKBOX,104)
    cnn_top_loop_limiter_3 theloop_limiter_cnn_top3 (
        .in_i_stall(bb_cnn_top_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_cnn_top_B6_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_cnn_top_B5_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_cnn_top_B7_aunroll_x_out_valid_out_1),
        .out_o_stall(loop_limiter_cnn_top3_out_o_stall),
        .out_o_valid(loop_limiter_cnn_top3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_013(CONSTANT,49)
    assign c_i32_013_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_cnn_top_B7_sr_1_aunroll_x(BLACKBOX,12)
    cnn_top_bb_B7_sr_1 thebb_cnn_top_B7_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_013_q),
        .in_i_data_1_tpl(bb_cnn_top_B5_aunroll_x_out_pre),
        .in_i_stall(bb_cnn_top_B7_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_cnn_top3_out_o_valid),
        .out_o_data_0_tpl(bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_cnn_top_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B7_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B7_sr_0_aunroll_x(BLACKBOX,11)
    cnn_top_bb_B7_sr_0 thebb_cnn_top_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_cnn_top_B7_aunroll_x_out_inc_i),
        .in_i_data_1_tpl(bb_cnn_top_B7_aunroll_x_out_pre2),
        .in_i_stall(bb_cnn_top_B7_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B7_aunroll_x_out_valid_out_0),
        .out_o_data_0_tpl(bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_cnn_top_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B7_aunroll_x(BLACKBOX,10)
    cnn_top_bb_B7 thebb_cnn_top_B7_aunroll_x (
        .in_intel_reserved_ffwd_24_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl),
        .in_intel_reserved_ffwd_24_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl),
        .in_intel_reserved_ffwd_24_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl),
        .in_intel_reserved_ffwd_24_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl),
        .in_intel_reserved_ffwd_24_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl),
        .in_intel_reserved_ffwd_24_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl),
        .in_intel_reserved_ffwd_24_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl),
        .in_intel_reserved_ffwd_24_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl),
        .in_intel_reserved_ffwd_24_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl),
        .in_intel_reserved_ffwd_24_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl),
        .in_intel_reserved_ffwd_24_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl),
        .in_intel_reserved_ffwd_24_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl),
        .in_intel_reserved_ffwd_24_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl),
        .in_intel_reserved_ffwd_24_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl),
        .in_intel_reserved_ffwd_24_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl),
        .in_intel_reserved_ffwd_24_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl),
        .in_intel_reserved_ffwd_25_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl),
        .in_intel_reserved_ffwd_25_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl),
        .in_intel_reserved_ffwd_38_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl),
        .in_intel_reserved_ffwd_38_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl),
        .in_intel_reserved_ffwd_38_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl),
        .in_intel_reserved_ffwd_38_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl),
        .in_intel_reserved_ffwd_38_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl),
        .in_intel_reserved_ffwd_38_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl),
        .in_intel_reserved_ffwd_38_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl),
        .in_intel_reserved_ffwd_38_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl),
        .in_intel_reserved_ffwd_38_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl),
        .in_intel_reserved_ffwd_38_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl),
        .in_intel_reserved_ffwd_38_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl),
        .in_intel_reserved_ffwd_38_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl),
        .in_intel_reserved_ffwd_38_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl),
        .in_intel_reserved_ffwd_38_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl),
        .in_intel_reserved_ffwd_38_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl),
        .in_intel_reserved_ffwd_38_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl),
        .in_intel_reserved_ffwd_38_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl),
        .in_intel_reserved_ffwd_38_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl),
        .in_intel_reserved_ffwd_38_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl),
        .in_intel_reserved_ffwd_38_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl),
        .in_intel_reserved_ffwd_38_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl),
        .in_intel_reserved_ffwd_39_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl),
        .in_intel_reserved_ffwd_39_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl),
        .in_intel_reserved_ffwd_39_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl),
        .in_intel_reserved_ffwd_39_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl),
        .in_intel_reserved_ffwd_39_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl),
        .in_intel_reserved_ffwd_39_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl),
        .in_intel_reserved_ffwd_39_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl),
        .in_intel_reserved_ffwd_39_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl),
        .in_intel_reserved_ffwd_39_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl),
        .in_intel_reserved_ffwd_39_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl),
        .in_intel_reserved_ffwd_39_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl),
        .in_intel_reserved_ffwd_39_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl),
        .in_intel_reserved_ffwd_39_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl),
        .in_intel_reserved_ffwd_39_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl),
        .in_intel_reserved_ffwd_39_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl),
        .in_intel_reserved_ffwd_39_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl),
        .in_intel_reserved_ffwd_39_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl),
        .in_intel_reserved_ffwd_39_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl),
        .in_intel_reserved_ffwd_39_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl),
        .in_intel_reserved_ffwd_39_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl),
        .in_intel_reserved_ffwd_39_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl),
        .in_intel_reserved_ffwd_40_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl),
        .in_intel_reserved_ffwd_40_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl),
        .in_intel_reserved_ffwd_40_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl),
        .in_intel_reserved_ffwd_40_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl),
        .in_intel_reserved_ffwd_40_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl),
        .in_intel_reserved_ffwd_40_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl),
        .in_intel_reserved_ffwd_40_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl),
        .in_intel_reserved_ffwd_40_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl),
        .in_intel_reserved_ffwd_40_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl),
        .in_intel_reserved_ffwd_40_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl),
        .in_intel_reserved_ffwd_40_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl),
        .in_intel_reserved_ffwd_40_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl),
        .in_intel_reserved_ffwd_40_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl),
        .in_intel_reserved_ffwd_40_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl),
        .in_intel_reserved_ffwd_40_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl),
        .in_intel_reserved_ffwd_40_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl),
        .in_intel_reserved_ffwd_40_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl),
        .in_intel_reserved_ffwd_40_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl),
        .in_intel_reserved_ffwd_40_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl),
        .in_intel_reserved_ffwd_40_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl),
        .in_intel_reserved_ffwd_41_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl),
        .in_intel_reserved_ffwd_41_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl),
        .in_intel_reserved_ffwd_41_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl),
        .in_intel_reserved_ffwd_41_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl),
        .in_intel_reserved_ffwd_41_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl),
        .in_intel_reserved_ffwd_41_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl),
        .in_intel_reserved_ffwd_41_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl),
        .in_intel_reserved_ffwd_41_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl),
        .in_intel_reserved_ffwd_41_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl),
        .in_intel_reserved_ffwd_41_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl),
        .in_intel_reserved_ffwd_41_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl),
        .in_intel_reserved_ffwd_41_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl),
        .in_intel_reserved_ffwd_41_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl),
        .in_intel_reserved_ffwd_41_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl),
        .in_intel_reserved_ffwd_41_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl),
        .in_intel_reserved_ffwd_41_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl),
        .in_intel_reserved_ffwd_41_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl),
        .in_intel_reserved_ffwd_41_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl),
        .in_intel_reserved_ffwd_41_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl),
        .in_intel_reserved_ffwd_41_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl),
        .in_intel_reserved_ffwd_42_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl),
        .in_intel_reserved_ffwd_42_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl),
        .in_intel_reserved_ffwd_42_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl),
        .in_intel_reserved_ffwd_42_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl),
        .in_intel_reserved_ffwd_42_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl),
        .in_intel_reserved_ffwd_42_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl),
        .in_intel_reserved_ffwd_42_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl),
        .in_intel_reserved_ffwd_42_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl),
        .in_intel_reserved_ffwd_42_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl),
        .in_intel_reserved_ffwd_42_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl),
        .in_intel_reserved_ffwd_42_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl),
        .in_intel_reserved_ffwd_42_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl),
        .in_intel_reserved_ffwd_42_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl),
        .in_intel_reserved_ffwd_42_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl),
        .in_intel_reserved_ffwd_42_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl),
        .in_intel_reserved_ffwd_42_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl),
        .in_intel_reserved_ffwd_42_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl),
        .in_intel_reserved_ffwd_42_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl),
        .in_intel_reserved_ffwd_42_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl),
        .in_intel_reserved_ffwd_42_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl),
        .in_intel_reserved_ffwd_42_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl),
        .in_intel_reserved_ffwd_42_0_21_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl),
        .in_intel_reserved_ffwd_42_0_22_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl),
        .in_intel_reserved_ffwd_42_0_23_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl),
        .in_intel_reserved_ffwd_22_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_34_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_35_0),
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
        .in_pre2_0(bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_pre2_1(bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_cnn_top_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_cnn_top_B6_sr_0_aunroll_x_out_o_stall),
        .in_tr_i_0115_0(bb_cnn_top_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_tr_i_0115_1(bb_cnn_top_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_valid_in_0(bb_cnn_top_B7_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_cnn_top_B7_sr_1_aunroll_x_out_o_valid),
        .out_inc_i(bb_cnn_top_B7_aunroll_x_out_inc_i),
        .out_iord_bl_return_conv_process_o_fifoalmost_full(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoalmost_full),
        .out_iord_bl_return_conv_process_o_fifoready(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoready),
        .out_iord_bl_return_load_input0_o_fifoalmost_full(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoalmost_full),
        .out_iord_bl_return_load_input0_o_fifoready(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoready),
        .out_iord_bl_return_load_input1_o_fifoalmost_full(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoalmost_full),
        .out_iord_bl_return_load_input1_o_fifoready(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoready),
        .out_iord_bl_return_load_weight0_o_fifoalmost_full(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoalmost_full),
        .out_iord_bl_return_load_weight0_o_fifoready(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoready),
        .out_iord_bl_return_load_weight1_o_fifoalmost_full(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoalmost_full),
        .out_iord_bl_return_load_weight1_o_fifoready(bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoready),
        .out_iowr_bl_call_conv_process_o_fifodata(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata),
        .out_iowr_bl_call_conv_process_o_fifovalid(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid),
        .out_iowr_bl_call_load_input0_o_fifodata(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata),
        .out_iowr_bl_call_load_input0_o_fifovalid(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid),
        .out_iowr_bl_call_load_input1_o_fifodata(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata),
        .out_iowr_bl_call_load_input1_o_fifovalid(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid),
        .out_iowr_bl_call_load_weight0_o_fifodata(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata),
        .out_iowr_bl_call_load_weight0_o_fifovalid(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid),
        .out_iowr_bl_call_load_weight1_o_fifodata(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata),
        .out_iowr_bl_call_load_weight1_o_fifovalid(bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid),
        .out_pre2(bb_cnn_top_B7_aunroll_x_out_pre2),
        .out_stall_in_0(bb_cnn_top_B7_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_cnn_top_B7_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_cnn_top_B7_aunroll_x_out_stall_out_1),
        .out_valid_in_0(bb_cnn_top_B7_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_cnn_top_B7_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_cnn_top_B7_aunroll_x_out_valid_out_0),
        .out_valid_out_1(bb_cnn_top_B7_aunroll_x_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B6_sr_0_aunroll_x(BLACKBOX,9)
    cnn_top_bb_B6_sr_0 thebb_cnn_top_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_cnn_top_B7_aunroll_x_out_pre2),
        .in_i_stall(bb_cnn_top_B6_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B7_aunroll_x_out_valid_out_1),
        .out_o_data_0_tpl(bb_cnn_top_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_cnn_top_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B5_aunroll_x(BLACKBOX,6)
    cnn_top_bb_B5 thebb_cnn_top_B5_aunroll_x (
        .in_intel_reserved_ffwd_24_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl),
        .in_intel_reserved_ffwd_24_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl),
        .in_intel_reserved_ffwd_24_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl),
        .in_intel_reserved_ffwd_24_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl),
        .in_intel_reserved_ffwd_24_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl),
        .in_intel_reserved_ffwd_24_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl),
        .in_intel_reserved_ffwd_24_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl),
        .in_intel_reserved_ffwd_24_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl),
        .in_intel_reserved_ffwd_24_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl),
        .in_intel_reserved_ffwd_24_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl),
        .in_intel_reserved_ffwd_24_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl),
        .in_intel_reserved_ffwd_24_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl),
        .in_intel_reserved_ffwd_24_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl),
        .in_intel_reserved_ffwd_24_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl),
        .in_intel_reserved_ffwd_24_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl),
        .in_intel_reserved_ffwd_24_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl),
        .in_intel_reserved_ffwd_29_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl),
        .in_intel_reserved_ffwd_29_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl),
        .in_intel_reserved_ffwd_29_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl),
        .in_intel_reserved_ffwd_29_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl),
        .in_intel_reserved_ffwd_29_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl),
        .in_intel_reserved_ffwd_29_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl),
        .in_intel_reserved_ffwd_29_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl),
        .in_intel_reserved_ffwd_29_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl),
        .in_intel_reserved_ffwd_29_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl),
        .in_intel_reserved_ffwd_29_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl),
        .in_intel_reserved_ffwd_29_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl),
        .in_intel_reserved_ffwd_29_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl),
        .in_intel_reserved_ffwd_29_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl),
        .in_intel_reserved_ffwd_29_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl),
        .in_intel_reserved_ffwd_29_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl),
        .in_intel_reserved_ffwd_29_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl),
        .in_intel_reserved_ffwd_29_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl),
        .in_intel_reserved_ffwd_29_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl),
        .in_intel_reserved_ffwd_29_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl),
        .in_intel_reserved_ffwd_29_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl),
        .in_intel_reserved_ffwd_29_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl),
        .in_intel_reserved_ffwd_30_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl),
        .in_intel_reserved_ffwd_30_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl),
        .in_intel_reserved_ffwd_30_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl),
        .in_intel_reserved_ffwd_30_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl),
        .in_intel_reserved_ffwd_30_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl),
        .in_intel_reserved_ffwd_30_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl),
        .in_intel_reserved_ffwd_30_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl),
        .in_intel_reserved_ffwd_30_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl),
        .in_intel_reserved_ffwd_30_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl),
        .in_intel_reserved_ffwd_30_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl),
        .in_intel_reserved_ffwd_30_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl),
        .in_intel_reserved_ffwd_30_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl),
        .in_intel_reserved_ffwd_30_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl),
        .in_intel_reserved_ffwd_30_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl),
        .in_intel_reserved_ffwd_30_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl),
        .in_intel_reserved_ffwd_30_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl),
        .in_intel_reserved_ffwd_30_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl),
        .in_intel_reserved_ffwd_30_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl),
        .in_intel_reserved_ffwd_30_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl),
        .in_intel_reserved_ffwd_30_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl),
        .in_intel_reserved_ffwd_30_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl),
        .in_intel_reserved_ffwd_31_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl),
        .in_intel_reserved_ffwd_31_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl),
        .in_intel_reserved_ffwd_31_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl),
        .in_intel_reserved_ffwd_31_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl),
        .in_intel_reserved_ffwd_31_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl),
        .in_intel_reserved_ffwd_31_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl),
        .in_intel_reserved_ffwd_31_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl),
        .in_intel_reserved_ffwd_31_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl),
        .in_intel_reserved_ffwd_31_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl),
        .in_intel_reserved_ffwd_31_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl),
        .in_intel_reserved_ffwd_31_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl),
        .in_intel_reserved_ffwd_31_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl),
        .in_intel_reserved_ffwd_31_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl),
        .in_intel_reserved_ffwd_31_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl),
        .in_intel_reserved_ffwd_31_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl),
        .in_intel_reserved_ffwd_31_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl),
        .in_intel_reserved_ffwd_31_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl),
        .in_intel_reserved_ffwd_31_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl),
        .in_intel_reserved_ffwd_31_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl),
        .in_intel_reserved_ffwd_31_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl),
        .in_intel_reserved_ffwd_32_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl),
        .in_intel_reserved_ffwd_32_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl),
        .in_intel_reserved_ffwd_32_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl),
        .in_intel_reserved_ffwd_32_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl),
        .in_intel_reserved_ffwd_32_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl),
        .in_intel_reserved_ffwd_32_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl),
        .in_intel_reserved_ffwd_32_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl),
        .in_intel_reserved_ffwd_32_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl),
        .in_intel_reserved_ffwd_32_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl),
        .in_intel_reserved_ffwd_32_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl),
        .in_intel_reserved_ffwd_32_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl),
        .in_intel_reserved_ffwd_32_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl),
        .in_intel_reserved_ffwd_32_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl),
        .in_intel_reserved_ffwd_32_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl),
        .in_intel_reserved_ffwd_32_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl),
        .in_intel_reserved_ffwd_32_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl),
        .in_intel_reserved_ffwd_32_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl),
        .in_intel_reserved_ffwd_32_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl),
        .in_intel_reserved_ffwd_32_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl),
        .in_intel_reserved_ffwd_32_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl),
        .in_intel_reserved_ffwd_33_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl),
        .in_intel_reserved_ffwd_33_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl),
        .in_intel_reserved_ffwd_33_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl),
        .in_intel_reserved_ffwd_33_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl),
        .in_intel_reserved_ffwd_33_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl),
        .in_intel_reserved_ffwd_33_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl),
        .in_intel_reserved_ffwd_33_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl),
        .in_intel_reserved_ffwd_33_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl),
        .in_intel_reserved_ffwd_33_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl),
        .in_intel_reserved_ffwd_33_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl),
        .in_intel_reserved_ffwd_33_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl),
        .in_intel_reserved_ffwd_33_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl),
        .in_intel_reserved_ffwd_33_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl),
        .in_intel_reserved_ffwd_33_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl),
        .in_intel_reserved_ffwd_33_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl),
        .in_intel_reserved_ffwd_33_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl),
        .in_intel_reserved_ffwd_33_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl),
        .in_intel_reserved_ffwd_33_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl),
        .in_intel_reserved_ffwd_33_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl),
        .in_intel_reserved_ffwd_33_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl),
        .in_intel_reserved_ffwd_33_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl),
        .in_intel_reserved_ffwd_33_0_21_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl),
        .in_intel_reserved_ffwd_33_0_22_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl),
        .in_intel_reserved_ffwd_33_0_23_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl),
        .in_intel_reserved_ffwd_23_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_26_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_28_0),
        .in_stall_in_0(loop_limiter_cnn_top3_out_o_stall),
        .in_too_i_0117_0(bb_cnn_top_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_too_i_0117_1(bb_cnn_top_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_valid_in_0(bb_cnn_top_B5_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_cnn_top_B5_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_38_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl),
        .out_intel_reserved_ffwd_38_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl),
        .out_intel_reserved_ffwd_38_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl),
        .out_intel_reserved_ffwd_38_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl),
        .out_intel_reserved_ffwd_38_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl),
        .out_intel_reserved_ffwd_38_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl),
        .out_intel_reserved_ffwd_38_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl),
        .out_intel_reserved_ffwd_38_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl),
        .out_intel_reserved_ffwd_38_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl),
        .out_intel_reserved_ffwd_38_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl),
        .out_intel_reserved_ffwd_38_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl),
        .out_intel_reserved_ffwd_38_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl),
        .out_intel_reserved_ffwd_38_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl),
        .out_intel_reserved_ffwd_38_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl),
        .out_intel_reserved_ffwd_38_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl),
        .out_intel_reserved_ffwd_38_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl),
        .out_intel_reserved_ffwd_38_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl),
        .out_intel_reserved_ffwd_38_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl),
        .out_intel_reserved_ffwd_38_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl),
        .out_intel_reserved_ffwd_38_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl),
        .out_intel_reserved_ffwd_38_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl),
        .out_intel_reserved_ffwd_39_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl),
        .out_intel_reserved_ffwd_39_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl),
        .out_intel_reserved_ffwd_39_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl),
        .out_intel_reserved_ffwd_39_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl),
        .out_intel_reserved_ffwd_39_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl),
        .out_intel_reserved_ffwd_39_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl),
        .out_intel_reserved_ffwd_39_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl),
        .out_intel_reserved_ffwd_39_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl),
        .out_intel_reserved_ffwd_39_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl),
        .out_intel_reserved_ffwd_39_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl),
        .out_intel_reserved_ffwd_39_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl),
        .out_intel_reserved_ffwd_39_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl),
        .out_intel_reserved_ffwd_39_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl),
        .out_intel_reserved_ffwd_39_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl),
        .out_intel_reserved_ffwd_39_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl),
        .out_intel_reserved_ffwd_39_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl),
        .out_intel_reserved_ffwd_39_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl),
        .out_intel_reserved_ffwd_39_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl),
        .out_intel_reserved_ffwd_39_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl),
        .out_intel_reserved_ffwd_39_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl),
        .out_intel_reserved_ffwd_39_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl),
        .out_intel_reserved_ffwd_40_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl),
        .out_intel_reserved_ffwd_40_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl),
        .out_intel_reserved_ffwd_40_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl),
        .out_intel_reserved_ffwd_40_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl),
        .out_intel_reserved_ffwd_40_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl),
        .out_intel_reserved_ffwd_40_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl),
        .out_intel_reserved_ffwd_40_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl),
        .out_intel_reserved_ffwd_40_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl),
        .out_intel_reserved_ffwd_40_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl),
        .out_intel_reserved_ffwd_40_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl),
        .out_intel_reserved_ffwd_40_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl),
        .out_intel_reserved_ffwd_40_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl),
        .out_intel_reserved_ffwd_40_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl),
        .out_intel_reserved_ffwd_40_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl),
        .out_intel_reserved_ffwd_40_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl),
        .out_intel_reserved_ffwd_40_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl),
        .out_intel_reserved_ffwd_40_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl),
        .out_intel_reserved_ffwd_40_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl),
        .out_intel_reserved_ffwd_40_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl),
        .out_intel_reserved_ffwd_40_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl),
        .out_intel_reserved_ffwd_41_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl),
        .out_intel_reserved_ffwd_41_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl),
        .out_intel_reserved_ffwd_41_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl),
        .out_intel_reserved_ffwd_41_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl),
        .out_intel_reserved_ffwd_41_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl),
        .out_intel_reserved_ffwd_41_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl),
        .out_intel_reserved_ffwd_41_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl),
        .out_intel_reserved_ffwd_41_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl),
        .out_intel_reserved_ffwd_41_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl),
        .out_intel_reserved_ffwd_41_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl),
        .out_intel_reserved_ffwd_41_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl),
        .out_intel_reserved_ffwd_41_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl),
        .out_intel_reserved_ffwd_41_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl),
        .out_intel_reserved_ffwd_41_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl),
        .out_intel_reserved_ffwd_41_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl),
        .out_intel_reserved_ffwd_41_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl),
        .out_intel_reserved_ffwd_41_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl),
        .out_intel_reserved_ffwd_41_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl),
        .out_intel_reserved_ffwd_41_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl),
        .out_intel_reserved_ffwd_41_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl),
        .out_intel_reserved_ffwd_42_0_0_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl),
        .out_intel_reserved_ffwd_42_0_1_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl),
        .out_intel_reserved_ffwd_42_0_2_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl),
        .out_intel_reserved_ffwd_42_0_3_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl),
        .out_intel_reserved_ffwd_42_0_4_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl),
        .out_intel_reserved_ffwd_42_0_5_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl),
        .out_intel_reserved_ffwd_42_0_6_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl),
        .out_intel_reserved_ffwd_42_0_7_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl),
        .out_intel_reserved_ffwd_42_0_8_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl),
        .out_intel_reserved_ffwd_42_0_9_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl),
        .out_intel_reserved_ffwd_42_0_10_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl),
        .out_intel_reserved_ffwd_42_0_11_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl),
        .out_intel_reserved_ffwd_42_0_12_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl),
        .out_intel_reserved_ffwd_42_0_13_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl),
        .out_intel_reserved_ffwd_42_0_14_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl),
        .out_intel_reserved_ffwd_42_0_15_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl),
        .out_intel_reserved_ffwd_42_0_16_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl),
        .out_intel_reserved_ffwd_42_0_17_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl),
        .out_intel_reserved_ffwd_42_0_18_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl),
        .out_intel_reserved_ffwd_42_0_19_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl),
        .out_intel_reserved_ffwd_42_0_20_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl),
        .out_intel_reserved_ffwd_42_0_21_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl),
        .out_intel_reserved_ffwd_42_0_22_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl),
        .out_intel_reserved_ffwd_42_0_23_tpl(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl),
        .out_intel_reserved_ffwd_37_0(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_pre(bb_cnn_top_B5_aunroll_x_out_pre),
        .out_stall_out_0(bb_cnn_top_B5_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_cnn_top_B5_aunroll_x_out_stall_out_1),
        .out_valid_in_0(bb_cnn_top_B5_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_cnn_top_B5_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_cnn_top_B5_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B6(BLACKBOX,19)
    cnn_top_bb_B6 thebb_cnn_top_B6 (
        .in_intel_reserved_ffwd_21_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_36_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_cnn_top_B5_aunroll_x_out_intel_reserved_ffwd_37_0),
        .in_pre1_0(bb_cnn_top_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_cnn_top_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_cnn_top_B8_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_cnn_top_B6_sr_0_aunroll_x_out_o_valid),
        .out_pre1(bb_cnn_top_B6_out_pre1),
        .out_stall_in_0(bb_cnn_top_B6_out_stall_in_0),
        .out_stall_out_0(bb_cnn_top_B6_out_stall_out_0),
        .out_valid_out_0(bb_cnn_top_B6_out_valid_out_0),
        .out_valid_out_1(bb_cnn_top_B6_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B8_sr_0_aunroll_x(BLACKBOX,13)
    cnn_top_bb_B8_sr_0 thebb_cnn_top_B8_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_cnn_top_B8_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B6_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_cnn_top_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B8_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B5_sr_1_aunroll_x(BLACKBOX,8)
    cnn_top_bb_B5_sr_1 thebb_cnn_top_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_013_q),
        .in_i_stall(bb_cnn_top_B5_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_cnn_top2_out_o_valid),
        .out_o_data_0_tpl(bb_cnn_top_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_cnn_top_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_cnn_top2(BLACKBOX,103)
    cnn_top_loop_limiter_2 theloop_limiter_cnn_top2 (
        .in_i_stall(bb_cnn_top_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_cnn_top_B8_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_cnn_top_B4_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_cnn_top_B6_out_valid_out_1),
        .out_o_stall(loop_limiter_cnn_top2_out_o_stall),
        .out_o_valid(loop_limiter_cnn_top2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B4_aunroll_x(BLACKBOX,4)
    cnn_top_bb_B4 thebb_cnn_top_B4_aunroll_x (
        .in_intel_reserved_ffwd_0_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(bb_cnn_top_B3_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(bb_cnn_top_B3_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_cnn_top_B3_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(bb_cnn_top_B3_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_cnn_top_B3_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_cnn_top_B3_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_cnn_top_B3_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_cnn_top_B3_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_cnn_top_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_cnn_top_B3_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(bb_cnn_top_B3_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_2_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_43_0(bb_cnn_top_B9_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_cnn_top_B9_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_5_0(bb_cnn_top_B3_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_cnn_top_B3_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_cnn_top_B3_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_cnn_top_B3_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_cnn_top_B3_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_cnn_top2_out_o_stall),
        .in_valid_in_0(bb_cnn_top_B4_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_24_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_0_tpl),
        .out_intel_reserved_ffwd_24_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_1_tpl),
        .out_intel_reserved_ffwd_24_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_2_tpl),
        .out_intel_reserved_ffwd_24_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_3_tpl),
        .out_intel_reserved_ffwd_24_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_4_tpl),
        .out_intel_reserved_ffwd_24_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_5_tpl),
        .out_intel_reserved_ffwd_24_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_6_tpl),
        .out_intel_reserved_ffwd_24_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_7_tpl),
        .out_intel_reserved_ffwd_24_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_8_tpl),
        .out_intel_reserved_ffwd_24_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_9_tpl),
        .out_intel_reserved_ffwd_24_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_10_tpl),
        .out_intel_reserved_ffwd_24_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_11_tpl),
        .out_intel_reserved_ffwd_24_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_12_tpl),
        .out_intel_reserved_ffwd_24_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_13_tpl),
        .out_intel_reserved_ffwd_24_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_14_tpl),
        .out_intel_reserved_ffwd_24_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_24_0_15_tpl),
        .out_intel_reserved_ffwd_25_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_0_tpl),
        .out_intel_reserved_ffwd_25_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_25_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_0_tpl),
        .out_intel_reserved_ffwd_29_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_1_tpl),
        .out_intel_reserved_ffwd_29_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_2_tpl),
        .out_intel_reserved_ffwd_29_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_3_tpl),
        .out_intel_reserved_ffwd_29_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_4_tpl),
        .out_intel_reserved_ffwd_29_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_5_tpl),
        .out_intel_reserved_ffwd_29_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_6_tpl),
        .out_intel_reserved_ffwd_29_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_7_tpl),
        .out_intel_reserved_ffwd_29_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_8_tpl),
        .out_intel_reserved_ffwd_29_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_9_tpl),
        .out_intel_reserved_ffwd_29_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_10_tpl),
        .out_intel_reserved_ffwd_29_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_11_tpl),
        .out_intel_reserved_ffwd_29_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_12_tpl),
        .out_intel_reserved_ffwd_29_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_13_tpl),
        .out_intel_reserved_ffwd_29_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_14_tpl),
        .out_intel_reserved_ffwd_29_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_15_tpl),
        .out_intel_reserved_ffwd_29_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_16_tpl),
        .out_intel_reserved_ffwd_29_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_17_tpl),
        .out_intel_reserved_ffwd_29_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_18_tpl),
        .out_intel_reserved_ffwd_29_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_19_tpl),
        .out_intel_reserved_ffwd_29_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_29_0_20_tpl),
        .out_intel_reserved_ffwd_30_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_0_tpl),
        .out_intel_reserved_ffwd_30_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_1_tpl),
        .out_intel_reserved_ffwd_30_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_2_tpl),
        .out_intel_reserved_ffwd_30_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_3_tpl),
        .out_intel_reserved_ffwd_30_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_4_tpl),
        .out_intel_reserved_ffwd_30_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_5_tpl),
        .out_intel_reserved_ffwd_30_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_6_tpl),
        .out_intel_reserved_ffwd_30_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_7_tpl),
        .out_intel_reserved_ffwd_30_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_8_tpl),
        .out_intel_reserved_ffwd_30_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_9_tpl),
        .out_intel_reserved_ffwd_30_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_10_tpl),
        .out_intel_reserved_ffwd_30_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_11_tpl),
        .out_intel_reserved_ffwd_30_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_12_tpl),
        .out_intel_reserved_ffwd_30_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_13_tpl),
        .out_intel_reserved_ffwd_30_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_14_tpl),
        .out_intel_reserved_ffwd_30_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_15_tpl),
        .out_intel_reserved_ffwd_30_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_16_tpl),
        .out_intel_reserved_ffwd_30_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_17_tpl),
        .out_intel_reserved_ffwd_30_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_18_tpl),
        .out_intel_reserved_ffwd_30_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_19_tpl),
        .out_intel_reserved_ffwd_30_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_30_0_20_tpl),
        .out_intel_reserved_ffwd_31_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_0_tpl),
        .out_intel_reserved_ffwd_31_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_1_tpl),
        .out_intel_reserved_ffwd_31_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_2_tpl),
        .out_intel_reserved_ffwd_31_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_3_tpl),
        .out_intel_reserved_ffwd_31_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_4_tpl),
        .out_intel_reserved_ffwd_31_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_5_tpl),
        .out_intel_reserved_ffwd_31_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_6_tpl),
        .out_intel_reserved_ffwd_31_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_7_tpl),
        .out_intel_reserved_ffwd_31_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_8_tpl),
        .out_intel_reserved_ffwd_31_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_9_tpl),
        .out_intel_reserved_ffwd_31_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_10_tpl),
        .out_intel_reserved_ffwd_31_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_11_tpl),
        .out_intel_reserved_ffwd_31_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_12_tpl),
        .out_intel_reserved_ffwd_31_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_13_tpl),
        .out_intel_reserved_ffwd_31_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_14_tpl),
        .out_intel_reserved_ffwd_31_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_15_tpl),
        .out_intel_reserved_ffwd_31_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_16_tpl),
        .out_intel_reserved_ffwd_31_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_17_tpl),
        .out_intel_reserved_ffwd_31_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_18_tpl),
        .out_intel_reserved_ffwd_31_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_31_0_19_tpl),
        .out_intel_reserved_ffwd_32_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_0_tpl),
        .out_intel_reserved_ffwd_32_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_1_tpl),
        .out_intel_reserved_ffwd_32_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_2_tpl),
        .out_intel_reserved_ffwd_32_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_3_tpl),
        .out_intel_reserved_ffwd_32_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_4_tpl),
        .out_intel_reserved_ffwd_32_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_5_tpl),
        .out_intel_reserved_ffwd_32_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_6_tpl),
        .out_intel_reserved_ffwd_32_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_7_tpl),
        .out_intel_reserved_ffwd_32_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_8_tpl),
        .out_intel_reserved_ffwd_32_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_9_tpl),
        .out_intel_reserved_ffwd_32_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_10_tpl),
        .out_intel_reserved_ffwd_32_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_11_tpl),
        .out_intel_reserved_ffwd_32_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_12_tpl),
        .out_intel_reserved_ffwd_32_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_13_tpl),
        .out_intel_reserved_ffwd_32_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_14_tpl),
        .out_intel_reserved_ffwd_32_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_15_tpl),
        .out_intel_reserved_ffwd_32_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_16_tpl),
        .out_intel_reserved_ffwd_32_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_17_tpl),
        .out_intel_reserved_ffwd_32_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_18_tpl),
        .out_intel_reserved_ffwd_32_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_32_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_0_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_0_tpl),
        .out_intel_reserved_ffwd_33_0_1_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_1_tpl),
        .out_intel_reserved_ffwd_33_0_2_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_2_tpl),
        .out_intel_reserved_ffwd_33_0_3_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_3_tpl),
        .out_intel_reserved_ffwd_33_0_4_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_4_tpl),
        .out_intel_reserved_ffwd_33_0_5_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_5_tpl),
        .out_intel_reserved_ffwd_33_0_6_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_6_tpl),
        .out_intel_reserved_ffwd_33_0_7_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_7_tpl),
        .out_intel_reserved_ffwd_33_0_8_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_8_tpl),
        .out_intel_reserved_ffwd_33_0_9_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_9_tpl),
        .out_intel_reserved_ffwd_33_0_10_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_10_tpl),
        .out_intel_reserved_ffwd_33_0_11_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_11_tpl),
        .out_intel_reserved_ffwd_33_0_12_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_12_tpl),
        .out_intel_reserved_ffwd_33_0_13_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_13_tpl),
        .out_intel_reserved_ffwd_33_0_14_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_14_tpl),
        .out_intel_reserved_ffwd_33_0_15_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_15_tpl),
        .out_intel_reserved_ffwd_33_0_16_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_16_tpl),
        .out_intel_reserved_ffwd_33_0_17_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_17_tpl),
        .out_intel_reserved_ffwd_33_0_18_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_18_tpl),
        .out_intel_reserved_ffwd_33_0_19_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_19_tpl),
        .out_intel_reserved_ffwd_33_0_20_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_20_tpl),
        .out_intel_reserved_ffwd_33_0_21_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_21_tpl),
        .out_intel_reserved_ffwd_33_0_22_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_22_tpl),
        .out_intel_reserved_ffwd_33_0_23_tpl(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_33_0_23_tpl),
        .out_intel_reserved_ffwd_21_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_26_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_34_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_cnn_top_B4_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_stall_out_0(bb_cnn_top_B4_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_cnn_top_B4_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B4_sr_0_aunroll_x(BLACKBOX,5)
    cnn_top_bb_B4_sr_0 thebb_cnn_top_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_cnn_top_B4_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B9_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_cnn_top_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_cnn_top6_sr(BLACKBOX,63)
    cnn_top_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_cnn_top6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_stall_out),
        .in_i_valid(bb_cnn_top_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_120(CONSTANT,52)
    assign c_i32_120_q = $unsigned(32'b00000000000000000000000000000001);

    // bb_cnn_top_B9(BLACKBOX,21)
    cnn_top_bb_B9 thebb_cnn_top_B9 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_i5_0119_0(c_i32_120_q),
        .in_i5_0119_1(bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_3_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_cnn_top6_sr_out_o_stall),
        .in_stall_in_0(bb_cnn_top_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_cnn_top80_cnn_top_avm_readdata(in_unnamed_cnn_top80_cnn_top_avm_readdata),
        .in_unnamed_cnn_top80_cnn_top_avm_readdatavalid(in_unnamed_cnn_top80_cnn_top_avm_readdatavalid),
        .in_unnamed_cnn_top80_cnn_top_avm_waitrequest(in_unnamed_cnn_top80_cnn_top_avm_waitrequest),
        .in_unnamed_cnn_top80_cnn_top_avm_writeack(in_unnamed_cnn_top80_cnn_top_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_cnn_top6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_cnn_top_B9_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_cnn_top_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_cnn_top_B9_out_exiting_valid_out),
        .out_intel_reserved_ffwd_43_0(bb_cnn_top_B9_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_cnn_top_B9_out_intel_reserved_ffwd_44_0),
        .out_pipeline_valid_out(bb_cnn_top_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_cnn_top_B9_out_stall_in_0),
        .out_stall_out_0(bb_cnn_top_B9_out_stall_out_0),
        .out_stall_out_1(bb_cnn_top_B9_out_stall_out_1),
        .out_unnamed_cnn_top80_cnn_top_avm_address(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_address),
        .out_unnamed_cnn_top80_cnn_top_avm_burstcount(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top80_cnn_top_avm_byteenable(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top80_cnn_top_avm_enable(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_enable),
        .out_unnamed_cnn_top80_cnn_top_avm_read(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_read),
        .out_unnamed_cnn_top80_cnn_top_avm_write(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_write),
        .out_unnamed_cnn_top80_cnn_top_avm_writedata(bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_writedata),
        .out_valid_in_0(bb_cnn_top_B9_out_valid_in_0),
        .out_valid_in_1(bb_cnn_top_B9_out_valid_in_1),
        .out_valid_out_0(bb_cnn_top_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B9_sr_1_aunroll_x(BLACKBOX,14)
    cnn_top_bb_B9_sr_1 thebb_cnn_top_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_013_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_cnn_top_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_cnn_top1_out_o_valid),
        .out_o_data_0_tpl(bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_cnn_top_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_cnn_top_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_cnn_top1(BLACKBOX,102)
    cnn_top_loop_limiter_1 theloop_limiter_cnn_top1 (
        .in_i_stall(bb_cnn_top_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_cnn_top_B9_out_exiting_stall_out),
        .in_i_valid(bb_cnn_top_B2_out_valid_out_0),
        .in_i_valid_exit(bb_cnn_top_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_cnn_top1_out_o_stall),
        .out_o_valid(loop_limiter_cnn_top1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B2(BLACKBOX,17)
    cnn_top_bb_B2 thebb_cnn_top_B2 (
        .in_stall_in_0(loop_limiter_cnn_top1_out_o_stall),
        .in_valid_in_0(bb_cnn_top_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_cnn_top_B2_out_stall_out_0),
        .out_valid_out_0(bb_cnn_top_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B2_sr_0_aunroll_x(BLACKBOX,2)
    cnn_top_bb_B2_sr_0 thebb_cnn_top_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_cnn_top_B2_out_stall_out_0),
        .in_i_valid(bb_cnn_top_B3_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_cnn_top_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr(BLACKBOX,59)
    cnn_top_i_llvm_fpga_pipeline_keep_going63_6_sr thei_llvm_fpga_pipeline_keep_going63_cnn_top6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_stall_out),
        .in_i_valid(bb_cnn_top_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B3(BLACKBOX,18)
    cnn_top_bb_B3 thebb_cnn_top_B3 (
        .in_flush(in_start),
        .in_forked60_0(GND_q),
        .in_forked60_1(bb_cnn_top_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_4_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_4_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going63_cnn_top6_sr_out_o_stall),
        .in_stall_in_0(bb_cnn_top_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_cnn_top9_cnn_top_avm_readdata(in_unnamed_cnn_top9_cnn_top_avm_readdata),
        .in_unnamed_cnn_top9_cnn_top_avm_readdatavalid(in_unnamed_cnn_top9_cnn_top_avm_readdatavalid),
        .in_unnamed_cnn_top9_cnn_top_avm_waitrequest(in_unnamed_cnn_top9_cnn_top_avm_waitrequest),
        .in_unnamed_cnn_top9_cnn_top_avm_writeack(in_unnamed_cnn_top9_cnn_top_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going63_cnn_top6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_cnn_top_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_cnn_top_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_cnn_top_B3_out_exiting_valid_out),
        .out_intel_reserved_ffwd_10_0(bb_cnn_top_B3_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_cnn_top_B3_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_cnn_top_B3_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_cnn_top_B3_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_cnn_top_B3_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_cnn_top_B3_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_cnn_top_B3_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_cnn_top_B3_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_cnn_top_B3_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_cnn_top_B3_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_cnn_top_B3_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_5_0(bb_cnn_top_B3_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_cnn_top_B3_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_cnn_top_B3_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_cnn_top_B3_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_cnn_top_B3_out_intel_reserved_ffwd_9_0),
        .out_pipeline_valid_out(bb_cnn_top_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_cnn_top_B3_out_stall_in_0),
        .out_stall_out_0(bb_cnn_top_B3_out_stall_out_0),
        .out_stall_out_1(bb_cnn_top_B3_out_stall_out_1),
        .out_unnamed_cnn_top9_cnn_top_avm_address(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_address),
        .out_unnamed_cnn_top9_cnn_top_avm_burstcount(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top9_cnn_top_avm_byteenable(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top9_cnn_top_avm_enable(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_enable),
        .out_unnamed_cnn_top9_cnn_top_avm_read(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_read),
        .out_unnamed_cnn_top9_cnn_top_avm_write(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_write),
        .out_unnamed_cnn_top9_cnn_top_avm_writedata(bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_writedata),
        .out_valid_in_0(bb_cnn_top_B3_out_valid_in_0),
        .out_valid_in_1(bb_cnn_top_B3_out_valid_in_1),
        .out_valid_out_0(bb_cnn_top_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B3_sr_1_aunroll_x(BLACKBOX,3)
    cnn_top_bb_B3_sr_1 thebb_cnn_top_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_cnn_top_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_cnn_top0_out_o_valid),
        .out_o_data_0_tpl(bb_cnn_top_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_cnn_top_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_cnn_top_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_cnn_top0(BLACKBOX,101)
    cnn_top_loop_limiter_0 theloop_limiter_cnn_top0 (
        .in_i_stall(bb_cnn_top_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_cnn_top_B3_out_exiting_stall_out),
        .in_i_valid(bb_cnn_top_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_cnn_top_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_cnn_top0_out_o_stall),
        .out_o_valid(loop_limiter_cnn_top0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr(BLACKBOX,61)
    cnn_top_i_llvm_fpga_pipeline_keep_going91_1_sr thei_llvm_fpga_pipeline_keep_going91_cnn_top1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_stall_out),
        .in_i_valid(bb_cnn_top_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B1_start(BLACKBOX,16)
    cnn_top_bb_B1_start thebb_cnn_top_B1_start (
        .in_feedback_in_1(bb_cnn_top_B8_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_cnn_top_B8_out_feedback_valid_out_1),
        .in_iord_bl_call_cnn_top_i_fifodata(in_iord_bl_call_cnn_top_i_fifodata),
        .in_iord_bl_call_cnn_top_i_fifovalid(in_iord_bl_call_cnn_top_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going91_cnn_top1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_cnn_top0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going91_cnn_top1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_cnn_top_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_cnn_top_B1_start_out_intel_reserved_ffwd_4_0),
        .out_iord_bl_call_cnn_top_o_fifoalmost_full(bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoalmost_full),
        .out_iord_bl_call_cnn_top_o_fifoready(bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoready),
        .out_pipeline_valid_out(bb_cnn_top_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_cnn_top_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_cnn_top_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_cnn_top_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_cnn_top_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_cnn_top_B8(BLACKBOX,20)
    cnn_top_bb_B8 thebb_cnn_top_B8 (
        .in_feedback_stall_in_1(bb_cnn_top_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_cnn_top_i_fifoready(in_iowr_bl_return_cnn_top_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_cnn_top_B8_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_cnn_top_B8_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_cnn_top_B8_out_feedback_valid_out_1),
        .out_iowr_bl_return_cnn_top_o_fifodata(bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifodata),
        .out_iowr_bl_return_cnn_top_o_fifovalid(bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifovalid),
        .out_stall_in_0(bb_cnn_top_B8_out_stall_in_0),
        .out_stall_out_0(bb_cnn_top_B8_out_stall_out_0),
        .out_valid_out_0(bb_cnn_top_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // cnn_top_B1_start_x(EXTIFACE,53)
    assign cnn_top_B1_start_x_i_capture = GND_q;
    assign cnn_top_B1_start_x_i_clear = GND_q;
    assign cnn_top_B1_start_x_i_enable = VCC_q;
    assign cnn_top_B1_start_x_i_shift = GND_q;
    assign cnn_top_B1_start_x_i_stall_pred = GND_q;
    assign cnn_top_B1_start_x_i_stall_succ = bb_cnn_top_B8_out_stall_in_0;
    assign cnn_top_B1_start_x_i_valid_loop = bb_cnn_top_B1_start_out_valid_in_0;
    assign cnn_top_B1_start_x_i_valid_pred = bb_cnn_top_B1_start_out_valid_in_1;
    assign cnn_top_B1_start_x_i_valid_succ = bb_cnn_top_B8_out_valid_out_0;
    assign cnn_top_B1_start_x_i_capture_bitsignaltemp = cnn_top_B1_start_x_i_capture[0];
    assign cnn_top_B1_start_x_i_clear_bitsignaltemp = cnn_top_B1_start_x_i_clear[0];
    assign cnn_top_B1_start_x_i_enable_bitsignaltemp = cnn_top_B1_start_x_i_enable[0];
    assign cnn_top_B1_start_x_i_shift_bitsignaltemp = cnn_top_B1_start_x_i_shift[0];
    assign cnn_top_B1_start_x_i_stall_pred_bitsignaltemp = cnn_top_B1_start_x_i_stall_pred[0];
    assign cnn_top_B1_start_x_i_stall_succ_bitsignaltemp = cnn_top_B1_start_x_i_stall_succ[0];
    assign cnn_top_B1_start_x_i_valid_loop_bitsignaltemp = cnn_top_B1_start_x_i_valid_loop[0];
    assign cnn_top_B1_start_x_i_valid_pred_bitsignaltemp = cnn_top_B1_start_x_i_valid_pred[0];
    assign cnn_top_B1_start_x_i_valid_succ_bitsignaltemp = cnn_top_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("cnn_top.B1.start")
    ) thecnn_top_B1_start_x (
        .i_capture(cnn_top_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(cnn_top_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(cnn_top_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(cnn_top_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(cnn_top_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(cnn_top_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(cnn_top_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(cnn_top_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(cnn_top_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B3_x(EXTIFACE,54)
    assign cnn_top_B3_x_i_capture = GND_q;
    assign cnn_top_B3_x_i_clear = GND_q;
    assign cnn_top_B3_x_i_enable = VCC_q;
    assign cnn_top_B3_x_i_shift = GND_q;
    assign cnn_top_B3_x_i_stall_pred = loop_limiter_cnn_top0_out_o_stall;
    assign cnn_top_B3_x_i_stall_succ = bb_cnn_top_B3_out_stall_in_0;
    assign cnn_top_B3_x_i_valid_loop = bb_cnn_top_B3_out_valid_in_0;
    assign cnn_top_B3_x_i_valid_pred = bb_cnn_top_B3_out_valid_in_1;
    assign cnn_top_B3_x_i_valid_succ = bb_cnn_top_B3_out_valid_out_0;
    assign cnn_top_B3_x_i_capture_bitsignaltemp = cnn_top_B3_x_i_capture[0];
    assign cnn_top_B3_x_i_clear_bitsignaltemp = cnn_top_B3_x_i_clear[0];
    assign cnn_top_B3_x_i_enable_bitsignaltemp = cnn_top_B3_x_i_enable[0];
    assign cnn_top_B3_x_i_shift_bitsignaltemp = cnn_top_B3_x_i_shift[0];
    assign cnn_top_B3_x_i_stall_pred_bitsignaltemp = cnn_top_B3_x_i_stall_pred[0];
    assign cnn_top_B3_x_i_stall_succ_bitsignaltemp = cnn_top_B3_x_i_stall_succ[0];
    assign cnn_top_B3_x_i_valid_loop_bitsignaltemp = cnn_top_B3_x_i_valid_loop[0];
    assign cnn_top_B3_x_i_valid_pred_bitsignaltemp = cnn_top_B3_x_i_valid_pred[0];
    assign cnn_top_B3_x_i_valid_succ_bitsignaltemp = cnn_top_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("cnn_top.B3")
    ) thecnn_top_B3_x (
        .i_capture(cnn_top_B3_x_i_capture_bitsignaltemp),
        .i_clear(cnn_top_B3_x_i_clear_bitsignaltemp),
        .i_enable(cnn_top_B3_x_i_enable_bitsignaltemp),
        .i_shift(cnn_top_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(cnn_top_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(cnn_top_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(cnn_top_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(cnn_top_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(cnn_top_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B5_x(EXTIFACE,55)
    assign cnn_top_B5_x_i_capture = GND_q;
    assign cnn_top_B5_x_i_clear = GND_q;
    assign cnn_top_B5_x_i_enable = VCC_q;
    assign cnn_top_B5_x_i_shift = GND_q;
    assign cnn_top_B5_x_i_stall_pred = loop_limiter_cnn_top2_out_o_stall;
    assign cnn_top_B5_x_i_stall_succ = bb_cnn_top_B6_out_stall_in_0;
    assign cnn_top_B5_x_i_valid_loop = bb_cnn_top_B5_aunroll_x_out_valid_in_0;
    assign cnn_top_B5_x_i_valid_pred = bb_cnn_top_B5_aunroll_x_out_valid_in_1;
    assign cnn_top_B5_x_i_valid_succ = bb_cnn_top_B6_out_valid_out_0;
    assign cnn_top_B5_x_i_capture_bitsignaltemp = cnn_top_B5_x_i_capture[0];
    assign cnn_top_B5_x_i_clear_bitsignaltemp = cnn_top_B5_x_i_clear[0];
    assign cnn_top_B5_x_i_enable_bitsignaltemp = cnn_top_B5_x_i_enable[0];
    assign cnn_top_B5_x_i_shift_bitsignaltemp = cnn_top_B5_x_i_shift[0];
    assign cnn_top_B5_x_i_stall_pred_bitsignaltemp = cnn_top_B5_x_i_stall_pred[0];
    assign cnn_top_B5_x_i_stall_succ_bitsignaltemp = cnn_top_B5_x_i_stall_succ[0];
    assign cnn_top_B5_x_i_valid_loop_bitsignaltemp = cnn_top_B5_x_i_valid_loop[0];
    assign cnn_top_B5_x_i_valid_pred_bitsignaltemp = cnn_top_B5_x_i_valid_pred[0];
    assign cnn_top_B5_x_i_valid_succ_bitsignaltemp = cnn_top_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("cnn_top.B5")
    ) thecnn_top_B5_x (
        .i_capture(cnn_top_B5_x_i_capture_bitsignaltemp),
        .i_clear(cnn_top_B5_x_i_clear_bitsignaltemp),
        .i_enable(cnn_top_B5_x_i_enable_bitsignaltemp),
        .i_shift(cnn_top_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(cnn_top_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(cnn_top_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(cnn_top_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(cnn_top_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(cnn_top_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B7_x(EXTIFACE,56)
    assign cnn_top_B7_x_i_capture = GND_q;
    assign cnn_top_B7_x_i_clear = GND_q;
    assign cnn_top_B7_x_i_enable = VCC_q;
    assign cnn_top_B7_x_i_shift = GND_q;
    assign cnn_top_B7_x_i_stall_pred = loop_limiter_cnn_top3_out_o_stall;
    assign cnn_top_B7_x_i_stall_succ = bb_cnn_top_B7_aunroll_x_out_stall_in_0;
    assign cnn_top_B7_x_i_valid_loop = bb_cnn_top_B7_aunroll_x_out_valid_in_0;
    assign cnn_top_B7_x_i_valid_pred = bb_cnn_top_B7_aunroll_x_out_valid_in_1;
    assign cnn_top_B7_x_i_valid_succ = bb_cnn_top_B7_aunroll_x_out_valid_out_0;
    assign cnn_top_B7_x_i_capture_bitsignaltemp = cnn_top_B7_x_i_capture[0];
    assign cnn_top_B7_x_i_clear_bitsignaltemp = cnn_top_B7_x_i_clear[0];
    assign cnn_top_B7_x_i_enable_bitsignaltemp = cnn_top_B7_x_i_enable[0];
    assign cnn_top_B7_x_i_shift_bitsignaltemp = cnn_top_B7_x_i_shift[0];
    assign cnn_top_B7_x_i_stall_pred_bitsignaltemp = cnn_top_B7_x_i_stall_pred[0];
    assign cnn_top_B7_x_i_stall_succ_bitsignaltemp = cnn_top_B7_x_i_stall_succ[0];
    assign cnn_top_B7_x_i_valid_loop_bitsignaltemp = cnn_top_B7_x_i_valid_loop[0];
    assign cnn_top_B7_x_i_valid_pred_bitsignaltemp = cnn_top_B7_x_i_valid_pred[0];
    assign cnn_top_B7_x_i_valid_succ_bitsignaltemp = cnn_top_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("cnn_top.B7")
    ) thecnn_top_B7_x (
        .i_capture(cnn_top_B7_x_i_capture_bitsignaltemp),
        .i_clear(cnn_top_B7_x_i_clear_bitsignaltemp),
        .i_enable(cnn_top_B7_x_i_enable_bitsignaltemp),
        .i_shift(cnn_top_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(cnn_top_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(cnn_top_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(cnn_top_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(cnn_top_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(cnn_top_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // cnn_top_B9_x(EXTIFACE,57)
    assign cnn_top_B9_x_i_capture = GND_q;
    assign cnn_top_B9_x_i_clear = GND_q;
    assign cnn_top_B9_x_i_enable = VCC_q;
    assign cnn_top_B9_x_i_shift = GND_q;
    assign cnn_top_B9_x_i_stall_pred = loop_limiter_cnn_top1_out_o_stall;
    assign cnn_top_B9_x_i_stall_succ = bb_cnn_top_B9_out_stall_in_0;
    assign cnn_top_B9_x_i_valid_loop = bb_cnn_top_B9_out_valid_in_0;
    assign cnn_top_B9_x_i_valid_pred = bb_cnn_top_B9_out_valid_in_1;
    assign cnn_top_B9_x_i_valid_succ = bb_cnn_top_B9_out_valid_out_0;
    assign cnn_top_B9_x_i_capture_bitsignaltemp = cnn_top_B9_x_i_capture[0];
    assign cnn_top_B9_x_i_clear_bitsignaltemp = cnn_top_B9_x_i_clear[0];
    assign cnn_top_B9_x_i_enable_bitsignaltemp = cnn_top_B9_x_i_enable[0];
    assign cnn_top_B9_x_i_shift_bitsignaltemp = cnn_top_B9_x_i_shift[0];
    assign cnn_top_B9_x_i_stall_pred_bitsignaltemp = cnn_top_B9_x_i_stall_pred[0];
    assign cnn_top_B9_x_i_stall_succ_bitsignaltemp = cnn_top_B9_x_i_stall_succ[0];
    assign cnn_top_B9_x_i_valid_loop_bitsignaltemp = cnn_top_B9_x_i_valid_loop[0];
    assign cnn_top_B9_x_i_valid_pred_bitsignaltemp = cnn_top_B9_x_i_valid_pred[0];
    assign cnn_top_B9_x_i_valid_succ_bitsignaltemp = cnn_top_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("cnn_top.B9")
    ) thecnn_top_B9_x (
        .i_capture(cnn_top_B9_x_i_capture_bitsignaltemp),
        .i_clear(cnn_top_B9_x_i_clear_bitsignaltemp),
        .i_enable(cnn_top_B9_x_i_enable_bitsignaltemp),
        .i_shift(cnn_top_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(cnn_top_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(cnn_top_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(cnn_top_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(cnn_top_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(cnn_top_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_cnn_top_o_fifoalmost_full(GPOUT,105)
    assign out_iord_bl_call_cnn_top_o_fifoalmost_full = bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoalmost_full;

    // out_iord_bl_call_cnn_top_o_fifoready(GPOUT,106)
    assign out_iord_bl_call_cnn_top_o_fifoready = bb_cnn_top_B1_start_out_iord_bl_call_cnn_top_o_fifoready;

    // out_iord_bl_return_conv_process_o_fifoalmost_full(GPOUT,107)
    assign out_iord_bl_return_conv_process_o_fifoalmost_full = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoalmost_full;

    // out_iord_bl_return_conv_process_o_fifoready(GPOUT,108)
    assign out_iord_bl_return_conv_process_o_fifoready = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_conv_process_o_fifoready;

    // out_iord_bl_return_load_input0_o_fifoalmost_full(GPOUT,109)
    assign out_iord_bl_return_load_input0_o_fifoalmost_full = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoalmost_full;

    // out_iord_bl_return_load_input0_o_fifoready(GPOUT,110)
    assign out_iord_bl_return_load_input0_o_fifoready = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input0_o_fifoready;

    // out_iord_bl_return_load_input1_o_fifoalmost_full(GPOUT,111)
    assign out_iord_bl_return_load_input1_o_fifoalmost_full = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoalmost_full;

    // out_iord_bl_return_load_input1_o_fifoready(GPOUT,112)
    assign out_iord_bl_return_load_input1_o_fifoready = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_input1_o_fifoready;

    // out_iord_bl_return_load_weight0_o_fifoalmost_full(GPOUT,113)
    assign out_iord_bl_return_load_weight0_o_fifoalmost_full = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoalmost_full;

    // out_iord_bl_return_load_weight0_o_fifoready(GPOUT,114)
    assign out_iord_bl_return_load_weight0_o_fifoready = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight0_o_fifoready;

    // out_iord_bl_return_load_weight1_o_fifoalmost_full(GPOUT,115)
    assign out_iord_bl_return_load_weight1_o_fifoalmost_full = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoalmost_full;

    // out_iord_bl_return_load_weight1_o_fifoready(GPOUT,116)
    assign out_iord_bl_return_load_weight1_o_fifoready = bb_cnn_top_B7_aunroll_x_out_iord_bl_return_load_weight1_o_fifoready;

    // out_iowr_bl_call_conv_process_o_fifodata(GPOUT,117)
    assign out_iowr_bl_call_conv_process_o_fifodata = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata;

    // out_iowr_bl_call_conv_process_o_fifovalid(GPOUT,118)
    assign out_iowr_bl_call_conv_process_o_fifovalid = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid;

    // out_iowr_bl_call_load_input0_o_fifodata(GPOUT,119)
    assign out_iowr_bl_call_load_input0_o_fifodata = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata;

    // out_iowr_bl_call_load_input0_o_fifovalid(GPOUT,120)
    assign out_iowr_bl_call_load_input0_o_fifovalid = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid;

    // out_iowr_bl_call_load_input1_o_fifodata(GPOUT,121)
    assign out_iowr_bl_call_load_input1_o_fifodata = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata;

    // out_iowr_bl_call_load_input1_o_fifovalid(GPOUT,122)
    assign out_iowr_bl_call_load_input1_o_fifovalid = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid;

    // out_iowr_bl_call_load_weight0_o_fifodata(GPOUT,123)
    assign out_iowr_bl_call_load_weight0_o_fifodata = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata;

    // out_iowr_bl_call_load_weight0_o_fifovalid(GPOUT,124)
    assign out_iowr_bl_call_load_weight0_o_fifovalid = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid;

    // out_iowr_bl_call_load_weight1_o_fifodata(GPOUT,125)
    assign out_iowr_bl_call_load_weight1_o_fifodata = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata;

    // out_iowr_bl_call_load_weight1_o_fifovalid(GPOUT,126)
    assign out_iowr_bl_call_load_weight1_o_fifovalid = bb_cnn_top_B7_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid;

    // out_iowr_bl_return_cnn_top_o_fifodata(GPOUT,127)
    assign out_iowr_bl_return_cnn_top_o_fifodata = bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifodata;

    // out_iowr_bl_return_cnn_top_o_fifovalid(GPOUT,128)
    assign out_iowr_bl_return_cnn_top_o_fifovalid = bb_cnn_top_B8_out_iowr_bl_return_cnn_top_o_fifovalid;

    // bb_cnn_top_B0_runOnce(BLACKBOX,15)
    cnn_top_bb_B0_runOnce thebb_cnn_top_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_cnn_top_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,129)
    assign out_stall_out = bb_cnn_top_B0_runOnce_out_stall_out_0;

    // out_unnamed_cnn_top80_cnn_top_avm_address(GPOUT,130)
    assign out_unnamed_cnn_top80_cnn_top_avm_address = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_address;

    // out_unnamed_cnn_top80_cnn_top_avm_burstcount(GPOUT,131)
    assign out_unnamed_cnn_top80_cnn_top_avm_burstcount = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_burstcount;

    // out_unnamed_cnn_top80_cnn_top_avm_byteenable(GPOUT,132)
    assign out_unnamed_cnn_top80_cnn_top_avm_byteenable = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_byteenable;

    // out_unnamed_cnn_top80_cnn_top_avm_enable(GPOUT,133)
    assign out_unnamed_cnn_top80_cnn_top_avm_enable = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_enable;

    // out_unnamed_cnn_top80_cnn_top_avm_read(GPOUT,134)
    assign out_unnamed_cnn_top80_cnn_top_avm_read = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_read;

    // out_unnamed_cnn_top80_cnn_top_avm_write(GPOUT,135)
    assign out_unnamed_cnn_top80_cnn_top_avm_write = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_write;

    // out_unnamed_cnn_top80_cnn_top_avm_writedata(GPOUT,136)
    assign out_unnamed_cnn_top80_cnn_top_avm_writedata = bb_cnn_top_B9_out_unnamed_cnn_top80_cnn_top_avm_writedata;

    // out_unnamed_cnn_top9_cnn_top_avm_address(GPOUT,137)
    assign out_unnamed_cnn_top9_cnn_top_avm_address = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_address;

    // out_unnamed_cnn_top9_cnn_top_avm_burstcount(GPOUT,138)
    assign out_unnamed_cnn_top9_cnn_top_avm_burstcount = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_burstcount;

    // out_unnamed_cnn_top9_cnn_top_avm_byteenable(GPOUT,139)
    assign out_unnamed_cnn_top9_cnn_top_avm_byteenable = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_byteenable;

    // out_unnamed_cnn_top9_cnn_top_avm_enable(GPOUT,140)
    assign out_unnamed_cnn_top9_cnn_top_avm_enable = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_enable;

    // out_unnamed_cnn_top9_cnn_top_avm_read(GPOUT,141)
    assign out_unnamed_cnn_top9_cnn_top_avm_read = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_read;

    // out_unnamed_cnn_top9_cnn_top_avm_write(GPOUT,142)
    assign out_unnamed_cnn_top9_cnn_top_avm_write = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_write;

    // out_unnamed_cnn_top9_cnn_top_avm_writedata(GPOUT,143)
    assign out_unnamed_cnn_top9_cnn_top_avm_writedata = bb_cnn_top_B3_out_unnamed_cnn_top9_cnn_top_avm_writedata;

    // out_valid_out(GPOUT,144)
    assign out_valid_out = GND_q;

endmodule
