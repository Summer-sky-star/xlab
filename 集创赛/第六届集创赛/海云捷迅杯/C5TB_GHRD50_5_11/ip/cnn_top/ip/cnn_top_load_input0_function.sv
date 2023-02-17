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

// SystemVerilog created from cnn_top_load_input0_function
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input0_function (
    input wire [63:0] in_arg_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_ddr_in1,
    input wire [63:0] in_arg_input_ctrl0_global,
    input wire [63:0] in_arg_return,
    input wire [703:0] in_iord_bl_call_load_input0_i_fifodata,
    input wire [0:0] in_iord_bl_call_load_input0_i_fifovalid,
    input wire [15:0] in_iord_bl_input_ctrl0_i_fifodata,
    input wire [0:0] in_iord_bl_input_ctrl0_i_fifovalid,
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    input wire [0:0] in_iowr_bl_return_load_input0_i_fifoready,
    input wire [127:0] in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writeack,
    input wire [127:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack,
    input wire [127:0] in_memdep_3_load_input0_avm_readdata,
    input wire [0:0] in_memdep_3_load_input0_avm_readdatavalid,
    input wire [0:0] in_memdep_3_load_input0_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_input0_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_load_input0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_load_input0_o_fifoready,
    output wire [0:0] out_iord_bl_input_ctrl0_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_input_ctrl0_o_fifoready,
    output wire [63:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_load_input0_o_fifodata,
    output wire [0:0] out_iowr_bl_return_load_input0_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata,
    output wire [31:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata,
    output wire [31:0] out_memdep_3_load_input0_avm_address,
    output wire [0:0] out_memdep_3_load_input0_avm_burstcount,
    output wire [15:0] out_memdep_3_load_input0_avm_byteenable,
    output wire [0:0] out_memdep_3_load_input0_avm_enable,
    output wire [0:0] out_memdep_3_load_input0_avm_read,
    output wire [0:0] out_memdep_3_load_input0_avm_write,
    output wire [127:0] out_memdep_3_load_input0_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_load_input0_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_input0_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B14_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B15_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B15_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B17_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B19_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B1_start_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B1_start_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B20_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B20_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B20_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B20_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B20_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B20_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B20_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B20_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B20_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B20_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_load_input0_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_load_input0_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_load_input0_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_load_input0_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_load_input0_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_load_input0_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_load_input0_B10_out_c0_exe2231;
    wire [31:0] bb_load_input0_B10_out_c0_exe3232;
    wire [31:0] bb_load_input0_B10_out_c0_exe4233;
    wire [0:0] bb_load_input0_B10_out_c0_exe5234;
    wire [31:0] bb_load_input0_B10_out_c0_exe6235;
    wire [0:0] bb_load_input0_B10_out_c0_exe7236;
    wire [0:0] bb_load_input0_B10_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B10_out_exiting_valid_out;
    wire [0:0] bb_load_input0_B10_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B10_out_stall_out_0;
    wire [0:0] bb_load_input0_B10_out_stall_out_1;
    wire [0:0] bb_load_input0_B10_out_valid_in_0;
    wire [0:0] bb_load_input0_B10_out_valid_in_1;
    wire [0:0] bb_load_input0_B10_out_valid_out_0;
    wire [0:0] bb_load_input0_B11_out_stall_in_0;
    wire [0:0] bb_load_input0_B11_out_stall_out_0;
    wire [0:0] bb_load_input0_B11_out_valid_out_0;
    wire [0:0] bb_load_input0_B12_out_c0_exe10;
    wire [31:0] bb_load_input0_B12_out_c0_exe11;
    wire [31:0] bb_load_input0_B12_out_c0_exe12;
    wire [0:0] bb_load_input0_B12_out_c0_exe13;
    wire [0:0] bb_load_input0_B12_out_c0_exe2257;
    wire [31:0] bb_load_input0_B12_out_c0_exe3258;
    wire [31:0] bb_load_input0_B12_out_c0_exe4259;
    wire [0:0] bb_load_input0_B12_out_c0_exe5260;
    wire [0:0] bb_load_input0_B12_out_c0_exe6261;
    wire [31:0] bb_load_input0_B12_out_c0_exe7262;
    wire [31:0] bb_load_input0_B12_out_c0_exe8;
    wire [0:0] bb_load_input0_B12_out_c0_exe9;
    wire [0:0] bb_load_input0_B12_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B12_out_exiting_valid_out;
    wire [0:0] bb_load_input0_B12_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B12_out_stall_out_0;
    wire [0:0] bb_load_input0_B12_out_stall_out_1;
    wire [0:0] bb_load_input0_B12_out_valid_in_0;
    wire [0:0] bb_load_input0_B12_out_valid_in_1;
    wire [0:0] bb_load_input0_B12_out_valid_out_0;
    wire [0:0] bb_load_input0_B13_out_c0_exe53573;
    wire [0:0] bb_load_input0_B13_out_stall_in_0;
    wire [0:0] bb_load_input0_B13_out_stall_out_0;
    wire [0:0] bb_load_input0_B13_out_valid_out_0;
    wire [31:0] bb_load_input0_B14_out_c0_exe10301;
    wire [0:0] bb_load_input0_B14_out_c0_exe11302;
    wire [0:0] bb_load_input0_B14_out_c0_exe12303;
    wire [31:0] bb_load_input0_B14_out_c0_exe1292;
    wire [31:0] bb_load_input0_B14_out_c0_exe13304;
    wire [31:0] bb_load_input0_B14_out_c0_exe14;
    wire [0:0] bb_load_input0_B14_out_c0_exe15;
    wire [0:0] bb_load_input0_B14_out_c0_exe16;
    wire [31:0] bb_load_input0_B14_out_c0_exe17;
    wire [31:0] bb_load_input0_B14_out_c0_exe18;
    wire [0:0] bb_load_input0_B14_out_c0_exe19;
    wire [0:0] bb_load_input0_B14_out_c0_exe20;
    wire [31:0] bb_load_input0_B14_out_c0_exe21;
    wire [31:0] bb_load_input0_B14_out_c0_exe2293;
    wire [0:0] bb_load_input0_B14_out_c0_exe4295;
    wire [31:0] bb_load_input0_B14_out_c0_exe5296;
    wire [0:0] bb_load_input0_B14_out_c0_exe6297;
    wire [0:0] bb_load_input0_B14_out_c0_exe7298;
    wire [31:0] bb_load_input0_B14_out_c0_exe8299;
    wire [0:0] bb_load_input0_B14_out_c0_exe9300;
    wire [0:0] bb_load_input0_B14_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B14_out_exiting_valid_out;
    wire [0:0] bb_load_input0_B14_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B14_out_stall_out_0;
    wire [0:0] bb_load_input0_B14_out_stall_out_1;
    wire [0:0] bb_load_input0_B14_out_valid_in_0;
    wire [0:0] bb_load_input0_B14_out_valid_in_1;
    wire [0:0] bb_load_input0_B14_out_valid_out_0;
    wire [0:0] bb_load_input0_B15_out_c0_exe53574;
    wire [0:0] bb_load_input0_B15_out_c0_exe63587;
    wire [0:0] bb_load_input0_B15_out_stall_in_0;
    wire [0:0] bb_load_input0_B15_out_stall_out_0;
    wire [0:0] bb_load_input0_B15_out_valid_out_0;
    wire [0:0] bb_load_input0_B16_out_c0_exe5357;
    wire [0:0] bb_load_input0_B16_out_c0_exe6358;
    wire [0:0] bb_load_input0_B16_out_c0_exe7359;
    wire [0:0] bb_load_input0_B16_out_c0_exe8360;
    wire [0:0] bb_load_input0_B16_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B16_out_exiting_valid_out;
    wire [63:0] bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [31:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    wire [0:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;
    wire [15:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    wire [0:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    wire [0:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    wire [0:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    wire [127:0] bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    wire [0:0] bb_load_input0_B16_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B16_out_stall_in_0;
    wire [0:0] bb_load_input0_B16_out_stall_out_0;
    wire [0:0] bb_load_input0_B16_out_stall_out_1;
    wire [0:0] bb_load_input0_B16_out_valid_in_0;
    wire [0:0] bb_load_input0_B16_out_valid_in_1;
    wire [0:0] bb_load_input0_B16_out_valid_out_0;
    wire [0:0] bb_load_input0_B17_out_c0_exe53575;
    wire [0:0] bb_load_input0_B17_out_c0_exe63588;
    wire [0:0] bb_load_input0_B17_out_c0_exe735910;
    wire [0:0] bb_load_input0_B17_out_stall_in_0;
    wire [0:0] bb_load_input0_B17_out_stall_out_0;
    wire [0:0] bb_load_input0_B17_out_valid_out_0;
    wire [0:0] bb_load_input0_B18_out_stall_out_0;
    wire [0:0] bb_load_input0_B18_out_valid_out_0;
    wire [0:0] bb_load_input0_B19_out_stall_out_0;
    wire [0:0] bb_load_input0_B19_out_valid_out_0;
    wire [0:0] bb_load_input0_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_10_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_11_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_12_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_13_0;
    wire [32:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_14_0;
    wire [32:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_15_0;
    wire [32:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_16_0;
    wire [32:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_load_input0_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoalmost_full;
    wire [0:0] bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoready;
    wire [0:0] bb_load_input0_B1_start_out_stall_out_0;
    wire [0:0] bb_load_input0_B1_start_out_stall_out_1;
    wire [0:0] bb_load_input0_B1_start_out_valid_in_0;
    wire [0:0] bb_load_input0_B1_start_out_valid_in_1;
    wire [0:0] bb_load_input0_B1_start_out_valid_out_0;
    wire [0:0] bb_load_input0_B2_out_feedback_out_1;
    wire [0:0] bb_load_input0_B2_out_feedback_valid_out_1;
    wire [0:0] bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifodata;
    wire [0:0] bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifovalid;
    wire [0:0] bb_load_input0_B2_out_stall_in_0;
    wire [0:0] bb_load_input0_B2_out_stall_out_0;
    wire [0:0] bb_load_input0_B2_out_valid_out_0;
    wire [31:0] bb_load_input0_B20_out_intel_reserved_ffwd_24_0;
    wire [0:0] bb_load_input0_B20_out_stall_in_0;
    wire [0:0] bb_load_input0_B20_out_stall_out_0;
    wire [0:0] bb_load_input0_B20_out_stall_out_1;
    wire [0:0] bb_load_input0_B20_out_valid_out_0;
    wire [0:0] bb_load_input0_B20_out_valid_out_1;
    wire [31:0] bb_load_input0_B3_out_intel_reserved_ffwd_18_0;
    wire [0:0] bb_load_input0_B3_out_intel_reserved_ffwd_19_0;
    wire [0:0] bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoalmost_full;
    wire [0:0] bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoready;
    wire [0:0] bb_load_input0_B3_out_stall_out_0;
    wire [0:0] bb_load_input0_B3_out_stall_out_1;
    wire [0:0] bb_load_input0_B3_out_valid_in_0;
    wire [0:0] bb_load_input0_B3_out_valid_in_1;
    wire [0:0] bb_load_input0_B3_out_valid_out_0;
    wire [0:0] bb_load_input0_B3_out_valid_out_1;
    wire [0:0] bb_load_input0_B4_out_intel_reserved_ffwd_20_0;
    wire [0:0] bb_load_input0_B4_out_intel_reserved_ffwd_21_0;
    wire [0:0] bb_load_input0_B4_out_intel_reserved_ffwd_22_0;
    wire [0:0] bb_load_input0_B4_out_stall_out_0;
    wire [0:0] bb_load_input0_B4_out_valid_out_0;
    wire [31:0] bb_load_input0_B5_out_intel_reserved_ffwd_23_0;
    wire [0:0] bb_load_input0_B5_out_stall_out_0;
    wire [0:0] bb_load_input0_B5_out_valid_out_0;
    wire [31:0] bb_load_input0_B6_out_c0_exe1;
    wire [0:0] bb_load_input0_B6_out_c0_exe2;
    wire [0:0] bb_load_input0_B6_out_c0_exe4;
    wire [31:0] bb_load_input0_B6_out_c0_exe5;
    wire [0:0] bb_load_input0_B6_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B6_out_exiting_valid_out;
    wire [0:0] bb_load_input0_B6_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B6_out_stall_out_0;
    wire [0:0] bb_load_input0_B6_out_stall_out_1;
    wire [0:0] bb_load_input0_B6_out_valid_in_0;
    wire [0:0] bb_load_input0_B6_out_valid_in_1;
    wire [0:0] bb_load_input0_B6_out_valid_out_0;
    wire [0:0] bb_load_input0_B7_out_stall_in_0;
    wire [0:0] bb_load_input0_B7_out_stall_out_0;
    wire [0:0] bb_load_input0_B7_out_valid_out_0;
    wire [0:0] bb_load_input0_B8_out_c0_exe5202;
    wire [0:0] bb_load_input0_B8_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B8_out_exiting_valid_out;
    wire [31:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address;
    wire [0:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount;
    wire [15:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable;
    wire [0:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable;
    wire [0:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read;
    wire [0:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write;
    wire [127:0] bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata;
    wire [31:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_address;
    wire [0:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_burstcount;
    wire [15:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_byteenable;
    wire [0:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_enable;
    wire [0:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_read;
    wire [0:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_write;
    wire [127:0] bb_load_input0_B8_out_memdep_3_load_input0_avm_writedata;
    wire [0:0] bb_load_input0_B8_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B8_out_stall_in_0;
    wire [0:0] bb_load_input0_B8_out_stall_out_0;
    wire [0:0] bb_load_input0_B8_out_stall_out_1;
    wire [0:0] bb_load_input0_B8_out_valid_in_0;
    wire [0:0] bb_load_input0_B8_out_valid_in_1;
    wire [0:0] bb_load_input0_B8_out_valid_out_0;
    wire [0:0] bb_load_input0_B9_out_c0_exe1212;
    wire [31:0] bb_load_input0_B9_out_c0_exe3214;
    wire [0:0] bb_load_input0_B9_out_exiting_stall_out;
    wire [0:0] bb_load_input0_B9_out_exiting_valid_out;
    wire [0:0] bb_load_input0_B9_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B9_out_stall_out_0;
    wire [0:0] bb_load_input0_B9_out_stall_out_1;
    wire [0:0] bb_load_input0_B9_out_valid_in_0;
    wire [0:0] bb_load_input0_B9_out_valid_in_1;
    wire [0:0] bb_load_input0_B9_out_valid_out_0;
    wire [1:0] c_i2_0152_q;
    wire [31:0] c_i32_027_q;
    wire [31:0] c_i32_126_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_valid_out;
    wire [0:0] load_input0_B1_start_x_i_capture;
    wire load_input0_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_clear;
    wire load_input0_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_enable;
    wire load_input0_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_shift;
    wire load_input0_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_stall_pred;
    wire load_input0_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_stall_succ;
    wire load_input0_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_valid_loop;
    wire load_input0_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_valid_pred;
    wire load_input0_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B1_start_x_i_valid_succ;
    wire load_input0_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_capture;
    wire load_input0_B10_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_clear;
    wire load_input0_B10_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_enable;
    wire load_input0_B10_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_shift;
    wire load_input0_B10_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_stall_pred;
    wire load_input0_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_stall_succ;
    wire load_input0_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_valid_loop;
    wire load_input0_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_valid_pred;
    wire load_input0_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B10_x_i_valid_succ;
    wire load_input0_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_capture;
    wire load_input0_B12_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_clear;
    wire load_input0_B12_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_enable;
    wire load_input0_B12_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_shift;
    wire load_input0_B12_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_stall_pred;
    wire load_input0_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_stall_succ;
    wire load_input0_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_valid_loop;
    wire load_input0_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_valid_pred;
    wire load_input0_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B12_x_i_valid_succ;
    wire load_input0_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_capture;
    wire load_input0_B14_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_clear;
    wire load_input0_B14_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_enable;
    wire load_input0_B14_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_shift;
    wire load_input0_B14_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_stall_pred;
    wire load_input0_B14_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_stall_succ;
    wire load_input0_B14_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_valid_loop;
    wire load_input0_B14_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_valid_pred;
    wire load_input0_B14_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B14_x_i_valid_succ;
    wire load_input0_B14_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_capture;
    wire load_input0_B16_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_clear;
    wire load_input0_B16_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_enable;
    wire load_input0_B16_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_shift;
    wire load_input0_B16_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_stall_pred;
    wire load_input0_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_stall_succ;
    wire load_input0_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_valid_loop;
    wire load_input0_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_valid_pred;
    wire load_input0_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B16_x_i_valid_succ;
    wire load_input0_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_capture;
    wire load_input0_B3_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_clear;
    wire load_input0_B3_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_enable;
    wire load_input0_B3_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_shift;
    wire load_input0_B3_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_stall_pred;
    wire load_input0_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_stall_succ;
    wire load_input0_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_valid_loop;
    wire load_input0_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_valid_pred;
    wire load_input0_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B3_x_i_valid_succ;
    wire load_input0_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_capture;
    wire load_input0_B6_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_clear;
    wire load_input0_B6_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_enable;
    wire load_input0_B6_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_shift;
    wire load_input0_B6_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_stall_pred;
    wire load_input0_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_stall_succ;
    wire load_input0_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_valid_loop;
    wire load_input0_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_valid_pred;
    wire load_input0_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B6_x_i_valid_succ;
    wire load_input0_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_capture;
    wire load_input0_B8_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_clear;
    wire load_input0_B8_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_enable;
    wire load_input0_B8_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_shift;
    wire load_input0_B8_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_stall_pred;
    wire load_input0_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_stall_succ;
    wire load_input0_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_valid_loop;
    wire load_input0_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_valid_pred;
    wire load_input0_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B8_x_i_valid_succ;
    wire load_input0_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_capture;
    wire load_input0_B9_x_i_capture_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_clear;
    wire load_input0_B9_x_i_clear_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_enable;
    wire load_input0_B9_x_i_enable_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_shift;
    wire load_input0_B9_x_i_shift_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_stall_pred;
    wire load_input0_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_stall_succ;
    wire load_input0_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_valid_loop;
    wire load_input0_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_valid_pred;
    wire load_input0_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] load_input0_B9_x_i_valid_succ;
    wire load_input0_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_load_input00_out_o_stall;
    wire [0:0] loop_limiter_load_input00_out_o_valid;
    wire [0:0] loop_limiter_load_input01_out_o_stall;
    wire [0:0] loop_limiter_load_input01_out_o_valid;
    wire [0:0] loop_limiter_load_input02_out_o_stall;
    wire [0:0] loop_limiter_load_input02_out_o_valid;
    wire [0:0] loop_limiter_load_input03_out_o_stall;
    wire [0:0] loop_limiter_load_input03_out_o_valid;
    wire [0:0] loop_limiter_load_input04_out_o_stall;
    wire [0:0] loop_limiter_load_input04_out_o_valid;
    wire [0:0] loop_limiter_load_input05_out_o_stall;
    wire [0:0] loop_limiter_load_input05_out_o_valid;
    wire [0:0] loop_limiter_load_input06_out_o_stall;
    wire [0:0] loop_limiter_load_input06_out_o_valid;
    wire [0:0] loop_limiter_load_input07_out_o_stall;
    wire [0:0] loop_limiter_load_input07_out_o_valid;


    // bb_load_input0_B1_start_sr_0_aunroll_x(BLACKBOX,12)
    cnn_top_bb_load_input0_B1_start_sr_0 thebb_load_input0_B1_start_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B1_start_out_stall_out_0),
        .in_i_valid(bb_load_input0_B2_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B1_start_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B1_start_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B3_sr_0_aunroll_x(BLACKBOX,17)
    cnn_top_bb_load_input0_B3_sr_0 thebb_load_input0_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B3_out_stall_out_0),
        .in_i_valid(bb_load_input0_B20_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_input0_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_0152(CONSTANT,129)
    assign c_i2_0152_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo(BLACKBOX,172)
    cnn_top_i_llvm_fpga_pipeline_keep_going90001d_input02_valid_fifo thei_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo(BLACKBOX,170)
    cnn_top_i_llvm_fpga_pipeline_keep_going90000d_input02_valid_fifo thei_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo(BLACKBOX,168)
    cnn_top_i_llvm_fpga_pipeline_keep_going80001d_input02_valid_fifo thei_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo(BLACKBOX,166)
    cnn_top_i_llvm_fpga_pipeline_keep_going80000d_input02_valid_fifo thei_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B14_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo(BLACKBOX,164)
    cnn_top_i_llvm_fpga_pipeline_keep_going60000d_input06_valid_fifo thei_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B19(BLACKBOX,35)
    cnn_top_bb_load_input0_B19 thebb_load_input0_B19 (
        .in_stall_in_0(bb_load_input0_B20_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_input0_B19_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_load_input0_B19_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B19_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B19_sr_0_aunroll_x(BLACKBOX,11)
    cnn_top_bb_load_input0_B19_sr_0 thebb_load_input0_B19_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B19_out_stall_out_0),
        .in_i_valid(bb_load_input0_B11_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B19_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B11(BLACKBOX,27)
    cnn_top_bb_load_input0_B11 thebb_load_input0_B11 (
        .in_c0_exe53572_0(bb_load_input0_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_load_input0_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_input0_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_load_input0_B11_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B11_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B11_sr_0_aunroll_x(BLACKBOX,3)
    cnn_top_bb_load_input0_B11_sr_0 thebb_load_input0_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_input0_B13_out_c0_exe53573),
        .in_i_stall(bb_load_input0_B11_out_stall_out_0),
        .in_i_valid(bb_load_input0_B13_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_input0_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B13(BLACKBOX,29)
    cnn_top_bb_load_input0_B13 thebb_load_input0_B13 (
        .in_c0_exe53573_0(bb_load_input0_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63586_0(bb_load_input0_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_load_input0_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_input0_B13_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53573(bb_load_input0_B13_out_c0_exe53573),
        .out_stall_in_0(bb_load_input0_B13_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B13_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B13_sr_0_aunroll_x(BLACKBOX,5)
    cnn_top_bb_load_input0_B13_sr_0 thebb_load_input0_B13_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_input0_B15_out_c0_exe53574),
        .in_i_data_1_tpl(bb_load_input0_B15_out_c0_exe63587),
        .in_i_stall(bb_load_input0_B13_out_stall_out_0),
        .in_i_valid(bb_load_input0_B15_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_input0_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B13_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B15(BLACKBOX,31)
    cnn_top_bb_load_input0_B15 thebb_load_input0_B15 (
        .in_c0_exe53574_0(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63587_0(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe73599_0(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_load_input0_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_input0_B15_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53574(bb_load_input0_B15_out_c0_exe53574),
        .out_c0_exe63587(bb_load_input0_B15_out_c0_exe63587),
        .out_stall_in_0(bb_load_input0_B15_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B15_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B15_sr_0_aunroll_x(BLACKBOX,7)
    cnn_top_bb_load_input0_B15_sr_0 thebb_load_input0_B15_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_input0_B17_out_c0_exe53575),
        .in_i_data_1_tpl(bb_load_input0_B17_out_c0_exe63588),
        .in_i_data_2_tpl(bb_load_input0_B17_out_c0_exe735910),
        .in_i_stall(bb_load_input0_B15_out_stall_out_0),
        .in_i_valid(bb_load_input0_B17_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_input0_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B15_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B17(BLACKBOX,33)
    cnn_top_bb_load_input0_B17 thebb_load_input0_B17 (
        .in_c0_exe53575_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe63588_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe735910_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe836011_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_load_input0_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe53575(bb_load_input0_B17_out_c0_exe53575),
        .out_c0_exe63588(bb_load_input0_B17_out_c0_exe63588),
        .out_c0_exe735910(bb_load_input0_B17_out_c0_exe735910),
        .out_stall_in_0(bb_load_input0_B17_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B17_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B17_sr_0_aunroll_x(BLACKBOX,9)
    cnn_top_bb_load_input0_B17_sr_0 thebb_load_input0_B17_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_input0_B16_out_c0_exe5357),
        .in_i_data_1_tpl(bb_load_input0_B16_out_c0_exe6358),
        .in_i_data_2_tpl(bb_load_input0_B16_out_c0_exe7359),
        .in_i_data_3_tpl(bb_load_input0_B16_out_c0_exe8360),
        .in_i_stall(bb_load_input0_B17_out_stall_out_0),
        .in_i_valid(bb_load_input0_B16_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_input0_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_load_input0_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B17_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going68_load_input06_sr(BLACKBOX,163)
    cnn_top_i_llvm_fpga_pipeline_keep_going68_load_input06_sr thei_llvm_fpga_pipeline_keep_going68_load_input06_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B16(BLACKBOX,32)
    cnn_top_bb_load_input0_B16 thebb_load_input0_B16 (
        .in_add77166_0(c_i32_027_q),
        .in_add77166_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_flush(in_start),
        .in_forked65_0(GND_q),
        .in_forked65_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_21_0(bb_load_input0_B4_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_4_0),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready),
        .in_kh_071_pop21107_pop37164_0(c_i32_027_q),
        .in_kh_071_pop21107_pop37164_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_kh_071_pop21108_pop43171_0(c_i32_027_q),
        .in_kh_071_pop21108_pop43171_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_kh_071_pop21135_0(c_i32_027_q),
        .in_kh_071_pop21135_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_kw_068_pop33112_pop45165_0(c_i32_027_q),
        .in_kw_068_pop33112_pop45165_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_kw_068_pop33152_0(c_i32_027_q),
        .in_kw_068_pop33152_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_li_073100_pop40168_0(c_i32_027_q),
        .in_li_073100_pop40168_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_li_073124_0(c_i32_027_q),
        .in_li_073124_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07398_pop22140_0(c_i32_027_q),
        .in_li_07398_pop22140_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_li_07399_pop34155_0(c_i32_027_q),
        .in_li_07399_pop34155_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack),
        .in_notcmp81167_0(GND_q),
        .in_notcmp81167_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp85110_pop44172_0(GND_q),
        .in_notcmp85110_pop44172_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_notcmp85149_0(GND_q),
        .in_notcmp85149_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp89104_pop36161_0(GND_q),
        .in_notcmp89104_pop36161_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp89105_pop42170_0(GND_q),
        .in_notcmp89105_pop42170_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_notcmp89130_0(GND_q),
        .in_notcmp89130_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going68_load_input06_sr_out_o_stall),
        .in_pop23145_0(GND_q),
        .in_pop23145_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pop35158_0(GND_q),
        .in_pop35158_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_pop41169_0(GND_q),
        .in_pop41169_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_stall_in_0(bb_load_input0_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_load_input051_0(GND_q),
        .in_unnamed_load_input051_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going68_load_input06_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe5357(bb_load_input0_B16_out_c0_exe5357),
        .out_c0_exe6358(bb_load_input0_B16_out_c0_exe6358),
        .out_c0_exe7359(bb_load_input0_B16_out_c0_exe7359),
        .out_c0_exe8360(bb_load_input0_B16_out_c0_exe8360),
        .out_exiting_stall_out(bb_load_input0_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B16_out_exiting_valid_out),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata),
        .out_pipeline_valid_out(bb_load_input0_B16_out_pipeline_valid_out),
        .out_stall_in_0(bb_load_input0_B16_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B16_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B16_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B16_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B16_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B16_sr_1_aunroll_x(BLACKBOX,8)
    cnn_top_bb_load_input0_B16_sr_1 thebb_load_input0_B16_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_input0_B14_out_c0_exe10301),
        .in_i_data_2_tpl(bb_load_input0_B14_out_c0_exe11302),
        .in_i_data_3_tpl(bb_load_input0_B14_out_c0_exe12303),
        .in_i_data_4_tpl(bb_load_input0_B14_out_c0_exe13304),
        .in_i_data_5_tpl(bb_load_input0_B14_out_c0_exe14),
        .in_i_data_6_tpl(bb_load_input0_B14_out_c0_exe15),
        .in_i_data_7_tpl(bb_load_input0_B14_out_c0_exe16),
        .in_i_data_8_tpl(bb_load_input0_B14_out_c0_exe17),
        .in_i_data_9_tpl(bb_load_input0_B14_out_c0_exe18),
        .in_i_data_10_tpl(bb_load_input0_B14_out_c0_exe19),
        .in_i_data_11_tpl(bb_load_input0_B14_out_c0_exe20),
        .in_i_data_12_tpl(bb_load_input0_B14_out_c0_exe21),
        .in_i_data_13_tpl(bb_load_input0_B14_out_c0_exe1292),
        .in_i_data_14_tpl(bb_load_input0_B14_out_c0_exe2293),
        .in_i_data_15_tpl(bb_load_input0_B14_out_c0_exe4295),
        .in_i_data_16_tpl(bb_load_input0_B14_out_c0_exe5296),
        .in_i_data_17_tpl(bb_load_input0_B14_out_c0_exe6297),
        .in_i_data_18_tpl(bb_load_input0_B14_out_c0_exe7298),
        .in_i_data_19_tpl(bb_load_input0_B14_out_c0_exe8299),
        .in_i_data_20_tpl(bb_load_input0_B14_out_c0_exe9300),
        .in_i_stall(bb_load_input0_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input07_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_load_input0_B16_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_stall(bb_load_input0_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B16_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input07(BLACKBOX,217)
    cnn_top_loop_limiter_load_input07 theloop_limiter_load_input07 (
        .in_i_stall(bb_load_input0_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B16_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B14_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input07_out_o_stall),
        .out_o_valid(loop_limiter_load_input07_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_load_input02_sr(BLACKBOX,165)
    cnn_top_i_llvm_fpga_pipeline_keep_going82_load_input02_sr thei_llvm_fpga_pipeline_keep_going82_load_input02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B14_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B14(BLACKBOX,30)
    cnn_top_bb_load_input0_B14 thebb_load_input0_B14 (
        .in_forked48_0(GND_q),
        .in_forked48_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_14_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_21_0(bb_load_input0_B4_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_4_0),
        .in_kh_071_pop21107_pop37162_0(c_i32_027_q),
        .in_kh_071_pop21107_pop37162_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_kh_071_pop21136_0(c_i32_027_q),
        .in_kh_071_pop21136_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_kw_068_pop33150_0(c_i32_027_q),
        .in_kw_068_pop33150_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_li_073125_0(c_i32_027_q),
        .in_li_073125_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07398_pop22141_0(c_i32_027_q),
        .in_li_07398_pop22141_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_li_07399_pop34153_0(c_i32_027_q),
        .in_li_07399_pop34153_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp85147_0(GND_q),
        .in_notcmp85147_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp89104_pop36159_0(GND_q),
        .in_notcmp89104_pop36159_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp89131_0(GND_q),
        .in_notcmp89131_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going82_load_input02_sr_out_o_stall),
        .in_pop23146_0(GND_q),
        .in_pop23146_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pop35156_0(GND_q),
        .in_pop35156_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(loop_limiter_load_input07_out_o_stall),
        .in_unnamed_load_input048_0(GND_q),
        .in_unnamed_load_input048_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going82_load_input02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B14_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10301(bb_load_input0_B14_out_c0_exe10301),
        .out_c0_exe11302(bb_load_input0_B14_out_c0_exe11302),
        .out_c0_exe12303(bb_load_input0_B14_out_c0_exe12303),
        .out_c0_exe1292(bb_load_input0_B14_out_c0_exe1292),
        .out_c0_exe13304(bb_load_input0_B14_out_c0_exe13304),
        .out_c0_exe14(bb_load_input0_B14_out_c0_exe14),
        .out_c0_exe15(bb_load_input0_B14_out_c0_exe15),
        .out_c0_exe16(bb_load_input0_B14_out_c0_exe16),
        .out_c0_exe17(bb_load_input0_B14_out_c0_exe17),
        .out_c0_exe18(bb_load_input0_B14_out_c0_exe18),
        .out_c0_exe19(bb_load_input0_B14_out_c0_exe19),
        .out_c0_exe20(bb_load_input0_B14_out_c0_exe20),
        .out_c0_exe21(bb_load_input0_B14_out_c0_exe21),
        .out_c0_exe2293(bb_load_input0_B14_out_c0_exe2293),
        .out_c0_exe4295(bb_load_input0_B14_out_c0_exe4295),
        .out_c0_exe5296(bb_load_input0_B14_out_c0_exe5296),
        .out_c0_exe6297(bb_load_input0_B14_out_c0_exe6297),
        .out_c0_exe7298(bb_load_input0_B14_out_c0_exe7298),
        .out_c0_exe8299(bb_load_input0_B14_out_c0_exe8299),
        .out_c0_exe9300(bb_load_input0_B14_out_c0_exe9300),
        .out_exiting_stall_out(bb_load_input0_B14_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B14_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_input0_B14_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_input0_B14_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B14_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B14_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B14_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B14_sr_1_aunroll_x(BLACKBOX,6)
    cnn_top_bb_load_input0_B14_sr_1 thebb_load_input0_B14_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_input0_B12_out_c0_exe8),
        .in_i_data_2_tpl(bb_load_input0_B12_out_c0_exe9),
        .in_i_data_3_tpl(bb_load_input0_B12_out_c0_exe10),
        .in_i_data_4_tpl(bb_load_input0_B12_out_c0_exe11),
        .in_i_data_5_tpl(bb_load_input0_B12_out_c0_exe12),
        .in_i_data_6_tpl(bb_load_input0_B12_out_c0_exe13),
        .in_i_data_7_tpl(bb_load_input0_B12_out_c0_exe2257),
        .in_i_data_8_tpl(bb_load_input0_B12_out_c0_exe3258),
        .in_i_data_9_tpl(bb_load_input0_B12_out_c0_exe4259),
        .in_i_data_10_tpl(bb_load_input0_B12_out_c0_exe5260),
        .in_i_data_11_tpl(bb_load_input0_B12_out_c0_exe6261),
        .in_i_data_12_tpl(bb_load_input0_B12_out_c0_exe7262),
        .in_i_stall(bb_load_input0_B14_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input06_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_load_input0_B14_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_stall(bb_load_input0_B14_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B14_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input06(BLACKBOX,216)
    cnn_top_loop_limiter_load_input06 theloop_limiter_load_input06 (
        .in_i_stall(bb_load_input0_B14_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B14_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B12_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B14_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input06_out_o_stall),
        .out_o_valid(loop_limiter_load_input06_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going86_load_input02_sr(BLACKBOX,167)
    cnn_top_i_llvm_fpga_pipeline_keep_going86_load_input02_sr thei_llvm_fpga_pipeline_keep_going86_load_input02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B12(BLACKBOX,28)
    cnn_top_bb_load_input0_B12 thebb_load_input0_B12 (
        .in_forked50_0(GND_q),
        .in_forked50_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_15_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_20_0(bb_load_input0_B4_out_intel_reserved_ffwd_20_0),
        .in_kh_071_pop21132_0(c_i32_027_q),
        .in_kh_071_pop21132_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_li_073126_0(c_i32_027_q),
        .in_li_073126_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_li_07398_pop22137_0(c_i32_027_q),
        .in_li_07398_pop22137_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp89127_0(GND_q),
        .in_notcmp89127_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going86_load_input02_sr_out_o_stall),
        .in_pop23142_0(GND_q),
        .in_pop23142_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_load_input06_out_o_stall),
        .in_unnamed_load_input045_0(GND_q),
        .in_unnamed_load_input045_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going86_load_input02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_load_input0_B12_out_c0_exe10),
        .out_c0_exe11(bb_load_input0_B12_out_c0_exe11),
        .out_c0_exe12(bb_load_input0_B12_out_c0_exe12),
        .out_c0_exe13(bb_load_input0_B12_out_c0_exe13),
        .out_c0_exe2257(bb_load_input0_B12_out_c0_exe2257),
        .out_c0_exe3258(bb_load_input0_B12_out_c0_exe3258),
        .out_c0_exe4259(bb_load_input0_B12_out_c0_exe4259),
        .out_c0_exe5260(bb_load_input0_B12_out_c0_exe5260),
        .out_c0_exe6261(bb_load_input0_B12_out_c0_exe6261),
        .out_c0_exe7262(bb_load_input0_B12_out_c0_exe7262),
        .out_c0_exe8(bb_load_input0_B12_out_c0_exe8),
        .out_c0_exe9(bb_load_input0_B12_out_c0_exe9),
        .out_exiting_stall_out(bb_load_input0_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_input0_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_input0_B12_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B12_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B12_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B12_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B12_sr_1_aunroll_x(BLACKBOX,4)
    cnn_top_bb_load_input0_B12_sr_1 thebb_load_input0_B12_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_input0_B10_out_c0_exe6235),
        .in_i_data_2_tpl(bb_load_input0_B10_out_c0_exe7236),
        .in_i_data_3_tpl(bb_load_input0_B10_out_c0_exe2231),
        .in_i_data_4_tpl(bb_load_input0_B10_out_c0_exe3232),
        .in_i_data_5_tpl(bb_load_input0_B10_out_c0_exe4233),
        .in_i_data_6_tpl(bb_load_input0_B10_out_c0_exe5234),
        .in_i_stall(bb_load_input0_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input05_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_load_input0_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_load_input0_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B12_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input05(BLACKBOX,215)
    cnn_top_loop_limiter_load_input05 theloop_limiter_load_input05 (
        .in_i_stall(bb_load_input0_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B12_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B10_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input05_out_o_stall),
        .out_o_valid(loop_limiter_load_input05_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_load_input02_sr(BLACKBOX,169)
    cnn_top_i_llvm_fpga_pipeline_keep_going90_load_input02_sr thei_llvm_fpga_pipeline_keep_going90_load_input02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_027(CONSTANT,136)
    assign c_i32_027_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_load_input0_B10(BLACKBOX,26)
    cnn_top_bb_load_input0_B10 thebb_load_input0_B10 (
        .in_forked49_0(GND_q),
        .in_forked49_1(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_15_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_20_0(bb_load_input0_B4_out_intel_reserved_ffwd_20_0),
        .in_li_073120_0(c_i32_027_q),
        .in_li_073120_1(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going90_load_input02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_input05_out_o_stall),
        .in_unnamed_load_input042_0(GND_q),
        .in_unnamed_load_input042_1(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going90_load_input02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2231(bb_load_input0_B10_out_c0_exe2231),
        .out_c0_exe3232(bb_load_input0_B10_out_c0_exe3232),
        .out_c0_exe4233(bb_load_input0_B10_out_c0_exe4233),
        .out_c0_exe5234(bb_load_input0_B10_out_c0_exe5234),
        .out_c0_exe6235(bb_load_input0_B10_out_c0_exe6235),
        .out_c0_exe7236(bb_load_input0_B10_out_c0_exe7236),
        .out_exiting_stall_out(bb_load_input0_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_input0_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_input0_B10_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B10_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B10_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B10_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B10_sr_1_aunroll_x(BLACKBOX,2)
    cnn_top_bb_load_input0_B10_sr_1 thebb_load_input0_B10_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_input0_B9_out_c0_exe3214),
        .in_i_data_2_tpl(bb_load_input0_B9_out_c0_exe1212),
        .in_i_stall(bb_load_input0_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input03_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_input0_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B10_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input03(BLACKBOX,213)
    cnn_top_loop_limiter_load_input03 theloop_limiter_load_input03 (
        .in_i_stall(bb_load_input0_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B10_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B9_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input03_out_o_stall),
        .out_o_valid(loop_limiter_load_input03_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going94_load_input02_sr(BLACKBOX,171)
    cnn_top_i_llvm_fpga_pipeline_keep_going94_load_input02_sr thei_llvm_fpga_pipeline_keep_going94_load_input02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_126(CONSTANT,137)
    assign c_i32_126_q = $unsigned(32'b00000000000000000000000000000001);

    // bb_load_input0_B9(BLACKBOX,45)
    cnn_top_bb_load_input0_B9 thebb_load_input0_B9 (
        .in_forked97_0(GND_q),
        .in_forked97_1(bb_load_input0_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_22_0(bb_load_input0_B4_out_intel_reserved_ffwd_22_0),
        .in_li_073_0(c_i32_126_q),
        .in_li_073_1(bb_load_input0_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going94_load_input02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_input03_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going94_load_input02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1212(bb_load_input0_B9_out_c0_exe1212),
        .out_c0_exe3214(bb_load_input0_B9_out_c0_exe3214),
        .out_exiting_stall_out(bb_load_input0_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_input0_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_input0_B9_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B9_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B9_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B9_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B9_sr_1_aunroll_x(BLACKBOX,24)
    cnn_top_bb_load_input0_B9_sr_1 thebb_load_input0_B9_sr_1_aunroll_x (
        .in_i_data_0_tpl(c_i32_027_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_stall(bb_load_input0_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input01_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_load_input0_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B9_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input01(BLACKBOX,211)
    cnn_top_loop_limiter_load_input01 theloop_limiter_load_input01 (
        .in_i_stall(bb_load_input0_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B9_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B4_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input01_out_o_stall),
        .out_o_valid(loop_limiter_load_input01_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B4(BLACKBOX,40)
    cnn_top_bb_load_input0_B4 thebb_load_input0_B4 (
        .in_intel_reserved_ffwd_19_0(bb_load_input0_B3_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_8_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_9_0),
        .in_stall_in_0(loop_limiter_load_input01_out_o_stall),
        .in_valid_in_0(bb_load_input0_B4_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_20_0(bb_load_input0_B4_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_load_input0_B4_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_load_input0_B4_out_intel_reserved_ffwd_22_0),
        .out_stall_out_0(bb_load_input0_B4_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B4_sr_0_aunroll_x(BLACKBOX,19)
    cnn_top_bb_load_input0_B4_sr_0 thebb_load_input0_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B4_out_stall_out_0),
        .in_i_valid(bb_load_input0_B3_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo(BLACKBOX,162)
    cnn_top_i_llvm_fpga_pipeline_keep_going60000d_input02_valid_fifo thei_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo(BLACKBOX,174)
    cnn_top_i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo thei_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo (
        .in_data_in(c_i2_0152_q),
        .in_stall_in(bb_load_input0_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B18(BLACKBOX,34)
    cnn_top_bb_load_input0_B18 thebb_load_input0_B18 (
        .in_stall_in_0(bb_load_input0_B20_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_input0_B18_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_load_input0_B18_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B18_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B18_sr_0_aunroll_x(BLACKBOX,10)
    cnn_top_bb_load_input0_B18_sr_0 thebb_load_input0_B18_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B18_out_stall_out_0),
        .in_i_valid(bb_load_input0_B7_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B18_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B7(BLACKBOX,43)
    cnn_top_bb_load_input0_B7 thebb_load_input0_B7 (
        .in_c0_exe52021_0(bb_load_input0_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_load_input0_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_load_input0_B7_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_load_input0_B7_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B7_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B7_sr_0_aunroll_x(BLACKBOX,22)
    cnn_top_bb_load_input0_B7_sr_0 thebb_load_input0_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_load_input0_B8_out_c0_exe5202),
        .in_i_stall(bb_load_input0_B7_out_stall_out_0),
        .in_i_valid(bb_load_input0_B8_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_input0_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_load_input06_sr(BLACKBOX,173)
    cnn_top_i_llvm_fpga_pipeline_keep_going_load_input06_sr thei_llvm_fpga_pipeline_keep_going_load_input06_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B8(BLACKBOX,44)
    cnn_top_bb_load_input0_B8 thebb_load_input0_B8 (
        .in_flush(in_start),
        .in_forked51_0(GND_q),
        .in_forked51_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_input_offset_080_replace_phi116_0(c_i32_027_q),
        .in_input_offset_080_replace_phi116_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_0_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_16_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_16_0),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdata(in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdatavalid(in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_waitrequest(in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writeack(in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writeack),
        .in_memdep_3_load_input0_avm_readdata(in_memdep_3_load_input0_avm_readdata),
        .in_memdep_3_load_input0_avm_readdatavalid(in_memdep_3_load_input0_avm_readdatavalid),
        .in_memdep_3_load_input0_avm_waitrequest(in_memdep_3_load_input0_avm_waitrequest),
        .in_memdep_3_load_input0_avm_writeack(in_memdep_3_load_input0_avm_writeack),
        .in_notcmp60117_0(GND_q),
        .in_notcmp60117_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_load_input06_sr_out_o_stall),
        .in_row_081_pop18118_0(c_i32_027_q),
        .in_row_081_pop18118_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(bb_load_input0_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_load_input037_0(GND_q),
        .in_unnamed_load_input037_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_load_input06_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe5202(bb_load_input0_B8_out_c0_exe5202),
        .out_exiting_stall_out(bb_load_input0_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B8_out_exiting_valid_out),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata(bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata),
        .out_memdep_3_load_input0_avm_address(bb_load_input0_B8_out_memdep_3_load_input0_avm_address),
        .out_memdep_3_load_input0_avm_burstcount(bb_load_input0_B8_out_memdep_3_load_input0_avm_burstcount),
        .out_memdep_3_load_input0_avm_byteenable(bb_load_input0_B8_out_memdep_3_load_input0_avm_byteenable),
        .out_memdep_3_load_input0_avm_enable(bb_load_input0_B8_out_memdep_3_load_input0_avm_enable),
        .out_memdep_3_load_input0_avm_read(bb_load_input0_B8_out_memdep_3_load_input0_avm_read),
        .out_memdep_3_load_input0_avm_write(bb_load_input0_B8_out_memdep_3_load_input0_avm_write),
        .out_memdep_3_load_input0_avm_writedata(bb_load_input0_B8_out_memdep_3_load_input0_avm_writedata),
        .out_pipeline_valid_out(bb_load_input0_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_load_input0_B8_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B8_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B8_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B8_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B8_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B8_sr_1_aunroll_x(BLACKBOX,23)
    cnn_top_bb_load_input0_B8_sr_1 thebb_load_input0_B8_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_load_input0_B6_out_c0_exe1),
        .in_i_data_2_tpl(bb_load_input0_B6_out_c0_exe2),
        .in_i_data_3_tpl(bb_load_input0_B6_out_c0_exe4),
        .in_i_data_4_tpl(bb_load_input0_B6_out_c0_exe5),
        .in_i_stall(bb_load_input0_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input04_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_load_input0_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_load_input0_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B8_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input04(BLACKBOX,214)
    cnn_top_loop_limiter_load_input04 theloop_limiter_load_input04 (
        .in_i_stall(bb_load_input0_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B8_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B6_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input04_out_o_stall),
        .out_o_valid(loop_limiter_load_input04_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_input02_sr(BLACKBOX,161)
    cnn_top_i_llvm_fpga_pipeline_keep_going61_load_input02_sr thei_llvm_fpga_pipeline_keep_going61_load_input02_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_stall_out),
        .in_i_valid(bb_load_input0_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B6(BLACKBOX,42)
    cnn_top_bb_load_input0_B6 thebb_load_input0_B6 (
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_load_input0_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_11_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_17_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_23_0(bb_load_input0_B5_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_6_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_6_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going61_load_input02_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_load_input04_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going61_load_input02_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_load_input0_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1(bb_load_input0_B6_out_c0_exe1),
        .out_c0_exe2(bb_load_input0_B6_out_c0_exe2),
        .out_c0_exe4(bb_load_input0_B6_out_c0_exe4),
        .out_c0_exe5(bb_load_input0_B6_out_c0_exe5),
        .out_exiting_stall_out(bb_load_input0_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_load_input0_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_load_input0_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_load_input0_B6_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B6_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B6_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B6_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B6_sr_1_aunroll_x(BLACKBOX,21)
    cnn_top_bb_load_input0_B6_sr_1 thebb_load_input0_B6_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_load_input0_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input02_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_input0_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B6_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input02(BLACKBOX,212)
    cnn_top_loop_limiter_load_input02 theloop_limiter_load_input02 (
        .in_i_stall(bb_load_input0_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B6_out_exiting_stall_out),
        .in_i_valid(bb_load_input0_B5_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_load_input02_out_o_stall),
        .out_o_valid(loop_limiter_load_input02_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B5(BLACKBOX,41)
    cnn_top_bb_load_input0_B5 thebb_load_input0_B5 (
        .in_intel_reserved_ffwd_10_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_18_0(bb_load_input0_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_6_0),
        .in_stall_in_0(loop_limiter_load_input02_out_o_stall),
        .in_valid_in_0(bb_load_input0_B5_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_23_0(bb_load_input0_B5_out_intel_reserved_ffwd_23_0),
        .out_stall_out_0(bb_load_input0_B5_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B5_sr_0_aunroll_x(BLACKBOX,20)
    cnn_top_bb_load_input0_B5_sr_0 thebb_load_input0_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B5_out_stall_out_0),
        .in_i_valid(bb_load_input0_B3_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B3(BLACKBOX,39)
    cnn_top_bb_load_input0_B3 thebb_load_input0_B3 (
        .in_forked_0(bb_load_input0_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_forked_1(bb_load_input0_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_13_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_1_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_24_0(bb_load_input0_B20_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_7_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_7_0),
        .in_iord_bl_input_ctrl0_i_fifodata(in_iord_bl_input_ctrl0_i_fifodata),
        .in_iord_bl_input_ctrl0_i_fifovalid(in_iord_bl_input_ctrl0_i_fifovalid),
        .in_stall_in_0(bb_load_input0_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_load_input0_B4_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_input0_B3_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_input0_B3_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_18_0(bb_load_input0_B3_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_load_input0_B3_out_intel_reserved_ffwd_19_0),
        .out_iord_bl_input_ctrl0_o_fifoalmost_full(bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoalmost_full),
        .out_iord_bl_input_ctrl0_o_fifoready(bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoready),
        .out_stall_out_0(bb_load_input0_B3_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B3_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B3_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B3_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B3_out_valid_out_0),
        .out_valid_out_1(bb_load_input0_B3_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B20_sr_1_aunroll_x(BLACKBOX,15)
    cnn_top_bb_load_input0_B20_sr_1 thebb_load_input0_B20_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_data_1_tpl(VCC_q),
        .in_i_data_2_tpl(GND_q),
        .in_i_stall(bb_load_input0_B20_out_stall_out_1),
        .in_i_valid(bb_load_input0_B18_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_input0_B20_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B20_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B20_sr_0_aunroll_x(BLACKBOX,14)
    cnn_top_bb_load_input0_B20_sr_0 thebb_load_input0_B20_sr_0_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(GND_q),
        .in_i_data_2_tpl(VCC_q),
        .in_i_stall(bb_load_input0_B20_out_stall_out_0),
        .in_i_valid(bb_load_input0_B19_out_valid_out_0),
        .out_o_data_0_tpl(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_load_input0_B20_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B20_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B20(BLACKBOX,38)
    cnn_top_bb_load_input0_B20 thebb_load_input0_B20 (
        .in_cmp1779_phi_decision35_replace_phi_dir_0(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_cmp1779_phi_decision35_replace_phi_dir_1(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_cmp83_phi_decision29_replace_phi_dir_0(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_cmp83_phi_decision29_replace_phi_dir_1(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_11_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_18_0(bb_load_input0_B3_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_load_input0_B3_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_2_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_7_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_7_0),
        .in_phi_decision47_replace_phi_dir_0(bb_load_input0_B20_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_phi_decision47_replace_phi_dir_1(bb_load_input0_B20_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_load_input0_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_load_input0_B2_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_input0_B20_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_input0_B20_sr_1_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_24_0(bb_load_input0_B20_out_intel_reserved_ffwd_24_0),
        .out_stall_in_0(bb_load_input0_B20_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B20_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B20_out_stall_out_1),
        .out_valid_out_0(bb_load_input0_B20_out_valid_out_0),
        .out_valid_out_1(bb_load_input0_B20_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B2_sr_0_aunroll_x(BLACKBOX,16)
    cnn_top_bb_load_input0_B2_sr_0 thebb_load_input0_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B2_out_stall_out_0),
        .in_i_valid(bb_load_input0_B20_out_valid_out_1),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B3_sr_1_aunroll_x(BLACKBOX,18)
    cnn_top_bb_load_input0_B3_sr_1 thebb_load_input0_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_load_input0_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_load_input00_out_o_valid),
        .out_o_data_0_tpl(bb_load_input0_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_load_input0_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_load_input00(BLACKBOX,210)
    cnn_top_loop_limiter_load_input00 theloop_limiter_load_input00 (
        .in_i_stall(bb_load_input0_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_load_input0_B2_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_load_input0_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_load_input0_B20_out_valid_out_1),
        .out_o_stall(loop_limiter_load_input00_out_o_stall),
        .out_o_valid(loop_limiter_load_input00_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B1_start(BLACKBOX,36)
    cnn_top_bb_load_input0_B1_start thebb_load_input0_B1_start (
        .in_feedback_in_1(bb_load_input0_B2_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_load_input0_B2_out_feedback_valid_out_1),
        .in_iord_bl_call_load_input0_i_fifodata(in_iord_bl_call_load_input0_i_fifodata),
        .in_iord_bl_call_load_input0_i_fifovalid(in_iord_bl_call_load_input0_i_fifovalid),
        .in_stall_in_0(loop_limiter_load_input00_out_o_stall),
        .in_valid_in_0(bb_load_input0_B1_start_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_load_input0_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_feedback_stall_out_1(bb_load_input0_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_1_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(bb_load_input0_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_load_input0_o_fifoalmost_full(bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoalmost_full),
        .out_iord_bl_call_load_input0_o_fifoready(bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoready),
        .out_stall_out_0(bb_load_input0_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_load_input0_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_load_input0_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_load_input0_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_load_input0_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B2(BLACKBOX,37)
    cnn_top_bb_load_input0_B2 thebb_load_input0_B2 (
        .in_feedback_stall_in_1(bb_load_input0_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_load_input0_i_fifoready(in_iowr_bl_return_load_input0_i_fifoready),
        .in_stall_in_0(bb_load_input0_B1_start_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_load_input0_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_load_input0_B2_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_load_input0_B2_out_feedback_valid_out_1),
        .out_iowr_bl_return_load_input0_o_fifodata(bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifodata),
        .out_iowr_bl_return_load_input0_o_fifovalid(bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifovalid),
        .out_stall_in_0(bb_load_input0_B2_out_stall_in_0),
        .out_stall_out_0(bb_load_input0_B2_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B0_runOnce(BLACKBOX,25)
    cnn_top_bb_load_input0_B0_runOnce thebb_load_input0_B0_runOnce (
        .in_stall_in_0(bb_load_input0_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_load_input0_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_load_input0_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B1_start_sr_1_aunroll_x(BLACKBOX,13)
    cnn_top_bb_load_input0_B1_start_sr_1 thebb_load_input0_B1_start_sr_1_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_load_input0_B1_start_out_stall_out_1),
        .in_i_valid(bb_load_input0_B0_runOnce_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_load_input0_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_load_input0_B1_start_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // load_input0_B1_start_x(EXTIFACE,201)
    assign load_input0_B1_start_x_i_capture = GND_q;
    assign load_input0_B1_start_x_i_clear = GND_q;
    assign load_input0_B1_start_x_i_enable = VCC_q;
    assign load_input0_B1_start_x_i_shift = GND_q;
    assign load_input0_B1_start_x_i_stall_pred = bb_load_input0_B1_start_sr_1_aunroll_x_out_o_stall;
    assign load_input0_B1_start_x_i_stall_succ = bb_load_input0_B2_out_stall_in_0;
    assign load_input0_B1_start_x_i_valid_loop = bb_load_input0_B1_start_out_valid_in_0;
    assign load_input0_B1_start_x_i_valid_pred = bb_load_input0_B1_start_out_valid_in_1;
    assign load_input0_B1_start_x_i_valid_succ = bb_load_input0_B2_out_valid_out_0;
    assign load_input0_B1_start_x_i_capture_bitsignaltemp = load_input0_B1_start_x_i_capture[0];
    assign load_input0_B1_start_x_i_clear_bitsignaltemp = load_input0_B1_start_x_i_clear[0];
    assign load_input0_B1_start_x_i_enable_bitsignaltemp = load_input0_B1_start_x_i_enable[0];
    assign load_input0_B1_start_x_i_shift_bitsignaltemp = load_input0_B1_start_x_i_shift[0];
    assign load_input0_B1_start_x_i_stall_pred_bitsignaltemp = load_input0_B1_start_x_i_stall_pred[0];
    assign load_input0_B1_start_x_i_stall_succ_bitsignaltemp = load_input0_B1_start_x_i_stall_succ[0];
    assign load_input0_B1_start_x_i_valid_loop_bitsignaltemp = load_input0_B1_start_x_i_valid_loop[0];
    assign load_input0_B1_start_x_i_valid_pred_bitsignaltemp = load_input0_B1_start_x_i_valid_pred[0];
    assign load_input0_B1_start_x_i_valid_succ_bitsignaltemp = load_input0_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B1.start")
    ) theload_input0_B1_start_x (
        .i_capture(load_input0_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B10_x(EXTIFACE,202)
    assign load_input0_B10_x_i_capture = GND_q;
    assign load_input0_B10_x_i_clear = GND_q;
    assign load_input0_B10_x_i_enable = VCC_q;
    assign load_input0_B10_x_i_shift = GND_q;
    assign load_input0_B10_x_i_stall_pred = loop_limiter_load_input03_out_o_stall;
    assign load_input0_B10_x_i_stall_succ = bb_load_input0_B13_out_stall_in_0;
    assign load_input0_B10_x_i_valid_loop = bb_load_input0_B10_out_valid_in_0;
    assign load_input0_B10_x_i_valid_pred = bb_load_input0_B10_out_valid_in_1;
    assign load_input0_B10_x_i_valid_succ = bb_load_input0_B13_out_valid_out_0;
    assign load_input0_B10_x_i_capture_bitsignaltemp = load_input0_B10_x_i_capture[0];
    assign load_input0_B10_x_i_clear_bitsignaltemp = load_input0_B10_x_i_clear[0];
    assign load_input0_B10_x_i_enable_bitsignaltemp = load_input0_B10_x_i_enable[0];
    assign load_input0_B10_x_i_shift_bitsignaltemp = load_input0_B10_x_i_shift[0];
    assign load_input0_B10_x_i_stall_pred_bitsignaltemp = load_input0_B10_x_i_stall_pred[0];
    assign load_input0_B10_x_i_stall_succ_bitsignaltemp = load_input0_B10_x_i_stall_succ[0];
    assign load_input0_B10_x_i_valid_loop_bitsignaltemp = load_input0_B10_x_i_valid_loop[0];
    assign load_input0_B10_x_i_valid_pred_bitsignaltemp = load_input0_B10_x_i_valid_pred[0];
    assign load_input0_B10_x_i_valid_succ_bitsignaltemp = load_input0_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B10")
    ) theload_input0_B10_x (
        .i_capture(load_input0_B10_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B10_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B10_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B12_x(EXTIFACE,203)
    assign load_input0_B12_x_i_capture = GND_q;
    assign load_input0_B12_x_i_clear = GND_q;
    assign load_input0_B12_x_i_enable = VCC_q;
    assign load_input0_B12_x_i_shift = GND_q;
    assign load_input0_B12_x_i_stall_pred = loop_limiter_load_input05_out_o_stall;
    assign load_input0_B12_x_i_stall_succ = bb_load_input0_B15_out_stall_in_0;
    assign load_input0_B12_x_i_valid_loop = bb_load_input0_B12_out_valid_in_0;
    assign load_input0_B12_x_i_valid_pred = bb_load_input0_B12_out_valid_in_1;
    assign load_input0_B12_x_i_valid_succ = bb_load_input0_B15_out_valid_out_0;
    assign load_input0_B12_x_i_capture_bitsignaltemp = load_input0_B12_x_i_capture[0];
    assign load_input0_B12_x_i_clear_bitsignaltemp = load_input0_B12_x_i_clear[0];
    assign load_input0_B12_x_i_enable_bitsignaltemp = load_input0_B12_x_i_enable[0];
    assign load_input0_B12_x_i_shift_bitsignaltemp = load_input0_B12_x_i_shift[0];
    assign load_input0_B12_x_i_stall_pred_bitsignaltemp = load_input0_B12_x_i_stall_pred[0];
    assign load_input0_B12_x_i_stall_succ_bitsignaltemp = load_input0_B12_x_i_stall_succ[0];
    assign load_input0_B12_x_i_valid_loop_bitsignaltemp = load_input0_B12_x_i_valid_loop[0];
    assign load_input0_B12_x_i_valid_pred_bitsignaltemp = load_input0_B12_x_i_valid_pred[0];
    assign load_input0_B12_x_i_valid_succ_bitsignaltemp = load_input0_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B12")
    ) theload_input0_B12_x (
        .i_capture(load_input0_B12_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B12_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B12_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B14_x(EXTIFACE,204)
    assign load_input0_B14_x_i_capture = GND_q;
    assign load_input0_B14_x_i_clear = GND_q;
    assign load_input0_B14_x_i_enable = VCC_q;
    assign load_input0_B14_x_i_shift = GND_q;
    assign load_input0_B14_x_i_stall_pred = loop_limiter_load_input06_out_o_stall;
    assign load_input0_B14_x_i_stall_succ = bb_load_input0_B17_out_stall_in_0;
    assign load_input0_B14_x_i_valid_loop = bb_load_input0_B14_out_valid_in_0;
    assign load_input0_B14_x_i_valid_pred = bb_load_input0_B14_out_valid_in_1;
    assign load_input0_B14_x_i_valid_succ = bb_load_input0_B17_out_valid_out_0;
    assign load_input0_B14_x_i_capture_bitsignaltemp = load_input0_B14_x_i_capture[0];
    assign load_input0_B14_x_i_clear_bitsignaltemp = load_input0_B14_x_i_clear[0];
    assign load_input0_B14_x_i_enable_bitsignaltemp = load_input0_B14_x_i_enable[0];
    assign load_input0_B14_x_i_shift_bitsignaltemp = load_input0_B14_x_i_shift[0];
    assign load_input0_B14_x_i_stall_pred_bitsignaltemp = load_input0_B14_x_i_stall_pred[0];
    assign load_input0_B14_x_i_stall_succ_bitsignaltemp = load_input0_B14_x_i_stall_succ[0];
    assign load_input0_B14_x_i_valid_loop_bitsignaltemp = load_input0_B14_x_i_valid_loop[0];
    assign load_input0_B14_x_i_valid_pred_bitsignaltemp = load_input0_B14_x_i_valid_pred[0];
    assign load_input0_B14_x_i_valid_succ_bitsignaltemp = load_input0_B14_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B14")
    ) theload_input0_B14_x (
        .i_capture(load_input0_B14_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B14_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B14_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B14_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B14_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B14_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B14_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B14_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B14_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B16_x(EXTIFACE,205)
    assign load_input0_B16_x_i_capture = GND_q;
    assign load_input0_B16_x_i_clear = GND_q;
    assign load_input0_B16_x_i_enable = VCC_q;
    assign load_input0_B16_x_i_shift = GND_q;
    assign load_input0_B16_x_i_stall_pred = loop_limiter_load_input07_out_o_stall;
    assign load_input0_B16_x_i_stall_succ = bb_load_input0_B16_out_stall_in_0;
    assign load_input0_B16_x_i_valid_loop = bb_load_input0_B16_out_valid_in_0;
    assign load_input0_B16_x_i_valid_pred = bb_load_input0_B16_out_valid_in_1;
    assign load_input0_B16_x_i_valid_succ = bb_load_input0_B16_out_valid_out_0;
    assign load_input0_B16_x_i_capture_bitsignaltemp = load_input0_B16_x_i_capture[0];
    assign load_input0_B16_x_i_clear_bitsignaltemp = load_input0_B16_x_i_clear[0];
    assign load_input0_B16_x_i_enable_bitsignaltemp = load_input0_B16_x_i_enable[0];
    assign load_input0_B16_x_i_shift_bitsignaltemp = load_input0_B16_x_i_shift[0];
    assign load_input0_B16_x_i_stall_pred_bitsignaltemp = load_input0_B16_x_i_stall_pred[0];
    assign load_input0_B16_x_i_stall_succ_bitsignaltemp = load_input0_B16_x_i_stall_succ[0];
    assign load_input0_B16_x_i_valid_loop_bitsignaltemp = load_input0_B16_x_i_valid_loop[0];
    assign load_input0_B16_x_i_valid_pred_bitsignaltemp = load_input0_B16_x_i_valid_pred[0];
    assign load_input0_B16_x_i_valid_succ_bitsignaltemp = load_input0_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B16")
    ) theload_input0_B16_x (
        .i_capture(load_input0_B16_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B16_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B16_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B3_x(EXTIFACE,206)
    assign load_input0_B3_x_i_capture = GND_q;
    assign load_input0_B3_x_i_clear = GND_q;
    assign load_input0_B3_x_i_enable = VCC_q;
    assign load_input0_B3_x_i_shift = GND_q;
    assign load_input0_B3_x_i_stall_pred = loop_limiter_load_input00_out_o_stall;
    assign load_input0_B3_x_i_stall_succ = bb_load_input0_B20_out_stall_in_0;
    assign load_input0_B3_x_i_valid_loop = bb_load_input0_B3_out_valid_in_0;
    assign load_input0_B3_x_i_valid_pred = bb_load_input0_B3_out_valid_in_1;
    assign load_input0_B3_x_i_valid_succ = bb_load_input0_B20_out_valid_out_0;
    assign load_input0_B3_x_i_capture_bitsignaltemp = load_input0_B3_x_i_capture[0];
    assign load_input0_B3_x_i_clear_bitsignaltemp = load_input0_B3_x_i_clear[0];
    assign load_input0_B3_x_i_enable_bitsignaltemp = load_input0_B3_x_i_enable[0];
    assign load_input0_B3_x_i_shift_bitsignaltemp = load_input0_B3_x_i_shift[0];
    assign load_input0_B3_x_i_stall_pred_bitsignaltemp = load_input0_B3_x_i_stall_pred[0];
    assign load_input0_B3_x_i_stall_succ_bitsignaltemp = load_input0_B3_x_i_stall_succ[0];
    assign load_input0_B3_x_i_valid_loop_bitsignaltemp = load_input0_B3_x_i_valid_loop[0];
    assign load_input0_B3_x_i_valid_pred_bitsignaltemp = load_input0_B3_x_i_valid_pred[0];
    assign load_input0_B3_x_i_valid_succ_bitsignaltemp = load_input0_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B3")
    ) theload_input0_B3_x (
        .i_capture(load_input0_B3_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B3_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B3_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B6_x(EXTIFACE,207)
    assign load_input0_B6_x_i_capture = GND_q;
    assign load_input0_B6_x_i_clear = GND_q;
    assign load_input0_B6_x_i_enable = VCC_q;
    assign load_input0_B6_x_i_shift = GND_q;
    assign load_input0_B6_x_i_stall_pred = loop_limiter_load_input02_out_o_stall;
    assign load_input0_B6_x_i_stall_succ = bb_load_input0_B7_out_stall_in_0;
    assign load_input0_B6_x_i_valid_loop = bb_load_input0_B6_out_valid_in_0;
    assign load_input0_B6_x_i_valid_pred = bb_load_input0_B6_out_valid_in_1;
    assign load_input0_B6_x_i_valid_succ = bb_load_input0_B7_out_valid_out_0;
    assign load_input0_B6_x_i_capture_bitsignaltemp = load_input0_B6_x_i_capture[0];
    assign load_input0_B6_x_i_clear_bitsignaltemp = load_input0_B6_x_i_clear[0];
    assign load_input0_B6_x_i_enable_bitsignaltemp = load_input0_B6_x_i_enable[0];
    assign load_input0_B6_x_i_shift_bitsignaltemp = load_input0_B6_x_i_shift[0];
    assign load_input0_B6_x_i_stall_pred_bitsignaltemp = load_input0_B6_x_i_stall_pred[0];
    assign load_input0_B6_x_i_stall_succ_bitsignaltemp = load_input0_B6_x_i_stall_succ[0];
    assign load_input0_B6_x_i_valid_loop_bitsignaltemp = load_input0_B6_x_i_valid_loop[0];
    assign load_input0_B6_x_i_valid_pred_bitsignaltemp = load_input0_B6_x_i_valid_pred[0];
    assign load_input0_B6_x_i_valid_succ_bitsignaltemp = load_input0_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B6")
    ) theload_input0_B6_x (
        .i_capture(load_input0_B6_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B6_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B6_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B8_x(EXTIFACE,208)
    assign load_input0_B8_x_i_capture = GND_q;
    assign load_input0_B8_x_i_clear = GND_q;
    assign load_input0_B8_x_i_enable = VCC_q;
    assign load_input0_B8_x_i_shift = GND_q;
    assign load_input0_B8_x_i_stall_pred = loop_limiter_load_input04_out_o_stall;
    assign load_input0_B8_x_i_stall_succ = bb_load_input0_B8_out_stall_in_0;
    assign load_input0_B8_x_i_valid_loop = bb_load_input0_B8_out_valid_in_0;
    assign load_input0_B8_x_i_valid_pred = bb_load_input0_B8_out_valid_in_1;
    assign load_input0_B8_x_i_valid_succ = bb_load_input0_B8_out_valid_out_0;
    assign load_input0_B8_x_i_capture_bitsignaltemp = load_input0_B8_x_i_capture[0];
    assign load_input0_B8_x_i_clear_bitsignaltemp = load_input0_B8_x_i_clear[0];
    assign load_input0_B8_x_i_enable_bitsignaltemp = load_input0_B8_x_i_enable[0];
    assign load_input0_B8_x_i_shift_bitsignaltemp = load_input0_B8_x_i_shift[0];
    assign load_input0_B8_x_i_stall_pred_bitsignaltemp = load_input0_B8_x_i_stall_pred[0];
    assign load_input0_B8_x_i_stall_succ_bitsignaltemp = load_input0_B8_x_i_stall_succ[0];
    assign load_input0_B8_x_i_valid_loop_bitsignaltemp = load_input0_B8_x_i_valid_loop[0];
    assign load_input0_B8_x_i_valid_pred_bitsignaltemp = load_input0_B8_x_i_valid_pred[0];
    assign load_input0_B8_x_i_valid_succ_bitsignaltemp = load_input0_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B8")
    ) theload_input0_B8_x (
        .i_capture(load_input0_B8_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B8_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B8_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B9_x(EXTIFACE,209)
    assign load_input0_B9_x_i_capture = GND_q;
    assign load_input0_B9_x_i_clear = GND_q;
    assign load_input0_B9_x_i_enable = VCC_q;
    assign load_input0_B9_x_i_shift = GND_q;
    assign load_input0_B9_x_i_stall_pred = loop_limiter_load_input01_out_o_stall;
    assign load_input0_B9_x_i_stall_succ = bb_load_input0_B11_out_stall_in_0;
    assign load_input0_B9_x_i_valid_loop = bb_load_input0_B9_out_valid_in_0;
    assign load_input0_B9_x_i_valid_pred = bb_load_input0_B9_out_valid_in_1;
    assign load_input0_B9_x_i_valid_succ = bb_load_input0_B11_out_valid_out_0;
    assign load_input0_B9_x_i_capture_bitsignaltemp = load_input0_B9_x_i_capture[0];
    assign load_input0_B9_x_i_clear_bitsignaltemp = load_input0_B9_x_i_clear[0];
    assign load_input0_B9_x_i_enable_bitsignaltemp = load_input0_B9_x_i_enable[0];
    assign load_input0_B9_x_i_shift_bitsignaltemp = load_input0_B9_x_i_shift[0];
    assign load_input0_B9_x_i_stall_pred_bitsignaltemp = load_input0_B9_x_i_stall_pred[0];
    assign load_input0_B9_x_i_stall_succ_bitsignaltemp = load_input0_B9_x_i_stall_succ[0];
    assign load_input0_B9_x_i_valid_loop_bitsignaltemp = load_input0_B9_x_i_valid_loop[0];
    assign load_input0_B9_x_i_valid_pred_bitsignaltemp = load_input0_B9_x_i_valid_pred[0];
    assign load_input0_B9_x_i_valid_succ_bitsignaltemp = load_input0_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("load_input0.B9")
    ) theload_input0_B9_x (
        .i_capture(load_input0_B9_x_i_capture_bitsignaltemp),
        .i_clear(load_input0_B9_x_i_clear_bitsignaltemp),
        .i_enable(load_input0_B9_x_i_enable_bitsignaltemp),
        .i_shift(load_input0_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(load_input0_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(load_input0_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(load_input0_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(load_input0_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(load_input0_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_load_input0_o_fifoalmost_full(GPOUT,218)
    assign out_iord_bl_call_load_input0_o_fifoalmost_full = bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoalmost_full;

    // out_iord_bl_call_load_input0_o_fifoready(GPOUT,219)
    assign out_iord_bl_call_load_input0_o_fifoready = bb_load_input0_B1_start_out_iord_bl_call_load_input0_o_fifoready;

    // out_iord_bl_input_ctrl0_o_fifoalmost_full(GPOUT,220)
    assign out_iord_bl_input_ctrl0_o_fifoalmost_full = bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoalmost_full;

    // out_iord_bl_input_ctrl0_o_fifoready(GPOUT,221)
    assign out_iord_bl_input_ctrl0_o_fifoready = bb_load_input0_B3_out_iord_bl_input_ctrl0_o_fifoready;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(GPOUT,222)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(GPOUT,223)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = bb_load_input0_B16_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;

    // out_iowr_bl_return_load_input0_o_fifodata(GPOUT,224)
    assign out_iowr_bl_return_load_input0_o_fifodata = bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifodata;

    // out_iowr_bl_return_load_input0_o_fifovalid(GPOUT,225)
    assign out_iowr_bl_return_load_input0_o_fifovalid = bb_load_input0_B2_out_iowr_bl_return_load_input0_o_fifovalid;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address(GPOUT,226)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount(GPOUT,227)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable(GPOUT,228)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable(GPOUT,229)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read(GPOUT,230)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write(GPOUT,231)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write;

    // out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata(GPOUT,232)
    assign out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata = bb_load_input0_B8_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(GPOUT,233)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(GPOUT,234)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(GPOUT,235)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(GPOUT,236)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(GPOUT,237)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(GPOUT,238)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(GPOUT,239)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata = bb_load_input0_B16_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;

    // out_memdep_3_load_input0_avm_address(GPOUT,240)
    assign out_memdep_3_load_input0_avm_address = bb_load_input0_B8_out_memdep_3_load_input0_avm_address;

    // out_memdep_3_load_input0_avm_burstcount(GPOUT,241)
    assign out_memdep_3_load_input0_avm_burstcount = bb_load_input0_B8_out_memdep_3_load_input0_avm_burstcount;

    // out_memdep_3_load_input0_avm_byteenable(GPOUT,242)
    assign out_memdep_3_load_input0_avm_byteenable = bb_load_input0_B8_out_memdep_3_load_input0_avm_byteenable;

    // out_memdep_3_load_input0_avm_enable(GPOUT,243)
    assign out_memdep_3_load_input0_avm_enable = bb_load_input0_B8_out_memdep_3_load_input0_avm_enable;

    // out_memdep_3_load_input0_avm_read(GPOUT,244)
    assign out_memdep_3_load_input0_avm_read = bb_load_input0_B8_out_memdep_3_load_input0_avm_read;

    // out_memdep_3_load_input0_avm_write(GPOUT,245)
    assign out_memdep_3_load_input0_avm_write = bb_load_input0_B8_out_memdep_3_load_input0_avm_write;

    // out_memdep_3_load_input0_avm_writedata(GPOUT,246)
    assign out_memdep_3_load_input0_avm_writedata = bb_load_input0_B8_out_memdep_3_load_input0_avm_writedata;

    // out_stall_out(GPOUT,247)
    assign out_stall_out = bb_load_input0_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,248)
    assign out_valid_out = GND_q;

endmodule
