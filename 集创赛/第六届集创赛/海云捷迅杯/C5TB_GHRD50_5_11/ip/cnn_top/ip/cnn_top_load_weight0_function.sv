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

// SystemVerilog created from cnn_top_load_weight0_function
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight0_function (
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_ddr_w1,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_weight_ctrl0_global,
    input wire [703:0] in_iord_bl_call_load_weight0_i_fifodata,
    input wire [0:0] in_iord_bl_call_load_weight0_i_fifovalid,
    input wire [15:0] in_iord_bl_weight_ctrl0_i_fifodata,
    input wire [0:0] in_iord_bl_weight_ctrl0_i_fifovalid,
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    input wire [0:0] in_iowr_bl_return_load_weight0_i_fifoready,
    input wire [127:0] in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writeack,
    input wire [1023:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack,
    input wire [1023:0] in_memdep_3_load_weight0_avm_readdata,
    input wire [0:0] in_memdep_3_load_weight0_avm_readdatavalid,
    input wire [0:0] in_memdep_3_load_weight0_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_weight0_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_load_weight0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_load_weight0_o_fifoready,
    output wire [0:0] out_iord_bl_weight_ctrl0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_weight_ctrl0_o_fifoready,
    output wire [1023:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_load_weight0_o_fifodata,
    output wire [0:0] out_iowr_bl_return_load_weight0_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata,
    output wire [31:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write,
    output wire [1023:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata,
    output wire [31:0] out_memdep_3_load_weight0_avm_address,
    output wire [0:0] out_memdep_3_load_weight0_avm_burstcount,
    output wire [127:0] out_memdep_3_load_weight0_avm_byteenable,
    output wire [0:0] out_memdep_3_load_weight0_avm_enable,
    output wire [0:0] out_memdep_3_load_weight0_avm_read,
    output wire [0:0] out_memdep_3_load_weight0_avm_write,
    output wire [1023:0] out_memdep_3_load_weight0_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_weight0_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B14_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_weight0_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B15_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B17_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B19_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B20_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B20_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B20_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B20_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_weight0_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_weight0_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_weight0_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_load_weight0_B0_runOnce_out_valid_out_0;
    wire [31:0] bb_load_weight0_B10_out_c0_exe1218;
    wire [0:0] bb_load_weight0_B10_out_c0_exe3220;
    wire [31:0] bb_load_weight0_B10_out_c0_exe4221;
    wire [0:0] bb_load_weight0_B10_out_c0_exe5222;
    wire [31:0] bb_load_weight0_B10_out_c0_exe6223;
    wire [0:0] bb_load_weight0_B10_out_c0_exe7224;
    wire [0:0] bb_load_weight0_B10_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B10_out_exiting_valid_out;
    wire [0:0] bb_load_weight0_B10_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B10_out_stall_out_0;
    wire [0:0] bb_load_weight0_B10_out_stall_out_1;
    wire [0:0] bb_load_weight0_B10_out_valid_in_0;
    wire [0:0] bb_load_weight0_B10_out_valid_in_1;
    wire [0:0] bb_load_weight0_B10_out_valid_out_0;
    wire [0:0] bb_load_weight0_B11_out_stall_in_0;
    wire [0:0] bb_load_weight0_B11_out_stall_out_0;
    wire [0:0] bb_load_weight0_B11_out_valid_out_0;
    wire [0:0] bb_load_weight0_B12_out_c0_exe10;
    wire [31:0] bb_load_weight0_B12_out_c0_exe11;
    wire [0:0] bb_load_weight0_B12_out_c0_exe12;
    wire [0:0] bb_load_weight0_B12_out_c0_exe1242;
    wire [31:0] bb_load_weight0_B12_out_c0_exe13;
    wire [0:0] bb_load_weight0_B12_out_c0_exe14;
    wire [31:0] bb_load_weight0_B12_out_c0_exe2243;
    wire [31:0] bb_load_weight0_B12_out_c0_exe3244;
    wire [0:0] bb_load_weight0_B12_out_c0_exe5246;
    wire [31:0] bb_load_weight0_B12_out_c0_exe6247;
    wire [0:0] bb_load_weight0_B12_out_c0_exe7248;
    wire [0:0] bb_load_weight0_B12_out_c0_exe8;
    wire [31:0] bb_load_weight0_B12_out_c0_exe9;
    wire [0:0] bb_load_weight0_B12_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B12_out_exiting_valid_out;
    wire [0:0] bb_load_weight0_B12_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B12_out_stall_out_0;
    wire [0:0] bb_load_weight0_B12_out_stall_out_1;
    wire [0:0] bb_load_weight0_B12_out_valid_in_0;
    wire [0:0] bb_load_weight0_B12_out_valid_in_1;
    wire [0:0] bb_load_weight0_B12_out_valid_out_0;
    wire [0:0] bb_load_weight0_B13_out_c0_exe53503;
    wire [0:0] bb_load_weight0_B13_out_stall_in_0;
    wire [0:0] bb_load_weight0_B13_out_stall_out_0;
    wire [0:0] bb_load_weight0_B13_out_valid_out_0;
    wire [31:0] bb_load_weight0_B14_out_c0_exe10289;
    wire [0:0] bb_load_weight0_B14_out_c0_exe11290;
    wire [31:0] bb_load_weight0_B14_out_c0_exe12291;
    wire [0:0] bb_load_weight0_B14_out_c0_exe1280;
    wire [0:0] bb_load_weight0_B14_out_c0_exe13292;
    wire [31:0] bb_load_weight0_B14_out_c0_exe14293;
    wire [0:0] bb_load_weight0_B14_out_c0_exe15;
    wire [0:0] bb_load_weight0_B14_out_c0_exe16;
    wire [31:0] bb_load_weight0_B14_out_c0_exe17;
    wire [31:0] bb_load_weight0_B14_out_c0_exe18;
    wire [0:0] bb_load_weight0_B14_out_c0_exe19;
    wire [31:0] bb_load_weight0_B14_out_c0_exe20;
    wire [0:0] bb_load_weight0_B14_out_c0_exe21;
    wire [0:0] bb_load_weight0_B14_out_c0_exe22;
    wire [0:0] bb_load_weight0_B14_out_c0_exe3282;
    wire [31:0] bb_load_weight0_B14_out_c0_exe4283;
    wire [0:0] bb_load_weight0_B14_out_c0_exe5284;
    wire [31:0] bb_load_weight0_B14_out_c0_exe6285;
    wire [0:0] bb_load_weight0_B14_out_c0_exe7286;
    wire [31:0] bb_load_weight0_B14_out_c0_exe8287;
    wire [0:0] bb_load_weight0_B14_out_c0_exe9288;
    wire [0:0] bb_load_weight0_B14_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B14_out_exiting_valid_out;
    wire [0:0] bb_load_weight0_B14_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B14_out_stall_out_0;
    wire [0:0] bb_load_weight0_B14_out_stall_out_1;
    wire [0:0] bb_load_weight0_B14_out_valid_in_0;
    wire [0:0] bb_load_weight0_B14_out_valid_in_1;
    wire [0:0] bb_load_weight0_B14_out_valid_out_0;
    wire [0:0] bb_load_weight0_B15_out_c0_exe53504;
    wire [0:0] bb_load_weight0_B15_out_c0_exe63517;
    wire [0:0] bb_load_weight0_B15_out_stall_in_0;
    wire [0:0] bb_load_weight0_B15_out_stall_out_0;
    wire [0:0] bb_load_weight0_B15_out_valid_out_0;
    wire [0:0] bb_load_weight0_B16_out_c0_exe5350;
    wire [0:0] bb_load_weight0_B16_out_c0_exe6351;
    wire [0:0] bb_load_weight0_B16_out_c0_exe7352;
    wire [0:0] bb_load_weight0_B16_out_c0_exe8353;
    wire [0:0] bb_load_weight0_B16_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B16_out_exiting_valid_out;
    wire [1023:0] bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [31:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;
    wire [0:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;
    wire [127:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;
    wire [0:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;
    wire [0:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;
    wire [0:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;
    wire [1023:0] bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;
    wire [0:0] bb_load_weight0_B16_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B16_out_stall_in_0;
    wire [0:0] bb_load_weight0_B16_out_stall_out_0;
    wire [0:0] bb_load_weight0_B16_out_stall_out_1;
    wire [0:0] bb_load_weight0_B16_out_valid_in_0;
    wire [0:0] bb_load_weight0_B16_out_valid_in_1;
    wire [0:0] bb_load_weight0_B16_out_valid_out_0;
    wire [0:0] bb_load_weight0_B17_out_c0_exe53505;
    wire [0:0] bb_load_weight0_B17_out_c0_exe63518;
    wire [0:0] bb_load_weight0_B17_out_c0_exe735210;
    wire [0:0] bb_load_weight0_B17_out_stall_in_0;
    wire [0:0] bb_load_weight0_B17_out_stall_out_0;
    wire [0:0] bb_load_weight0_B17_out_valid_out_0;
    wire [0:0] bb_load_weight0_B18_out_stall_out_0;
    wire [0:0] bb_load_weight0_B18_out_valid_out_0;
    wire [0:0] bb_load_weight0_B19_out_stall_out_0;
    wire [0:0] bb_load_weight0_B19_out_valid_out_0;
    wire [0:0] bb_load_weight0_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_10_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_12_0;
    wire [0:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_13_0;
    wire [32:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_14_0;
    wire [32:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_15_0;
    wire [32:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_load_weight0_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoalmost_full;
    wire [0:0] bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoready;
    wire [0:0] bb_load_weight0_B1_start_out_stall_out_0;
    wire [0:0] bb_load_weight0_B1_start_out_stall_out_1;
    wire [0:0] bb_load_weight0_B1_start_out_valid_in_0;
    wire [0:0] bb_load_weight0_B1_start_out_valid_in_1;
    wire [0:0] bb_load_weight0_B1_start_out_valid_out_0;
    wire [0:0] bb_load_weight0_B2_out_feedback_out_1;
    wire [0:0] bb_load_weight0_B2_out_feedback_valid_out_1;
    wire [0:0] bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifodata;
    wire [0:0] bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifovalid;
    wire [0:0] bb_load_weight0_B2_out_stall_in_0;
    wire [0:0] bb_load_weight0_B2_out_stall_out_0;
    wire [0:0] bb_load_weight0_B2_out_valid_out_0;
    wire [31:0] bb_load_weight0_B20_out_intel_reserved_ffwd_22_0;
    wire [0:0] bb_load_weight0_B20_out_stall_in_0;
    wire [0:0] bb_load_weight0_B20_out_stall_out_0;
    wire [0:0] bb_load_weight0_B20_out_stall_out_1;
    wire [0:0] bb_load_weight0_B20_out_valid_out_0;
    wire [0:0] bb_load_weight0_B20_out_valid_out_1;
    wire [31:0] bb_load_weight0_B3_out_intel_reserved_ffwd_17_0;
    wire [0:0] bb_load_weight0_B3_out_intel_reserved_ffwd_18_0;
    wire [0:0] bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoalmost_full;
    wire [0:0] bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoready;
    wire [0:0] bb_load_weight0_B3_out_stall_out_0;
    wire [0:0] bb_load_weight0_B3_out_stall_out_1;
    wire [0:0] bb_load_weight0_B3_out_valid_in_0;
    wire [0:0] bb_load_weight0_B3_out_valid_in_1;
    wire [0:0] bb_load_weight0_B3_out_valid_out_0;
    wire [0:0] bb_load_weight0_B3_out_valid_out_1;
    wire [0:0] bb_load_weight0_B4_out_intel_reserved_ffwd_19_0;
    wire [0:0] bb_load_weight0_B4_out_intel_reserved_ffwd_20_0;
    wire [0:0] bb_load_weight0_B4_out_stall_out_0;
    wire [0:0] bb_load_weight0_B4_out_valid_out_0;
    wire [31:0] bb_load_weight0_B5_out_intel_reserved_ffwd_21_0;
    wire [0:0] bb_load_weight0_B5_out_stall_out_0;
    wire [0:0] bb_load_weight0_B5_out_valid_out_0;
    wire [31:0] bb_load_weight0_B6_out_c0_exe1;
    wire [0:0] bb_load_weight0_B6_out_c0_exe3;
    wire [31:0] bb_load_weight0_B6_out_c0_exe4;
    wire [0:0] bb_load_weight0_B6_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B6_out_exiting_valid_out;
    wire [0:0] bb_load_weight0_B6_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B6_out_stall_out_0;
    wire [0:0] bb_load_weight0_B6_out_stall_out_1;
    wire [0:0] bb_load_weight0_B6_out_valid_in_0;
    wire [0:0] bb_load_weight0_B6_out_valid_in_1;
    wire [0:0] bb_load_weight0_B6_out_valid_out_0;
    wire [0:0] bb_load_weight0_B7_out_stall_in_0;
    wire [0:0] bb_load_weight0_B7_out_stall_out_0;
    wire [0:0] bb_load_weight0_B7_out_valid_out_0;
    wire [0:0] bb_load_weight0_B8_out_c0_exe5;
    wire [0:0] bb_load_weight0_B8_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B8_out_exiting_valid_out;
    wire [31:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address;
    wire [0:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount;
    wire [15:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable;
    wire [0:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable;
    wire [0:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read;
    wire [0:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write;
    wire [127:0] bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata;
    wire [31:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_address;
    wire [0:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_burstcount;
    wire [127:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_byteenable;
    wire [0:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_enable;
    wire [0:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_read;
    wire [0:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_write;
    wire [1023:0] bb_load_weight0_B8_out_memdep_3_load_weight0_avm_writedata;
    wire [0:0] bb_load_weight0_B8_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B8_out_stall_in_0;
    wire [0:0] bb_load_weight0_B8_out_stall_out_0;
    wire [0:0] bb_load_weight0_B8_out_stall_out_1;
    wire [0:0] bb_load_weight0_B8_out_valid_in_0;
    wire [0:0] bb_load_weight0_B8_out_valid_in_1;
    wire [0:0] bb_load_weight0_B8_out_valid_out_0;
    wire [0:0] bb_load_weight0_B9_out_c0_exe1200;
    wire [31:0] bb_load_weight0_B9_out_c0_exe3202;
    wire [0:0] bb_load_weight0_B9_out_exiting_stall_out;
    wire [0:0] bb_load_weight0_B9_out_exiting_valid_out;
    wire [0:0] bb_load_weight0_B9_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B9_out_stall_out_0;
    wire [0:0] bb_load_weight0_B9_out_stall_out_1;
    wire [0:0] bb_load_weight0_B9_out_valid_in_0;
    wire [0:0] bb_load_weight0_B9_out_valid_in_1;
    wire [0:0] bb_load_weight0_B9_out_valid_out_0;
    wire [1:0] c_i2_0150_q;
    wire [31:0] c_i32_025_q;
    wire [31:0] c_i32_124_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_valid_out;
    wire [0:0] load_weight0_B1_start_x_i_capture;
    wire load_weight0_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_clear;
    wire load_weight0_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_enable;
    wire load_weight0_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_shift;
    wire load_weight0_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_stall_pred;
    wire load_weight0_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_stall_succ;
    wire load_weight0_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_valid_loop;
    wire load_weight0_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_valid_pred;
    wire load_weight0_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B1_start_x_i_valid_succ;
    wire load_weight0_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_capture;
    wire load_weight0_B10_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_clear;
    wire load_weight0_B10_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_enable;
    wire load_weight0_B10_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_shift;
    wire load_weight0_B10_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_stall_pred;
    wire load_weight0_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_stall_succ;
    wire load_weight0_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_valid_loop;
    wire load_weight0_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_valid_pred;
    wire load_weight0_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B10_x_i_valid_succ;
    wire load_weight0_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_capture;
    wire load_weight0_B12_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_clear;
    wire load_weight0_B12_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_enable;
    wire load_weight0_B12_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_shift;
    wire load_weight0_B12_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_stall_pred;
    wire load_weight0_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_stall_succ;
    wire load_weight0_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_valid_loop;
    wire load_weight0_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_valid_pred;
    wire load_weight0_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B12_x_i_valid_succ;
    wire load_weight0_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_capture;
    wire load_weight0_B14_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_clear;
    wire load_weight0_B14_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_enable;
    wire load_weight0_B14_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_shift;
    wire load_weight0_B14_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_stall_pred;
    wire load_weight0_B14_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_stall_succ;
    wire load_weight0_B14_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_valid_loop;
    wire load_weight0_B14_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_valid_pred;
    wire load_weight0_B14_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B14_x_i_valid_succ;
    wire load_weight0_B14_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_capture;
    wire load_weight0_B16_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_clear;
    wire load_weight0_B16_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_enable;
    wire load_weight0_B16_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_shift;
    wire load_weight0_B16_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_stall_pred;
    wire load_weight0_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_stall_succ;
    wire load_weight0_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_valid_loop;
    wire load_weight0_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_valid_pred;
    wire load_weight0_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B16_x_i_valid_succ;
    wire load_weight0_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_capture;
    wire load_weight0_B3_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_clear;
    wire load_weight0_B3_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_enable;
    wire load_weight0_B3_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_shift;
    wire load_weight0_B3_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_stall_pred;
    wire load_weight0_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_stall_succ;
    wire load_weight0_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_valid_loop;
    wire load_weight0_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_valid_pred;
    wire load_weight0_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B3_x_i_valid_succ;
    wire load_weight0_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_capture;
    wire load_weight0_B6_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_clear;
    wire load_weight0_B6_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_enable;
    wire load_weight0_B6_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_shift;
    wire load_weight0_B6_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_stall_pred;
    wire load_weight0_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_stall_succ;
    wire load_weight0_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_valid_loop;
    wire load_weight0_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_valid_pred;
    wire load_weight0_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B6_x_i_valid_succ;
    wire load_weight0_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_capture;
    wire load_weight0_B8_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_clear;
    wire load_weight0_B8_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_enable;
    wire load_weight0_B8_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_shift;
    wire load_weight0_B8_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_stall_pred;
    wire load_weight0_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_stall_succ;
    wire load_weight0_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_valid_loop;
    wire load_weight0_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_valid_pred;
    wire load_weight0_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B8_x_i_valid_succ;
    wire load_weight0_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_capture;
    wire load_weight0_B9_x_i_capture_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_clear;
    wire load_weight0_B9_x_i_clear_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_enable;
    wire load_weight0_B9_x_i_enable_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_shift;
    wire load_weight0_B9_x_i_shift_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_stall_pred;
    wire load_weight0_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_stall_succ;
    wire load_weight0_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_valid_loop;
    wire load_weight0_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_valid_pred;
    wire load_weight0_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_weight0_B9_x_i_valid_succ;
    wire load_weight0_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_load_weight00_out_o_stall;
    wire [0:0] loop_limiter_load_weight00_out_o_valid;
    wire [0:0] loop_limiter_load_weight01_out_o_stall;
    wire [0:0] loop_limiter_load_weight01_out_o_valid;
    wire [0:0] loop_limiter_load_weight02_out_o_stall;
    wire [0:0] loop_limiter_load_weight02_out_o_valid;
    wire [0:0] loop_limiter_load_weight03_out_o_stall;
    wire [0:0] loop_limiter_load_weight03_out_o_valid;
    wire [0:0] loop_limiter_load_weight04_out_o_stall;
    wire [0:0] loop_limiter_load_weight04_out_o_valid;
    wire [0:0] loop_limiter_load_weight05_out_o_stall;
    wire [0:0] loop_limiter_load_weight05_out_o_valid;
    wire [0:0] loop_limiter_load_weight06_out_o_stall;
    wire [0:0] loop_limiter_load_weight06_out_o_valid;
    wire [0:0] loop_limiter_load_weight07_out_o_stall;
    wire [0:0] loop_limiter_load_weight07_out_o_valid;


    // bb_load_weight0_B1_start_sr_0_aunroll_x(BLACKBOX,12)
    cnn_top_bb_load_weight0_B1_start_sr_0 thebb_load_weight0_B1_start_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B1_start_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B2_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B3_sr_0_aunroll_x(BLACKBOX,17)
    cnn_top_bb_load_weight0_B3_sr_0 thebb_load_weight0_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B3_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B20_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_weight0_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_0150(CONSTANT,129)
    assign c_i2_0150_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo(BLACKBOX,171)
    cnn_top_i_llvm_fpga_pipeline_keep_going80001_weight02_valid_fifo thei_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo(BLACKBOX,169)
    cnn_top_i_llvm_fpga_pipeline_keep_going80000_weight02_valid_fifo thei_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo(BLACKBOX,167)
    cnn_top_i_llvm_fpga_pipeline_keep_going70001_weight02_valid_fifo thei_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo(BLACKBOX,165)
    cnn_top_i_llvm_fpga_pipeline_keep_going70000_weight02_valid_fifo thei_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B14_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo(BLACKBOX,163)
    cnn_top_i_llvm_fpga_pipeline_keep_going60000_weight06_valid_fifo thei_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B19(BLACKBOX,35)
    cnn_top_bb_load_weight0_B19 thebb_load_weight0_B19 (
        .in_stall_in_0(bb_load_weight0_B20_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B19_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_load_weight0_B19_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B19_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B19_sr_0_aunroll_x(BLACKBOX,11)
    cnn_top_bb_load_weight0_B19_sr_0 thebb_load_weight0_B19_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B19_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B11_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B19_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B11(BLACKBOX,27)
    cnn_top_bb_load_weight0_B11 thebb_load_weight0_B11 (
        .in_c0_exe53502_0(bb_load_weight0_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_load_weight0_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_weight0_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_load_weight0_B11_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B11_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B11_sr_0_aunroll_x(BLACKBOX,3)
    cnn_top_bb_load_weight0_B11_sr_0 thebb_load_weight0_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_weight0_B13_out_c0_exe53503),
        .in_i_stall(bb_load_weight0_B11_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B13_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_weight0_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B13(BLACKBOX,29)
    cnn_top_bb_load_weight0_B13 thebb_load_weight0_B13 (
        .in_c0_exe53503_0(bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63516_0(bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_load_weight0_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_weight0_B13_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53503(bb_load_weight0_B13_out_c0_exe53503),
        .out_stall_in_0(bb_load_weight0_B13_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B13_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B13_sr_0_aunroll_x(BLACKBOX,5)
    cnn_top_bb_load_weight0_B13_sr_0 thebb_load_weight0_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_weight0_B15_out_c0_exe53504),
        .in_i_data_1_tpl(bb_load_weight0_B15_out_c0_exe63517),
        .in_i_stall(bb_load_weight0_B13_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B15_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_weight0_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B15(BLACKBOX,31)
    cnn_top_bb_load_weight0_B15 thebb_load_weight0_B15 (
        .in_c0_exe53504_0(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63517_0(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe73529_0(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_load_weight0_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_weight0_B15_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53504(bb_load_weight0_B15_out_c0_exe53504),
        .out_c0_exe63517(bb_load_weight0_B15_out_c0_exe63517),
        .out_stall_in_0(bb_load_weight0_B15_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B15_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B15_sr_0_aunroll_x(BLACKBOX,7)
    cnn_top_bb_load_weight0_B15_sr_0 thebb_load_weight0_B15_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_weight0_B17_out_c0_exe53505),
        .in_i_data_1_tpl(bb_load_weight0_B17_out_c0_exe63518),
        .in_i_data_2_tpl(bb_load_weight0_B17_out_c0_exe735210),
        .in_i_stall(bb_load_weight0_B15_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B17_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_weight0_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B15_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B17(BLACKBOX,33)
    cnn_top_bb_load_weight0_B17 thebb_load_weight0_B17 (
        .in_c0_exe53505_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63518_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe735210_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe835311_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_load_weight0_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53505(bb_load_weight0_B17_out_c0_exe53505),
        .out_c0_exe63518(bb_load_weight0_B17_out_c0_exe63518),
        .out_c0_exe735210(bb_load_weight0_B17_out_c0_exe735210),
        .out_stall_in_0(bb_load_weight0_B17_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B17_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B17_sr_0_aunroll_x(BLACKBOX,9)
    cnn_top_bb_load_weight0_B17_sr_0 thebb_load_weight0_B17_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_weight0_B16_out_c0_exe5350),
        .in_i_data_1_tpl(bb_load_weight0_B16_out_c0_exe6351),
        .in_i_data_2_tpl(bb_load_weight0_B16_out_c0_exe7352),
        .in_i_data_3_tpl(bb_load_weight0_B16_out_c0_exe8353),
        .in_i_stall(bb_load_weight0_B17_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B16_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_weight0_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_load_weight0_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B17_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_weight06_sr(BLACKBOX,162)
    cnn_top_i_llvm_fpga_pipeline_keep_going61_load_weight06_sr thei_llvm_fpga_pipeline_keep_going61_load_weight06_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B16(BLACKBOX,32)
    cnn_top_bb_load_weight0_B16 thebb_load_weight0_B16 (
        .in_add79103_pop43163_0(c_i32_025_q),
        .in_add79103_pop43163_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_add79144_0(c_i32_025_q),
        .in_add79144_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_forked58_0(GND_q),
        .in_forked58_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready),
        .in_li_075116_0(c_i32_025_q),
        .in_li_075116_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07591_pop22132_0(c_i32_025_q),
        .in_li_07591_pop22132_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_li_07592_pop33150_0(c_i32_025_q),
        .in_li_07592_pop33150_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_li_07593_pop38159_0(c_i32_025_q),
        .in_li_07593_pop38159_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack),
        .in_mul78122_0(c_i32_025_q),
        .in_mul78122_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_mul7897_pop35141_0(c_i32_025_q),
        .in_mul7897_pop35141_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul7898_pop40161_0(c_i32_025_q),
        .in_mul7898_pop40161_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_notcmp74158_0(GND_q),
        .in_notcmp74158_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp78105_pop44164_0(GND_q),
        .in_notcmp78105_pop44164_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_notcmp78147_0(GND_q),
        .in_notcmp78147_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp82100_pop36156_0(GND_q),
        .in_notcmp82100_pop36156_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp82101_pop41162_0(GND_q),
        .in_notcmp82101_pop41162_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp82127_0(GND_q),
        .in_notcmp82127_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going61_load_weight06_sr_out_o_stall),
        .in_pop23137_0(GND_q),
        .in_pop23137_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pop34153_0(GND_q),
        .in_pop34153_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_pop39160_0(GND_q),
        .in_pop39160_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_pop42157_0(GND_q),
        .in_pop42157_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_stall_in_0(bb_load_weight0_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_load_weight047_0(GND_q),
        .in_unnamed_load_weight047_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_load_weight048_0(GND_q),
        .in_unnamed_load_weight048_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going61_load_weight06_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe5350(bb_load_weight0_B16_out_c0_exe5350),
        .out_c0_exe6351(bb_load_weight0_B16_out_c0_exe6351),
        .out_c0_exe7352(bb_load_weight0_B16_out_c0_exe7352),
        .out_c0_exe8353(bb_load_weight0_B16_out_c0_exe8353),
        .out_exiting_stall_out(bb_load_weight0_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B16_out_exiting_valid_out),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata(bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata),
        .out_pipeline_valid_out(bb_load_weight0_B16_out_pipeline_valid_out),
        .out_stall_in_0(bb_load_weight0_B16_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B16_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B16_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B16_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B16_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B16_sr_1_aunroll_x(BLACKBOX,8)
    cnn_top_bb_load_weight0_B16_sr_1 thebb_load_weight0_B16_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_weight0_B14_out_c0_exe10289),
        .in_i_data_2_tpl(bb_load_weight0_B14_out_c0_exe11290),
        .in_i_data_3_tpl(bb_load_weight0_B14_out_c0_exe12291),
        .in_i_data_4_tpl(bb_load_weight0_B14_out_c0_exe13292),
        .in_i_data_5_tpl(bb_load_weight0_B14_out_c0_exe14293),
        .in_i_data_6_tpl(bb_load_weight0_B14_out_c0_exe15),
        .in_i_data_7_tpl(bb_load_weight0_B14_out_c0_exe16),
        .in_i_data_8_tpl(bb_load_weight0_B14_out_c0_exe17),
        .in_i_data_9_tpl(bb_load_weight0_B14_out_c0_exe18),
        .in_i_data_10_tpl(bb_load_weight0_B14_out_c0_exe19),
        .in_i_data_11_tpl(bb_load_weight0_B14_out_c0_exe20),
        .in_i_data_12_tpl(bb_load_weight0_B14_out_c0_exe21),
        .in_i_data_13_tpl(bb_load_weight0_B14_out_c0_exe22),
        .in_i_data_14_tpl(bb_load_weight0_B14_out_c0_exe1280),
        .in_i_data_15_tpl(bb_load_weight0_B14_out_c0_exe3282),
        .in_i_data_16_tpl(bb_load_weight0_B14_out_c0_exe4283),
        .in_i_data_17_tpl(bb_load_weight0_B14_out_c0_exe5284),
        .in_i_data_18_tpl(bb_load_weight0_B14_out_c0_exe6285),
        .in_i_data_19_tpl(bb_load_weight0_B14_out_c0_exe7286),
        .in_i_data_20_tpl(bb_load_weight0_B14_out_c0_exe8287),
        .in_i_data_21_tpl(bb_load_weight0_B14_out_c0_exe9288),
        .in_i_stall(bb_load_weight0_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight07_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_load_weight0_B16_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_stall(bb_load_weight0_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B16_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight07(BLACKBOX,216)
    cnn_top_loop_limiter_load_weight07 theloop_limiter_load_weight07 (
        .in_i_stall(bb_load_weight0_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B16_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B14_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight07_out_o_stall),
        .out_o_valid(loop_limiter_load_weight07_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_load_weight02_sr(BLACKBOX,164)
    cnn_top_i_llvm_fpga_pipeline_keep_going75_load_weight02_sr thei_llvm_fpga_pipeline_keep_going75_load_weight02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B14_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B14(BLACKBOX,30)
    cnn_top_bb_load_weight0_B14 thebb_load_weight0_B14 (
        .in_add79142_0(c_i32_025_q),
        .in_add79142_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_forked43_0(GND_q),
        .in_forked43_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_14_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_14_0),
        .in_li_075117_0(c_i32_025_q),
        .in_li_075117_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07591_pop22133_0(c_i32_025_q),
        .in_li_07591_pop22133_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_li_07592_pop33148_0(c_i32_025_q),
        .in_li_07592_pop33148_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_mul78123_0(c_i32_025_q),
        .in_mul78123_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_mul7897_pop35139_0(c_i32_025_q),
        .in_mul7897_pop35139_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp78145_0(GND_q),
        .in_notcmp78145_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_notcmp82100_pop36154_0(GND_q),
        .in_notcmp82100_pop36154_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp82128_0(GND_q),
        .in_notcmp82128_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going75_load_weight02_sr_out_o_stall),
        .in_pop23138_0(GND_q),
        .in_pop23138_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pop34151_0(GND_q),
        .in_pop34151_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_stall_in_0(loop_limiter_load_weight07_out_o_stall),
        .in_unnamed_load_weight044_0(GND_q),
        .in_unnamed_load_weight044_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_unnamed_load_weight045_0(GND_q),
        .in_unnamed_load_weight045_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going75_load_weight02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B14_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10289(bb_load_weight0_B14_out_c0_exe10289),
        .out_c0_exe11290(bb_load_weight0_B14_out_c0_exe11290),
        .out_c0_exe12291(bb_load_weight0_B14_out_c0_exe12291),
        .out_c0_exe1280(bb_load_weight0_B14_out_c0_exe1280),
        .out_c0_exe13292(bb_load_weight0_B14_out_c0_exe13292),
        .out_c0_exe14293(bb_load_weight0_B14_out_c0_exe14293),
        .out_c0_exe15(bb_load_weight0_B14_out_c0_exe15),
        .out_c0_exe16(bb_load_weight0_B14_out_c0_exe16),
        .out_c0_exe17(bb_load_weight0_B14_out_c0_exe17),
        .out_c0_exe18(bb_load_weight0_B14_out_c0_exe18),
        .out_c0_exe19(bb_load_weight0_B14_out_c0_exe19),
        .out_c0_exe20(bb_load_weight0_B14_out_c0_exe20),
        .out_c0_exe21(bb_load_weight0_B14_out_c0_exe21),
        .out_c0_exe22(bb_load_weight0_B14_out_c0_exe22),
        .out_c0_exe3282(bb_load_weight0_B14_out_c0_exe3282),
        .out_c0_exe4283(bb_load_weight0_B14_out_c0_exe4283),
        .out_c0_exe5284(bb_load_weight0_B14_out_c0_exe5284),
        .out_c0_exe6285(bb_load_weight0_B14_out_c0_exe6285),
        .out_c0_exe7286(bb_load_weight0_B14_out_c0_exe7286),
        .out_c0_exe8287(bb_load_weight0_B14_out_c0_exe8287),
        .out_c0_exe9288(bb_load_weight0_B14_out_c0_exe9288),
        .out_exiting_stall_out(bb_load_weight0_B14_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B14_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_weight0_B14_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_weight0_B14_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B14_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B14_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B14_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B14_sr_1_aunroll_x(BLACKBOX,6)
    cnn_top_bb_load_weight0_B14_sr_1 thebb_load_weight0_B14_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_weight0_B12_out_c0_exe9),
        .in_i_data_2_tpl(bb_load_weight0_B12_out_c0_exe10),
        .in_i_data_3_tpl(bb_load_weight0_B12_out_c0_exe11),
        .in_i_data_4_tpl(bb_load_weight0_B12_out_c0_exe12),
        .in_i_data_5_tpl(bb_load_weight0_B12_out_c0_exe13),
        .in_i_data_6_tpl(bb_load_weight0_B12_out_c0_exe14),
        .in_i_data_7_tpl(bb_load_weight0_B12_out_c0_exe1242),
        .in_i_data_8_tpl(bb_load_weight0_B12_out_c0_exe2243),
        .in_i_data_9_tpl(bb_load_weight0_B12_out_c0_exe3244),
        .in_i_data_10_tpl(bb_load_weight0_B12_out_c0_exe5246),
        .in_i_data_11_tpl(bb_load_weight0_B12_out_c0_exe6247),
        .in_i_data_12_tpl(bb_load_weight0_B12_out_c0_exe7248),
        .in_i_data_13_tpl(bb_load_weight0_B12_out_c0_exe8),
        .in_i_stall(bb_load_weight0_B14_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight06_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_load_weight0_B14_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_stall(bb_load_weight0_B14_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B14_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight06(BLACKBOX,215)
    cnn_top_loop_limiter_load_weight06 theloop_limiter_load_weight06 (
        .in_i_stall(bb_load_weight0_B14_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B14_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B12_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B14_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight06_out_o_stall),
        .out_o_valid(loop_limiter_load_weight06_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going79_load_weight02_sr(BLACKBOX,166)
    cnn_top_i_llvm_fpga_pipeline_keep_going79_load_weight02_sr thei_llvm_fpga_pipeline_keep_going79_load_weight02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B12(BLACKBOX,28)
    cnn_top_bb_load_weight0_B12 thebb_load_weight0_B12 (
        .in_forked45_0(GND_q),
        .in_forked45_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_10_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_15_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(bb_load_weight0_B4_out_intel_reserved_ffwd_19_0),
        .in_li_075118_0(c_i32_025_q),
        .in_li_075118_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07591_pop22129_0(c_i32_025_q),
        .in_li_07591_pop22129_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mul78119_0(c_i32_025_q),
        .in_mul78119_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_notcmp82124_0(GND_q),
        .in_notcmp82124_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going79_load_weight02_sr_out_o_stall),
        .in_pop23134_0(GND_q),
        .in_pop23134_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_load_weight06_out_o_stall),
        .in_unnamed_load_weight040_0(GND_q),
        .in_unnamed_load_weight040_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going79_load_weight02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_load_weight0_B12_out_c0_exe10),
        .out_c0_exe11(bb_load_weight0_B12_out_c0_exe11),
        .out_c0_exe12(bb_load_weight0_B12_out_c0_exe12),
        .out_c0_exe1242(bb_load_weight0_B12_out_c0_exe1242),
        .out_c0_exe13(bb_load_weight0_B12_out_c0_exe13),
        .out_c0_exe14(bb_load_weight0_B12_out_c0_exe14),
        .out_c0_exe2243(bb_load_weight0_B12_out_c0_exe2243),
        .out_c0_exe3244(bb_load_weight0_B12_out_c0_exe3244),
        .out_c0_exe5246(bb_load_weight0_B12_out_c0_exe5246),
        .out_c0_exe6247(bb_load_weight0_B12_out_c0_exe6247),
        .out_c0_exe7248(bb_load_weight0_B12_out_c0_exe7248),
        .out_c0_exe8(bb_load_weight0_B12_out_c0_exe8),
        .out_c0_exe9(bb_load_weight0_B12_out_c0_exe9),
        .out_exiting_stall_out(bb_load_weight0_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_weight0_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_weight0_B12_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B12_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B12_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B12_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B12_sr_1_aunroll_x(BLACKBOX,4)
    cnn_top_bb_load_weight0_B12_sr_1 thebb_load_weight0_B12_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_weight0_B10_out_c0_exe6223),
        .in_i_data_2_tpl(bb_load_weight0_B10_out_c0_exe7224),
        .in_i_data_3_tpl(bb_load_weight0_B10_out_c0_exe1218),
        .in_i_data_4_tpl(bb_load_weight0_B10_out_c0_exe3220),
        .in_i_data_5_tpl(bb_load_weight0_B10_out_c0_exe4221),
        .in_i_data_6_tpl(bb_load_weight0_B10_out_c0_exe5222),
        .in_i_stall(bb_load_weight0_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight05_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_weight0_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_load_weight0_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B12_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight05(BLACKBOX,214)
    cnn_top_loop_limiter_load_weight05 theloop_limiter_load_weight05 (
        .in_i_stall(bb_load_weight0_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B12_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B10_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight05_out_o_stall),
        .out_o_valid(loop_limiter_load_weight05_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_load_weight02_sr(BLACKBOX,168)
    cnn_top_i_llvm_fpga_pipeline_keep_going83_load_weight02_sr thei_llvm_fpga_pipeline_keep_going83_load_weight02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_025(CONSTANT,136)
    assign c_i32_025_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_load_weight0_B10(BLACKBOX,26)
    cnn_top_bb_load_weight0_B10 thebb_load_weight0_B10 (
        .in_forked44_0(GND_q),
        .in_forked44_1(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_15_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(bb_load_weight0_B4_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_4_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_4_0),
        .in_li_075112_0(c_i32_025_q),
        .in_li_075112_1(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going83_load_weight02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_weight05_out_o_stall),
        .in_unnamed_load_weight037_0(GND_q),
        .in_unnamed_load_weight037_1(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going83_load_weight02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1218(bb_load_weight0_B10_out_c0_exe1218),
        .out_c0_exe3220(bb_load_weight0_B10_out_c0_exe3220),
        .out_c0_exe4221(bb_load_weight0_B10_out_c0_exe4221),
        .out_c0_exe5222(bb_load_weight0_B10_out_c0_exe5222),
        .out_c0_exe6223(bb_load_weight0_B10_out_c0_exe6223),
        .out_c0_exe7224(bb_load_weight0_B10_out_c0_exe7224),
        .out_exiting_stall_out(bb_load_weight0_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_weight0_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_weight0_B10_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B10_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B10_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B10_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B10_sr_1_aunroll_x(BLACKBOX,2)
    cnn_top_bb_load_weight0_B10_sr_1 thebb_load_weight0_B10_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_weight0_B9_out_c0_exe3202),
        .in_i_data_2_tpl(bb_load_weight0_B9_out_c0_exe1200),
        .in_i_stall(bb_load_weight0_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight03_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_weight0_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B10_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight03(BLACKBOX,212)
    cnn_top_loop_limiter_load_weight03 theloop_limiter_load_weight03 (
        .in_i_stall(bb_load_weight0_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B10_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B9_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight03_out_o_stall),
        .out_o_valid(loop_limiter_load_weight03_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going87_load_weight02_sr(BLACKBOX,170)
    cnn_top_i_llvm_fpga_pipeline_keep_going87_load_weight02_sr thei_llvm_fpga_pipeline_keep_going87_load_weight02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_124(CONSTANT,137)
    assign c_i32_124_q = $unsigned(32'b00000000000000000000000000000001);

    // bb_load_weight0_B9(BLACKBOX,45)
    cnn_top_bb_load_weight0_B9 thebb_load_weight0_B9 (
        .in_forked90_0(GND_q),
        .in_forked90_1(bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_20_0(bb_load_weight0_B4_out_intel_reserved_ffwd_20_0),
        .in_li_075_0(c_i32_124_q),
        .in_li_075_1(bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going87_load_weight02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_weight03_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going87_load_weight02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1200(bb_load_weight0_B9_out_c0_exe1200),
        .out_c0_exe3202(bb_load_weight0_B9_out_c0_exe3202),
        .out_exiting_stall_out(bb_load_weight0_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_weight0_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_weight0_B9_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B9_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B9_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B9_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B9_sr_1_aunroll_x(BLACKBOX,24)
    cnn_top_bb_load_weight0_B9_sr_1 thebb_load_weight0_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_025_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_load_weight0_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight01_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_weight0_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight01(BLACKBOX,210)
    cnn_top_loop_limiter_load_weight01 theloop_limiter_load_weight01 (
        .in_i_stall(bb_load_weight0_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B9_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B4_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight01_out_o_stall),
        .out_o_valid(loop_limiter_load_weight01_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B4(BLACKBOX,40)
    cnn_top_bb_load_weight0_B4 thebb_load_weight0_B4 (
        .in_intel_reserved_ffwd_18_0(bb_load_weight0_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_9_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_load_weight01_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B4_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_19_0(bb_load_weight0_B4_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_load_weight0_B4_out_intel_reserved_ffwd_20_0),
        .out_stall_out_0(bb_load_weight0_B4_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B4_sr_0_aunroll_x(BLACKBOX,19)
    cnn_top_bb_load_weight0_B4_sr_0 thebb_load_weight0_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B4_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B3_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo(BLACKBOX,161)
    cnn_top_i_llvm_fpga_pipeline_keep_going50000_weight02_valid_fifo thei_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo(BLACKBOX,173)
    cnn_top_i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo thei_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo (
        .in_data_in(c_i2_0150_q),
        .in_stall_in(bb_load_weight0_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B18(BLACKBOX,34)
    cnn_top_bb_load_weight0_B18 thebb_load_weight0_B18 (
        .in_stall_in_0(bb_load_weight0_B20_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B18_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_load_weight0_B18_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B18_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B18_sr_0_aunroll_x(BLACKBOX,10)
    cnn_top_bb_load_weight0_B18_sr_0 thebb_load_weight0_B18_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B18_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B7_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B18_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B7(BLACKBOX,43)
    cnn_top_bb_load_weight0_B7 thebb_load_weight0_B7 (
        .in_c0_exe51_0(bb_load_weight0_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_load_weight0_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_weight0_B7_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_load_weight0_B7_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B7_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B7_sr_0_aunroll_x(BLACKBOX,22)
    cnn_top_bb_load_weight0_B7_sr_0 thebb_load_weight0_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_weight0_B8_out_c0_exe5),
        .in_i_stall(bb_load_weight0_B7_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B8_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_weight0_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_load_weight06_sr(BLACKBOX,172)
    cnn_top_i_llvm_fpga_pipeline_keep_going_load_weight06_sr thei_llvm_fpga_pipeline_keep_going_load_weight06_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B8(BLACKBOX,44)
    cnn_top_bb_load_weight0_B8 thebb_load_weight0_B8 (
        .in_flush(in_start),
        .in_forked46_0(GND_q),
        .in_forked46_1(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_16_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_16_0),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdata(in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdatavalid(in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_waitrequest(in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writeack(in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writeack),
        .in_memdep_3_load_weight0_avm_readdata(in_memdep_3_load_weight0_avm_readdata),
        .in_memdep_3_load_weight0_avm_readdatavalid(in_memdep_3_load_weight0_avm_readdatavalid),
        .in_memdep_3_load_weight0_avm_waitrequest(in_memdep_3_load_weight0_avm_waitrequest),
        .in_memdep_3_load_weight0_avm_writeack(in_memdep_3_load_weight0_avm_writeack),
        .in_notcmp53109_0(GND_q),
        .in_notcmp53109_1(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_load_weight06_sr_out_o_stall),
        .in_stall_in_0(bb_load_weight0_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_tii_081_pop18110_0(c_i32_025_q),
        .in_tii_081_pop18110_1(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_load_weight06_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B8_sr_1_aunroll_x_out_o_valid),
        .in_weight_offset_180_replace_phi108_0(c_i32_025_q),
        .in_weight_offset_180_replace_phi108_1(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_c0_exe5(bb_load_weight0_B8_out_c0_exe5),
        .out_exiting_stall_out(bb_load_weight0_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B8_out_exiting_valid_out),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata(bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata),
        .out_memdep_3_load_weight0_avm_address(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_address),
        .out_memdep_3_load_weight0_avm_burstcount(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_burstcount),
        .out_memdep_3_load_weight0_avm_byteenable(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_byteenable),
        .out_memdep_3_load_weight0_avm_enable(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_enable),
        .out_memdep_3_load_weight0_avm_read(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_read),
        .out_memdep_3_load_weight0_avm_write(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_write),
        .out_memdep_3_load_weight0_avm_writedata(bb_load_weight0_B8_out_memdep_3_load_weight0_avm_writedata),
        .out_pipeline_valid_out(bb_load_weight0_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_load_weight0_B8_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B8_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B8_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B8_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B8_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B8_sr_1_aunroll_x(BLACKBOX,23)
    cnn_top_bb_load_weight0_B8_sr_1 thebb_load_weight0_B8_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_weight0_B6_out_c0_exe1),
        .in_i_data_2_tpl(bb_load_weight0_B6_out_c0_exe3),
        .in_i_data_3_tpl(bb_load_weight0_B6_out_c0_exe4),
        .in_i_stall(bb_load_weight0_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight04_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_weight0_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_load_weight0_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B8_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight04(BLACKBOX,213)
    cnn_top_loop_limiter_load_weight04 theloop_limiter_load_weight04 (
        .in_i_stall(bb_load_weight0_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B8_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B6_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight04_out_o_stall),
        .out_o_valid(loop_limiter_load_weight04_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_load_weight02_sr(BLACKBOX,160)
    cnn_top_i_llvm_fpga_pipeline_keep_going54_load_weight02_sr thei_llvm_fpga_pipeline_keep_going54_load_weight02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_weight0_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B6(BLACKBOX,42)
    cnn_top_bb_load_weight0_B6 thebb_load_weight0_B6 (
        .in_forked50_0(GND_q),
        .in_forked50_1(bb_load_weight0_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_21_0(bb_load_weight0_B5_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_6_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_6_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going54_load_weight02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_weight04_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going54_load_weight02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_weight0_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_load_weight0_B6_out_c0_exe1),
        .out_c0_exe3(bb_load_weight0_B6_out_c0_exe3),
        .out_c0_exe4(bb_load_weight0_B6_out_c0_exe4),
        .out_exiting_stall_out(bb_load_weight0_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_weight0_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_weight0_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_weight0_B6_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B6_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B6_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B6_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B6_sr_1_aunroll_x(BLACKBOX,21)
    cnn_top_bb_load_weight0_B6_sr_1 thebb_load_weight0_B6_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_load_weight0_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight02_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_weight0_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B6_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight02(BLACKBOX,211)
    cnn_top_loop_limiter_load_weight02 theloop_limiter_load_weight02 (
        .in_i_stall(bb_load_weight0_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B6_out_exiting_stall_out),
        .in_i_valid(bb_load_weight0_B5_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_weight02_out_o_stall),
        .out_o_valid(loop_limiter_load_weight02_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B5(BLACKBOX,41)
    cnn_top_bb_load_weight0_B5 thebb_load_weight0_B5 (
        .in_intel_reserved_ffwd_11_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_17_0(bb_load_weight0_B3_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_1_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_5_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_7_0),
        .in_stall_in_0(loop_limiter_load_weight02_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B5_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_21_0(bb_load_weight0_B5_out_intel_reserved_ffwd_21_0),
        .out_stall_out_0(bb_load_weight0_B5_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B5_sr_0_aunroll_x(BLACKBOX,20)
    cnn_top_bb_load_weight0_B5_sr_0 thebb_load_weight0_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B5_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B3_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B3(BLACKBOX,39)
    cnn_top_bb_load_weight0_B3 thebb_load_weight0_B3 (
        .in_forked_0(bb_load_weight0_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_forked_1(bb_load_weight0_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_13_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_22_0(bb_load_weight0_B20_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_2_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_8_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_8_0),
        .in_iord_bl_weight_ctrl0_i_fifodata(in_iord_bl_weight_ctrl0_i_fifodata),
        .in_iord_bl_weight_ctrl0_i_fifovalid(in_iord_bl_weight_ctrl0_i_fifovalid),
        .in_stall_in_0(bb_load_weight0_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_load_weight0_B4_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_weight0_B3_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_17_0(bb_load_weight0_B3_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_load_weight0_B3_out_intel_reserved_ffwd_18_0),
        .out_iord_bl_weight_ctrl0_o_fifoalmost_full(bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoalmost_full),
        .out_iord_bl_weight_ctrl0_o_fifoready(bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoready),
        .out_stall_out_0(bb_load_weight0_B3_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B3_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B3_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B3_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B3_out_valid_out_0),
        .out_valid_out_1(bb_load_weight0_B3_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B20_sr_1_aunroll_x(BLACKBOX,15)
    cnn_top_bb_load_weight0_B20_sr_1 thebb_load_weight0_B20_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_data_1_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B20_out_stall_out_1),
        .in_i_valid(bb_load_weight0_B18_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_weight0_B20_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B20_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B20_sr_0_aunroll_x(BLACKBOX,14)
    cnn_top_bb_load_weight0_B20_sr_0 thebb_load_weight0_B20_sr_0_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_load_weight0_B20_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B19_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_weight0_B20_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B20_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B20(BLACKBOX,38)
    cnn_top_bb_load_weight0_B20 thebb_load_weight0_B20 (
        .in_cmp82_phi_decision28_replace_phi_dir_0(bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_cmp82_phi_decision28_replace_phi_dir_1(bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_17_0(bb_load_weight0_B3_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_load_weight0_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_8_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_8_0),
        .in_phi_decision34_replace_phi_dir_0(bb_load_weight0_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_phi_decision34_replace_phi_dir_1(bb_load_weight0_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_load_weight0_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_load_weight0_B2_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B20_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_weight0_B20_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_22_0(bb_load_weight0_B20_out_intel_reserved_ffwd_22_0),
        .out_stall_in_0(bb_load_weight0_B20_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B20_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B20_out_stall_out_1),
        .out_valid_out_0(bb_load_weight0_B20_out_valid_out_0),
        .out_valid_out_1(bb_load_weight0_B20_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B2_sr_0_aunroll_x(BLACKBOX,16)
    cnn_top_bb_load_weight0_B2_sr_0 thebb_load_weight0_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B2_out_stall_out_0),
        .in_i_valid(bb_load_weight0_B20_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B3_sr_1_aunroll_x(BLACKBOX,18)
    cnn_top_bb_load_weight0_B3_sr_1 thebb_load_weight0_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_load_weight0_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_load_weight00_out_o_valid),
        .out_o_data_0_tpl(bb_load_weight0_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_weight0_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_weight00(BLACKBOX,209)
    cnn_top_loop_limiter_load_weight00 theloop_limiter_load_weight00 (
        .in_i_stall(bb_load_weight0_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_weight0_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_load_weight0_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_load_weight0_B20_out_valid_out_1),
        .out_o_stall(loop_limiter_load_weight00_out_o_stall),
        .out_o_valid(loop_limiter_load_weight00_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B1_start(BLACKBOX,36)
    cnn_top_bb_load_weight0_B1_start thebb_load_weight0_B1_start (
        .in_feedback_in_1(bb_load_weight0_B2_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_load_weight0_B2_out_feedback_valid_out_1),
        .in_iord_bl_call_load_weight0_i_fifodata(in_iord_bl_call_load_weight0_i_fifodata),
        .in_iord_bl_call_load_weight0_i_fifovalid(in_iord_bl_call_load_weight0_i_fifovalid),
        .in_stall_in_0(loop_limiter_load_weight00_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_feedback_stall_out_1(bb_load_weight0_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_1_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_load_weight0_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_load_weight0_o_fifoalmost_full(bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoalmost_full),
        .out_iord_bl_call_load_weight0_o_fifoready(bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoready),
        .out_stall_out_0(bb_load_weight0_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_load_weight0_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_load_weight0_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_load_weight0_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_load_weight0_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B2(BLACKBOX,37)
    cnn_top_bb_load_weight0_B2 thebb_load_weight0_B2 (
        .in_feedback_stall_in_1(bb_load_weight0_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_load_weight0_i_fifoready(in_iowr_bl_return_load_weight0_i_fifoready),
        .in_stall_in_0(bb_load_weight0_B1_start_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_weight0_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_load_weight0_B2_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_load_weight0_B2_out_feedback_valid_out_1),
        .out_iowr_bl_return_load_weight0_o_fifodata(bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifodata),
        .out_iowr_bl_return_load_weight0_o_fifovalid(bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifovalid),
        .out_stall_in_0(bb_load_weight0_B2_out_stall_in_0),
        .out_stall_out_0(bb_load_weight0_B2_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B0_runOnce(BLACKBOX,25)
    cnn_top_bb_load_weight0_B0_runOnce thebb_load_weight0_B0_runOnce (
        .in_stall_in_0(bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_load_weight0_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_load_weight0_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B1_start_sr_1_aunroll_x(BLACKBOX,13)
    cnn_top_bb_load_weight0_B1_start_sr_1 thebb_load_weight0_B1_start_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_weight0_B1_start_out_stall_out_1),
        .in_i_valid(bb_load_weight0_B0_runOnce_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // load_weight0_B1_start_x(EXTIFACE,200)
    assign load_weight0_B1_start_x_i_capture = GND_q;
    assign load_weight0_B1_start_x_i_clear = GND_q;
    assign load_weight0_B1_start_x_i_enable = VCC_q;
    assign load_weight0_B1_start_x_i_shift = GND_q;
    assign load_weight0_B1_start_x_i_stall_pred = bb_load_weight0_B1_start_sr_1_aunroll_x_out_o_stall;
    assign load_weight0_B1_start_x_i_stall_succ = bb_load_weight0_B2_out_stall_in_0;
    assign load_weight0_B1_start_x_i_valid_loop = bb_load_weight0_B1_start_out_valid_in_0;
    assign load_weight0_B1_start_x_i_valid_pred = bb_load_weight0_B1_start_out_valid_in_1;
    assign load_weight0_B1_start_x_i_valid_succ = bb_load_weight0_B2_out_valid_out_0;
    assign load_weight0_B1_start_x_i_capture_bitsignaltemp = load_weight0_B1_start_x_i_capture[0];
    assign load_weight0_B1_start_x_i_clear_bitsignaltemp = load_weight0_B1_start_x_i_clear[0];
    assign load_weight0_B1_start_x_i_enable_bitsignaltemp = load_weight0_B1_start_x_i_enable[0];
    assign load_weight0_B1_start_x_i_shift_bitsignaltemp = load_weight0_B1_start_x_i_shift[0];
    assign load_weight0_B1_start_x_i_stall_pred_bitsignaltemp = load_weight0_B1_start_x_i_stall_pred[0];
    assign load_weight0_B1_start_x_i_stall_succ_bitsignaltemp = load_weight0_B1_start_x_i_stall_succ[0];
    assign load_weight0_B1_start_x_i_valid_loop_bitsignaltemp = load_weight0_B1_start_x_i_valid_loop[0];
    assign load_weight0_B1_start_x_i_valid_pred_bitsignaltemp = load_weight0_B1_start_x_i_valid_pred[0];
    assign load_weight0_B1_start_x_i_valid_succ_bitsignaltemp = load_weight0_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B1.start")
    ) theload_weight0_B1_start_x (
        .i_capture(load_weight0_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B10_x(EXTIFACE,201)
    assign load_weight0_B10_x_i_capture = GND_q;
    assign load_weight0_B10_x_i_clear = GND_q;
    assign load_weight0_B10_x_i_enable = VCC_q;
    assign load_weight0_B10_x_i_shift = GND_q;
    assign load_weight0_B10_x_i_stall_pred = loop_limiter_load_weight03_out_o_stall;
    assign load_weight0_B10_x_i_stall_succ = bb_load_weight0_B13_out_stall_in_0;
    assign load_weight0_B10_x_i_valid_loop = bb_load_weight0_B10_out_valid_in_0;
    assign load_weight0_B10_x_i_valid_pred = bb_load_weight0_B10_out_valid_in_1;
    assign load_weight0_B10_x_i_valid_succ = bb_load_weight0_B13_out_valid_out_0;
    assign load_weight0_B10_x_i_capture_bitsignaltemp = load_weight0_B10_x_i_capture[0];
    assign load_weight0_B10_x_i_clear_bitsignaltemp = load_weight0_B10_x_i_clear[0];
    assign load_weight0_B10_x_i_enable_bitsignaltemp = load_weight0_B10_x_i_enable[0];
    assign load_weight0_B10_x_i_shift_bitsignaltemp = load_weight0_B10_x_i_shift[0];
    assign load_weight0_B10_x_i_stall_pred_bitsignaltemp = load_weight0_B10_x_i_stall_pred[0];
    assign load_weight0_B10_x_i_stall_succ_bitsignaltemp = load_weight0_B10_x_i_stall_succ[0];
    assign load_weight0_B10_x_i_valid_loop_bitsignaltemp = load_weight0_B10_x_i_valid_loop[0];
    assign load_weight0_B10_x_i_valid_pred_bitsignaltemp = load_weight0_B10_x_i_valid_pred[0];
    assign load_weight0_B10_x_i_valid_succ_bitsignaltemp = load_weight0_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B10")
    ) theload_weight0_B10_x (
        .i_capture(load_weight0_B10_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B10_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B10_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B12_x(EXTIFACE,202)
    assign load_weight0_B12_x_i_capture = GND_q;
    assign load_weight0_B12_x_i_clear = GND_q;
    assign load_weight0_B12_x_i_enable = VCC_q;
    assign load_weight0_B12_x_i_shift = GND_q;
    assign load_weight0_B12_x_i_stall_pred = loop_limiter_load_weight05_out_o_stall;
    assign load_weight0_B12_x_i_stall_succ = bb_load_weight0_B15_out_stall_in_0;
    assign load_weight0_B12_x_i_valid_loop = bb_load_weight0_B12_out_valid_in_0;
    assign load_weight0_B12_x_i_valid_pred = bb_load_weight0_B12_out_valid_in_1;
    assign load_weight0_B12_x_i_valid_succ = bb_load_weight0_B15_out_valid_out_0;
    assign load_weight0_B12_x_i_capture_bitsignaltemp = load_weight0_B12_x_i_capture[0];
    assign load_weight0_B12_x_i_clear_bitsignaltemp = load_weight0_B12_x_i_clear[0];
    assign load_weight0_B12_x_i_enable_bitsignaltemp = load_weight0_B12_x_i_enable[0];
    assign load_weight0_B12_x_i_shift_bitsignaltemp = load_weight0_B12_x_i_shift[0];
    assign load_weight0_B12_x_i_stall_pred_bitsignaltemp = load_weight0_B12_x_i_stall_pred[0];
    assign load_weight0_B12_x_i_stall_succ_bitsignaltemp = load_weight0_B12_x_i_stall_succ[0];
    assign load_weight0_B12_x_i_valid_loop_bitsignaltemp = load_weight0_B12_x_i_valid_loop[0];
    assign load_weight0_B12_x_i_valid_pred_bitsignaltemp = load_weight0_B12_x_i_valid_pred[0];
    assign load_weight0_B12_x_i_valid_succ_bitsignaltemp = load_weight0_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B12")
    ) theload_weight0_B12_x (
        .i_capture(load_weight0_B12_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B12_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B12_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B14_x(EXTIFACE,203)
    assign load_weight0_B14_x_i_capture = GND_q;
    assign load_weight0_B14_x_i_clear = GND_q;
    assign load_weight0_B14_x_i_enable = VCC_q;
    assign load_weight0_B14_x_i_shift = GND_q;
    assign load_weight0_B14_x_i_stall_pred = loop_limiter_load_weight06_out_o_stall;
    assign load_weight0_B14_x_i_stall_succ = bb_load_weight0_B17_out_stall_in_0;
    assign load_weight0_B14_x_i_valid_loop = bb_load_weight0_B14_out_valid_in_0;
    assign load_weight0_B14_x_i_valid_pred = bb_load_weight0_B14_out_valid_in_1;
    assign load_weight0_B14_x_i_valid_succ = bb_load_weight0_B17_out_valid_out_0;
    assign load_weight0_B14_x_i_capture_bitsignaltemp = load_weight0_B14_x_i_capture[0];
    assign load_weight0_B14_x_i_clear_bitsignaltemp = load_weight0_B14_x_i_clear[0];
    assign load_weight0_B14_x_i_enable_bitsignaltemp = load_weight0_B14_x_i_enable[0];
    assign load_weight0_B14_x_i_shift_bitsignaltemp = load_weight0_B14_x_i_shift[0];
    assign load_weight0_B14_x_i_stall_pred_bitsignaltemp = load_weight0_B14_x_i_stall_pred[0];
    assign load_weight0_B14_x_i_stall_succ_bitsignaltemp = load_weight0_B14_x_i_stall_succ[0];
    assign load_weight0_B14_x_i_valid_loop_bitsignaltemp = load_weight0_B14_x_i_valid_loop[0];
    assign load_weight0_B14_x_i_valid_pred_bitsignaltemp = load_weight0_B14_x_i_valid_pred[0];
    assign load_weight0_B14_x_i_valid_succ_bitsignaltemp = load_weight0_B14_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B14")
    ) theload_weight0_B14_x (
        .i_capture(load_weight0_B14_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B14_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B14_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B14_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B14_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B14_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B14_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B14_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B14_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B16_x(EXTIFACE,204)
    assign load_weight0_B16_x_i_capture = GND_q;
    assign load_weight0_B16_x_i_clear = GND_q;
    assign load_weight0_B16_x_i_enable = VCC_q;
    assign load_weight0_B16_x_i_shift = GND_q;
    assign load_weight0_B16_x_i_stall_pred = loop_limiter_load_weight07_out_o_stall;
    assign load_weight0_B16_x_i_stall_succ = bb_load_weight0_B16_out_stall_in_0;
    assign load_weight0_B16_x_i_valid_loop = bb_load_weight0_B16_out_valid_in_0;
    assign load_weight0_B16_x_i_valid_pred = bb_load_weight0_B16_out_valid_in_1;
    assign load_weight0_B16_x_i_valid_succ = bb_load_weight0_B16_out_valid_out_0;
    assign load_weight0_B16_x_i_capture_bitsignaltemp = load_weight0_B16_x_i_capture[0];
    assign load_weight0_B16_x_i_clear_bitsignaltemp = load_weight0_B16_x_i_clear[0];
    assign load_weight0_B16_x_i_enable_bitsignaltemp = load_weight0_B16_x_i_enable[0];
    assign load_weight0_B16_x_i_shift_bitsignaltemp = load_weight0_B16_x_i_shift[0];
    assign load_weight0_B16_x_i_stall_pred_bitsignaltemp = load_weight0_B16_x_i_stall_pred[0];
    assign load_weight0_B16_x_i_stall_succ_bitsignaltemp = load_weight0_B16_x_i_stall_succ[0];
    assign load_weight0_B16_x_i_valid_loop_bitsignaltemp = load_weight0_B16_x_i_valid_loop[0];
    assign load_weight0_B16_x_i_valid_pred_bitsignaltemp = load_weight0_B16_x_i_valid_pred[0];
    assign load_weight0_B16_x_i_valid_succ_bitsignaltemp = load_weight0_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B16")
    ) theload_weight0_B16_x (
        .i_capture(load_weight0_B16_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B16_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B16_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B3_x(EXTIFACE,205)
    assign load_weight0_B3_x_i_capture = GND_q;
    assign load_weight0_B3_x_i_clear = GND_q;
    assign load_weight0_B3_x_i_enable = VCC_q;
    assign load_weight0_B3_x_i_shift = GND_q;
    assign load_weight0_B3_x_i_stall_pred = loop_limiter_load_weight00_out_o_stall;
    assign load_weight0_B3_x_i_stall_succ = bb_load_weight0_B20_out_stall_in_0;
    assign load_weight0_B3_x_i_valid_loop = bb_load_weight0_B3_out_valid_in_0;
    assign load_weight0_B3_x_i_valid_pred = bb_load_weight0_B3_out_valid_in_1;
    assign load_weight0_B3_x_i_valid_succ = bb_load_weight0_B20_out_valid_out_0;
    assign load_weight0_B3_x_i_capture_bitsignaltemp = load_weight0_B3_x_i_capture[0];
    assign load_weight0_B3_x_i_clear_bitsignaltemp = load_weight0_B3_x_i_clear[0];
    assign load_weight0_B3_x_i_enable_bitsignaltemp = load_weight0_B3_x_i_enable[0];
    assign load_weight0_B3_x_i_shift_bitsignaltemp = load_weight0_B3_x_i_shift[0];
    assign load_weight0_B3_x_i_stall_pred_bitsignaltemp = load_weight0_B3_x_i_stall_pred[0];
    assign load_weight0_B3_x_i_stall_succ_bitsignaltemp = load_weight0_B3_x_i_stall_succ[0];
    assign load_weight0_B3_x_i_valid_loop_bitsignaltemp = load_weight0_B3_x_i_valid_loop[0];
    assign load_weight0_B3_x_i_valid_pred_bitsignaltemp = load_weight0_B3_x_i_valid_pred[0];
    assign load_weight0_B3_x_i_valid_succ_bitsignaltemp = load_weight0_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B3")
    ) theload_weight0_B3_x (
        .i_capture(load_weight0_B3_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B3_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B3_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B6_x(EXTIFACE,206)
    assign load_weight0_B6_x_i_capture = GND_q;
    assign load_weight0_B6_x_i_clear = GND_q;
    assign load_weight0_B6_x_i_enable = VCC_q;
    assign load_weight0_B6_x_i_shift = GND_q;
    assign load_weight0_B6_x_i_stall_pred = loop_limiter_load_weight02_out_o_stall;
    assign load_weight0_B6_x_i_stall_succ = bb_load_weight0_B7_out_stall_in_0;
    assign load_weight0_B6_x_i_valid_loop = bb_load_weight0_B6_out_valid_in_0;
    assign load_weight0_B6_x_i_valid_pred = bb_load_weight0_B6_out_valid_in_1;
    assign load_weight0_B6_x_i_valid_succ = bb_load_weight0_B7_out_valid_out_0;
    assign load_weight0_B6_x_i_capture_bitsignaltemp = load_weight0_B6_x_i_capture[0];
    assign load_weight0_B6_x_i_clear_bitsignaltemp = load_weight0_B6_x_i_clear[0];
    assign load_weight0_B6_x_i_enable_bitsignaltemp = load_weight0_B6_x_i_enable[0];
    assign load_weight0_B6_x_i_shift_bitsignaltemp = load_weight0_B6_x_i_shift[0];
    assign load_weight0_B6_x_i_stall_pred_bitsignaltemp = load_weight0_B6_x_i_stall_pred[0];
    assign load_weight0_B6_x_i_stall_succ_bitsignaltemp = load_weight0_B6_x_i_stall_succ[0];
    assign load_weight0_B6_x_i_valid_loop_bitsignaltemp = load_weight0_B6_x_i_valid_loop[0];
    assign load_weight0_B6_x_i_valid_pred_bitsignaltemp = load_weight0_B6_x_i_valid_pred[0];
    assign load_weight0_B6_x_i_valid_succ_bitsignaltemp = load_weight0_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B6")
    ) theload_weight0_B6_x (
        .i_capture(load_weight0_B6_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B6_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B6_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B8_x(EXTIFACE,207)
    assign load_weight0_B8_x_i_capture = GND_q;
    assign load_weight0_B8_x_i_clear = GND_q;
    assign load_weight0_B8_x_i_enable = VCC_q;
    assign load_weight0_B8_x_i_shift = GND_q;
    assign load_weight0_B8_x_i_stall_pred = loop_limiter_load_weight04_out_o_stall;
    assign load_weight0_B8_x_i_stall_succ = bb_load_weight0_B8_out_stall_in_0;
    assign load_weight0_B8_x_i_valid_loop = bb_load_weight0_B8_out_valid_in_0;
    assign load_weight0_B8_x_i_valid_pred = bb_load_weight0_B8_out_valid_in_1;
    assign load_weight0_B8_x_i_valid_succ = bb_load_weight0_B8_out_valid_out_0;
    assign load_weight0_B8_x_i_capture_bitsignaltemp = load_weight0_B8_x_i_capture[0];
    assign load_weight0_B8_x_i_clear_bitsignaltemp = load_weight0_B8_x_i_clear[0];
    assign load_weight0_B8_x_i_enable_bitsignaltemp = load_weight0_B8_x_i_enable[0];
    assign load_weight0_B8_x_i_shift_bitsignaltemp = load_weight0_B8_x_i_shift[0];
    assign load_weight0_B8_x_i_stall_pred_bitsignaltemp = load_weight0_B8_x_i_stall_pred[0];
    assign load_weight0_B8_x_i_stall_succ_bitsignaltemp = load_weight0_B8_x_i_stall_succ[0];
    assign load_weight0_B8_x_i_valid_loop_bitsignaltemp = load_weight0_B8_x_i_valid_loop[0];
    assign load_weight0_B8_x_i_valid_pred_bitsignaltemp = load_weight0_B8_x_i_valid_pred[0];
    assign load_weight0_B8_x_i_valid_succ_bitsignaltemp = load_weight0_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B8")
    ) theload_weight0_B8_x (
        .i_capture(load_weight0_B8_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B8_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B8_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B9_x(EXTIFACE,208)
    assign load_weight0_B9_x_i_capture = GND_q;
    assign load_weight0_B9_x_i_clear = GND_q;
    assign load_weight0_B9_x_i_enable = VCC_q;
    assign load_weight0_B9_x_i_shift = GND_q;
    assign load_weight0_B9_x_i_stall_pred = loop_limiter_load_weight01_out_o_stall;
    assign load_weight0_B9_x_i_stall_succ = bb_load_weight0_B11_out_stall_in_0;
    assign load_weight0_B9_x_i_valid_loop = bb_load_weight0_B9_out_valid_in_0;
    assign load_weight0_B9_x_i_valid_pred = bb_load_weight0_B9_out_valid_in_1;
    assign load_weight0_B9_x_i_valid_succ = bb_load_weight0_B11_out_valid_out_0;
    assign load_weight0_B9_x_i_capture_bitsignaltemp = load_weight0_B9_x_i_capture[0];
    assign load_weight0_B9_x_i_clear_bitsignaltemp = load_weight0_B9_x_i_clear[0];
    assign load_weight0_B9_x_i_enable_bitsignaltemp = load_weight0_B9_x_i_enable[0];
    assign load_weight0_B9_x_i_shift_bitsignaltemp = load_weight0_B9_x_i_shift[0];
    assign load_weight0_B9_x_i_stall_pred_bitsignaltemp = load_weight0_B9_x_i_stall_pred[0];
    assign load_weight0_B9_x_i_stall_succ_bitsignaltemp = load_weight0_B9_x_i_stall_succ[0];
    assign load_weight0_B9_x_i_valid_loop_bitsignaltemp = load_weight0_B9_x_i_valid_loop[0];
    assign load_weight0_B9_x_i_valid_pred_bitsignaltemp = load_weight0_B9_x_i_valid_pred[0];
    assign load_weight0_B9_x_i_valid_succ_bitsignaltemp = load_weight0_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_weight0.B9")
    ) theload_weight0_B9_x (
        .i_capture(load_weight0_B9_x_i_capture_bitsignaltemp),
        .i_clear(load_weight0_B9_x_i_clear_bitsignaltemp),
        .i_enable(load_weight0_B9_x_i_enable_bitsignaltemp),
        .i_shift(load_weight0_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_weight0_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_weight0_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_weight0_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_weight0_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_weight0_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_load_weight0_o_fifoalmost_full(GPOUT,217)
    assign out_iord_bl_call_load_weight0_o_fifoalmost_full = bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoalmost_full;

    // out_iord_bl_call_load_weight0_o_fifoready(GPOUT,218)
    assign out_iord_bl_call_load_weight0_o_fifoready = bb_load_weight0_B1_start_out_iord_bl_call_load_weight0_o_fifoready;

    // out_iord_bl_weight_ctrl0_o_fifoalmost_full(GPOUT,219)
    assign out_iord_bl_weight_ctrl0_o_fifoalmost_full = bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoalmost_full;

    // out_iord_bl_weight_ctrl0_o_fifoready(GPOUT,220)
    assign out_iord_bl_weight_ctrl0_o_fifoready = bb_load_weight0_B3_out_iord_bl_weight_ctrl0_o_fifoready;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(GPOUT,221)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(GPOUT,222)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = bb_load_weight0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;

    // out_iowr_bl_return_load_weight0_o_fifodata(GPOUT,223)
    assign out_iowr_bl_return_load_weight0_o_fifodata = bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifodata;

    // out_iowr_bl_return_load_weight0_o_fifovalid(GPOUT,224)
    assign out_iowr_bl_return_load_weight0_o_fifovalid = bb_load_weight0_B2_out_iowr_bl_return_load_weight0_o_fifovalid;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address(GPOUT,225)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount(GPOUT,226)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable(GPOUT,227)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable(GPOUT,228)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read(GPOUT,229)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write(GPOUT,230)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write;

    // out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata(GPOUT,231)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata = bb_load_weight0_B8_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address(GPOUT,232)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount(GPOUT,233)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable(GPOUT,234)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable(GPOUT,235)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read(GPOUT,236)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write(GPOUT,237)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;

    // out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata(GPOUT,238)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata = bb_load_weight0_B16_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;

    // out_memdep_3_load_weight0_avm_address(GPOUT,239)
    assign out_memdep_3_load_weight0_avm_address = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_address;

    // out_memdep_3_load_weight0_avm_burstcount(GPOUT,240)
    assign out_memdep_3_load_weight0_avm_burstcount = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_burstcount;

    // out_memdep_3_load_weight0_avm_byteenable(GPOUT,241)
    assign out_memdep_3_load_weight0_avm_byteenable = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_byteenable;

    // out_memdep_3_load_weight0_avm_enable(GPOUT,242)
    assign out_memdep_3_load_weight0_avm_enable = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_enable;

    // out_memdep_3_load_weight0_avm_read(GPOUT,243)
    assign out_memdep_3_load_weight0_avm_read = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_read;

    // out_memdep_3_load_weight0_avm_write(GPOUT,244)
    assign out_memdep_3_load_weight0_avm_write = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_write;

    // out_memdep_3_load_weight0_avm_writedata(GPOUT,245)
    assign out_memdep_3_load_weight0_avm_writedata = bb_load_weight0_B8_out_memdep_3_load_weight0_avm_writedata;

    // out_stall_out(GPOUT,246)
    assign out_stall_out = bb_load_weight0_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,247)
    assign out_valid_out = GND_q;

endmodule
