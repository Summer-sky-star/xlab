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

// SystemVerilog created from cnn_top_conv_process_function
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_function (
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_ddr_out1,
    input wire [63:0] in_arg_ddr_scale,
    input wire [63:0] in_arg_input_ctrl0_global,
    input wire [63:0] in_arg_input_ctrl1_global,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_weight_ctrl0_global,
    input wire [63:0] in_arg_weight_ctrl1_global,
    input wire [1023:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [63:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [1023:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [63:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [831:0] in_iord_bl_call_conv_process_i_fifodata,
    input wire [0:0] in_iord_bl_call_conv_process_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_conv_process_i_fifoready,
    input wire [0:0] in_iowr_input_ctrl0_i_fifoready,
    input wire [0:0] in_iowr_input_ctrl1_i_fifoready,
    input wire [0:0] in_iowr_weight_ctrl0_i_fifoready,
    input wire [0:0] in_iowr_weight_ctrl1_i_fifoready,
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack,
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack,
    input wire [511:0] in_memdep_36_conv_process_avm_readdata,
    input wire [0:0] in_memdep_36_conv_process_avm_readdatavalid,
    input wire [0:0] in_memdep_36_conv_process_avm_waitrequest,
    input wire [0:0] in_memdep_36_conv_process_avm_writeack,
    input wire [511:0] in_memdep_5_conv_process_avm_readdata,
    input wire [0:0] in_memdep_5_conv_process_avm_readdatavalid,
    input wire [0:0] in_memdep_5_conv_process_avm_waitrequest,
    input wire [0:0] in_memdep_5_conv_process_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_conv_process101_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_writeack,
    input wire [31:0] in_unnamed_conv_process20_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_writeack,
    input wire [31:0] in_unnamed_conv_process21_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_call_conv_process_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_conv_process_o_fifoready,
    output wire [0:0] out_iowr_bl_return_conv_process_o_fifodata,
    output wire [0:0] out_iowr_bl_return_conv_process_o_fifovalid,
    output wire [15:0] out_iowr_input_ctrl0_o_fifodata,
    output wire [0:0] out_iowr_input_ctrl0_o_fifovalid,
    output wire [15:0] out_iowr_input_ctrl1_o_fifodata,
    output wire [0:0] out_iowr_input_ctrl1_o_fifovalid,
    output wire [15:0] out_iowr_weight_ctrl0_o_fifodata,
    output wire [0:0] out_iowr_weight_ctrl0_o_fifovalid,
    output wire [15:0] out_iowr_weight_ctrl1_o_fifodata,
    output wire [0:0] out_iowr_weight_ctrl1_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata,
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata,
    output wire [31:0] out_memdep_36_conv_process_avm_address,
    output wire [0:0] out_memdep_36_conv_process_avm_burstcount,
    output wire [63:0] out_memdep_36_conv_process_avm_byteenable,
    output wire [0:0] out_memdep_36_conv_process_avm_enable,
    output wire [0:0] out_memdep_36_conv_process_avm_read,
    output wire [0:0] out_memdep_36_conv_process_avm_write,
    output wire [511:0] out_memdep_36_conv_process_avm_writedata,
    output wire [31:0] out_memdep_5_conv_process_avm_address,
    output wire [0:0] out_memdep_5_conv_process_avm_burstcount,
    output wire [63:0] out_memdep_5_conv_process_avm_byteenable,
    output wire [0:0] out_memdep_5_conv_process_avm_enable,
    output wire [0:0] out_memdep_5_conv_process_avm_read,
    output wire [0:0] out_memdep_5_conv_process_avm_write,
    output wire [511:0] out_memdep_5_conv_process_avm_writedata,
    output wire [0:0] out_o_active_unnamed_conv_process101,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process101_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_writedata,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process20_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_writedata,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process21_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B10_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B11_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv_process_B12_aunroll_x_out_c0_exe10780;
    wire [31:0] bb_conv_process_B12_aunroll_x_out_c0_exe6776;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_c0_exe7777;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_c0_exe8778;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_c0_exe9779;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_lsu_unnamed_conv_process101_o_active;
    wire [31:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    wire [511:0] bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_stall_in_0;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_stall_out_0;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_stall_out_1;
    wire [31:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_address;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_read;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_write;
    wire [31:0] bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_valid_in_0;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_valid_in_1;
    wire [0:0] bb_conv_process_B12_aunroll_x_out_valid_out_0;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B12_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B15_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B17_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B18_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B18_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B19_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B1_start_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B1_start_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B20_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B20_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B20_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B20_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B20_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B21_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B22_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B23_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B24_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B25_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B25_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B25_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_conv_process_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_conv_process_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl;
    wire [63:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [31:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_73_0;
    wire [32:0] bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_74_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_stall_out_0;
    wire [0:0] bb_conv_process_B8_aunroll_x_out_valid_out_0;
    wire [0:0] bb_conv_process_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_conv_process_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_conv_process_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_conv_process_B9_sr_1_aunroll_x_out_o_valid;
    wire [15:0] arbiter_iowr_input_ctrl0_out_o_fifodata;
    wire [0:0] arbiter_iowr_input_ctrl0_out_o_fifovalid;
    wire [0:0] arbiter_iowr_input_ctrl0_out_ready_out0;
    wire [0:0] arbiter_iowr_input_ctrl0_out_ready_out1;
    wire [15:0] arbiter_iowr_input_ctrl1_out_o_fifodata;
    wire [0:0] arbiter_iowr_input_ctrl1_out_o_fifovalid;
    wire [0:0] arbiter_iowr_input_ctrl1_out_ready_out0;
    wire [0:0] arbiter_iowr_input_ctrl1_out_ready_out1;
    wire [15:0] arbiter_iowr_weight_ctrl0_out_o_fifodata;
    wire [0:0] arbiter_iowr_weight_ctrl0_out_o_fifovalid;
    wire [0:0] arbiter_iowr_weight_ctrl0_out_ready_out0;
    wire [0:0] arbiter_iowr_weight_ctrl0_out_ready_out1;
    wire [15:0] arbiter_iowr_weight_ctrl1_out_o_fifodata;
    wire [0:0] arbiter_iowr_weight_ctrl1_out_o_fifovalid;
    wire [0:0] arbiter_iowr_weight_ctrl1_out_ready_out0;
    wire [0:0] arbiter_iowr_weight_ctrl1_out_ready_out1;
    wire [0:0] bb_conv_process_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_conv_process_B0_runOnce_out_valid_out_0;
    wire [31:0] bb_conv_process_B10_out_c0_exe10;
    wire [31:0] bb_conv_process_B10_out_c0_exe11;
    wire [0:0] bb_conv_process_B10_out_c0_exe12;
    wire [0:0] bb_conv_process_B10_out_c0_exe13;
    wire [31:0] bb_conv_process_B10_out_c0_exe14;
    wire [31:0] bb_conv_process_B10_out_c0_exe1739;
    wire [0:0] bb_conv_process_B10_out_c0_exe2740;
    wire [0:0] bb_conv_process_B10_out_c0_exe4742;
    wire [31:0] bb_conv_process_B10_out_c0_exe5743;
    wire [31:0] bb_conv_process_B10_out_c0_exe6744;
    wire [31:0] bb_conv_process_B10_out_c0_exe7;
    wire [0:0] bb_conv_process_B10_out_c0_exe8;
    wire [0:0] bb_conv_process_B10_out_c0_exe9;
    wire [0:0] bb_conv_process_B10_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B10_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B10_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B10_out_stall_out_0;
    wire [0:0] bb_conv_process_B10_out_stall_out_1;
    wire [0:0] bb_conv_process_B10_out_valid_in_0;
    wire [0:0] bb_conv_process_B10_out_valid_in_1;
    wire [0:0] bb_conv_process_B10_out_valid_out_0;
    wire [31:0] bb_conv_process_B11_out_feedback_out_66;
    wire [0:0] bb_conv_process_B11_out_feedback_valid_out_66;
    wire [0:0] bb_conv_process_B11_out_stall_in_0;
    wire [0:0] bb_conv_process_B11_out_stall_out_0;
    wire [0:0] bb_conv_process_B11_out_valid_out_0;
    wire [31:0] bb_conv_process_B13_out_c0_exe1078010;
    wire [31:0] bb_conv_process_B13_out_c0_exe67763;
    wire [0:0] bb_conv_process_B13_out_c0_exe77775;
    wire [0:0] bb_conv_process_B13_out_c0_exe87787;
    wire [0:0] bb_conv_process_B13_out_stall_in_0;
    wire [0:0] bb_conv_process_B13_out_stall_out_0;
    wire [0:0] bb_conv_process_B13_out_valid_out_0;
    wire [0:0] bb_conv_process_B14_out_feedback_out_1;
    wire [0:0] bb_conv_process_B14_out_feedback_valid_out_1;
    wire [0:0] bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifodata;
    wire [0:0] bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifovalid;
    wire [0:0] bb_conv_process_B14_out_stall_in_0;
    wire [0:0] bb_conv_process_B14_out_stall_out_0;
    wire [0:0] bb_conv_process_B14_out_valid_out_0;
    wire [0:0] bb_conv_process_B15_out_intel_reserved_ffwd_75_0;
    wire [31:0] bb_conv_process_B15_out_intel_reserved_ffwd_76_0;
    wire [0:0] bb_conv_process_B15_out_intel_reserved_ffwd_77_0;
    wire [15:0] bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifovalid;
    wire [15:0] bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifodata;
    wire [0:0] bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifovalid;
    wire [0:0] bb_conv_process_B15_out_lnot;
    wire [0:0] bb_conv_process_B15_out_stall_out_0;
    wire [0:0] bb_conv_process_B15_out_stall_out_1;
    wire [0:0] bb_conv_process_B15_out_valid_in_0;
    wire [0:0] bb_conv_process_B15_out_valid_in_1;
    wire [0:0] bb_conv_process_B15_out_valid_out_0;
    wire [0:0] bb_conv_process_B16_out_c0_exe2796;
    wire [0:0] bb_conv_process_B16_out_c0_exe3797;
    wire [0:0] bb_conv_process_B16_out_c0_exe4798;
    wire [0:0] bb_conv_process_B16_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B16_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B16_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B16_out_stall_out_0;
    wire [0:0] bb_conv_process_B16_out_stall_out_1;
    wire [0:0] bb_conv_process_B16_out_valid_in_0;
    wire [0:0] bb_conv_process_B16_out_valid_in_1;
    wire [0:0] bb_conv_process_B16_out_valid_out_0;
    wire [0:0] bb_conv_process_B17_out_c0_exe2817;
    wire [0:0] bb_conv_process_B17_out_c0_exe3818;
    wire [0:0] bb_conv_process_B17_out_c0_exe4819;
    wire [0:0] bb_conv_process_B17_out_c0_exe5820;
    wire [0:0] bb_conv_process_B17_out_c0_exe6821;
    wire [0:0] bb_conv_process_B17_out_c0_exe7822;
    wire [0:0] bb_conv_process_B17_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B17_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B17_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B17_out_stall_out_0;
    wire [0:0] bb_conv_process_B17_out_stall_out_1;
    wire [0:0] bb_conv_process_B17_out_valid_in_0;
    wire [0:0] bb_conv_process_B17_out_valid_in_1;
    wire [0:0] bb_conv_process_B17_out_valid_out_0;
    wire [0:0] bb_conv_process_B18_out_c1_exe712;
    wire [0:0] bb_conv_process_B18_out_stall_in_0;
    wire [0:0] bb_conv_process_B18_out_stall_out_0;
    wire [0:0] bb_conv_process_B18_out_valid_out_0;
    wire [0:0] bb_conv_process_B19_out_c0_exe10859;
    wire [0:0] bb_conv_process_B19_out_c0_exe11860;
    wire [0:0] bb_conv_process_B19_out_c0_exe2851;
    wire [0:0] bb_conv_process_B19_out_c0_exe3852;
    wire [0:0] bb_conv_process_B19_out_c0_exe4853;
    wire [0:0] bb_conv_process_B19_out_c0_exe5854;
    wire [0:0] bb_conv_process_B19_out_c0_exe6855;
    wire [0:0] bb_conv_process_B19_out_c0_exe7856;
    wire [0:0] bb_conv_process_B19_out_c0_exe8857;
    wire [0:0] bb_conv_process_B19_out_c0_exe9858;
    wire [0:0] bb_conv_process_B19_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B19_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B19_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B19_out_stall_out_0;
    wire [0:0] bb_conv_process_B19_out_stall_out_1;
    wire [0:0] bb_conv_process_B19_out_valid_in_0;
    wire [0:0] bb_conv_process_B19_out_valid_in_1;
    wire [0:0] bb_conv_process_B19_out_valid_out_0;
    wire [0:0] bb_conv_process_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_11_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_12_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_13_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_14_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_8_0;
    wire [31:0] bb_conv_process_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoready;
    wire [0:0] bb_conv_process_B1_start_out_stall_out_0;
    wire [0:0] bb_conv_process_B1_start_out_stall_out_1;
    wire [0:0] bb_conv_process_B1_start_out_valid_in_0;
    wire [0:0] bb_conv_process_B1_start_out_valid_in_1;
    wire [0:0] bb_conv_process_B1_start_out_valid_out_0;
    wire [0:0] bb_conv_process_B2_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B2_out_exiting_valid_out;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_34_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_46_0;
    wire [31:0] bb_conv_process_B2_out_intel_reserved_ffwd_47_0;
    wire [0:0] bb_conv_process_B2_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B2_out_stall_in_0;
    wire [0:0] bb_conv_process_B2_out_stall_out_0;
    wire [0:0] bb_conv_process_B2_out_stall_out_1;
    wire [31:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_address;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_read;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_write;
    wire [31:0] bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_writedata;
    wire [31:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_address;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_read;
    wire [0:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_write;
    wire [31:0] bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B2_out_valid_in_0;
    wire [0:0] bb_conv_process_B2_out_valid_in_1;
    wire [0:0] bb_conv_process_B2_out_valid_out_0;
    wire [0:0] bb_conv_process_B20_out_c1_exe713;
    wire [0:0] bb_conv_process_B20_out_c1_exe817;
    wire [0:0] bb_conv_process_B20_out_stall_in_0;
    wire [0:0] bb_conv_process_B20_out_stall_out_0;
    wire [0:0] bb_conv_process_B20_out_valid_out_0;
    wire [0:0] bb_conv_process_B21_out_c0_exe10908;
    wire [0:0] bb_conv_process_B21_out_c0_exe11909;
    wire [0:0] bb_conv_process_B21_out_c0_exe12910;
    wire [0:0] bb_conv_process_B21_out_c0_exe13911;
    wire [0:0] bb_conv_process_B21_out_c0_exe14912;
    wire [0:0] bb_conv_process_B21_out_c0_exe15;
    wire [0:0] bb_conv_process_B21_out_c0_exe16;
    wire [0:0] bb_conv_process_B21_out_c0_exe17;
    wire [0:0] bb_conv_process_B21_out_c0_exe2900;
    wire [31:0] bb_conv_process_B21_out_c0_exe3901;
    wire [0:0] bb_conv_process_B21_out_c0_exe4902;
    wire [0:0] bb_conv_process_B21_out_c0_exe5903;
    wire [0:0] bb_conv_process_B21_out_c0_exe6904;
    wire [0:0] bb_conv_process_B21_out_c0_exe7905;
    wire [0:0] bb_conv_process_B21_out_c0_exe8906;
    wire [0:0] bb_conv_process_B21_out_c0_exe9907;
    wire [0:0] bb_conv_process_B21_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B21_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B21_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B21_out_stall_out_0;
    wire [0:0] bb_conv_process_B21_out_stall_out_1;
    wire [0:0] bb_conv_process_B21_out_valid_in_0;
    wire [0:0] bb_conv_process_B21_out_valid_in_1;
    wire [0:0] bb_conv_process_B21_out_valid_out_0;
    wire [0:0] bb_conv_process_B22_out_c1_exe714;
    wire [0:0] bb_conv_process_B22_out_c1_exe818;
    wire [0:0] bb_conv_process_B22_out_c1_exe921;
    wire [0:0] bb_conv_process_B22_out_stall_in_0;
    wire [0:0] bb_conv_process_B22_out_stall_out_0;
    wire [0:0] bb_conv_process_B22_out_valid_out_0;
    wire [0:0] bb_conv_process_B23_out_c1_exe1024;
    wire [0:0] bb_conv_process_B23_out_c1_exe715;
    wire [0:0] bb_conv_process_B23_out_c1_exe819;
    wire [0:0] bb_conv_process_B23_out_c1_exe922;
    wire [0:0] bb_conv_process_B23_out_stall_in_0;
    wire [0:0] bb_conv_process_B23_out_stall_out_0;
    wire [0:0] bb_conv_process_B23_out_valid_out_0;
    wire [0:0] bb_conv_process_B24_out_c1_exe10;
    wire [0:0] bb_conv_process_B24_out_c1_exe11;
    wire [0:0] bb_conv_process_B24_out_c1_exe7;
    wire [0:0] bb_conv_process_B24_out_c1_exe8;
    wire [0:0] bb_conv_process_B24_out_c1_exe9;
    wire [0:0] bb_conv_process_B24_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B24_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [31:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;
    wire [0:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;
    wire [0:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;
    wire [511:0] bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;
    wire [31:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_address;
    wire [0:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_read;
    wire [0:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_write;
    wire [511:0] bb_conv_process_B24_out_memdep_36_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B24_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B24_out_stall_in_0;
    wire [0:0] bb_conv_process_B24_out_stall_out_0;
    wire [0:0] bb_conv_process_B24_out_stall_out_1;
    wire [0:0] bb_conv_process_B24_out_valid_in_0;
    wire [0:0] bb_conv_process_B24_out_valid_in_1;
    wire [0:0] bb_conv_process_B24_out_valid_out_0;
    wire [0:0] bb_conv_process_B25_out_c1_exe711;
    wire [31:0] bb_conv_process_B25_out_intel_reserved_ffwd_78_0;
    wire [0:0] bb_conv_process_B25_out_stall_in_0;
    wire [0:0] bb_conv_process_B25_out_stall_out_0;
    wire [0:0] bb_conv_process_B25_out_valid_out_0;
    wire [0:0] bb_conv_process_B25_out_valid_out_1;
    wire [31:0] bb_conv_process_B3_out_intel_reserved_ffwd_48_0;
    wire [31:0] bb_conv_process_B3_out_intel_reserved_ffwd_49_0;
    wire [0:0] bb_conv_process_B3_out_intel_reserved_ffwd_50_0;
    wire [32:0] bb_conv_process_B3_out_intel_reserved_ffwd_51_0;
    wire [0:0] bb_conv_process_B3_out_stall_out_0;
    wire [0:0] bb_conv_process_B3_out_valid_out_0;
    wire [0:0] bb_conv_process_B4_out_c0_exe2699;
    wire [31:0] bb_conv_process_B4_out_c0_exe3700;
    wire [0:0] bb_conv_process_B4_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B4_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B4_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B4_out_stall_out_0;
    wire [0:0] bb_conv_process_B4_out_stall_out_1;
    wire [0:0] bb_conv_process_B4_out_valid_in_0;
    wire [0:0] bb_conv_process_B4_out_valid_in_1;
    wire [0:0] bb_conv_process_B4_out_valid_out_0;
    wire [0:0] bb_conv_process_B5_out_c0_exe3710;
    wire [0:0] bb_conv_process_B5_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B5_out_exiting_valid_out;
    wire [31:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_address;
    wire [0:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_read;
    wire [0:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_write;
    wire [511:0] bb_conv_process_B5_out_memdep_5_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B5_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B5_out_stall_in_0;
    wire [0:0] bb_conv_process_B5_out_stall_out_0;
    wire [0:0] bb_conv_process_B5_out_stall_out_1;
    wire [0:0] bb_conv_process_B5_out_valid_in_0;
    wire [0:0] bb_conv_process_B5_out_valid_in_1;
    wire [0:0] bb_conv_process_B5_out_valid_out_0;
    wire [0:0] bb_conv_process_B6_out_stall_in_0;
    wire [0:0] bb_conv_process_B6_out_stall_out_0;
    wire [0:0] bb_conv_process_B6_out_valid_out_0;
    wire [0:0] bb_conv_process_B7_out_intel_reserved_ffwd_52_0;
    wire [0:0] bb_conv_process_B7_out_intel_reserved_ffwd_53_0;
    wire [0:0] bb_conv_process_B7_out_intel_reserved_ffwd_54_0;
    wire [0:0] bb_conv_process_B7_out_intel_reserved_ffwd_55_0;
    wire [0:0] bb_conv_process_B7_out_intel_reserved_ffwd_56_0;
    wire [32:0] bb_conv_process_B7_out_intel_reserved_ffwd_57_0;
    wire [32:0] bb_conv_process_B7_out_intel_reserved_ffwd_58_0;
    wire [15:0] bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifodata;
    wire [0:0] bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifovalid;
    wire [15:0] bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifodata;
    wire [0:0] bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifovalid;
    wire [15:0] bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifodata;
    wire [0:0] bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifovalid;
    wire [15:0] bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifodata;
    wire [0:0] bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifovalid;
    wire [0:0] bb_conv_process_B7_out_stall_out_0;
    wire [0:0] bb_conv_process_B7_out_valid_out_0;
    wire [0:0] bb_conv_process_B9_out_c0_exe1721;
    wire [0:0] bb_conv_process_B9_out_c0_exe2722;
    wire [31:0] bb_conv_process_B9_out_c0_exe3723;
    wire [0:0] bb_conv_process_B9_out_exiting_stall_out;
    wire [0:0] bb_conv_process_B9_out_exiting_valid_out;
    wire [0:0] bb_conv_process_B9_out_feedback_stall_out_66;
    wire [31:0] bb_conv_process_B9_out_offset_0_i475_replace_phi;
    wire [0:0] bb_conv_process_B9_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B9_out_stall_out_0;
    wire [0:0] bb_conv_process_B9_out_stall_out_1;
    wire [0:0] bb_conv_process_B9_out_valid_in_0;
    wire [0:0] bb_conv_process_B9_out_valid_in_1;
    wire [0:0] bb_conv_process_B9_out_valid_out_0;
    wire [1:0] c_i2_0199_q;
    wire [31:0] c_i32_undef186_q;
    wire [0:0] conv_process_B1_start_x_i_capture;
    wire conv_process_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_clear;
    wire conv_process_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_enable;
    wire conv_process_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_shift;
    wire conv_process_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_stall_pred;
    wire conv_process_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_stall_succ;
    wire conv_process_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_valid_loop;
    wire conv_process_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_valid_pred;
    wire conv_process_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B1_start_x_i_valid_succ;
    wire conv_process_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_capture;
    wire conv_process_B10_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_clear;
    wire conv_process_B10_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_enable;
    wire conv_process_B10_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_shift;
    wire conv_process_B10_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_stall_pred;
    wire conv_process_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_stall_succ;
    wire conv_process_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_valid_loop;
    wire conv_process_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_valid_pred;
    wire conv_process_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B10_x_i_valid_succ;
    wire conv_process_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_capture;
    wire conv_process_B12_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_clear;
    wire conv_process_B12_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_enable;
    wire conv_process_B12_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_shift;
    wire conv_process_B12_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_stall_pred;
    wire conv_process_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_stall_succ;
    wire conv_process_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_valid_loop;
    wire conv_process_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_valid_pred;
    wire conv_process_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B12_x_i_valid_succ;
    wire conv_process_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_capture;
    wire conv_process_B15_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_clear;
    wire conv_process_B15_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_enable;
    wire conv_process_B15_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_shift;
    wire conv_process_B15_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_stall_pred;
    wire conv_process_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_stall_succ;
    wire conv_process_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_valid_loop;
    wire conv_process_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_valid_pred;
    wire conv_process_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B15_x_i_valid_succ;
    wire conv_process_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_capture;
    wire conv_process_B16_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_clear;
    wire conv_process_B16_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_enable;
    wire conv_process_B16_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_shift;
    wire conv_process_B16_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_stall_pred;
    wire conv_process_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_stall_succ;
    wire conv_process_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_valid_loop;
    wire conv_process_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_valid_pred;
    wire conv_process_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B16_x_i_valid_succ;
    wire conv_process_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_capture;
    wire conv_process_B17_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_clear;
    wire conv_process_B17_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_enable;
    wire conv_process_B17_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_shift;
    wire conv_process_B17_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_stall_pred;
    wire conv_process_B17_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_stall_succ;
    wire conv_process_B17_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_valid_loop;
    wire conv_process_B17_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_valid_pred;
    wire conv_process_B17_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B17_x_i_valid_succ;
    wire conv_process_B17_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_capture;
    wire conv_process_B19_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_clear;
    wire conv_process_B19_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_enable;
    wire conv_process_B19_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_shift;
    wire conv_process_B19_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_stall_pred;
    wire conv_process_B19_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_stall_succ;
    wire conv_process_B19_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_valid_loop;
    wire conv_process_B19_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_valid_pred;
    wire conv_process_B19_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B19_x_i_valid_succ;
    wire conv_process_B19_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_capture;
    wire conv_process_B2_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_clear;
    wire conv_process_B2_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_enable;
    wire conv_process_B2_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_shift;
    wire conv_process_B2_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_stall_pred;
    wire conv_process_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_stall_succ;
    wire conv_process_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_valid_loop;
    wire conv_process_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_valid_pred;
    wire conv_process_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B2_x_i_valid_succ;
    wire conv_process_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_capture;
    wire conv_process_B21_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_clear;
    wire conv_process_B21_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_enable;
    wire conv_process_B21_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_shift;
    wire conv_process_B21_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_stall_pred;
    wire conv_process_B21_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_stall_succ;
    wire conv_process_B21_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_valid_loop;
    wire conv_process_B21_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_valid_pred;
    wire conv_process_B21_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B21_x_i_valid_succ;
    wire conv_process_B21_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_capture;
    wire conv_process_B24_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_clear;
    wire conv_process_B24_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_enable;
    wire conv_process_B24_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_shift;
    wire conv_process_B24_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_stall_pred;
    wire conv_process_B24_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_stall_succ;
    wire conv_process_B24_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_valid_loop;
    wire conv_process_B24_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_valid_pred;
    wire conv_process_B24_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B24_x_i_valid_succ;
    wire conv_process_B24_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_capture;
    wire conv_process_B4_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_clear;
    wire conv_process_B4_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_enable;
    wire conv_process_B4_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_shift;
    wire conv_process_B4_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_stall_pred;
    wire conv_process_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_stall_succ;
    wire conv_process_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_valid_loop;
    wire conv_process_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_valid_pred;
    wire conv_process_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B4_x_i_valid_succ;
    wire conv_process_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_capture;
    wire conv_process_B5_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_clear;
    wire conv_process_B5_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_enable;
    wire conv_process_B5_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_shift;
    wire conv_process_B5_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_stall_pred;
    wire conv_process_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_stall_succ;
    wire conv_process_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_valid_loop;
    wire conv_process_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_valid_pred;
    wire conv_process_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B5_x_i_valid_succ;
    wire conv_process_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_capture;
    wire conv_process_B9_x_i_capture_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_clear;
    wire conv_process_B9_x_i_clear_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_enable;
    wire conv_process_B9_x_i_enable_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_shift;
    wire conv_process_B9_x_i_shift_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_stall_pred;
    wire conv_process_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_stall_succ;
    wire conv_process_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_valid_loop;
    wire conv_process_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_valid_pred;
    wire conv_process_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] conv_process_B9_x_i_valid_succ;
    wire conv_process_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_conv_process0_out_o_stall;
    wire [0:0] loop_limiter_conv_process0_out_o_valid;
    wire [0:0] loop_limiter_conv_process1_out_o_stall;
    wire [0:0] loop_limiter_conv_process1_out_o_valid;
    wire [0:0] loop_limiter_conv_process10_out_o_stall;
    wire [0:0] loop_limiter_conv_process10_out_o_valid;
    wire [0:0] loop_limiter_conv_process11_out_o_stall;
    wire [0:0] loop_limiter_conv_process11_out_o_valid;
    wire [0:0] loop_limiter_conv_process2_out_o_stall;
    wire [0:0] loop_limiter_conv_process2_out_o_valid;
    wire [0:0] loop_limiter_conv_process3_out_o_stall;
    wire [0:0] loop_limiter_conv_process3_out_o_valid;
    wire [0:0] loop_limiter_conv_process4_out_o_stall;
    wire [0:0] loop_limiter_conv_process4_out_o_valid;
    wire [0:0] loop_limiter_conv_process5_out_o_stall;
    wire [0:0] loop_limiter_conv_process5_out_o_valid;
    wire [0:0] loop_limiter_conv_process6_out_o_stall;
    wire [0:0] loop_limiter_conv_process6_out_o_valid;
    wire [0:0] loop_limiter_conv_process7_out_o_stall;
    wire [0:0] loop_limiter_conv_process7_out_o_valid;
    wire [0:0] loop_limiter_conv_process8_out_o_stall;
    wire [0:0] loop_limiter_conv_process8_out_o_valid;
    wire [0:0] loop_limiter_conv_process9_out_o_stall;
    wire [0:0] loop_limiter_conv_process9_out_o_valid;


    // bb_conv_process_B1_start_sr_0_aunroll_x(BLACKBOX,14)
    cnn_top_bb_conv_process_B1_start_sr_0 thebb_conv_process_B1_start_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B1_start_out_stall_out_0),
        .in_i_valid(bb_conv_process_B14_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B1_start_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B1_start_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_0199(CONSTANT,182)
    assign c_i2_0199_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo(BLACKBOX,237)
    cnn_top_i_llvm_fpga_pipeline_keep_going20001_process6_valid_fifo thei_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo(BLACKBOX,235)
    cnn_top_i_llvm_fpga_pipeline_keep_going20002_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo(BLACKBOX,233)
    cnn_top_i_llvm_fpga_pipeline_keep_going20000_process6_valid_fifo thei_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B15_sr_0_aunroll_x(BLACKBOX,8)
    cnn_top_bb_conv_process_B15_sr_0 thebb_conv_process_B15_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B25_out_c1_exe711),
        .in_i_data_1_tpl(GND_q),
        .in_i_stall(bb_conv_process_B15_out_stall_out_0),
        .in_i_valid(bb_conv_process_B25_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_conv_process_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B15_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo(BLACKBOX,231)
    cnn_top_i_llvm_fpga_pipeline_keep_going20001_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo(BLACKBOX,229)
    cnn_top_i_llvm_fpga_pipeline_keep_going20000_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B17_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo(BLACKBOX,227)
    cnn_top_i_llvm_fpga_pipeline_keep_going10003_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B19_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo(BLACKBOX,225)
    cnn_top_i_llvm_fpga_pipeline_keep_going10002_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B21_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo(BLACKBOX,223)
    cnn_top_i_llvm_fpga_pipeline_keep_going10000_process6_valid_fifo thei_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B24_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B18(BLACKBOX,43)
    cnn_top_bb_conv_process_B18 thebb_conv_process_B18 (
        .in_c1_exe712_0(bb_conv_process_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe816_0(bb_conv_process_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_conv_process_B25_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B18_sr_0_aunroll_x_out_o_valid),
        .out_c1_exe712(bb_conv_process_B18_out_c1_exe712),
        .out_stall_in_0(bb_conv_process_B18_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B18_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B18_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B18_sr_0_aunroll_x(BLACKBOX,12)
    cnn_top_bb_conv_process_B18_sr_0 thebb_conv_process_B18_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B20_out_c1_exe713),
        .in_i_data_1_tpl(bb_conv_process_B20_out_c1_exe817),
        .in_i_stall(bb_conv_process_B18_out_stall_out_0),
        .in_i_valid(bb_conv_process_B20_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B18_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_conv_process_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B18_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B20(BLACKBOX,47)
    cnn_top_bb_conv_process_B20 thebb_conv_process_B20 (
        .in_c1_exe713_0(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe817_0(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe920_0(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_conv_process_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B20_sr_0_aunroll_x_out_o_valid),
        .out_c1_exe713(bb_conv_process_B20_out_c1_exe713),
        .out_c1_exe817(bb_conv_process_B20_out_c1_exe817),
        .out_stall_in_0(bb_conv_process_B20_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B20_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B20_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B20_sr_0_aunroll_x(BLACKBOX,16)
    cnn_top_bb_conv_process_B20_sr_0 thebb_conv_process_B20_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B22_out_c1_exe714),
        .in_i_data_1_tpl(bb_conv_process_B22_out_c1_exe818),
        .in_i_data_2_tpl(bb_conv_process_B22_out_c1_exe921),
        .in_i_stall(bb_conv_process_B20_out_stall_out_0),
        .in_i_valid(bb_conv_process_B22_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B20_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_conv_process_B20_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B20_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B22(BLACKBOX,49)
    cnn_top_bb_conv_process_B22 thebb_conv_process_B22 (
        .in_c1_exe1023_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe714_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe818_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe921_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_conv_process_B20_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_valid),
        .out_c1_exe714(bb_conv_process_B22_out_c1_exe714),
        .out_c1_exe818(bb_conv_process_B22_out_c1_exe818),
        .out_c1_exe921(bb_conv_process_B22_out_c1_exe921),
        .out_stall_in_0(bb_conv_process_B22_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B22_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B22_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B22_sr_0_aunroll_x(BLACKBOX,18)
    cnn_top_bb_conv_process_B22_sr_0 thebb_conv_process_B22_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B23_out_c1_exe715),
        .in_i_data_1_tpl(bb_conv_process_B23_out_c1_exe819),
        .in_i_data_2_tpl(bb_conv_process_B23_out_c1_exe922),
        .in_i_data_3_tpl(bb_conv_process_B23_out_c1_exe1024),
        .in_i_stall(bb_conv_process_B22_out_stall_out_0),
        .in_i_valid(bb_conv_process_B23_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B22_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_conv_process_B22_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B22_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B23(BLACKBOX,50)
    cnn_top_bb_conv_process_B23 thebb_conv_process_B23 (
        .in_c1_exe1024_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe1125_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c1_exe715_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c1_exe819_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c1_exe922_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_conv_process_B22_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_valid),
        .out_c1_exe1024(bb_conv_process_B23_out_c1_exe1024),
        .out_c1_exe715(bb_conv_process_B23_out_c1_exe715),
        .out_c1_exe819(bb_conv_process_B23_out_c1_exe819),
        .out_c1_exe922(bb_conv_process_B23_out_c1_exe922),
        .out_stall_in_0(bb_conv_process_B23_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B23_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B23_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B23_sr_0_aunroll_x(BLACKBOX,19)
    cnn_top_bb_conv_process_B23_sr_0 thebb_conv_process_B23_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B24_out_c1_exe7),
        .in_i_data_1_tpl(bb_conv_process_B24_out_c1_exe8),
        .in_i_data_2_tpl(bb_conv_process_B24_out_c1_exe9),
        .in_i_data_3_tpl(bb_conv_process_B24_out_c1_exe10),
        .in_i_data_4_tpl(bb_conv_process_B24_out_c1_exe11),
        .in_i_stall(bb_conv_process_B23_out_stall_out_0),
        .in_i_valid(bb_conv_process_B24_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B23_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_conv_process_B23_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B23_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going177_conv_process6_sr(BLACKBOX,222)
    cnn_top_i_llvm_fpga_pipeline_keep_going177_conv_process6_sr thei_llvm_fpga_pipeline_keep_going177_conv_process6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B24_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B24(BLACKBOX,51)
    cnn_top_bb_conv_process_B24 thebb_conv_process_B24 (
        .in_flush(in_start),
        .in_forked174_0(GND_q),
        .in_forked174_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_55_0(bb_conv_process_B7_out_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(bb_conv_process_B7_out_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_75_0(bb_conv_process_B15_out_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_77_0(bb_conv_process_B15_out_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_7_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_lnot281_pop74640_0(GND_q),
        .in_lnot281_pop74640_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lnot282_pop83651_0(GND_q),
        .in_lnot282_pop83651_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lnot283_pop99663_0(GND_q),
        .in_lnot283_pop99663_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_lnot284_pop104672_0(GND_q),
        .in_lnot284_pop104672_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_lnot625_0(GND_q),
        .in_lnot625_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack),
        .in_memdep_36_conv_process_avm_readdata(in_memdep_36_conv_process_avm_readdata),
        .in_memdep_36_conv_process_avm_readdatavalid(in_memdep_36_conv_process_avm_readdatavalid),
        .in_memdep_36_conv_process_avm_waitrequest(in_memdep_36_conv_process_avm_waitrequest),
        .in_memdep_36_conv_process_avm_writeack(in_memdep_36_conv_process_avm_writeack),
        .in_notcmp194670_0(GND_q),
        .in_notcmp194670_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp198302_pop107675_0(GND_q),
        .in_notcmp198302_pop107675_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_notcmp198660_0(GND_q),
        .in_notcmp198660_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp202299_pop101669_0(GND_q),
        .in_notcmp202299_pop101669_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp202300_pop106674_0(GND_q),
        .in_notcmp202300_pop106674_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp202646_0(GND_q),
        .in_notcmp202646_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp206292_pop84656_0(GND_q),
        .in_notcmp206292_pop84656_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp206293_pop100666_0(GND_q),
        .in_notcmp206293_pop100666_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp206294_pop105673_0(GND_q),
        .in_notcmp206294_pop105673_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_notcmp206633_0(GND_q),
        .in_notcmp206633_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going177_conv_process6_sr_out_o_stall),
        .in_stall_in_0(bb_conv_process_B23_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_tcc_0_i483_pop103671_0(c_i32_undef186_q),
        .in_tcc_0_i483_pop103671_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going177_conv_process6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B24_sr_1_aunroll_x_out_o_valid),
        .out_c1_exe10(bb_conv_process_B24_out_c1_exe10),
        .out_c1_exe11(bb_conv_process_B24_out_c1_exe11),
        .out_c1_exe7(bb_conv_process_B24_out_c1_exe7),
        .out_c1_exe8(bb_conv_process_B24_out_c1_exe8),
        .out_c1_exe9(bb_conv_process_B24_out_c1_exe9),
        .out_exiting_stall_out(bb_conv_process_B24_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B24_out_exiting_valid_out),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata(bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata),
        .out_memdep_36_conv_process_avm_address(bb_conv_process_B24_out_memdep_36_conv_process_avm_address),
        .out_memdep_36_conv_process_avm_burstcount(bb_conv_process_B24_out_memdep_36_conv_process_avm_burstcount),
        .out_memdep_36_conv_process_avm_byteenable(bb_conv_process_B24_out_memdep_36_conv_process_avm_byteenable),
        .out_memdep_36_conv_process_avm_enable(bb_conv_process_B24_out_memdep_36_conv_process_avm_enable),
        .out_memdep_36_conv_process_avm_read(bb_conv_process_B24_out_memdep_36_conv_process_avm_read),
        .out_memdep_36_conv_process_avm_write(bb_conv_process_B24_out_memdep_36_conv_process_avm_write),
        .out_memdep_36_conv_process_avm_writedata(bb_conv_process_B24_out_memdep_36_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B24_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv_process_B24_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B24_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B24_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B24_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B24_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B24_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B24_sr_1_aunroll_x(BLACKBOX,20)
    cnn_top_bb_conv_process_B24_sr_1 thebb_conv_process_B24_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B21_out_c0_exe8906),
        .in_i_data_2_tpl(bb_conv_process_B21_out_c0_exe9907),
        .in_i_data_3_tpl(bb_conv_process_B21_out_c0_exe10908),
        .in_i_data_4_tpl(bb_conv_process_B21_out_c0_exe11909),
        .in_i_data_5_tpl(bb_conv_process_B21_out_c0_exe12910),
        .in_i_data_6_tpl(bb_conv_process_B21_out_c0_exe13911),
        .in_i_data_7_tpl(bb_conv_process_B21_out_c0_exe14912),
        .in_i_data_8_tpl(bb_conv_process_B21_out_c0_exe15),
        .in_i_data_9_tpl(bb_conv_process_B21_out_c0_exe16),
        .in_i_data_10_tpl(bb_conv_process_B21_out_c0_exe17),
        .in_i_data_11_tpl(bb_conv_process_B21_out_c0_exe2900),
        .in_i_data_12_tpl(bb_conv_process_B21_out_c0_exe3901),
        .in_i_data_13_tpl(bb_conv_process_B21_out_c0_exe4902),
        .in_i_data_14_tpl(bb_conv_process_B21_out_c0_exe5903),
        .in_i_data_15_tpl(bb_conv_process_B21_out_c0_exe6904),
        .in_i_data_16_tpl(bb_conv_process_B21_out_c0_exe7905),
        .in_i_stall(bb_conv_process_B24_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process11_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_conv_process_B24_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_stall(bb_conv_process_B24_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B24_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process11(BLACKBOX,301)
    cnn_top_loop_limiter_conv_process11 theloop_limiter_conv_process11 (
        .in_i_stall(bb_conv_process_B24_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B24_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B21_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B24_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process11_out_o_stall),
        .out_o_valid(loop_limiter_conv_process11_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going195_conv_process2_sr(BLACKBOX,224)
    cnn_top_i_llvm_fpga_pipeline_keep_going195_conv_process2_sr thei_llvm_fpga_pipeline_keep_going195_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B21_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B21(BLACKBOX,48)
    cnn_top_bb_conv_process_B21 thebb_conv_process_B21 (
        .in_forked126_0(GND_q),
        .in_forked126_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_55_0(bb_conv_process_B7_out_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_57_0(bb_conv_process_B7_out_intel_reserved_ffwd_57_0),
        .in_lnot281_pop74641_0(GND_q),
        .in_lnot281_pop74641_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lnot282_pop83652_0(GND_q),
        .in_lnot282_pop83652_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lnot283_pop99661_0(GND_q),
        .in_lnot283_pop99661_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_lnot626_0(GND_q),
        .in_lnot626_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp198658_0(GND_q),
        .in_notcmp198658_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp202299_pop101667_0(GND_q),
        .in_notcmp202299_pop101667_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp202647_0(GND_q),
        .in_notcmp202647_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp206292_pop84657_0(GND_q),
        .in_notcmp206292_pop84657_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp206293_pop100664_0(GND_q),
        .in_notcmp206293_pop100664_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp206634_0(GND_q),
        .in_notcmp206634_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going195_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process11_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going195_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B21_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10908(bb_conv_process_B21_out_c0_exe10908),
        .out_c0_exe11909(bb_conv_process_B21_out_c0_exe11909),
        .out_c0_exe12910(bb_conv_process_B21_out_c0_exe12910),
        .out_c0_exe13911(bb_conv_process_B21_out_c0_exe13911),
        .out_c0_exe14912(bb_conv_process_B21_out_c0_exe14912),
        .out_c0_exe15(bb_conv_process_B21_out_c0_exe15),
        .out_c0_exe16(bb_conv_process_B21_out_c0_exe16),
        .out_c0_exe17(bb_conv_process_B21_out_c0_exe17),
        .out_c0_exe2900(bb_conv_process_B21_out_c0_exe2900),
        .out_c0_exe3901(bb_conv_process_B21_out_c0_exe3901),
        .out_c0_exe4902(bb_conv_process_B21_out_c0_exe4902),
        .out_c0_exe5903(bb_conv_process_B21_out_c0_exe5903),
        .out_c0_exe6904(bb_conv_process_B21_out_c0_exe6904),
        .out_c0_exe7905(bb_conv_process_B21_out_c0_exe7905),
        .out_c0_exe8906(bb_conv_process_B21_out_c0_exe8906),
        .out_c0_exe9907(bb_conv_process_B21_out_c0_exe9907),
        .out_exiting_stall_out(bb_conv_process_B21_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B21_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B21_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B21_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B21_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B21_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B21_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B21_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B21_sr_1_aunroll_x(BLACKBOX,17)
    cnn_top_bb_conv_process_B21_sr_1 thebb_conv_process_B21_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B19_out_c0_exe6855),
        .in_i_data_2_tpl(bb_conv_process_B19_out_c0_exe7856),
        .in_i_data_3_tpl(bb_conv_process_B19_out_c0_exe8857),
        .in_i_data_4_tpl(bb_conv_process_B19_out_c0_exe9858),
        .in_i_data_5_tpl(bb_conv_process_B19_out_c0_exe10859),
        .in_i_data_6_tpl(bb_conv_process_B19_out_c0_exe11860),
        .in_i_data_7_tpl(bb_conv_process_B19_out_c0_exe2851),
        .in_i_data_8_tpl(bb_conv_process_B19_out_c0_exe3852),
        .in_i_data_9_tpl(bb_conv_process_B19_out_c0_exe4853),
        .in_i_data_10_tpl(bb_conv_process_B19_out_c0_exe5854),
        .in_i_stall(bb_conv_process_B21_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process10_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv_process_B21_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_stall(bb_conv_process_B21_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B21_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process10(BLACKBOX,300)
    cnn_top_loop_limiter_conv_process10 theloop_limiter_conv_process10 (
        .in_i_stall(bb_conv_process_B21_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B21_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B19_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B21_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process10_out_o_stall),
        .out_o_valid(loop_limiter_conv_process10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going199_conv_process2_sr(BLACKBOX,226)
    cnn_top_i_llvm_fpga_pipeline_keep_going199_conv_process2_sr thei_llvm_fpga_pipeline_keep_going199_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B19_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B19(BLACKBOX,44)
    cnn_top_bb_conv_process_B19 thebb_conv_process_B19 (
        .in_forked128_0(GND_q),
        .in_forked128_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_54_0(bb_conv_process_B7_out_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_58_0(bb_conv_process_B7_out_intel_reserved_ffwd_58_0),
        .in_lnot281_pop74642_0(GND_q),
        .in_lnot281_pop74642_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lnot282_pop83648_0(GND_q),
        .in_lnot282_pop83648_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lnot627_0(GND_q),
        .in_lnot627_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp202643_0(GND_q),
        .in_notcmp202643_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp206292_pop84653_0(GND_q),
        .in_notcmp206292_pop84653_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp206635_0(GND_q),
        .in_notcmp206635_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going199_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process10_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going199_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B19_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10859(bb_conv_process_B19_out_c0_exe10859),
        .out_c0_exe11860(bb_conv_process_B19_out_c0_exe11860),
        .out_c0_exe2851(bb_conv_process_B19_out_c0_exe2851),
        .out_c0_exe3852(bb_conv_process_B19_out_c0_exe3852),
        .out_c0_exe4853(bb_conv_process_B19_out_c0_exe4853),
        .out_c0_exe5854(bb_conv_process_B19_out_c0_exe5854),
        .out_c0_exe6855(bb_conv_process_B19_out_c0_exe6855),
        .out_c0_exe7856(bb_conv_process_B19_out_c0_exe7856),
        .out_c0_exe8857(bb_conv_process_B19_out_c0_exe8857),
        .out_c0_exe9858(bb_conv_process_B19_out_c0_exe9858),
        .out_exiting_stall_out(bb_conv_process_B19_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B19_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B19_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B19_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B19_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B19_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B19_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B19_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B19_sr_1_aunroll_x(BLACKBOX,13)
    cnn_top_bb_conv_process_B19_sr_1 thebb_conv_process_B19_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B17_out_c0_exe5820),
        .in_i_data_2_tpl(bb_conv_process_B17_out_c0_exe6821),
        .in_i_data_3_tpl(bb_conv_process_B17_out_c0_exe7822),
        .in_i_data_4_tpl(bb_conv_process_B17_out_c0_exe2817),
        .in_i_data_5_tpl(bb_conv_process_B17_out_c0_exe3818),
        .in_i_data_6_tpl(bb_conv_process_B17_out_c0_exe4819),
        .in_i_stall(bb_conv_process_B19_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process9_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv_process_B19_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_conv_process_B19_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B19_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process9(BLACKBOX,309)
    cnn_top_loop_limiter_conv_process9 theloop_limiter_conv_process9 (
        .in_i_stall(bb_conv_process_B19_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B19_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B17_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B19_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process9_out_o_stall),
        .out_o_valid(loop_limiter_conv_process9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going203_conv_process2_sr(BLACKBOX,228)
    cnn_top_i_llvm_fpga_pipeline_keep_going203_conv_process2_sr thei_llvm_fpga_pipeline_keep_going203_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B17_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B17(BLACKBOX,42)
    cnn_top_bb_conv_process_B17 thebb_conv_process_B17 (
        .in_forked127_0(GND_q),
        .in_forked127_1(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_54_0(bb_conv_process_B7_out_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_58_0(bb_conv_process_B7_out_intel_reserved_ffwd_58_0),
        .in_lnot281_pop74636_0(GND_q),
        .in_lnot281_pop74636_1(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lnot628_0(GND_q),
        .in_lnot628_1(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp206629_0(GND_q),
        .in_notcmp206629_1(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going203_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process9_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going203_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B17_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2817(bb_conv_process_B17_out_c0_exe2817),
        .out_c0_exe3818(bb_conv_process_B17_out_c0_exe3818),
        .out_c0_exe4819(bb_conv_process_B17_out_c0_exe4819),
        .out_c0_exe5820(bb_conv_process_B17_out_c0_exe5820),
        .out_c0_exe6821(bb_conv_process_B17_out_c0_exe6821),
        .out_c0_exe7822(bb_conv_process_B17_out_c0_exe7822),
        .out_exiting_stall_out(bb_conv_process_B17_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B17_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B17_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B17_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B17_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B17_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B17_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B17_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B17_sr_1_aunroll_x(BLACKBOX,11)
    cnn_top_bb_conv_process_B17_sr_1 thebb_conv_process_B17_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B16_out_c0_exe4798),
        .in_i_data_2_tpl(bb_conv_process_B16_out_c0_exe2796),
        .in_i_data_3_tpl(bb_conv_process_B16_out_c0_exe3797),
        .in_i_stall(bb_conv_process_B17_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process7_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B17_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_conv_process_B17_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B17_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process7(BLACKBOX,307)
    cnn_top_loop_limiter_conv_process7 theloop_limiter_conv_process7 (
        .in_i_stall(bb_conv_process_B17_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B17_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B16_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B17_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process7_out_o_stall),
        .out_o_valid(loop_limiter_conv_process7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going208_conv_process2_sr(BLACKBOX,230)
    cnn_top_i_llvm_fpga_pipeline_keep_going208_conv_process2_sr thei_llvm_fpga_pipeline_keep_going208_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B16(BLACKBOX,41)
    cnn_top_bb_conv_process_B16 thebb_conv_process_B16 (
        .in_forked280_0(GND_q),
        .in_forked280_1(bb_conv_process_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_52_0(bb_conv_process_B7_out_intel_reserved_ffwd_52_0),
        .in_lnot620_0(GND_q),
        .in_lnot620_1(bb_conv_process_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going208_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process7_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going208_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2796(bb_conv_process_B16_out_c0_exe2796),
        .out_c0_exe3797(bb_conv_process_B16_out_c0_exe3797),
        .out_c0_exe4798(bb_conv_process_B16_out_c0_exe4798),
        .out_exiting_stall_out(bb_conv_process_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B16_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B16_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B16_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B16_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B16_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B16_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B16_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B16_sr_1_aunroll_x(BLACKBOX,10)
    cnn_top_bb_conv_process_B16_sr_1 thebb_conv_process_B16_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B15_out_lnot),
        .in_i_stall(bb_conv_process_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process5_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_conv_process_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B16_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process5(BLACKBOX,305)
    cnn_top_loop_limiter_conv_process5 theloop_limiter_conv_process5 (
        .in_i_stall(bb_conv_process_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B16_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B15_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process5_out_o_stall),
        .out_o_valid(loop_limiter_conv_process5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B15(BLACKBOX,40)
    cnn_top_bb_conv_process_B15 thebb_conv_process_B15 (
        .in_forked_0(bb_conv_process_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_conv_process_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_3_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_53_0(bb_conv_process_B7_out_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_78_0(bb_conv_process_B25_out_intel_reserved_ffwd_78_0),
        .in_iowr_bl_input_ctrl0_1_i_fifoready(arbiter_iowr_input_ctrl0_out_ready_out1),
        .in_iowr_bl_input_ctrl1_1_i_fifoready(arbiter_iowr_input_ctrl1_out_ready_out1),
        .in_iowr_bl_weight_ctrl0_1_i_fifoready(arbiter_iowr_weight_ctrl0_out_ready_out1),
        .in_iowr_bl_weight_ctrl1_1_i_fifoready(arbiter_iowr_weight_ctrl1_out_ready_out1),
        .in_l_0_off0492_0(bb_conv_process_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_l_0_off0492_1(bb_conv_process_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_conv_process5_out_o_stall),
        .in_valid_in_0(bb_conv_process_B15_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv_process_B15_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_75_0(bb_conv_process_B15_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_conv_process_B15_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_conv_process_B15_out_intel_reserved_ffwd_77_0),
        .out_iowr_bl_input_ctrl0_1_o_fifodata(bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifodata),
        .out_iowr_bl_input_ctrl0_1_o_fifovalid(bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifovalid),
        .out_iowr_bl_input_ctrl1_1_o_fifodata(bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifodata),
        .out_iowr_bl_input_ctrl1_1_o_fifovalid(bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifovalid),
        .out_iowr_bl_weight_ctrl0_1_o_fifodata(bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifodata),
        .out_iowr_bl_weight_ctrl0_1_o_fifovalid(bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifovalid),
        .out_iowr_bl_weight_ctrl1_1_o_fifodata(bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifodata),
        .out_iowr_bl_weight_ctrl1_1_o_fifovalid(bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifovalid),
        .out_lnot(bb_conv_process_B15_out_lnot),
        .out_stall_out_0(bb_conv_process_B15_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B15_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B15_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B15_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B25_sr_0_aunroll_x(BLACKBOX,21)
    cnn_top_bb_conv_process_B25_sr_0 thebb_conv_process_B25_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B18_out_c1_exe712),
        .in_i_stall(bb_conv_process_B25_out_stall_out_0),
        .in_i_valid(bb_conv_process_B18_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B25_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv_process_B25_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B25_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B25(BLACKBOX,52)
    cnn_top_bb_conv_process_B25 thebb_conv_process_B25 (
        .in_c1_exe711_0(bb_conv_process_B25_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_4_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_52_0(bb_conv_process_B7_out_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_76_0(bb_conv_process_B15_out_intel_reserved_ffwd_76_0),
        .in_stall_in_0(bb_conv_process_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_conv_process_B8_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_conv_process_B25_sr_0_aunroll_x_out_o_valid),
        .out_c1_exe711(bb_conv_process_B25_out_c1_exe711),
        .out_intel_reserved_ffwd_78_0(bb_conv_process_B25_out_intel_reserved_ffwd_78_0),
        .out_stall_in_0(bb_conv_process_B25_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B25_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B25_out_valid_out_0),
        .out_valid_out_1(bb_conv_process_B25_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo(BLACKBOX,221)
    cnn_top_i_llvm_fpga_pipeline_keep_going10001_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo(BLACKBOX,219)
    cnn_top_i_llvm_fpga_pipeline_keep_going10000_process2_valid_fifo thei_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo(BLACKBOX,239)
    cnn_top_i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo thei_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo (
        .in_data_in(c_i2_0199_q),
        .in_stall_in(bb_conv_process_B12_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B11_sr_0_aunroll_x(BLACKBOX,3)
    cnn_top_bb_conv_process_B11_sr_0 thebb_conv_process_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B13_out_c0_exe67763),
        .in_i_data_1_tpl(bb_conv_process_B13_out_c0_exe77775),
        .in_i_data_2_tpl(bb_conv_process_B13_out_c0_exe87787),
        .in_i_data_3_tpl(bb_conv_process_B13_out_c0_exe1078010),
        .in_i_stall(bb_conv_process_B11_out_stall_out_0),
        .in_i_valid(bb_conv_process_B13_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_conv_process_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B13(BLACKBOX,38)
    cnn_top_bb_conv_process_B13 thebb_conv_process_B13 (
        .in_c0_exe1078010_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe67763_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe77775_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe87787_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe97798_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1078010(bb_conv_process_B13_out_c0_exe1078010),
        .out_c0_exe67763(bb_conv_process_B13_out_c0_exe67763),
        .out_c0_exe77775(bb_conv_process_B13_out_c0_exe77775),
        .out_c0_exe87787(bb_conv_process_B13_out_c0_exe87787),
        .out_stall_in_0(bb_conv_process_B13_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B13_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B13_sr_0_aunroll_x(BLACKBOX,6)
    cnn_top_bb_conv_process_B13_sr_0 thebb_conv_process_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B12_aunroll_x_out_c0_exe6776),
        .in_i_data_1_tpl(bb_conv_process_B12_aunroll_x_out_c0_exe7777),
        .in_i_data_2_tpl(bb_conv_process_B12_aunroll_x_out_c0_exe8778),
        .in_i_data_3_tpl(bb_conv_process_B12_aunroll_x_out_c0_exe9779),
        .in_i_data_4_tpl(bb_conv_process_B12_aunroll_x_out_c0_exe10780),
        .in_i_stall(bb_conv_process_B13_out_stall_out_0),
        .in_i_valid(bb_conv_process_B12_aunroll_x_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B13_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_conv_process_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv_process6_sr(BLACKBOX,238)
    cnn_top_i_llvm_fpga_pipeline_keep_going_conv_process6_sr thei_llvm_fpga_pipeline_keep_going_conv_process6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B12_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B12_aunroll_x(BLACKBOX,4)
    cnn_top_bb_conv_process_B12 thebb_conv_process_B12_aunroll_x (
        .in_intel_reserved_ffwd_65_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .in_intel_reserved_ffwd_66_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .in_intel_reserved_ffwd_67_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .in_intel_reserved_ffwd_68_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .in_intel_reserved_ffwd_69_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl),
        .in_intel_reserved_ffwd_69_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl),
        .in_intel_reserved_ffwd_69_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl),
        .in_intel_reserved_ffwd_70_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl),
        .in_intel_reserved_ffwd_70_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl),
        .in_intel_reserved_ffwd_70_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl),
        .in_intel_reserved_ffwd_71_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl),
        .in_intel_reserved_ffwd_71_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl),
        .in_intel_reserved_ffwd_71_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl),
        .in_intel_reserved_ffwd_72_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl),
        .in_intel_reserved_ffwd_72_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl),
        .in_intel_reserved_ffwd_72_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl),
        .in_c_0_i110470_pop76603_0(c_i32_undef186_q),
        .in_c_0_i110470_pop76603_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked163_0(GND_q),
        .in_forked163_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_13_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_16_0(bb_conv_process_B2_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_conv_process_B2_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_conv_process_B2_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_conv_process_B2_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_32_0(bb_conv_process_B2_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_conv_process_B2_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_conv_process_B2_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_conv_process_B2_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_59_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_62_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_73_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_73_0),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack),
        .in_notcmp165605_0(GND_q),
        .in_notcmp165605_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp169288_pop80609_0(GND_q),
        .in_notcmp169288_pop80609_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp169599_0(GND_q),
        .in_notcmp169599_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_offset_0_i475_replace_phi286_pop78607_0(c_i32_undef186_q),
        .in_offset_0_i475_replace_phi286_pop78607_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_offset_0_i475_replace_phi596_0(c_i32_undef186_q),
        .in_offset_0_i475_replace_phi596_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_offset_1_i469_pop77606_0(c_i32_undef186_q),
        .in_offset_1_i469_pop77606_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_or_cond189604_0(GND_q),
        .in_or_cond189604_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_conv_process6_sr_out_o_stall),
        .in_pop79608_0(GND_q),
        .in_pop79608_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_r_0_i106476_pop65290_pop81610_0(c_i32_undef186_q),
        .in_r_0_i106476_pop65290_pop81610_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_r_0_i106476_pop65602_0(c_i32_undef186_q),
        .in_r_0_i106476_pop65602_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(bb_conv_process_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv_process101_conv_process_avm_readdata(in_unnamed_conv_process101_conv_process_avm_readdata),
        .in_unnamed_conv_process101_conv_process_avm_readdatavalid(in_unnamed_conv_process101_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process101_conv_process_avm_waitrequest(in_unnamed_conv_process101_conv_process_avm_waitrequest),
        .in_unnamed_conv_process101_conv_process_avm_writeack(in_unnamed_conv_process101_conv_process_avm_writeack),
        .in_unnamed_conv_process94_0(GND_q),
        .in_unnamed_conv_process94_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_conv_process95_0(c_i32_undef186_q),
        .in_unnamed_conv_process95_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_conv_process6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10780(bb_conv_process_B12_aunroll_x_out_c0_exe10780),
        .out_c0_exe6776(bb_conv_process_B12_aunroll_x_out_c0_exe6776),
        .out_c0_exe7777(bb_conv_process_B12_aunroll_x_out_c0_exe7777),
        .out_c0_exe8778(bb_conv_process_B12_aunroll_x_out_c0_exe8778),
        .out_c0_exe9779(bb_conv_process_B12_aunroll_x_out_c0_exe9779),
        .out_exiting_stall_out(bb_conv_process_B12_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B12_aunroll_x_out_exiting_valid_out),
        .out_lsu_unnamed_conv_process101_o_active(bb_conv_process_B12_aunroll_x_out_lsu_unnamed_conv_process101_o_active),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B12_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv_process_B12_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B12_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B12_aunroll_x_out_stall_out_1),
        .out_unnamed_conv_process101_conv_process_avm_address(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_address),
        .out_unnamed_conv_process101_conv_process_avm_burstcount(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_burstcount),
        .out_unnamed_conv_process101_conv_process_avm_byteenable(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_byteenable),
        .out_unnamed_conv_process101_conv_process_avm_enable(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_enable),
        .out_unnamed_conv_process101_conv_process_avm_read(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_read),
        .out_unnamed_conv_process101_conv_process_avm_write(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_write),
        .out_unnamed_conv_process101_conv_process_avm_writedata(bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_writedata),
        .out_valid_in_0(bb_conv_process_B12_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B12_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B12_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B12_sr_1_aunroll_x(BLACKBOX,5)
    cnn_top_bb_conv_process_B12_sr_1 thebb_conv_process_B12_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B10_out_c0_exe11),
        .in_i_data_2_tpl(bb_conv_process_B10_out_c0_exe12),
        .in_i_data_3_tpl(bb_conv_process_B10_out_c0_exe13),
        .in_i_data_4_tpl(bb_conv_process_B10_out_c0_exe14),
        .in_i_data_5_tpl(bb_conv_process_B10_out_c0_exe1739),
        .in_i_data_6_tpl(bb_conv_process_B10_out_c0_exe2740),
        .in_i_data_7_tpl(bb_conv_process_B10_out_c0_exe4742),
        .in_i_data_8_tpl(bb_conv_process_B10_out_c0_exe5743),
        .in_i_data_9_tpl(bb_conv_process_B10_out_c0_exe6744),
        .in_i_data_10_tpl(bb_conv_process_B10_out_c0_exe7),
        .in_i_data_11_tpl(bb_conv_process_B10_out_c0_exe8),
        .in_i_data_12_tpl(bb_conv_process_B10_out_c0_exe9),
        .in_i_data_13_tpl(bb_conv_process_B10_out_c0_exe10),
        .in_i_stall(bb_conv_process_B12_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process8_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_conv_process_B12_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_stall(bb_conv_process_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B12_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process8(BLACKBOX,308)
    cnn_top_loop_limiter_conv_process8 theloop_limiter_conv_process8 (
        .in_i_stall(bb_conv_process_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B12_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B10_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B12_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process8_out_o_stall),
        .out_o_valid(loop_limiter_conv_process8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going166_conv_process2_sr(BLACKBOX,218)
    cnn_top_i_llvm_fpga_pipeline_keep_going166_conv_process2_sr thei_llvm_fpga_pipeline_keep_going166_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B10(BLACKBOX,36)
    cnn_top_bb_conv_process_B10 thebb_conv_process_B10 (
        .in_forked114_0(GND_q),
        .in_forked114_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_51_0(bb_conv_process_B3_out_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_64_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_73_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_7_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0),
        .in_notcmp169597_0(GND_q),
        .in_notcmp169597_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_offset_0_i475_replace_phi594_0(c_i32_undef186_q),
        .in_offset_0_i475_replace_phi594_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going166_conv_process2_sr_out_o_stall),
        .in_r_0_i106476_pop65600_0(c_i32_undef186_q),
        .in_r_0_i106476_pop65600_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(loop_limiter_conv_process8_out_o_stall),
        .in_unnamed_conv_process90_0(GND_q),
        .in_unnamed_conv_process90_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going166_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_conv_process_B10_out_c0_exe10),
        .out_c0_exe11(bb_conv_process_B10_out_c0_exe11),
        .out_c0_exe12(bb_conv_process_B10_out_c0_exe12),
        .out_c0_exe13(bb_conv_process_B10_out_c0_exe13),
        .out_c0_exe14(bb_conv_process_B10_out_c0_exe14),
        .out_c0_exe1739(bb_conv_process_B10_out_c0_exe1739),
        .out_c0_exe2740(bb_conv_process_B10_out_c0_exe2740),
        .out_c0_exe4742(bb_conv_process_B10_out_c0_exe4742),
        .out_c0_exe5743(bb_conv_process_B10_out_c0_exe5743),
        .out_c0_exe6744(bb_conv_process_B10_out_c0_exe6744),
        .out_c0_exe7(bb_conv_process_B10_out_c0_exe7),
        .out_c0_exe8(bb_conv_process_B10_out_c0_exe8),
        .out_c0_exe9(bb_conv_process_B10_out_c0_exe9),
        .out_exiting_stall_out(bb_conv_process_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B10_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B10_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B10_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B10_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B10_sr_1_aunroll_x(BLACKBOX,2)
    cnn_top_bb_conv_process_B10_sr_1 thebb_conv_process_B10_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B9_out_offset_0_i475_replace_phi),
        .in_i_data_2_tpl(bb_conv_process_B9_out_c0_exe1721),
        .in_i_data_3_tpl(bb_conv_process_B9_out_c0_exe2722),
        .in_i_data_4_tpl(bb_conv_process_B9_out_c0_exe3723),
        .in_i_stall(bb_conv_process_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process6_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_conv_process_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_conv_process_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B10_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process6(BLACKBOX,306)
    cnn_top_loop_limiter_conv_process6 theloop_limiter_conv_process6 (
        .in_i_stall(bb_conv_process_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B10_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B9_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process6_out_o_stall),
        .out_o_valid(loop_limiter_conv_process6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going170_conv_process2_sr(BLACKBOX,220)
    cnn_top_i_llvm_fpga_pipeline_keep_going170_conv_process2_sr thei_llvm_fpga_pipeline_keep_going170_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B14_sr_0_aunroll_x(BLACKBOX,7)
    cnn_top_bb_conv_process_B14_sr_0 thebb_conv_process_B14_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B14_out_stall_out_0),
        .in_i_valid(bb_conv_process_B11_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B14_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B11(BLACKBOX,37)
    cnn_top_bb_conv_process_B11 thebb_conv_process_B11 (
        .in_c0_exe107809_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe67762_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe77774_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe87786_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_66(bb_conv_process_B9_out_feedback_stall_out_66),
        .in_intel_reserved_ffwd_73_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_73_0),
        .in_stall_in_0(bb_conv_process_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B11_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_66(bb_conv_process_B11_out_feedback_out_66),
        .out_feedback_valid_out_66(bb_conv_process_B11_out_feedback_valid_out_66),
        .out_stall_in_0(bb_conv_process_B11_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B11_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B9(BLACKBOX,58)
    cnn_top_bb_conv_process_B9 thebb_conv_process_B9 (
        .in_feedback_in_66(bb_conv_process_B11_out_feedback_out_66),
        .in_feedback_valid_in_66(bb_conv_process_B11_out_feedback_valid_out_66),
        .in_forked130_0(GND_q),
        .in_forked130_1(bb_conv_process_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_60_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_74_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_74_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going170_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process6_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going170_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1721(bb_conv_process_B9_out_c0_exe1721),
        .out_c0_exe2722(bb_conv_process_B9_out_c0_exe2722),
        .out_c0_exe3723(bb_conv_process_B9_out_c0_exe3723),
        .out_exiting_stall_out(bb_conv_process_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B9_out_exiting_valid_out),
        .out_feedback_stall_out_66(bb_conv_process_B9_out_feedback_stall_out_66),
        .out_offset_0_i475_replace_phi(bb_conv_process_B9_out_offset_0_i475_replace_phi),
        .out_pipeline_valid_out(bb_conv_process_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B9_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B9_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B9_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B9_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B9_sr_1_aunroll_x(BLACKBOX,30)
    cnn_top_bb_conv_process_B9_sr_1 thebb_conv_process_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_conv_process_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process3_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv_process_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process3(BLACKBOX,303)
    cnn_top_loop_limiter_conv_process3 theloop_limiter_conv_process3 (
        .in_i_stall(bb_conv_process_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B9_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B8_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process3_out_o_stall),
        .out_o_valid(loop_limiter_conv_process3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B8_aunroll_x(BLACKBOX,28)
    cnn_top_bb_conv_process_B8 thebb_conv_process_B8_aunroll_x (
        .in_intel_reserved_ffwd_0_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_20_0(bb_conv_process_B2_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_conv_process_B2_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_conv_process_B2_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_conv_process_B2_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_conv_process_B2_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_conv_process_B2_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_conv_process_B2_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_conv_process_B2_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_conv_process_B2_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(bb_conv_process_B2_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(bb_conv_process_B2_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_conv_process_B2_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_36_0(bb_conv_process_B2_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_conv_process_B2_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(bb_conv_process_B2_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_conv_process_B2_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(bb_conv_process_B2_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(bb_conv_process_B2_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_conv_process_B2_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_conv_process_B2_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_conv_process_B2_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_conv_process_B2_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(bb_conv_process_B2_out_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(bb_conv_process_B2_out_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(bb_conv_process_B3_out_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(bb_conv_process_B3_out_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(bb_conv_process_B3_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_5_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_conv_process3_out_o_stall),
        .in_valid_in_0(bb_conv_process_B8_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_65_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_69_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl),
        .out_intel_reserved_ffwd_69_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl),
        .out_intel_reserved_ffwd_69_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl),
        .out_intel_reserved_ffwd_70_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl),
        .out_intel_reserved_ffwd_70_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl),
        .out_intel_reserved_ffwd_70_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl),
        .out_intel_reserved_ffwd_71_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl),
        .out_intel_reserved_ffwd_71_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl),
        .out_intel_reserved_ffwd_71_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl),
        .out_intel_reserved_ffwd_72_0_0_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl),
        .out_intel_reserved_ffwd_72_0_1_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl),
        .out_intel_reserved_ffwd_72_0_2_tpl(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl),
        .out_intel_reserved_ffwd_59_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_73_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_conv_process_B8_aunroll_x_out_intel_reserved_ffwd_74_0),
        .out_stall_out_0(bb_conv_process_B8_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B8_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B8_sr_0_aunroll_x(BLACKBOX,29)
    cnn_top_bb_conv_process_B8_sr_0 thebb_conv_process_B8_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B8_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_conv_process_B25_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B8_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B15_sr_1_aunroll_x(BLACKBOX,9)
    cnn_top_bb_conv_process_B15_sr_1 thebb_conv_process_B15_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_conv_process_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process2_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_conv_process_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B15_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process2(BLACKBOX,302)
    cnn_top_loop_limiter_conv_process2 theloop_limiter_conv_process2 (
        .in_i_stall(bb_conv_process_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B8_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_conv_process_B7_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B25_out_valid_out_1),
        .out_o_stall(loop_limiter_conv_process2_out_o_stall),
        .out_o_valid(loop_limiter_conv_process2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // arbiter_iowr_weight_ctrl1(BLACKBOX,34)
    cnn_top_arbiter_iowr_weight_ctrl1 thearbiter_iowr_weight_ctrl1 (
        .in_data_in0(bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifodata),
        .in_data_in1(bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifodata),
        .in_i_fifoready(in_iowr_weight_ctrl1_i_fifoready),
        .in_valid_in0(bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifovalid),
        .in_valid_in1(bb_conv_process_B15_out_iowr_bl_weight_ctrl1_1_o_fifovalid),
        .out_o_fifodata(arbiter_iowr_weight_ctrl1_out_o_fifodata),
        .out_o_fifovalid(arbiter_iowr_weight_ctrl1_out_o_fifovalid),
        .out_ready_out0(arbiter_iowr_weight_ctrl1_out_ready_out0),
        .out_ready_out1(arbiter_iowr_weight_ctrl1_out_ready_out1),
        .clock(clock),
        .resetn(resetn)
    );

    // arbiter_iowr_weight_ctrl0(BLACKBOX,33)
    cnn_top_arbiter_iowr_weight_ctrl0 thearbiter_iowr_weight_ctrl0 (
        .in_data_in0(bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifodata),
        .in_data_in1(bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifodata),
        .in_i_fifoready(in_iowr_weight_ctrl0_i_fifoready),
        .in_valid_in0(bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifovalid),
        .in_valid_in1(bb_conv_process_B15_out_iowr_bl_weight_ctrl0_1_o_fifovalid),
        .out_o_fifodata(arbiter_iowr_weight_ctrl0_out_o_fifodata),
        .out_o_fifovalid(arbiter_iowr_weight_ctrl0_out_o_fifovalid),
        .out_ready_out0(arbiter_iowr_weight_ctrl0_out_ready_out0),
        .out_ready_out1(arbiter_iowr_weight_ctrl0_out_ready_out1),
        .clock(clock),
        .resetn(resetn)
    );

    // arbiter_iowr_input_ctrl1(BLACKBOX,32)
    cnn_top_arbiter_iowr_input_ctrl1 thearbiter_iowr_input_ctrl1 (
        .in_data_in0(bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifodata),
        .in_data_in1(bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifodata),
        .in_i_fifoready(in_iowr_input_ctrl1_i_fifoready),
        .in_valid_in0(bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifovalid),
        .in_valid_in1(bb_conv_process_B15_out_iowr_bl_input_ctrl1_1_o_fifovalid),
        .out_o_fifodata(arbiter_iowr_input_ctrl1_out_o_fifodata),
        .out_o_fifovalid(arbiter_iowr_input_ctrl1_out_o_fifovalid),
        .out_ready_out0(arbiter_iowr_input_ctrl1_out_ready_out0),
        .out_ready_out1(arbiter_iowr_input_ctrl1_out_ready_out1),
        .clock(clock),
        .resetn(resetn)
    );

    // arbiter_iowr_input_ctrl0(BLACKBOX,31)
    cnn_top_arbiter_iowr_input_ctrl0 thearbiter_iowr_input_ctrl0 (
        .in_data_in0(bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifodata),
        .in_data_in1(bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifodata),
        .in_i_fifoready(in_iowr_input_ctrl0_i_fifoready),
        .in_valid_in0(bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifovalid),
        .in_valid_in1(bb_conv_process_B15_out_iowr_bl_input_ctrl0_1_o_fifovalid),
        .out_o_fifodata(arbiter_iowr_input_ctrl0_out_o_fifodata),
        .out_o_fifovalid(arbiter_iowr_input_ctrl0_out_o_fifovalid),
        .out_ready_out0(arbiter_iowr_input_ctrl0_out_ready_out0),
        .out_ready_out1(arbiter_iowr_input_ctrl0_out_ready_out1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B7(BLACKBOX,57)
    cnn_top_bb_conv_process_B7 thebb_conv_process_B7 (
        .in_intel_reserved_ffwd_11_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_3_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_6_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_6_0),
        .in_iowr_bl_input_ctrl0_0_i_fifoready(arbiter_iowr_input_ctrl0_out_ready_out0),
        .in_iowr_bl_input_ctrl1_0_i_fifoready(arbiter_iowr_input_ctrl1_out_ready_out0),
        .in_iowr_bl_weight_ctrl0_0_i_fifoready(arbiter_iowr_weight_ctrl0_out_ready_out0),
        .in_iowr_bl_weight_ctrl1_0_i_fifoready(arbiter_iowr_weight_ctrl1_out_ready_out0),
        .in_stall_in_0(loop_limiter_conv_process2_out_o_stall),
        .in_valid_in_0(bb_conv_process_B7_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_52_0(bb_conv_process_B7_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_conv_process_B7_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_conv_process_B7_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_conv_process_B7_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_conv_process_B7_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_conv_process_B7_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_conv_process_B7_out_intel_reserved_ffwd_58_0),
        .out_iowr_bl_input_ctrl0_0_o_fifodata(bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifodata),
        .out_iowr_bl_input_ctrl0_0_o_fifovalid(bb_conv_process_B7_out_iowr_bl_input_ctrl0_0_o_fifovalid),
        .out_iowr_bl_input_ctrl1_0_o_fifodata(bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifodata),
        .out_iowr_bl_input_ctrl1_0_o_fifovalid(bb_conv_process_B7_out_iowr_bl_input_ctrl1_0_o_fifovalid),
        .out_iowr_bl_weight_ctrl0_0_o_fifodata(bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifodata),
        .out_iowr_bl_weight_ctrl0_0_o_fifovalid(bb_conv_process_B7_out_iowr_bl_weight_ctrl0_0_o_fifovalid),
        .out_iowr_bl_weight_ctrl1_0_o_fifodata(bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifodata),
        .out_iowr_bl_weight_ctrl1_0_o_fifovalid(bb_conv_process_B7_out_iowr_bl_weight_ctrl1_0_o_fifovalid),
        .out_stall_out_0(bb_conv_process_B7_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B7_sr_0_aunroll_x(BLACKBOX,27)
    cnn_top_bb_conv_process_B7_sr_0 thebb_conv_process_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B7_out_stall_out_0),
        .in_i_valid(bb_conv_process_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B6(BLACKBOX,56)
    cnn_top_bb_conv_process_B6 thebb_conv_process_B6 (
        .in_c0_exe37101_0(bb_conv_process_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_conv_process_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_conv_process_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_conv_process_B6_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B6_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B6_sr_0_aunroll_x(BLACKBOX,26)
    cnn_top_bb_conv_process_B6_sr_0 thebb_conv_process_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_conv_process_B5_out_c0_exe3710),
        .in_i_stall(bb_conv_process_B6_out_stall_out_0),
        .in_i_valid(bb_conv_process_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_conv_process_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv_process_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef186(CONSTANT,193)
    assign c_i32_undef186_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going214_conv_process6_sr(BLACKBOX,232)
    cnn_top_i_llvm_fpga_pipeline_keep_going214_conv_process6_sr thei_llvm_fpga_pipeline_keep_going214_conv_process6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B5(BLACKBOX,55)
    cnn_top_bb_conv_process_B5 thebb_conv_process_B5 (
        .in_flush(in_start),
        .in_forked115_0(GND_q),
        .in_forked115_1(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_50_0(bb_conv_process_B3_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(bb_conv_process_B3_out_intel_reserved_ffwd_51_0),
        .in_memdep_5_conv_process_avm_readdata(in_memdep_5_conv_process_avm_readdata),
        .in_memdep_5_conv_process_avm_readdatavalid(in_memdep_5_conv_process_avm_readdatavalid),
        .in_memdep_5_conv_process_avm_waitrequest(in_memdep_5_conv_process_avm_waitrequest),
        .in_memdep_5_conv_process_avm_writeack(in_memdep_5_conv_process_avm_writeack),
        .in_notcmp226591_0(GND_q),
        .in_notcmp226591_1(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going214_conv_process6_sr_out_o_stall),
        .in_r_0_i496_pop63592_0(c_i32_undef186_q),
        .in_r_0_i496_pop63592_1(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_conv_process_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going214_conv_process6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3710(bb_conv_process_B5_out_c0_exe3710),
        .out_exiting_stall_out(bb_conv_process_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B5_out_exiting_valid_out),
        .out_memdep_5_conv_process_avm_address(bb_conv_process_B5_out_memdep_5_conv_process_avm_address),
        .out_memdep_5_conv_process_avm_burstcount(bb_conv_process_B5_out_memdep_5_conv_process_avm_burstcount),
        .out_memdep_5_conv_process_avm_byteenable(bb_conv_process_B5_out_memdep_5_conv_process_avm_byteenable),
        .out_memdep_5_conv_process_avm_enable(bb_conv_process_B5_out_memdep_5_conv_process_avm_enable),
        .out_memdep_5_conv_process_avm_read(bb_conv_process_B5_out_memdep_5_conv_process_avm_read),
        .out_memdep_5_conv_process_avm_write(bb_conv_process_B5_out_memdep_5_conv_process_avm_write),
        .out_memdep_5_conv_process_avm_writedata(bb_conv_process_B5_out_memdep_5_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv_process_B5_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B5_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B5_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B5_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B5_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B5_sr_1_aunroll_x(BLACKBOX,25)
    cnn_top_bb_conv_process_B5_sr_1 thebb_conv_process_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_conv_process_B4_out_c0_exe2699),
        .in_i_data_2_tpl(bb_conv_process_B4_out_c0_exe3700),
        .in_i_stall(bb_conv_process_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process4_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_conv_process_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_conv_process_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process4(BLACKBOX,304)
    cnn_top_loop_limiter_conv_process4 theloop_limiter_conv_process4 (
        .in_i_stall(bb_conv_process_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B5_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B4_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process4_out_o_stall),
        .out_o_valid(loop_limiter_conv_process4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going228_conv_process2_sr(BLACKBOX,234)
    cnn_top_i_llvm_fpga_pipeline_keep_going228_conv_process2_sr thei_llvm_fpga_pipeline_keep_going228_conv_process2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B4(BLACKBOX,54)
    cnn_top_bb_conv_process_B4 thebb_conv_process_B4 (
        .in_forked277_0(GND_q),
        .in_forked277_1(bb_conv_process_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going228_conv_process2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_conv_process4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going228_conv_process2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2699(bb_conv_process_B4_out_c0_exe2699),
        .out_c0_exe3700(bb_conv_process_B4_out_c0_exe3700),
        .out_exiting_stall_out(bb_conv_process_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_conv_process_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_conv_process_B4_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B4_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B4_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B4_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B4_sr_1_aunroll_x(BLACKBOX,24)
    cnn_top_bb_conv_process_B4_sr_1 thebb_conv_process_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_conv_process_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process1_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv_process_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process1(BLACKBOX,299)
    cnn_top_loop_limiter_conv_process1 theloop_limiter_conv_process1 (
        .in_i_stall(bb_conv_process_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B4_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B3_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process1_out_o_stall),
        .out_o_valid(loop_limiter_conv_process1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B3(BLACKBOX,53)
    cnn_top_bb_conv_process_B3 thebb_conv_process_B3 (
        .in_intel_reserved_ffwd_6_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0),
        .in_stall_in_0(loop_limiter_conv_process1_out_o_stall),
        .in_valid_in_0(bb_conv_process_B3_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_48_0(bb_conv_process_B3_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_conv_process_B3_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(bb_conv_process_B3_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_conv_process_B3_out_intel_reserved_ffwd_51_0),
        .out_stall_out_0(bb_conv_process_B3_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B3_sr_0_aunroll_x(BLACKBOX,23)
    cnn_top_bb_conv_process_B3_sr_0 thebb_conv_process_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B3_out_stall_out_0),
        .in_i_valid(bb_conv_process_B2_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going234_conv_process6_sr(BLACKBOX,236)
    cnn_top_i_llvm_fpga_pipeline_keep_going234_conv_process6_sr thei_llvm_fpga_pipeline_keep_going234_conv_process6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_stall_out),
        .in_i_valid(bb_conv_process_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B2(BLACKBOX,46)
    cnn_top_bb_conv_process_B2 thebb_conv_process_B2 (
        .in_flush(in_start),
        .in_forked76_0(GND_q),
        .in_forked76_1(bb_conv_process_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_13_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_1_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_8_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_8_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going234_conv_process6_sr_out_o_stall),
        .in_stall_in_0(bb_conv_process_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_conv_process20_conv_process_avm_readdata(in_unnamed_conv_process20_conv_process_avm_readdata),
        .in_unnamed_conv_process20_conv_process_avm_readdatavalid(in_unnamed_conv_process20_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process20_conv_process_avm_waitrequest(in_unnamed_conv_process20_conv_process_avm_waitrequest),
        .in_unnamed_conv_process20_conv_process_avm_writeack(in_unnamed_conv_process20_conv_process_avm_writeack),
        .in_unnamed_conv_process21_conv_process_avm_readdata(in_unnamed_conv_process21_conv_process_avm_readdata),
        .in_unnamed_conv_process21_conv_process_avm_readdatavalid(in_unnamed_conv_process21_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process21_conv_process_avm_waitrequest(in_unnamed_conv_process21_conv_process_avm_waitrequest),
        .in_unnamed_conv_process21_conv_process_avm_writeack(in_unnamed_conv_process21_conv_process_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going234_conv_process6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_conv_process_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_conv_process_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_conv_process_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_16_0(bb_conv_process_B2_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_conv_process_B2_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_conv_process_B2_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_conv_process_B2_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_conv_process_B2_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_conv_process_B2_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_conv_process_B2_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_conv_process_B2_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_conv_process_B2_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_conv_process_B2_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_conv_process_B2_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_conv_process_B2_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_conv_process_B2_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_conv_process_B2_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_conv_process_B2_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_conv_process_B2_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_conv_process_B2_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_conv_process_B2_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_conv_process_B2_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_conv_process_B2_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_conv_process_B2_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_conv_process_B2_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_conv_process_B2_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_conv_process_B2_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_conv_process_B2_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_conv_process_B2_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_conv_process_B2_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_conv_process_B2_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_conv_process_B2_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_conv_process_B2_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_conv_process_B2_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_conv_process_B2_out_intel_reserved_ffwd_47_0),
        .out_pipeline_valid_out(bb_conv_process_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_conv_process_B2_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B2_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B2_out_stall_out_1),
        .out_unnamed_conv_process20_conv_process_avm_address(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_address),
        .out_unnamed_conv_process20_conv_process_avm_burstcount(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_burstcount),
        .out_unnamed_conv_process20_conv_process_avm_byteenable(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_byteenable),
        .out_unnamed_conv_process20_conv_process_avm_enable(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_enable),
        .out_unnamed_conv_process20_conv_process_avm_read(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_read),
        .out_unnamed_conv_process20_conv_process_avm_write(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_write),
        .out_unnamed_conv_process20_conv_process_avm_writedata(bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_writedata),
        .out_unnamed_conv_process21_conv_process_avm_address(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_address),
        .out_unnamed_conv_process21_conv_process_avm_burstcount(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_burstcount),
        .out_unnamed_conv_process21_conv_process_avm_byteenable(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_byteenable),
        .out_unnamed_conv_process21_conv_process_avm_enable(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_enable),
        .out_unnamed_conv_process21_conv_process_avm_read(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_read),
        .out_unnamed_conv_process21_conv_process_avm_write(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_write),
        .out_unnamed_conv_process21_conv_process_avm_writedata(bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_writedata),
        .out_valid_in_0(bb_conv_process_B2_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B2_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B2_sr_1_aunroll_x(BLACKBOX,22)
    cnn_top_bb_conv_process_B2_sr_1 thebb_conv_process_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_conv_process_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_conv_process0_out_o_valid),
        .out_o_data_0_tpl(bb_conv_process_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_conv_process_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_conv_process0(BLACKBOX,298)
    cnn_top_loop_limiter_conv_process0 theloop_limiter_conv_process0 (
        .in_i_stall(bb_conv_process_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_conv_process_B2_out_exiting_stall_out),
        .in_i_valid(bb_conv_process_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_conv_process_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_conv_process0_out_o_stall),
        .out_o_valid(loop_limiter_conv_process0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B1_start(BLACKBOX,45)
    cnn_top_bb_conv_process_B1_start thebb_conv_process_B1_start (
        .in_feedback_in_1(bb_conv_process_B14_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_conv_process_B14_out_feedback_valid_out_1),
        .in_iord_bl_call_conv_process_i_fifodata(in_iord_bl_call_conv_process_i_fifodata),
        .in_iord_bl_call_conv_process_i_fifovalid(in_iord_bl_call_conv_process_i_fifovalid),
        .in_stall_in_0(loop_limiter_conv_process0_out_o_stall),
        .in_valid_in_0(bb_conv_process_B1_start_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_conv_process_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_feedback_stall_out_1(bb_conv_process_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_1_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_conv_process_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_conv_process_o_fifoalmost_full(bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoalmost_full),
        .out_iord_bl_call_conv_process_o_fifoready(bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoready),
        .out_stall_out_0(bb_conv_process_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_conv_process_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_conv_process_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_conv_process_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_conv_process_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B14(BLACKBOX,39)
    cnn_top_bb_conv_process_B14 thebb_conv_process_B14 (
        .in_feedback_stall_in_1(bb_conv_process_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_conv_process_i_fifoready(in_iowr_bl_return_conv_process_i_fifoready),
        .in_stall_in_0(bb_conv_process_B1_start_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_conv_process_B14_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_conv_process_B14_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_conv_process_B14_out_feedback_valid_out_1),
        .out_iowr_bl_return_conv_process_o_fifodata(bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifodata),
        .out_iowr_bl_return_conv_process_o_fifovalid(bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifovalid),
        .out_stall_in_0(bb_conv_process_B14_out_stall_in_0),
        .out_stall_out_0(bb_conv_process_B14_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B0_runOnce(BLACKBOX,35)
    cnn_top_bb_conv_process_B0_runOnce thebb_conv_process_B0_runOnce (
        .in_stall_in_0(bb_conv_process_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_conv_process_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_conv_process_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B1_start_sr_1_aunroll_x(BLACKBOX,15)
    cnn_top_bb_conv_process_B1_start_sr_1 thebb_conv_process_B1_start_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_conv_process_B1_start_out_stall_out_1),
        .in_i_valid(bb_conv_process_B0_runOnce_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_conv_process_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_conv_process_B1_start_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // conv_process_B1_start_x(EXTIFACE,205)
    assign conv_process_B1_start_x_i_capture = GND_q;
    assign conv_process_B1_start_x_i_clear = GND_q;
    assign conv_process_B1_start_x_i_enable = VCC_q;
    assign conv_process_B1_start_x_i_shift = GND_q;
    assign conv_process_B1_start_x_i_stall_pred = bb_conv_process_B1_start_sr_1_aunroll_x_out_o_stall;
    assign conv_process_B1_start_x_i_stall_succ = bb_conv_process_B14_out_stall_in_0;
    assign conv_process_B1_start_x_i_valid_loop = bb_conv_process_B1_start_out_valid_in_0;
    assign conv_process_B1_start_x_i_valid_pred = bb_conv_process_B1_start_out_valid_in_1;
    assign conv_process_B1_start_x_i_valid_succ = bb_conv_process_B14_out_valid_out_0;
    assign conv_process_B1_start_x_i_capture_bitsignaltemp = conv_process_B1_start_x_i_capture[0];
    assign conv_process_B1_start_x_i_clear_bitsignaltemp = conv_process_B1_start_x_i_clear[0];
    assign conv_process_B1_start_x_i_enable_bitsignaltemp = conv_process_B1_start_x_i_enable[0];
    assign conv_process_B1_start_x_i_shift_bitsignaltemp = conv_process_B1_start_x_i_shift[0];
    assign conv_process_B1_start_x_i_stall_pred_bitsignaltemp = conv_process_B1_start_x_i_stall_pred[0];
    assign conv_process_B1_start_x_i_stall_succ_bitsignaltemp = conv_process_B1_start_x_i_stall_succ[0];
    assign conv_process_B1_start_x_i_valid_loop_bitsignaltemp = conv_process_B1_start_x_i_valid_loop[0];
    assign conv_process_B1_start_x_i_valid_pred_bitsignaltemp = conv_process_B1_start_x_i_valid_pred[0];
    assign conv_process_B1_start_x_i_valid_succ_bitsignaltemp = conv_process_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B1.start")
    ) theconv_process_B1_start_x (
        .i_capture(conv_process_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B10_x(EXTIFACE,206)
    assign conv_process_B10_x_i_capture = GND_q;
    assign conv_process_B10_x_i_clear = GND_q;
    assign conv_process_B10_x_i_enable = VCC_q;
    assign conv_process_B10_x_i_shift = GND_q;
    assign conv_process_B10_x_i_stall_pred = loop_limiter_conv_process6_out_o_stall;
    assign conv_process_B10_x_i_stall_succ = bb_conv_process_B13_out_stall_in_0;
    assign conv_process_B10_x_i_valid_loop = bb_conv_process_B10_out_valid_in_0;
    assign conv_process_B10_x_i_valid_pred = bb_conv_process_B10_out_valid_in_1;
    assign conv_process_B10_x_i_valid_succ = bb_conv_process_B13_out_valid_out_0;
    assign conv_process_B10_x_i_capture_bitsignaltemp = conv_process_B10_x_i_capture[0];
    assign conv_process_B10_x_i_clear_bitsignaltemp = conv_process_B10_x_i_clear[0];
    assign conv_process_B10_x_i_enable_bitsignaltemp = conv_process_B10_x_i_enable[0];
    assign conv_process_B10_x_i_shift_bitsignaltemp = conv_process_B10_x_i_shift[0];
    assign conv_process_B10_x_i_stall_pred_bitsignaltemp = conv_process_B10_x_i_stall_pred[0];
    assign conv_process_B10_x_i_stall_succ_bitsignaltemp = conv_process_B10_x_i_stall_succ[0];
    assign conv_process_B10_x_i_valid_loop_bitsignaltemp = conv_process_B10_x_i_valid_loop[0];
    assign conv_process_B10_x_i_valid_pred_bitsignaltemp = conv_process_B10_x_i_valid_pred[0];
    assign conv_process_B10_x_i_valid_succ_bitsignaltemp = conv_process_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B10")
    ) theconv_process_B10_x (
        .i_capture(conv_process_B10_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B10_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B10_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B12_x(EXTIFACE,207)
    assign conv_process_B12_x_i_capture = GND_q;
    assign conv_process_B12_x_i_clear = GND_q;
    assign conv_process_B12_x_i_enable = VCC_q;
    assign conv_process_B12_x_i_shift = GND_q;
    assign conv_process_B12_x_i_stall_pred = loop_limiter_conv_process8_out_o_stall;
    assign conv_process_B12_x_i_stall_succ = bb_conv_process_B12_aunroll_x_out_stall_in_0;
    assign conv_process_B12_x_i_valid_loop = bb_conv_process_B12_aunroll_x_out_valid_in_0;
    assign conv_process_B12_x_i_valid_pred = bb_conv_process_B12_aunroll_x_out_valid_in_1;
    assign conv_process_B12_x_i_valid_succ = bb_conv_process_B12_aunroll_x_out_valid_out_0;
    assign conv_process_B12_x_i_capture_bitsignaltemp = conv_process_B12_x_i_capture[0];
    assign conv_process_B12_x_i_clear_bitsignaltemp = conv_process_B12_x_i_clear[0];
    assign conv_process_B12_x_i_enable_bitsignaltemp = conv_process_B12_x_i_enable[0];
    assign conv_process_B12_x_i_shift_bitsignaltemp = conv_process_B12_x_i_shift[0];
    assign conv_process_B12_x_i_stall_pred_bitsignaltemp = conv_process_B12_x_i_stall_pred[0];
    assign conv_process_B12_x_i_stall_succ_bitsignaltemp = conv_process_B12_x_i_stall_succ[0];
    assign conv_process_B12_x_i_valid_loop_bitsignaltemp = conv_process_B12_x_i_valid_loop[0];
    assign conv_process_B12_x_i_valid_pred_bitsignaltemp = conv_process_B12_x_i_valid_pred[0];
    assign conv_process_B12_x_i_valid_succ_bitsignaltemp = conv_process_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B12")
    ) theconv_process_B12_x (
        .i_capture(conv_process_B12_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B12_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B12_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B15_x(EXTIFACE,208)
    assign conv_process_B15_x_i_capture = GND_q;
    assign conv_process_B15_x_i_clear = GND_q;
    assign conv_process_B15_x_i_enable = VCC_q;
    assign conv_process_B15_x_i_shift = GND_q;
    assign conv_process_B15_x_i_stall_pred = loop_limiter_conv_process2_out_o_stall;
    assign conv_process_B15_x_i_stall_succ = bb_conv_process_B25_out_stall_in_0;
    assign conv_process_B15_x_i_valid_loop = bb_conv_process_B15_out_valid_in_0;
    assign conv_process_B15_x_i_valid_pred = bb_conv_process_B15_out_valid_in_1;
    assign conv_process_B15_x_i_valid_succ = bb_conv_process_B25_out_valid_out_0;
    assign conv_process_B15_x_i_capture_bitsignaltemp = conv_process_B15_x_i_capture[0];
    assign conv_process_B15_x_i_clear_bitsignaltemp = conv_process_B15_x_i_clear[0];
    assign conv_process_B15_x_i_enable_bitsignaltemp = conv_process_B15_x_i_enable[0];
    assign conv_process_B15_x_i_shift_bitsignaltemp = conv_process_B15_x_i_shift[0];
    assign conv_process_B15_x_i_stall_pred_bitsignaltemp = conv_process_B15_x_i_stall_pred[0];
    assign conv_process_B15_x_i_stall_succ_bitsignaltemp = conv_process_B15_x_i_stall_succ[0];
    assign conv_process_B15_x_i_valid_loop_bitsignaltemp = conv_process_B15_x_i_valid_loop[0];
    assign conv_process_B15_x_i_valid_pred_bitsignaltemp = conv_process_B15_x_i_valid_pred[0];
    assign conv_process_B15_x_i_valid_succ_bitsignaltemp = conv_process_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B15")
    ) theconv_process_B15_x (
        .i_capture(conv_process_B15_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B15_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B15_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B16_x(EXTIFACE,209)
    assign conv_process_B16_x_i_capture = GND_q;
    assign conv_process_B16_x_i_clear = GND_q;
    assign conv_process_B16_x_i_enable = VCC_q;
    assign conv_process_B16_x_i_shift = GND_q;
    assign conv_process_B16_x_i_stall_pred = loop_limiter_conv_process5_out_o_stall;
    assign conv_process_B16_x_i_stall_succ = bb_conv_process_B18_out_stall_in_0;
    assign conv_process_B16_x_i_valid_loop = bb_conv_process_B16_out_valid_in_0;
    assign conv_process_B16_x_i_valid_pred = bb_conv_process_B16_out_valid_in_1;
    assign conv_process_B16_x_i_valid_succ = bb_conv_process_B18_out_valid_out_0;
    assign conv_process_B16_x_i_capture_bitsignaltemp = conv_process_B16_x_i_capture[0];
    assign conv_process_B16_x_i_clear_bitsignaltemp = conv_process_B16_x_i_clear[0];
    assign conv_process_B16_x_i_enable_bitsignaltemp = conv_process_B16_x_i_enable[0];
    assign conv_process_B16_x_i_shift_bitsignaltemp = conv_process_B16_x_i_shift[0];
    assign conv_process_B16_x_i_stall_pred_bitsignaltemp = conv_process_B16_x_i_stall_pred[0];
    assign conv_process_B16_x_i_stall_succ_bitsignaltemp = conv_process_B16_x_i_stall_succ[0];
    assign conv_process_B16_x_i_valid_loop_bitsignaltemp = conv_process_B16_x_i_valid_loop[0];
    assign conv_process_B16_x_i_valid_pred_bitsignaltemp = conv_process_B16_x_i_valid_pred[0];
    assign conv_process_B16_x_i_valid_succ_bitsignaltemp = conv_process_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B16")
    ) theconv_process_B16_x (
        .i_capture(conv_process_B16_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B16_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B16_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B17_x(EXTIFACE,210)
    assign conv_process_B17_x_i_capture = GND_q;
    assign conv_process_B17_x_i_clear = GND_q;
    assign conv_process_B17_x_i_enable = VCC_q;
    assign conv_process_B17_x_i_shift = GND_q;
    assign conv_process_B17_x_i_stall_pred = loop_limiter_conv_process7_out_o_stall;
    assign conv_process_B17_x_i_stall_succ = bb_conv_process_B20_out_stall_in_0;
    assign conv_process_B17_x_i_valid_loop = bb_conv_process_B17_out_valid_in_0;
    assign conv_process_B17_x_i_valid_pred = bb_conv_process_B17_out_valid_in_1;
    assign conv_process_B17_x_i_valid_succ = bb_conv_process_B20_out_valid_out_0;
    assign conv_process_B17_x_i_capture_bitsignaltemp = conv_process_B17_x_i_capture[0];
    assign conv_process_B17_x_i_clear_bitsignaltemp = conv_process_B17_x_i_clear[0];
    assign conv_process_B17_x_i_enable_bitsignaltemp = conv_process_B17_x_i_enable[0];
    assign conv_process_B17_x_i_shift_bitsignaltemp = conv_process_B17_x_i_shift[0];
    assign conv_process_B17_x_i_stall_pred_bitsignaltemp = conv_process_B17_x_i_stall_pred[0];
    assign conv_process_B17_x_i_stall_succ_bitsignaltemp = conv_process_B17_x_i_stall_succ[0];
    assign conv_process_B17_x_i_valid_loop_bitsignaltemp = conv_process_B17_x_i_valid_loop[0];
    assign conv_process_B17_x_i_valid_pred_bitsignaltemp = conv_process_B17_x_i_valid_pred[0];
    assign conv_process_B17_x_i_valid_succ_bitsignaltemp = conv_process_B17_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B17")
    ) theconv_process_B17_x (
        .i_capture(conv_process_B17_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B17_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B17_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B17_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B17_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B17_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B17_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B17_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B17_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B19_x(EXTIFACE,211)
    assign conv_process_B19_x_i_capture = GND_q;
    assign conv_process_B19_x_i_clear = GND_q;
    assign conv_process_B19_x_i_enable = VCC_q;
    assign conv_process_B19_x_i_shift = GND_q;
    assign conv_process_B19_x_i_stall_pred = loop_limiter_conv_process9_out_o_stall;
    assign conv_process_B19_x_i_stall_succ = bb_conv_process_B22_out_stall_in_0;
    assign conv_process_B19_x_i_valid_loop = bb_conv_process_B19_out_valid_in_0;
    assign conv_process_B19_x_i_valid_pred = bb_conv_process_B19_out_valid_in_1;
    assign conv_process_B19_x_i_valid_succ = bb_conv_process_B22_out_valid_out_0;
    assign conv_process_B19_x_i_capture_bitsignaltemp = conv_process_B19_x_i_capture[0];
    assign conv_process_B19_x_i_clear_bitsignaltemp = conv_process_B19_x_i_clear[0];
    assign conv_process_B19_x_i_enable_bitsignaltemp = conv_process_B19_x_i_enable[0];
    assign conv_process_B19_x_i_shift_bitsignaltemp = conv_process_B19_x_i_shift[0];
    assign conv_process_B19_x_i_stall_pred_bitsignaltemp = conv_process_B19_x_i_stall_pred[0];
    assign conv_process_B19_x_i_stall_succ_bitsignaltemp = conv_process_B19_x_i_stall_succ[0];
    assign conv_process_B19_x_i_valid_loop_bitsignaltemp = conv_process_B19_x_i_valid_loop[0];
    assign conv_process_B19_x_i_valid_pred_bitsignaltemp = conv_process_B19_x_i_valid_pred[0];
    assign conv_process_B19_x_i_valid_succ_bitsignaltemp = conv_process_B19_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B19")
    ) theconv_process_B19_x (
        .i_capture(conv_process_B19_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B19_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B19_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B19_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B19_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B19_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B19_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B19_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B19_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B2_x(EXTIFACE,212)
    assign conv_process_B2_x_i_capture = GND_q;
    assign conv_process_B2_x_i_clear = GND_q;
    assign conv_process_B2_x_i_enable = VCC_q;
    assign conv_process_B2_x_i_shift = GND_q;
    assign conv_process_B2_x_i_stall_pred = loop_limiter_conv_process0_out_o_stall;
    assign conv_process_B2_x_i_stall_succ = bb_conv_process_B2_out_stall_in_0;
    assign conv_process_B2_x_i_valid_loop = bb_conv_process_B2_out_valid_in_0;
    assign conv_process_B2_x_i_valid_pred = bb_conv_process_B2_out_valid_in_1;
    assign conv_process_B2_x_i_valid_succ = bb_conv_process_B2_out_valid_out_0;
    assign conv_process_B2_x_i_capture_bitsignaltemp = conv_process_B2_x_i_capture[0];
    assign conv_process_B2_x_i_clear_bitsignaltemp = conv_process_B2_x_i_clear[0];
    assign conv_process_B2_x_i_enable_bitsignaltemp = conv_process_B2_x_i_enable[0];
    assign conv_process_B2_x_i_shift_bitsignaltemp = conv_process_B2_x_i_shift[0];
    assign conv_process_B2_x_i_stall_pred_bitsignaltemp = conv_process_B2_x_i_stall_pred[0];
    assign conv_process_B2_x_i_stall_succ_bitsignaltemp = conv_process_B2_x_i_stall_succ[0];
    assign conv_process_B2_x_i_valid_loop_bitsignaltemp = conv_process_B2_x_i_valid_loop[0];
    assign conv_process_B2_x_i_valid_pred_bitsignaltemp = conv_process_B2_x_i_valid_pred[0];
    assign conv_process_B2_x_i_valid_succ_bitsignaltemp = conv_process_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B2")
    ) theconv_process_B2_x (
        .i_capture(conv_process_B2_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B2_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B2_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B21_x(EXTIFACE,213)
    assign conv_process_B21_x_i_capture = GND_q;
    assign conv_process_B21_x_i_clear = GND_q;
    assign conv_process_B21_x_i_enable = VCC_q;
    assign conv_process_B21_x_i_shift = GND_q;
    assign conv_process_B21_x_i_stall_pred = loop_limiter_conv_process10_out_o_stall;
    assign conv_process_B21_x_i_stall_succ = bb_conv_process_B23_out_stall_in_0;
    assign conv_process_B21_x_i_valid_loop = bb_conv_process_B21_out_valid_in_0;
    assign conv_process_B21_x_i_valid_pred = bb_conv_process_B21_out_valid_in_1;
    assign conv_process_B21_x_i_valid_succ = bb_conv_process_B23_out_valid_out_0;
    assign conv_process_B21_x_i_capture_bitsignaltemp = conv_process_B21_x_i_capture[0];
    assign conv_process_B21_x_i_clear_bitsignaltemp = conv_process_B21_x_i_clear[0];
    assign conv_process_B21_x_i_enable_bitsignaltemp = conv_process_B21_x_i_enable[0];
    assign conv_process_B21_x_i_shift_bitsignaltemp = conv_process_B21_x_i_shift[0];
    assign conv_process_B21_x_i_stall_pred_bitsignaltemp = conv_process_B21_x_i_stall_pred[0];
    assign conv_process_B21_x_i_stall_succ_bitsignaltemp = conv_process_B21_x_i_stall_succ[0];
    assign conv_process_B21_x_i_valid_loop_bitsignaltemp = conv_process_B21_x_i_valid_loop[0];
    assign conv_process_B21_x_i_valid_pred_bitsignaltemp = conv_process_B21_x_i_valid_pred[0];
    assign conv_process_B21_x_i_valid_succ_bitsignaltemp = conv_process_B21_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B21")
    ) theconv_process_B21_x (
        .i_capture(conv_process_B21_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B21_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B21_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B21_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B21_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B21_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B21_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B21_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B21_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B24_x(EXTIFACE,214)
    assign conv_process_B24_x_i_capture = GND_q;
    assign conv_process_B24_x_i_clear = GND_q;
    assign conv_process_B24_x_i_enable = VCC_q;
    assign conv_process_B24_x_i_shift = GND_q;
    assign conv_process_B24_x_i_stall_pred = loop_limiter_conv_process11_out_o_stall;
    assign conv_process_B24_x_i_stall_succ = bb_conv_process_B24_out_stall_in_0;
    assign conv_process_B24_x_i_valid_loop = bb_conv_process_B24_out_valid_in_0;
    assign conv_process_B24_x_i_valid_pred = bb_conv_process_B24_out_valid_in_1;
    assign conv_process_B24_x_i_valid_succ = bb_conv_process_B24_out_valid_out_0;
    assign conv_process_B24_x_i_capture_bitsignaltemp = conv_process_B24_x_i_capture[0];
    assign conv_process_B24_x_i_clear_bitsignaltemp = conv_process_B24_x_i_clear[0];
    assign conv_process_B24_x_i_enable_bitsignaltemp = conv_process_B24_x_i_enable[0];
    assign conv_process_B24_x_i_shift_bitsignaltemp = conv_process_B24_x_i_shift[0];
    assign conv_process_B24_x_i_stall_pred_bitsignaltemp = conv_process_B24_x_i_stall_pred[0];
    assign conv_process_B24_x_i_stall_succ_bitsignaltemp = conv_process_B24_x_i_stall_succ[0];
    assign conv_process_B24_x_i_valid_loop_bitsignaltemp = conv_process_B24_x_i_valid_loop[0];
    assign conv_process_B24_x_i_valid_pred_bitsignaltemp = conv_process_B24_x_i_valid_pred[0];
    assign conv_process_B24_x_i_valid_succ_bitsignaltemp = conv_process_B24_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B24")
    ) theconv_process_B24_x (
        .i_capture(conv_process_B24_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B24_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B24_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B24_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B24_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B24_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B24_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B24_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B24_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B4_x(EXTIFACE,215)
    assign conv_process_B4_x_i_capture = GND_q;
    assign conv_process_B4_x_i_clear = GND_q;
    assign conv_process_B4_x_i_enable = VCC_q;
    assign conv_process_B4_x_i_shift = GND_q;
    assign conv_process_B4_x_i_stall_pred = loop_limiter_conv_process1_out_o_stall;
    assign conv_process_B4_x_i_stall_succ = bb_conv_process_B6_out_stall_in_0;
    assign conv_process_B4_x_i_valid_loop = bb_conv_process_B4_out_valid_in_0;
    assign conv_process_B4_x_i_valid_pred = bb_conv_process_B4_out_valid_in_1;
    assign conv_process_B4_x_i_valid_succ = bb_conv_process_B6_out_valid_out_0;
    assign conv_process_B4_x_i_capture_bitsignaltemp = conv_process_B4_x_i_capture[0];
    assign conv_process_B4_x_i_clear_bitsignaltemp = conv_process_B4_x_i_clear[0];
    assign conv_process_B4_x_i_enable_bitsignaltemp = conv_process_B4_x_i_enable[0];
    assign conv_process_B4_x_i_shift_bitsignaltemp = conv_process_B4_x_i_shift[0];
    assign conv_process_B4_x_i_stall_pred_bitsignaltemp = conv_process_B4_x_i_stall_pred[0];
    assign conv_process_B4_x_i_stall_succ_bitsignaltemp = conv_process_B4_x_i_stall_succ[0];
    assign conv_process_B4_x_i_valid_loop_bitsignaltemp = conv_process_B4_x_i_valid_loop[0];
    assign conv_process_B4_x_i_valid_pred_bitsignaltemp = conv_process_B4_x_i_valid_pred[0];
    assign conv_process_B4_x_i_valid_succ_bitsignaltemp = conv_process_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B4")
    ) theconv_process_B4_x (
        .i_capture(conv_process_B4_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B4_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B4_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B5_x(EXTIFACE,216)
    assign conv_process_B5_x_i_capture = GND_q;
    assign conv_process_B5_x_i_clear = GND_q;
    assign conv_process_B5_x_i_enable = VCC_q;
    assign conv_process_B5_x_i_shift = GND_q;
    assign conv_process_B5_x_i_stall_pred = loop_limiter_conv_process4_out_o_stall;
    assign conv_process_B5_x_i_stall_succ = bb_conv_process_B5_out_stall_in_0;
    assign conv_process_B5_x_i_valid_loop = bb_conv_process_B5_out_valid_in_0;
    assign conv_process_B5_x_i_valid_pred = bb_conv_process_B5_out_valid_in_1;
    assign conv_process_B5_x_i_valid_succ = bb_conv_process_B5_out_valid_out_0;
    assign conv_process_B5_x_i_capture_bitsignaltemp = conv_process_B5_x_i_capture[0];
    assign conv_process_B5_x_i_clear_bitsignaltemp = conv_process_B5_x_i_clear[0];
    assign conv_process_B5_x_i_enable_bitsignaltemp = conv_process_B5_x_i_enable[0];
    assign conv_process_B5_x_i_shift_bitsignaltemp = conv_process_B5_x_i_shift[0];
    assign conv_process_B5_x_i_stall_pred_bitsignaltemp = conv_process_B5_x_i_stall_pred[0];
    assign conv_process_B5_x_i_stall_succ_bitsignaltemp = conv_process_B5_x_i_stall_succ[0];
    assign conv_process_B5_x_i_valid_loop_bitsignaltemp = conv_process_B5_x_i_valid_loop[0];
    assign conv_process_B5_x_i_valid_pred_bitsignaltemp = conv_process_B5_x_i_valid_pred[0];
    assign conv_process_B5_x_i_valid_succ_bitsignaltemp = conv_process_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B5")
    ) theconv_process_B5_x (
        .i_capture(conv_process_B5_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B5_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B5_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B9_x(EXTIFACE,217)
    assign conv_process_B9_x_i_capture = GND_q;
    assign conv_process_B9_x_i_clear = GND_q;
    assign conv_process_B9_x_i_enable = VCC_q;
    assign conv_process_B9_x_i_shift = GND_q;
    assign conv_process_B9_x_i_stall_pred = loop_limiter_conv_process3_out_o_stall;
    assign conv_process_B9_x_i_stall_succ = bb_conv_process_B11_out_stall_in_0;
    assign conv_process_B9_x_i_valid_loop = bb_conv_process_B9_out_valid_in_0;
    assign conv_process_B9_x_i_valid_pred = bb_conv_process_B9_out_valid_in_1;
    assign conv_process_B9_x_i_valid_succ = bb_conv_process_B11_out_valid_out_0;
    assign conv_process_B9_x_i_capture_bitsignaltemp = conv_process_B9_x_i_capture[0];
    assign conv_process_B9_x_i_clear_bitsignaltemp = conv_process_B9_x_i_clear[0];
    assign conv_process_B9_x_i_enable_bitsignaltemp = conv_process_B9_x_i_enable[0];
    assign conv_process_B9_x_i_shift_bitsignaltemp = conv_process_B9_x_i_shift[0];
    assign conv_process_B9_x_i_stall_pred_bitsignaltemp = conv_process_B9_x_i_stall_pred[0];
    assign conv_process_B9_x_i_stall_succ_bitsignaltemp = conv_process_B9_x_i_stall_succ[0];
    assign conv_process_B9_x_i_valid_loop_bitsignaltemp = conv_process_B9_x_i_valid_loop[0];
    assign conv_process_B9_x_i_valid_pred_bitsignaltemp = conv_process_B9_x_i_valid_pred[0];
    assign conv_process_B9_x_i_valid_succ_bitsignaltemp = conv_process_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("conv_process.B9")
    ) theconv_process_B9_x (
        .i_capture(conv_process_B9_x_i_capture_bitsignaltemp),
        .i_clear(conv_process_B9_x_i_clear_bitsignaltemp),
        .i_enable(conv_process_B9_x_i_enable_bitsignaltemp),
        .i_shift(conv_process_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(conv_process_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(conv_process_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(conv_process_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(conv_process_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(conv_process_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,310)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,311)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,312)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,313)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,314)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,315)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,316)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,317)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_call_conv_process_o_fifoalmost_full(GPOUT,318)
    assign out_iord_bl_call_conv_process_o_fifoalmost_full = bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoalmost_full;

    // out_iord_bl_call_conv_process_o_fifoready(GPOUT,319)
    assign out_iord_bl_call_conv_process_o_fifoready = bb_conv_process_B1_start_out_iord_bl_call_conv_process_o_fifoready;

    // out_iowr_bl_return_conv_process_o_fifodata(GPOUT,320)
    assign out_iowr_bl_return_conv_process_o_fifodata = bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifodata;

    // out_iowr_bl_return_conv_process_o_fifovalid(GPOUT,321)
    assign out_iowr_bl_return_conv_process_o_fifovalid = bb_conv_process_B14_out_iowr_bl_return_conv_process_o_fifovalid;

    // out_iowr_input_ctrl0_o_fifodata(GPOUT,322)
    assign out_iowr_input_ctrl0_o_fifodata = arbiter_iowr_input_ctrl0_out_o_fifodata;

    // out_iowr_input_ctrl0_o_fifovalid(GPOUT,323)
    assign out_iowr_input_ctrl0_o_fifovalid = arbiter_iowr_input_ctrl0_out_o_fifovalid;

    // out_iowr_input_ctrl1_o_fifodata(GPOUT,324)
    assign out_iowr_input_ctrl1_o_fifodata = arbiter_iowr_input_ctrl1_out_o_fifodata;

    // out_iowr_input_ctrl1_o_fifovalid(GPOUT,325)
    assign out_iowr_input_ctrl1_o_fifovalid = arbiter_iowr_input_ctrl1_out_o_fifovalid;

    // out_iowr_weight_ctrl0_o_fifodata(GPOUT,326)
    assign out_iowr_weight_ctrl0_o_fifodata = arbiter_iowr_weight_ctrl0_out_o_fifodata;

    // out_iowr_weight_ctrl0_o_fifovalid(GPOUT,327)
    assign out_iowr_weight_ctrl0_o_fifovalid = arbiter_iowr_weight_ctrl0_out_o_fifovalid;

    // out_iowr_weight_ctrl1_o_fifodata(GPOUT,328)
    assign out_iowr_weight_ctrl1_o_fifodata = arbiter_iowr_weight_ctrl1_out_o_fifodata;

    // out_iowr_weight_ctrl1_o_fifovalid(GPOUT,329)
    assign out_iowr_weight_ctrl1_o_fifovalid = arbiter_iowr_weight_ctrl1_out_o_fifovalid;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(GPOUT,330)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(GPOUT,331)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(GPOUT,332)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(GPOUT,333)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(GPOUT,334)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(GPOUT,335)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(GPOUT,336)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata = bb_conv_process_B12_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address(GPOUT,337)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount(GPOUT,338)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable(GPOUT,339)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable(GPOUT,340)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read(GPOUT,341)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write(GPOUT,342)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata(GPOUT,343)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata = bb_conv_process_B24_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;

    // out_memdep_36_conv_process_avm_address(GPOUT,344)
    assign out_memdep_36_conv_process_avm_address = bb_conv_process_B24_out_memdep_36_conv_process_avm_address;

    // out_memdep_36_conv_process_avm_burstcount(GPOUT,345)
    assign out_memdep_36_conv_process_avm_burstcount = bb_conv_process_B24_out_memdep_36_conv_process_avm_burstcount;

    // out_memdep_36_conv_process_avm_byteenable(GPOUT,346)
    assign out_memdep_36_conv_process_avm_byteenable = bb_conv_process_B24_out_memdep_36_conv_process_avm_byteenable;

    // out_memdep_36_conv_process_avm_enable(GPOUT,347)
    assign out_memdep_36_conv_process_avm_enable = bb_conv_process_B24_out_memdep_36_conv_process_avm_enable;

    // out_memdep_36_conv_process_avm_read(GPOUT,348)
    assign out_memdep_36_conv_process_avm_read = bb_conv_process_B24_out_memdep_36_conv_process_avm_read;

    // out_memdep_36_conv_process_avm_write(GPOUT,349)
    assign out_memdep_36_conv_process_avm_write = bb_conv_process_B24_out_memdep_36_conv_process_avm_write;

    // out_memdep_36_conv_process_avm_writedata(GPOUT,350)
    assign out_memdep_36_conv_process_avm_writedata = bb_conv_process_B24_out_memdep_36_conv_process_avm_writedata;

    // out_memdep_5_conv_process_avm_address(GPOUT,351)
    assign out_memdep_5_conv_process_avm_address = bb_conv_process_B5_out_memdep_5_conv_process_avm_address;

    // out_memdep_5_conv_process_avm_burstcount(GPOUT,352)
    assign out_memdep_5_conv_process_avm_burstcount = bb_conv_process_B5_out_memdep_5_conv_process_avm_burstcount;

    // out_memdep_5_conv_process_avm_byteenable(GPOUT,353)
    assign out_memdep_5_conv_process_avm_byteenable = bb_conv_process_B5_out_memdep_5_conv_process_avm_byteenable;

    // out_memdep_5_conv_process_avm_enable(GPOUT,354)
    assign out_memdep_5_conv_process_avm_enable = bb_conv_process_B5_out_memdep_5_conv_process_avm_enable;

    // out_memdep_5_conv_process_avm_read(GPOUT,355)
    assign out_memdep_5_conv_process_avm_read = bb_conv_process_B5_out_memdep_5_conv_process_avm_read;

    // out_memdep_5_conv_process_avm_write(GPOUT,356)
    assign out_memdep_5_conv_process_avm_write = bb_conv_process_B5_out_memdep_5_conv_process_avm_write;

    // out_memdep_5_conv_process_avm_writedata(GPOUT,357)
    assign out_memdep_5_conv_process_avm_writedata = bb_conv_process_B5_out_memdep_5_conv_process_avm_writedata;

    // out_o_active_unnamed_conv_process101(GPOUT,358)
    assign out_o_active_unnamed_conv_process101 = bb_conv_process_B12_aunroll_x_out_lsu_unnamed_conv_process101_o_active;

    // out_stall_out(GPOUT,359)
    assign out_stall_out = bb_conv_process_B0_runOnce_out_stall_out_0;

    // out_unnamed_conv_process101_conv_process_avm_address(GPOUT,360)
    assign out_unnamed_conv_process101_conv_process_avm_address = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_address;

    // out_unnamed_conv_process101_conv_process_avm_burstcount(GPOUT,361)
    assign out_unnamed_conv_process101_conv_process_avm_burstcount = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_burstcount;

    // out_unnamed_conv_process101_conv_process_avm_byteenable(GPOUT,362)
    assign out_unnamed_conv_process101_conv_process_avm_byteenable = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_byteenable;

    // out_unnamed_conv_process101_conv_process_avm_enable(GPOUT,363)
    assign out_unnamed_conv_process101_conv_process_avm_enable = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_enable;

    // out_unnamed_conv_process101_conv_process_avm_read(GPOUT,364)
    assign out_unnamed_conv_process101_conv_process_avm_read = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_read;

    // out_unnamed_conv_process101_conv_process_avm_write(GPOUT,365)
    assign out_unnamed_conv_process101_conv_process_avm_write = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_write;

    // out_unnamed_conv_process101_conv_process_avm_writedata(GPOUT,366)
    assign out_unnamed_conv_process101_conv_process_avm_writedata = bb_conv_process_B12_aunroll_x_out_unnamed_conv_process101_conv_process_avm_writedata;

    // out_unnamed_conv_process20_conv_process_avm_address(GPOUT,367)
    assign out_unnamed_conv_process20_conv_process_avm_address = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_address;

    // out_unnamed_conv_process20_conv_process_avm_burstcount(GPOUT,368)
    assign out_unnamed_conv_process20_conv_process_avm_burstcount = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_burstcount;

    // out_unnamed_conv_process20_conv_process_avm_byteenable(GPOUT,369)
    assign out_unnamed_conv_process20_conv_process_avm_byteenable = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_byteenable;

    // out_unnamed_conv_process20_conv_process_avm_enable(GPOUT,370)
    assign out_unnamed_conv_process20_conv_process_avm_enable = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_enable;

    // out_unnamed_conv_process20_conv_process_avm_read(GPOUT,371)
    assign out_unnamed_conv_process20_conv_process_avm_read = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_read;

    // out_unnamed_conv_process20_conv_process_avm_write(GPOUT,372)
    assign out_unnamed_conv_process20_conv_process_avm_write = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_write;

    // out_unnamed_conv_process20_conv_process_avm_writedata(GPOUT,373)
    assign out_unnamed_conv_process20_conv_process_avm_writedata = bb_conv_process_B2_out_unnamed_conv_process20_conv_process_avm_writedata;

    // out_unnamed_conv_process21_conv_process_avm_address(GPOUT,374)
    assign out_unnamed_conv_process21_conv_process_avm_address = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_address;

    // out_unnamed_conv_process21_conv_process_avm_burstcount(GPOUT,375)
    assign out_unnamed_conv_process21_conv_process_avm_burstcount = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_burstcount;

    // out_unnamed_conv_process21_conv_process_avm_byteenable(GPOUT,376)
    assign out_unnamed_conv_process21_conv_process_avm_byteenable = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_byteenable;

    // out_unnamed_conv_process21_conv_process_avm_enable(GPOUT,377)
    assign out_unnamed_conv_process21_conv_process_avm_enable = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_enable;

    // out_unnamed_conv_process21_conv_process_avm_read(GPOUT,378)
    assign out_unnamed_conv_process21_conv_process_avm_read = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_read;

    // out_unnamed_conv_process21_conv_process_avm_write(GPOUT,379)
    assign out_unnamed_conv_process21_conv_process_avm_write = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_write;

    // out_unnamed_conv_process21_conv_process_avm_writedata(GPOUT,380)
    assign out_unnamed_conv_process21_conv_process_avm_writedata = bb_conv_process_B2_out_unnamed_conv_process21_conv_process_avm_writedata;

    // out_valid_out(GPOUT,381)
    assign out_valid_out = GND_q;

endmodule
