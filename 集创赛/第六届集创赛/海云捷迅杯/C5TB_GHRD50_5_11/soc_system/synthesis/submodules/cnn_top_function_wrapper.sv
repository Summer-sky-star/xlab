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

// SystemVerilog created from cnn_top_function_wrapper
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_function_wrapper (
    input wire [511:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_readdata,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_waitrequest,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_writeack,
    input wire [511:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_readdata,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_waitrequest,
    input wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_writeack,
    input wire [127:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_readdata,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_writeack,
    input wire [127:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_readdata,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_writeack,
    input wire [127:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_readdata,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_writeack,
    input wire [127:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_readdata,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_writeack,
    input wire [127:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_readdata,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_writeack,
    input wire [1023:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_readdata,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_writeack,
    input wire [127:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_readdata,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_writeack,
    input wire [1023:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_readdata,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_waitrequest,
    input wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_writeack,
    input wire [511:0] avm_memdep_36_conv_process_readdata,
    input wire [0:0] avm_memdep_36_conv_process_readdatavalid,
    input wire [0:0] avm_memdep_36_conv_process_waitrequest,
    input wire [0:0] avm_memdep_36_conv_process_writeack,
    input wire [127:0] avm_memdep_3_load_input0_readdata,
    input wire [0:0] avm_memdep_3_load_input0_readdatavalid,
    input wire [0:0] avm_memdep_3_load_input0_waitrequest,
    input wire [0:0] avm_memdep_3_load_input0_writeack,
    input wire [127:0] avm_memdep_3_load_input1_readdata,
    input wire [0:0] avm_memdep_3_load_input1_readdatavalid,
    input wire [0:0] avm_memdep_3_load_input1_waitrequest,
    input wire [0:0] avm_memdep_3_load_input1_writeack,
    input wire [1023:0] avm_memdep_3_load_weight0_readdata,
    input wire [0:0] avm_memdep_3_load_weight0_readdatavalid,
    input wire [0:0] avm_memdep_3_load_weight0_waitrequest,
    input wire [0:0] avm_memdep_3_load_weight0_writeack,
    input wire [1023:0] avm_memdep_3_load_weight1_readdata,
    input wire [0:0] avm_memdep_3_load_weight1_readdatavalid,
    input wire [0:0] avm_memdep_3_load_weight1_waitrequest,
    input wire [0:0] avm_memdep_3_load_weight1_writeack,
    input wire [511:0] avm_memdep_5_conv_process_readdata,
    input wire [0:0] avm_memdep_5_conv_process_readdatavalid,
    input wire [0:0] avm_memdep_5_conv_process_waitrequest,
    input wire [0:0] avm_memdep_5_conv_process_writeack,
    input wire [31:0] avm_unnamed_cnn_top80_cnn_top_readdata,
    input wire [0:0] avm_unnamed_cnn_top80_cnn_top_readdatavalid,
    input wire [0:0] avm_unnamed_cnn_top80_cnn_top_waitrequest,
    input wire [0:0] avm_unnamed_cnn_top80_cnn_top_writeack,
    input wire [31:0] avm_unnamed_cnn_top9_cnn_top_readdata,
    input wire [0:0] avm_unnamed_cnn_top9_cnn_top_readdatavalid,
    input wire [0:0] avm_unnamed_cnn_top9_cnn_top_waitrequest,
    input wire [0:0] avm_unnamed_cnn_top9_cnn_top_writeack,
    input wire [31:0] avm_unnamed_conv_process101_conv_process_readdata,
    input wire [0:0] avm_unnamed_conv_process101_conv_process_readdatavalid,
    input wire [0:0] avm_unnamed_conv_process101_conv_process_waitrequest,
    input wire [0:0] avm_unnamed_conv_process101_conv_process_writeack,
    input wire [31:0] avm_unnamed_conv_process20_conv_process_readdata,
    input wire [0:0] avm_unnamed_conv_process20_conv_process_readdatavalid,
    input wire [0:0] avm_unnamed_conv_process20_conv_process_waitrequest,
    input wire [0:0] avm_unnamed_conv_process20_conv_process_writeack,
    input wire [31:0] avm_unnamed_conv_process21_conv_process_readdata,
    input wire [0:0] avm_unnamed_conv_process21_conv_process_readdatavalid,
    input wire [0:0] avm_unnamed_conv_process21_conv_process_waitrequest,
    input wire [0:0] avm_unnamed_conv_process21_conv_process_writeack,
    input wire [319:0] avst_iord_bl_call_cnn_top_data,
    input wire [0:0] avst_iord_bl_call_cnn_top_valid,
    input wire [0:0] avst_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_call_conv_process_almostfull,
    input wire [0:0] avst_iowr_bl_call_load_input0_almostfull,
    input wire [0:0] avst_iowr_bl_call_load_input1_almostfull,
    input wire [0:0] avst_iowr_bl_call_load_weight0_almostfull,
    input wire [0:0] avst_iowr_bl_call_load_weight1_almostfull,
    input wire [0:0] avst_iowr_bl_input_ctrl0_0_almostfull,
    input wire [0:0] avst_iowr_bl_input_ctrl0_1_almostfull,
    input wire [0:0] avst_iowr_bl_input_ctrl1_0_almostfull,
    input wire [0:0] avst_iowr_bl_input_ctrl1_1_almostfull,
    input wire [0:0] avst_iowr_bl_return_cnn_top_almostfull,
    input wire [0:0] avst_iowr_bl_return_cnn_top_ready,
    input wire [0:0] avst_iowr_bl_return_conv_process_almostfull,
    input wire [0:0] avst_iowr_bl_return_load_input0_almostfull,
    input wire [0:0] avst_iowr_bl_return_load_input1_almostfull,
    input wire [0:0] avst_iowr_bl_return_load_weight0_almostfull,
    input wire [0:0] avst_iowr_bl_return_load_weight1_almostfull,
    input wire [0:0] avst_iowr_bl_weight_ctrl0_0_almostfull,
    input wire [0:0] avst_iowr_bl_weight_ctrl0_1_almostfull,
    input wire [0:0] avst_iowr_bl_weight_ctrl1_0_almostfull,
    input wire [0:0] avst_iowr_bl_weight_ctrl1_1_almostfull,
    input wire [63:0] ddr_in1,
    input wire [63:0] ddr_out1,
    input wire [63:0] ddr_scale,
    input wire [63:0] ddr_w1,
    input wire [63:0] param,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_address,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_burstcount,
    output wire [63:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_byteenable,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_enable,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_read,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_write,
    output wire [511:0] avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_writedata,
    output wire [31:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_address,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_burstcount,
    output wire [63:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_byteenable,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_enable,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_read,
    output wire [0:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_write,
    output wire [511:0] avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_writedata,
    output wire [31:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_address,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_enable,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_read,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_write,
    output wire [127:0] avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_writedata,
    output wire [31:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_address,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_enable,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_read,
    output wire [0:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_write,
    output wire [127:0] avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_writedata,
    output wire [31:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_address,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_enable,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_read,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_write,
    output wire [127:0] avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_writedata,
    output wire [31:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_address,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_enable,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_read,
    output wire [0:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_write,
    output wire [127:0] avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_writedata,
    output wire [31:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_address,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_enable,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_read,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_write,
    output wire [127:0] avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_writedata,
    output wire [31:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_address,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_burstcount,
    output wire [127:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_enable,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_read,
    output wire [0:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_write,
    output wire [1023:0] avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_writedata,
    output wire [31:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_address,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_burstcount,
    output wire [15:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_enable,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_read,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_write,
    output wire [127:0] avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_writedata,
    output wire [31:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_address,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_burstcount,
    output wire [127:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_byteenable,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_enable,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_read,
    output wire [0:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_write,
    output wire [1023:0] avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_writedata,
    output wire [31:0] avm_memdep_36_conv_process_address,
    output wire [0:0] avm_memdep_36_conv_process_burstcount,
    output wire [63:0] avm_memdep_36_conv_process_byteenable,
    output wire [0:0] avm_memdep_36_conv_process_enable,
    output wire [0:0] avm_memdep_36_conv_process_read,
    output wire [0:0] avm_memdep_36_conv_process_write,
    output wire [511:0] avm_memdep_36_conv_process_writedata,
    output wire [31:0] avm_memdep_3_load_input0_address,
    output wire [0:0] avm_memdep_3_load_input0_burstcount,
    output wire [15:0] avm_memdep_3_load_input0_byteenable,
    output wire [0:0] avm_memdep_3_load_input0_enable,
    output wire [0:0] avm_memdep_3_load_input0_read,
    output wire [0:0] avm_memdep_3_load_input0_write,
    output wire [127:0] avm_memdep_3_load_input0_writedata,
    output wire [31:0] avm_memdep_3_load_input1_address,
    output wire [0:0] avm_memdep_3_load_input1_burstcount,
    output wire [15:0] avm_memdep_3_load_input1_byteenable,
    output wire [0:0] avm_memdep_3_load_input1_enable,
    output wire [0:0] avm_memdep_3_load_input1_read,
    output wire [0:0] avm_memdep_3_load_input1_write,
    output wire [127:0] avm_memdep_3_load_input1_writedata,
    output wire [31:0] avm_memdep_3_load_weight0_address,
    output wire [0:0] avm_memdep_3_load_weight0_burstcount,
    output wire [127:0] avm_memdep_3_load_weight0_byteenable,
    output wire [0:0] avm_memdep_3_load_weight0_enable,
    output wire [0:0] avm_memdep_3_load_weight0_read,
    output wire [0:0] avm_memdep_3_load_weight0_write,
    output wire [1023:0] avm_memdep_3_load_weight0_writedata,
    output wire [31:0] avm_memdep_3_load_weight1_address,
    output wire [0:0] avm_memdep_3_load_weight1_burstcount,
    output wire [127:0] avm_memdep_3_load_weight1_byteenable,
    output wire [0:0] avm_memdep_3_load_weight1_enable,
    output wire [0:0] avm_memdep_3_load_weight1_read,
    output wire [0:0] avm_memdep_3_load_weight1_write,
    output wire [1023:0] avm_memdep_3_load_weight1_writedata,
    output wire [31:0] avm_memdep_5_conv_process_address,
    output wire [0:0] avm_memdep_5_conv_process_burstcount,
    output wire [63:0] avm_memdep_5_conv_process_byteenable,
    output wire [0:0] avm_memdep_5_conv_process_enable,
    output wire [0:0] avm_memdep_5_conv_process_read,
    output wire [0:0] avm_memdep_5_conv_process_write,
    output wire [511:0] avm_memdep_5_conv_process_writedata,
    output wire [31:0] avm_unnamed_cnn_top80_cnn_top_address,
    output wire [0:0] avm_unnamed_cnn_top80_cnn_top_burstcount,
    output wire [3:0] avm_unnamed_cnn_top80_cnn_top_byteenable,
    output wire [0:0] avm_unnamed_cnn_top80_cnn_top_enable,
    output wire [0:0] avm_unnamed_cnn_top80_cnn_top_read,
    output wire [0:0] avm_unnamed_cnn_top80_cnn_top_write,
    output wire [31:0] avm_unnamed_cnn_top80_cnn_top_writedata,
    output wire [31:0] avm_unnamed_cnn_top9_cnn_top_address,
    output wire [0:0] avm_unnamed_cnn_top9_cnn_top_burstcount,
    output wire [3:0] avm_unnamed_cnn_top9_cnn_top_byteenable,
    output wire [0:0] avm_unnamed_cnn_top9_cnn_top_enable,
    output wire [0:0] avm_unnamed_cnn_top9_cnn_top_read,
    output wire [0:0] avm_unnamed_cnn_top9_cnn_top_write,
    output wire [31:0] avm_unnamed_cnn_top9_cnn_top_writedata,
    output wire [31:0] avm_unnamed_conv_process101_conv_process_address,
    output wire [0:0] avm_unnamed_conv_process101_conv_process_burstcount,
    output wire [3:0] avm_unnamed_conv_process101_conv_process_byteenable,
    output wire [0:0] avm_unnamed_conv_process101_conv_process_enable,
    output wire [0:0] avm_unnamed_conv_process101_conv_process_read,
    output wire [0:0] avm_unnamed_conv_process101_conv_process_write,
    output wire [31:0] avm_unnamed_conv_process101_conv_process_writedata,
    output wire [31:0] avm_unnamed_conv_process20_conv_process_address,
    output wire [0:0] avm_unnamed_conv_process20_conv_process_burstcount,
    output wire [3:0] avm_unnamed_conv_process20_conv_process_byteenable,
    output wire [0:0] avm_unnamed_conv_process20_conv_process_enable,
    output wire [0:0] avm_unnamed_conv_process20_conv_process_read,
    output wire [0:0] avm_unnamed_conv_process20_conv_process_write,
    output wire [31:0] avm_unnamed_conv_process20_conv_process_writedata,
    output wire [31:0] avm_unnamed_conv_process21_conv_process_address,
    output wire [0:0] avm_unnamed_conv_process21_conv_process_burstcount,
    output wire [3:0] avm_unnamed_conv_process21_conv_process_byteenable,
    output wire [0:0] avm_unnamed_conv_process21_conv_process_enable,
    output wire [0:0] avm_unnamed_conv_process21_conv_process_read,
    output wire [0:0] avm_unnamed_conv_process21_conv_process_write,
    output wire [31:0] avm_unnamed_conv_process21_conv_process_writedata,
    output wire [0:0] avst_iord_bl_call_cnn_top_almost_full,
    output wire [0:0] avst_iord_bl_call_cnn_top_ready,
    output wire [0:0] avst_iowr_bl_return_cnn_top_data,
    output wire [0:0] avst_iowr_bl_return_cnn_top_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] cnn_top_function_out_iord_bl_call_cnn_top_o_fifoalmost_full;
    wire [0:0] cnn_top_function_out_iord_bl_call_cnn_top_o_fifoready;
    wire [0:0] cnn_top_function_out_iord_bl_return_conv_process_o_fifoready;
    wire [0:0] cnn_top_function_out_iord_bl_return_load_input0_o_fifoready;
    wire [0:0] cnn_top_function_out_iord_bl_return_load_input1_o_fifoready;
    wire [0:0] cnn_top_function_out_iord_bl_return_load_weight0_o_fifoready;
    wire [0:0] cnn_top_function_out_iord_bl_return_load_weight1_o_fifoready;
    wire [831:0] cnn_top_function_out_iowr_bl_call_conv_process_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_call_conv_process_o_fifovalid;
    wire [703:0] cnn_top_function_out_iowr_bl_call_load_input0_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_call_load_input0_o_fifovalid;
    wire [703:0] cnn_top_function_out_iowr_bl_call_load_input1_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_call_load_input1_o_fifovalid;
    wire [703:0] cnn_top_function_out_iowr_bl_call_load_weight0_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_call_load_weight0_o_fifovalid;
    wire [703:0] cnn_top_function_out_iowr_bl_call_load_weight1_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_call_load_weight1_o_fifovalid;
    wire [0:0] cnn_top_function_out_iowr_bl_return_cnn_top_o_fifodata;
    wire [0:0] cnn_top_function_out_iowr_bl_return_cnn_top_o_fifovalid;
    wire [31:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_address;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_burstcount;
    wire [3:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_byteenable;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_enable;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_read;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_write;
    wire [31:0] cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_writedata;
    wire [31:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_address;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_burstcount;
    wire [3:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_byteenable;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_enable;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_read;
    wire [0:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_write;
    wire [31:0] cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_writedata;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] conv_process_function_out_iord_bl_call_conv_process_o_fifoready;
    wire [0:0] conv_process_function_out_iowr_bl_return_conv_process_o_fifodata;
    wire [0:0] conv_process_function_out_iowr_bl_return_conv_process_o_fifovalid;
    wire [15:0] conv_process_function_out_iowr_input_ctrl0_o_fifodata;
    wire [0:0] conv_process_function_out_iowr_input_ctrl0_o_fifovalid;
    wire [15:0] conv_process_function_out_iowr_input_ctrl1_o_fifodata;
    wire [0:0] conv_process_function_out_iowr_input_ctrl1_o_fifovalid;
    wire [15:0] conv_process_function_out_iowr_weight_ctrl0_o_fifodata;
    wire [0:0] conv_process_function_out_iowr_weight_ctrl0_o_fifovalid;
    wire [15:0] conv_process_function_out_iowr_weight_ctrl1_o_fifodata;
    wire [0:0] conv_process_function_out_iowr_weight_ctrl1_o_fifovalid;
    wire [31:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;
    wire [63:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    wire [511:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;
    wire [63:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;
    wire [0:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;
    wire [511:0] conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_memdep_36_conv_process_avm_address;
    wire [0:0] conv_process_function_out_memdep_36_conv_process_avm_burstcount;
    wire [63:0] conv_process_function_out_memdep_36_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_memdep_36_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_memdep_36_conv_process_avm_read;
    wire [0:0] conv_process_function_out_memdep_36_conv_process_avm_write;
    wire [511:0] conv_process_function_out_memdep_36_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_memdep_5_conv_process_avm_address;
    wire [0:0] conv_process_function_out_memdep_5_conv_process_avm_burstcount;
    wire [63:0] conv_process_function_out_memdep_5_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_memdep_5_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_memdep_5_conv_process_avm_read;
    wire [0:0] conv_process_function_out_memdep_5_conv_process_avm_write;
    wire [511:0] conv_process_function_out_memdep_5_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_address;
    wire [0:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_burstcount;
    wire [3:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_read;
    wire [0:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_write;
    wire [31:0] conv_process_function_out_unnamed_conv_process101_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_address;
    wire [0:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_burstcount;
    wire [3:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_read;
    wire [0:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_write;
    wire [31:0] conv_process_function_out_unnamed_conv_process20_conv_process_avm_writedata;
    wire [31:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_address;
    wire [0:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_burstcount;
    wire [3:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_byteenable;
    wire [0:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_enable;
    wire [0:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_read;
    wire [0:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_write;
    wire [31:0] conv_process_function_out_unnamed_conv_process21_conv_process_avm_writedata;
    wire [319:0] implicit_input_q;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready;
    wire [1023:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready;
    wire [63:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready;
    wire [1023:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready;
    wire [63:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data;
    wire [0:0] iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid;
    wire [0:0] load_input0_function_out_iord_bl_call_load_input0_o_fifoready;
    wire [0:0] load_input0_function_out_iord_bl_input_ctrl0_o_fifoready;
    wire [63:0] load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [0:0] load_input0_function_out_iowr_bl_return_load_input0_o_fifodata;
    wire [0:0] load_input0_function_out_iowr_bl_return_load_input0_o_fifovalid;
    wire [31:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount;
    wire [15:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write;
    wire [127:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata;
    wire [31:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;
    wire [15:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    wire [0:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    wire [127:0] load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    wire [31:0] load_input0_function_out_memdep_3_load_input0_avm_address;
    wire [0:0] load_input0_function_out_memdep_3_load_input0_avm_burstcount;
    wire [15:0] load_input0_function_out_memdep_3_load_input0_avm_byteenable;
    wire [0:0] load_input0_function_out_memdep_3_load_input0_avm_enable;
    wire [0:0] load_input0_function_out_memdep_3_load_input0_avm_read;
    wire [0:0] load_input0_function_out_memdep_3_load_input0_avm_write;
    wire [127:0] load_input0_function_out_memdep_3_load_input0_avm_writedata;
    wire [0:0] load_input1_function_out_iord_bl_call_load_input1_o_fifoready;
    wire [0:0] load_input1_function_out_iord_bl_input_ctrl1_o_fifoready;
    wire [63:0] load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [0:0] load_input1_function_out_iowr_bl_return_load_input1_o_fifodata;
    wire [0:0] load_input1_function_out_iowr_bl_return_load_input1_o_fifovalid;
    wire [31:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_address;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_burstcount;
    wire [15:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_byteenable;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_enable;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_read;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_write;
    wire [127:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_writedata;
    wire [31:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount;
    wire [15:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read;
    wire [0:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write;
    wire [127:0] load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata;
    wire [31:0] load_input1_function_out_memdep_3_load_input1_avm_address;
    wire [0:0] load_input1_function_out_memdep_3_load_input1_avm_burstcount;
    wire [15:0] load_input1_function_out_memdep_3_load_input1_avm_byteenable;
    wire [0:0] load_input1_function_out_memdep_3_load_input1_avm_enable;
    wire [0:0] load_input1_function_out_memdep_3_load_input1_avm_read;
    wire [0:0] load_input1_function_out_memdep_3_load_input1_avm_write;
    wire [127:0] load_input1_function_out_memdep_3_load_input1_avm_writedata;
    wire [0:0] load_weight0_function_out_iord_bl_call_load_weight0_o_fifoready;
    wire [0:0] load_weight0_function_out_iord_bl_weight_ctrl0_o_fifoready;
    wire [1023:0] load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [0:0] load_weight0_function_out_iowr_bl_return_load_weight0_o_fifodata;
    wire [0:0] load_weight0_function_out_iowr_bl_return_load_weight0_o_fifovalid;
    wire [31:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount;
    wire [15:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write;
    wire [127:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata;
    wire [31:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;
    wire [127:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;
    wire [0:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;
    wire [1023:0] load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;
    wire [31:0] load_weight0_function_out_memdep_3_load_weight0_avm_address;
    wire [0:0] load_weight0_function_out_memdep_3_load_weight0_avm_burstcount;
    wire [127:0] load_weight0_function_out_memdep_3_load_weight0_avm_byteenable;
    wire [0:0] load_weight0_function_out_memdep_3_load_weight0_avm_enable;
    wire [0:0] load_weight0_function_out_memdep_3_load_weight0_avm_read;
    wire [0:0] load_weight0_function_out_memdep_3_load_weight0_avm_write;
    wire [1023:0] load_weight0_function_out_memdep_3_load_weight0_avm_writedata;
    wire [0:0] load_weight1_function_out_iord_bl_call_load_weight1_o_fifoready;
    wire [0:0] load_weight1_function_out_iord_bl_weight_ctrl1_o_fifoready;
    wire [1023:0] load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [0:0] load_weight1_function_out_iowr_bl_return_load_weight1_o_fifodata;
    wire [0:0] load_weight1_function_out_iowr_bl_return_load_weight1_o_fifovalid;
    wire [31:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;
    wire [15:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;
    wire [127:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;
    wire [31:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount;
    wire [127:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read;
    wire [0:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write;
    wire [1023:0] load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata;
    wire [31:0] load_weight1_function_out_memdep_3_load_weight1_avm_address;
    wire [0:0] load_weight1_function_out_memdep_3_load_weight1_avm_burstcount;
    wire [127:0] load_weight1_function_out_memdep_3_load_weight1_avm_byteenable;
    wire [0:0] load_weight1_function_out_memdep_3_load_weight1_avm_enable;
    wire [0:0] load_weight1_function_out_memdep_3_load_weight1_avm_read;
    wire [0:0] load_weight1_function_out_memdep_3_load_weight1_avm_write;
    wire [1023:0] load_weight1_function_out_memdep_3_load_weight1_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // load_weight1_function(BLACKBOX,170)
    cnn_top_load_weight1_function theload_weight1_function (
        .in_arg_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_w1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_weight_ctrl1_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_call_load_weight1_i_fifodata(cnn_top_function_out_iowr_bl_call_load_weight1_o_fifodata),
        .in_iord_bl_call_load_weight1_i_fifovalid(cnn_top_function_out_iowr_bl_call_load_weight1_o_fifovalid),
        .in_iord_bl_weight_ctrl1_i_fifodata(conv_process_function_out_iowr_weight_ctrl1_o_fifodata),
        .in_iord_bl_weight_ctrl1_i_fifovalid(conv_process_function_out_iowr_weight_ctrl1_o_fifovalid),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .in_iowr_bl_return_load_weight1_i_fifoready(cnn_top_function_out_iord_bl_return_load_weight1_o_fifoready),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata(avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_readdata),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid(avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_readdatavalid),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest(avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_waitrequest),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack(avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_writeack),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata(avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_readdata),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid(avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_readdatavalid),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest(avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_waitrequest),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack(avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_writeack),
        .in_memdep_3_load_weight1_avm_readdata(avm_memdep_3_load_weight1_readdata),
        .in_memdep_3_load_weight1_avm_readdatavalid(avm_memdep_3_load_weight1_readdatavalid),
        .in_memdep_3_load_weight1_avm_waitrequest(avm_memdep_3_load_weight1_waitrequest),
        .in_memdep_3_load_weight1_avm_writeack(avm_memdep_3_load_weight1_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_load_weight1_o_fifoalmost_full(),
        .out_iord_bl_call_load_weight1_o_fifoready(load_weight1_function_out_iord_bl_call_load_weight1_o_fifoready),
        .out_iord_bl_weight_ctrl1_o_fifoalmost_full(),
        .out_iord_bl_weight_ctrl1_o_fifoready(load_weight1_function_out_iord_bl_weight_ctrl1_o_fifoready),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_iowr_bl_return_load_weight1_o_fifodata(load_weight1_function_out_iowr_bl_return_load_weight1_o_fifodata),
        .out_iowr_bl_return_load_weight1_o_fifovalid(load_weight1_function_out_iowr_bl_return_load_weight1_o_fifovalid),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata(load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata),
        .out_memdep_3_load_weight1_avm_address(load_weight1_function_out_memdep_3_load_weight1_avm_address),
        .out_memdep_3_load_weight1_avm_burstcount(load_weight1_function_out_memdep_3_load_weight1_avm_burstcount),
        .out_memdep_3_load_weight1_avm_byteenable(load_weight1_function_out_memdep_3_load_weight1_avm_byteenable),
        .out_memdep_3_load_weight1_avm_enable(load_weight1_function_out_memdep_3_load_weight1_avm_enable),
        .out_memdep_3_load_weight1_avm_read(load_weight1_function_out_memdep_3_load_weight1_avm_read),
        .out_memdep_3_load_weight1_avm_write(load_weight1_function_out_memdep_3_load_weight1_avm_write),
        .out_memdep_3_load_weight1_avm_writedata(load_weight1_function_out_memdep_3_load_weight1_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_function(BLACKBOX,169)
    cnn_top_load_weight0_function theload_weight0_function (
        .in_arg_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_w1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_weight_ctrl0_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_call_load_weight0_i_fifodata(cnn_top_function_out_iowr_bl_call_load_weight0_o_fifodata),
        .in_iord_bl_call_load_weight0_i_fifovalid(cnn_top_function_out_iowr_bl_call_load_weight0_o_fifovalid),
        .in_iord_bl_weight_ctrl0_i_fifodata(conv_process_function_out_iowr_weight_ctrl0_o_fifodata),
        .in_iord_bl_weight_ctrl0_i_fifovalid(conv_process_function_out_iowr_weight_ctrl0_o_fifovalid),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .in_iowr_bl_return_load_weight0_i_fifoready(cnn_top_function_out_iord_bl_return_load_weight0_o_fifoready),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdata(avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_readdatavalid(avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_waitrequest(avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writeack(avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_writeack),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata(avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid(avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest(avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack(avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_writeack),
        .in_memdep_3_load_weight0_avm_readdata(avm_memdep_3_load_weight0_readdata),
        .in_memdep_3_load_weight0_avm_readdatavalid(avm_memdep_3_load_weight0_readdatavalid),
        .in_memdep_3_load_weight0_avm_waitrequest(avm_memdep_3_load_weight0_waitrequest),
        .in_memdep_3_load_weight0_avm_writeack(avm_memdep_3_load_weight0_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_load_weight0_o_fifoalmost_full(),
        .out_iord_bl_call_load_weight0_o_fifoready(load_weight0_function_out_iord_bl_call_load_weight0_o_fifoready),
        .out_iord_bl_weight_ctrl0_o_fifoalmost_full(),
        .out_iord_bl_weight_ctrl0_o_fifoready(load_weight0_function_out_iord_bl_weight_ctrl0_o_fifoready),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_iowr_bl_return_load_weight0_o_fifodata(load_weight0_function_out_iowr_bl_return_load_weight0_o_fifodata),
        .out_iowr_bl_return_load_weight0_o_fifovalid(load_weight0_function_out_iowr_bl_return_load_weight0_o_fifovalid),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata(load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata),
        .out_memdep_3_load_weight0_avm_address(load_weight0_function_out_memdep_3_load_weight0_avm_address),
        .out_memdep_3_load_weight0_avm_burstcount(load_weight0_function_out_memdep_3_load_weight0_avm_burstcount),
        .out_memdep_3_load_weight0_avm_byteenable(load_weight0_function_out_memdep_3_load_weight0_avm_byteenable),
        .out_memdep_3_load_weight0_avm_enable(load_weight0_function_out_memdep_3_load_weight0_avm_enable),
        .out_memdep_3_load_weight0_avm_read(load_weight0_function_out_memdep_3_load_weight0_avm_read),
        .out_memdep_3_load_weight0_avm_write(load_weight0_function_out_memdep_3_load_weight0_avm_write),
        .out_memdep_3_load_weight0_avm_writedata(load_weight0_function_out_memdep_3_load_weight0_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input1_function(BLACKBOX,168)
    cnn_top_load_input1_function theload_input1_function (
        .in_arg_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_in1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_input_ctrl1_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_call_load_input1_i_fifodata(cnn_top_function_out_iowr_bl_call_load_input1_o_fifodata),
        .in_iord_bl_call_load_input1_i_fifovalid(cnn_top_function_out_iowr_bl_call_load_input1_o_fifovalid),
        .in_iord_bl_input_ctrl1_i_fifodata(conv_process_function_out_iowr_input_ctrl1_o_fifodata),
        .in_iord_bl_input_ctrl1_i_fifovalid(conv_process_function_out_iowr_input_ctrl1_o_fifovalid),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .in_iowr_bl_return_load_input1_i_fifoready(cnn_top_function_out_iord_bl_return_load_input1_o_fifoready),
        .in_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_readdata(avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_readdata),
        .in_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_readdatavalid(avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_readdatavalid),
        .in_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_waitrequest(avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_waitrequest),
        .in_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_writeack(avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_writeack),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdata(avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_readdata),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdatavalid(avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_readdatavalid),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_waitrequest(avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_waitrequest),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writeack(avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_writeack),
        .in_memdep_3_load_input1_avm_readdata(avm_memdep_3_load_input1_readdata),
        .in_memdep_3_load_input1_avm_readdatavalid(avm_memdep_3_load_input1_readdatavalid),
        .in_memdep_3_load_input1_avm_waitrequest(avm_memdep_3_load_input1_waitrequest),
        .in_memdep_3_load_input1_avm_writeack(avm_memdep_3_load_input1_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_load_input1_o_fifoalmost_full(),
        .out_iord_bl_call_load_input1_o_fifoready(load_input1_function_out_iord_bl_call_load_input1_o_fifoready),
        .out_iord_bl_input_ctrl1_o_fifoalmost_full(),
        .out_iord_bl_input_ctrl1_o_fifoready(load_input1_function_out_iord_bl_input_ctrl1_o_fifoready),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_iowr_bl_return_load_input1_o_fifodata(load_input1_function_out_iowr_bl_return_load_input1_o_fifodata),
        .out_iowr_bl_return_load_input1_o_fifovalid(load_input1_function_out_iowr_bl_return_load_input1_o_fifovalid),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_address(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_address),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_burstcount(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_burstcount),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_byteenable(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_byteenable),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_enable(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_enable),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_read(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_read),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_write(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_write),
        .out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_writedata(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_writedata),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata(load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata),
        .out_memdep_3_load_input1_avm_address(load_input1_function_out_memdep_3_load_input1_avm_address),
        .out_memdep_3_load_input1_avm_burstcount(load_input1_function_out_memdep_3_load_input1_avm_burstcount),
        .out_memdep_3_load_input1_avm_byteenable(load_input1_function_out_memdep_3_load_input1_avm_byteenable),
        .out_memdep_3_load_input1_avm_enable(load_input1_function_out_memdep_3_load_input1_avm_enable),
        .out_memdep_3_load_input1_avm_read(load_input1_function_out_memdep_3_load_input1_avm_read),
        .out_memdep_3_load_input1_avm_write(load_input1_function_out_memdep_3_load_input1_avm_write),
        .out_memdep_3_load_input1_avm_writedata(load_input1_function_out_memdep_3_load_input1_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_function(BLACKBOX,167)
    cnn_top_load_input0_function theload_input0_function (
        .in_arg_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_in1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_input_ctrl0_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_call_load_input0_i_fifodata(cnn_top_function_out_iowr_bl_call_load_input0_o_fifodata),
        .in_iord_bl_call_load_input0_i_fifovalid(cnn_top_function_out_iowr_bl_call_load_input0_o_fifovalid),
        .in_iord_bl_input_ctrl0_i_fifodata(conv_process_function_out_iowr_input_ctrl0_o_fifodata),
        .in_iord_bl_input_ctrl0_i_fifovalid(conv_process_function_out_iowr_input_ctrl0_o_fifovalid),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .in_iowr_bl_return_load_input0_i_fifoready(cnn_top_function_out_iord_bl_return_load_input0_o_fifoready),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdata(avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_readdatavalid(avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_waitrequest(avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writeack(avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_writeack),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata(avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid(avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest(avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack(avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_writeack),
        .in_memdep_3_load_input0_avm_readdata(avm_memdep_3_load_input0_readdata),
        .in_memdep_3_load_input0_avm_readdatavalid(avm_memdep_3_load_input0_readdatavalid),
        .in_memdep_3_load_input0_avm_waitrequest(avm_memdep_3_load_input0_waitrequest),
        .in_memdep_3_load_input0_avm_writeack(avm_memdep_3_load_input0_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_load_input0_o_fifoalmost_full(),
        .out_iord_bl_call_load_input0_o_fifoready(load_input0_function_out_iord_bl_call_load_input0_o_fifoready),
        .out_iord_bl_input_ctrl0_o_fifoalmost_full(),
        .out_iord_bl_input_ctrl0_o_fifoready(load_input0_function_out_iord_bl_input_ctrl0_o_fifoready),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_iowr_bl_return_load_input0_o_fifodata(load_input0_function_out_iowr_bl_return_load_input0_o_fifodata),
        .out_iowr_bl_return_load_input0_o_fifovalid(load_input0_function_out_iowr_bl_return_load_input0_o_fifovalid),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata),
        .out_memdep_3_load_input0_avm_address(load_input0_function_out_memdep_3_load_input0_avm_address),
        .out_memdep_3_load_input0_avm_burstcount(load_input0_function_out_memdep_3_load_input0_avm_burstcount),
        .out_memdep_3_load_input0_avm_byteenable(load_input0_function_out_memdep_3_load_input0_avm_byteenable),
        .out_memdep_3_load_input0_avm_enable(load_input0_function_out_memdep_3_load_input0_avm_enable),
        .out_memdep_3_load_input0_avm_read(load_input0_function_out_memdep_3_load_input0_avm_read),
        .out_memdep_3_load_input0_avm_write(load_input0_function_out_memdep_3_load_input0_avm_write),
        .out_memdep_3_load_input0_avm_writedata(load_input0_function_out_memdep_3_load_input0_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // not_stall(LOGICAL,172)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,41)
    assign implicit_input_q = {ddr_scale, param, ddr_out1, ddr_w1, ddr_in1};

    // cnn_top_function(BLACKBOX,33)
    cnn_top_function thecnn_top_function (
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_in1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_out1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_scale(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_w1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_param(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_call_cnn_top_i_fifodata(implicit_input_q),
        .in_iord_bl_call_cnn_top_i_fifovalid(start),
        .in_iord_bl_return_conv_process_i_fifodata(conv_process_function_out_iowr_bl_return_conv_process_o_fifodata),
        .in_iord_bl_return_conv_process_i_fifovalid(conv_process_function_out_iowr_bl_return_conv_process_o_fifovalid),
        .in_iord_bl_return_load_input0_i_fifodata(load_input0_function_out_iowr_bl_return_load_input0_o_fifodata),
        .in_iord_bl_return_load_input0_i_fifovalid(load_input0_function_out_iowr_bl_return_load_input0_o_fifovalid),
        .in_iord_bl_return_load_input1_i_fifodata(load_input1_function_out_iowr_bl_return_load_input1_o_fifodata),
        .in_iord_bl_return_load_input1_i_fifovalid(load_input1_function_out_iowr_bl_return_load_input1_o_fifovalid),
        .in_iord_bl_return_load_weight0_i_fifodata(load_weight0_function_out_iowr_bl_return_load_weight0_o_fifodata),
        .in_iord_bl_return_load_weight0_i_fifovalid(load_weight0_function_out_iowr_bl_return_load_weight0_o_fifovalid),
        .in_iord_bl_return_load_weight1_i_fifodata(load_weight1_function_out_iowr_bl_return_load_weight1_o_fifodata),
        .in_iord_bl_return_load_weight1_i_fifovalid(load_weight1_function_out_iowr_bl_return_load_weight1_o_fifovalid),
        .in_iowr_bl_call_conv_process_i_fifoready(conv_process_function_out_iord_bl_call_conv_process_o_fifoready),
        .in_iowr_bl_call_load_input0_i_fifoready(load_input0_function_out_iord_bl_call_load_input0_o_fifoready),
        .in_iowr_bl_call_load_input1_i_fifoready(load_input1_function_out_iord_bl_call_load_input1_o_fifoready),
        .in_iowr_bl_call_load_weight0_i_fifoready(load_weight0_function_out_iord_bl_call_load_weight0_o_fifoready),
        .in_iowr_bl_call_load_weight1_i_fifoready(load_weight1_function_out_iord_bl_call_load_weight1_o_fifoready),
        .in_iowr_bl_return_cnn_top_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_cnn_top80_cnn_top_avm_readdata(avm_unnamed_cnn_top80_cnn_top_readdata),
        .in_unnamed_cnn_top80_cnn_top_avm_readdatavalid(avm_unnamed_cnn_top80_cnn_top_readdatavalid),
        .in_unnamed_cnn_top80_cnn_top_avm_waitrequest(avm_unnamed_cnn_top80_cnn_top_waitrequest),
        .in_unnamed_cnn_top80_cnn_top_avm_writeack(avm_unnamed_cnn_top80_cnn_top_writeack),
        .in_unnamed_cnn_top9_cnn_top_avm_readdata(avm_unnamed_cnn_top9_cnn_top_readdata),
        .in_unnamed_cnn_top9_cnn_top_avm_readdatavalid(avm_unnamed_cnn_top9_cnn_top_readdatavalid),
        .in_unnamed_cnn_top9_cnn_top_avm_waitrequest(avm_unnamed_cnn_top9_cnn_top_waitrequest),
        .in_unnamed_cnn_top9_cnn_top_avm_writeack(avm_unnamed_cnn_top9_cnn_top_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_cnn_top_o_fifoalmost_full(cnn_top_function_out_iord_bl_call_cnn_top_o_fifoalmost_full),
        .out_iord_bl_call_cnn_top_o_fifoready(cnn_top_function_out_iord_bl_call_cnn_top_o_fifoready),
        .out_iord_bl_return_conv_process_o_fifoalmost_full(),
        .out_iord_bl_return_conv_process_o_fifoready(cnn_top_function_out_iord_bl_return_conv_process_o_fifoready),
        .out_iord_bl_return_load_input0_o_fifoalmost_full(),
        .out_iord_bl_return_load_input0_o_fifoready(cnn_top_function_out_iord_bl_return_load_input0_o_fifoready),
        .out_iord_bl_return_load_input1_o_fifoalmost_full(),
        .out_iord_bl_return_load_input1_o_fifoready(cnn_top_function_out_iord_bl_return_load_input1_o_fifoready),
        .out_iord_bl_return_load_weight0_o_fifoalmost_full(),
        .out_iord_bl_return_load_weight0_o_fifoready(cnn_top_function_out_iord_bl_return_load_weight0_o_fifoready),
        .out_iord_bl_return_load_weight1_o_fifoalmost_full(),
        .out_iord_bl_return_load_weight1_o_fifoready(cnn_top_function_out_iord_bl_return_load_weight1_o_fifoready),
        .out_iowr_bl_call_conv_process_o_fifodata(cnn_top_function_out_iowr_bl_call_conv_process_o_fifodata),
        .out_iowr_bl_call_conv_process_o_fifovalid(cnn_top_function_out_iowr_bl_call_conv_process_o_fifovalid),
        .out_iowr_bl_call_load_input0_o_fifodata(cnn_top_function_out_iowr_bl_call_load_input0_o_fifodata),
        .out_iowr_bl_call_load_input0_o_fifovalid(cnn_top_function_out_iowr_bl_call_load_input0_o_fifovalid),
        .out_iowr_bl_call_load_input1_o_fifodata(cnn_top_function_out_iowr_bl_call_load_input1_o_fifodata),
        .out_iowr_bl_call_load_input1_o_fifovalid(cnn_top_function_out_iowr_bl_call_load_input1_o_fifovalid),
        .out_iowr_bl_call_load_weight0_o_fifodata(cnn_top_function_out_iowr_bl_call_load_weight0_o_fifodata),
        .out_iowr_bl_call_load_weight0_o_fifovalid(cnn_top_function_out_iowr_bl_call_load_weight0_o_fifovalid),
        .out_iowr_bl_call_load_weight1_o_fifodata(cnn_top_function_out_iowr_bl_call_load_weight1_o_fifodata),
        .out_iowr_bl_call_load_weight1_o_fifovalid(cnn_top_function_out_iowr_bl_call_load_weight1_o_fifovalid),
        .out_iowr_bl_return_cnn_top_o_fifodata(cnn_top_function_out_iowr_bl_return_cnn_top_o_fifodata),
        .out_iowr_bl_return_cnn_top_o_fifovalid(cnn_top_function_out_iowr_bl_return_cnn_top_o_fifovalid),
        .out_stall_out(),
        .out_unnamed_cnn_top80_cnn_top_avm_address(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_address),
        .out_unnamed_cnn_top80_cnn_top_avm_burstcount(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top80_cnn_top_avm_byteenable(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top80_cnn_top_avm_enable(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_enable),
        .out_unnamed_cnn_top80_cnn_top_avm_read(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_read),
        .out_unnamed_cnn_top80_cnn_top_avm_write(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_write),
        .out_unnamed_cnn_top80_cnn_top_avm_writedata(cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_writedata),
        .out_unnamed_cnn_top9_cnn_top_avm_address(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_address),
        .out_unnamed_cnn_top9_cnn_top_avm_burstcount(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top9_cnn_top_avm_byteenable(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top9_cnn_top_avm_enable(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_enable),
        .out_unnamed_cnn_top9_cnn_top_avm_read(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_read),
        .out_unnamed_cnn_top9_cnn_top_avm_write(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_write),
        .out_unnamed_cnn_top9_cnn_top_avm_writedata(cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst(BLACKBOX,166)
    cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0003pe_channel_fifo_inst theiowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst (
        .in_stream_in_data(load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .in_stream_in_valid(load_input1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .in_stream_out_almost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .in_stream_out_ready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_stream_in_ready(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst(BLACKBOX,165)
    cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0002pe_channel_fifo_inst theiowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst (
        .in_stream_in_data(load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .in_stream_in_valid(load_weight1_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .in_stream_out_almost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .in_stream_out_ready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_stream_in_ready(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst(BLACKBOX,164)
    cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0001pe_channel_fifo_inst theiowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst (
        .in_stream_in_data(load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .in_stream_in_valid(load_input0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .in_stream_out_almost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .in_stream_out_ready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_stream_in_ready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst(BLACKBOX,163)
    cnn_top_iowr_bl_acl_c_storage_pipe_V_Pip0000pe_channel_fifo_inst theiowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst (
        .in_stream_in_data(load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .in_stream_in_valid(load_weight0_function_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .in_stream_out_almost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .in_stream_out_ready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_stream_in_ready(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_in_ready),
        .out_stream_out_data(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .out_stream_out_valid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x(CONSTANT,2)
    assign dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // conv_process_function(BLACKBOX,36)
    cnn_top_conv_process_function theconv_process_function (
        .in_arg_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_call(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_out1(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_ddr_scale(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_input_ctrl0_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_input_ctrl1_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_return(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_weight_ctrl0_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_arg_weight_ctrl1_global(dupName_0_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_global_const_x_q),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_data),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_fifo_inst_out_stream_out_valid),
        .in_iord_bl_call_conv_process_i_fifodata(cnn_top_function_out_iowr_bl_call_conv_process_o_fifodata),
        .in_iord_bl_call_conv_process_i_fifovalid(cnn_top_function_out_iowr_bl_call_conv_process_o_fifovalid),
        .in_iowr_bl_return_conv_process_i_fifoready(cnn_top_function_out_iord_bl_return_conv_process_o_fifoready),
        .in_iowr_input_ctrl0_i_fifoready(load_input0_function_out_iord_bl_input_ctrl0_o_fifoready),
        .in_iowr_input_ctrl1_i_fifoready(load_input1_function_out_iord_bl_input_ctrl1_o_fifoready),
        .in_iowr_weight_ctrl0_i_fifoready(load_weight0_function_out_iord_bl_weight_ctrl0_o_fifoready),
        .in_iowr_weight_ctrl1_i_fifoready(load_weight1_function_out_iord_bl_weight_ctrl1_o_fifoready),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata(avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid(avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest(avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack(avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_writeack),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata(avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid(avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest(avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack(avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_writeack),
        .in_memdep_36_conv_process_avm_readdata(avm_memdep_36_conv_process_readdata),
        .in_memdep_36_conv_process_avm_readdatavalid(avm_memdep_36_conv_process_readdatavalid),
        .in_memdep_36_conv_process_avm_waitrequest(avm_memdep_36_conv_process_waitrequest),
        .in_memdep_36_conv_process_avm_writeack(avm_memdep_36_conv_process_writeack),
        .in_memdep_5_conv_process_avm_readdata(avm_memdep_5_conv_process_readdata),
        .in_memdep_5_conv_process_avm_readdatavalid(avm_memdep_5_conv_process_readdatavalid),
        .in_memdep_5_conv_process_avm_waitrequest(avm_memdep_5_conv_process_waitrequest),
        .in_memdep_5_conv_process_avm_writeack(avm_memdep_5_conv_process_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_conv_process101_conv_process_avm_readdata(avm_unnamed_conv_process101_conv_process_readdata),
        .in_unnamed_conv_process101_conv_process_avm_readdatavalid(avm_unnamed_conv_process101_conv_process_readdatavalid),
        .in_unnamed_conv_process101_conv_process_avm_waitrequest(avm_unnamed_conv_process101_conv_process_waitrequest),
        .in_unnamed_conv_process101_conv_process_avm_writeack(avm_unnamed_conv_process101_conv_process_writeack),
        .in_unnamed_conv_process20_conv_process_avm_readdata(avm_unnamed_conv_process20_conv_process_readdata),
        .in_unnamed_conv_process20_conv_process_avm_readdatavalid(avm_unnamed_conv_process20_conv_process_readdatavalid),
        .in_unnamed_conv_process20_conv_process_avm_waitrequest(avm_unnamed_conv_process20_conv_process_waitrequest),
        .in_unnamed_conv_process20_conv_process_avm_writeack(avm_unnamed_conv_process20_conv_process_writeack),
        .in_unnamed_conv_process21_conv_process_avm_readdata(avm_unnamed_conv_process21_conv_process_readdata),
        .in_unnamed_conv_process21_conv_process_avm_readdatavalid(avm_unnamed_conv_process21_conv_process_readdatavalid),
        .in_unnamed_conv_process21_conv_process_avm_waitrequest(avm_unnamed_conv_process21_conv_process_waitrequest),
        .in_unnamed_conv_process21_conv_process_avm_writeack(avm_unnamed_conv_process21_conv_process_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(conv_process_function_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_call_conv_process_o_fifoalmost_full(),
        .out_iord_bl_call_conv_process_o_fifoready(conv_process_function_out_iord_bl_call_conv_process_o_fifoready),
        .out_iowr_bl_return_conv_process_o_fifodata(conv_process_function_out_iowr_bl_return_conv_process_o_fifodata),
        .out_iowr_bl_return_conv_process_o_fifovalid(conv_process_function_out_iowr_bl_return_conv_process_o_fifovalid),
        .out_iowr_input_ctrl0_o_fifodata(conv_process_function_out_iowr_input_ctrl0_o_fifodata),
        .out_iowr_input_ctrl0_o_fifovalid(conv_process_function_out_iowr_input_ctrl0_o_fifovalid),
        .out_iowr_input_ctrl1_o_fifodata(conv_process_function_out_iowr_input_ctrl1_o_fifodata),
        .out_iowr_input_ctrl1_o_fifovalid(conv_process_function_out_iowr_input_ctrl1_o_fifovalid),
        .out_iowr_weight_ctrl0_o_fifodata(conv_process_function_out_iowr_weight_ctrl0_o_fifodata),
        .out_iowr_weight_ctrl0_o_fifovalid(conv_process_function_out_iowr_weight_ctrl0_o_fifovalid),
        .out_iowr_weight_ctrl1_o_fifodata(conv_process_function_out_iowr_weight_ctrl1_o_fifodata),
        .out_iowr_weight_ctrl1_o_fifovalid(conv_process_function_out_iowr_weight_ctrl1_o_fifovalid),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata(conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata),
        .out_memdep_36_conv_process_avm_address(conv_process_function_out_memdep_36_conv_process_avm_address),
        .out_memdep_36_conv_process_avm_burstcount(conv_process_function_out_memdep_36_conv_process_avm_burstcount),
        .out_memdep_36_conv_process_avm_byteenable(conv_process_function_out_memdep_36_conv_process_avm_byteenable),
        .out_memdep_36_conv_process_avm_enable(conv_process_function_out_memdep_36_conv_process_avm_enable),
        .out_memdep_36_conv_process_avm_read(conv_process_function_out_memdep_36_conv_process_avm_read),
        .out_memdep_36_conv_process_avm_write(conv_process_function_out_memdep_36_conv_process_avm_write),
        .out_memdep_36_conv_process_avm_writedata(conv_process_function_out_memdep_36_conv_process_avm_writedata),
        .out_memdep_5_conv_process_avm_address(conv_process_function_out_memdep_5_conv_process_avm_address),
        .out_memdep_5_conv_process_avm_burstcount(conv_process_function_out_memdep_5_conv_process_avm_burstcount),
        .out_memdep_5_conv_process_avm_byteenable(conv_process_function_out_memdep_5_conv_process_avm_byteenable),
        .out_memdep_5_conv_process_avm_enable(conv_process_function_out_memdep_5_conv_process_avm_enable),
        .out_memdep_5_conv_process_avm_read(conv_process_function_out_memdep_5_conv_process_avm_read),
        .out_memdep_5_conv_process_avm_write(conv_process_function_out_memdep_5_conv_process_avm_write),
        .out_memdep_5_conv_process_avm_writedata(conv_process_function_out_memdep_5_conv_process_avm_writedata),
        .out_o_active_unnamed_conv_process101(),
        .out_stall_out(),
        .out_unnamed_conv_process101_conv_process_avm_address(conv_process_function_out_unnamed_conv_process101_conv_process_avm_address),
        .out_unnamed_conv_process101_conv_process_avm_burstcount(conv_process_function_out_unnamed_conv_process101_conv_process_avm_burstcount),
        .out_unnamed_conv_process101_conv_process_avm_byteenable(conv_process_function_out_unnamed_conv_process101_conv_process_avm_byteenable),
        .out_unnamed_conv_process101_conv_process_avm_enable(conv_process_function_out_unnamed_conv_process101_conv_process_avm_enable),
        .out_unnamed_conv_process101_conv_process_avm_read(conv_process_function_out_unnamed_conv_process101_conv_process_avm_read),
        .out_unnamed_conv_process101_conv_process_avm_write(conv_process_function_out_unnamed_conv_process101_conv_process_avm_write),
        .out_unnamed_conv_process101_conv_process_avm_writedata(conv_process_function_out_unnamed_conv_process101_conv_process_avm_writedata),
        .out_unnamed_conv_process20_conv_process_avm_address(conv_process_function_out_unnamed_conv_process20_conv_process_avm_address),
        .out_unnamed_conv_process20_conv_process_avm_burstcount(conv_process_function_out_unnamed_conv_process20_conv_process_avm_burstcount),
        .out_unnamed_conv_process20_conv_process_avm_byteenable(conv_process_function_out_unnamed_conv_process20_conv_process_avm_byteenable),
        .out_unnamed_conv_process20_conv_process_avm_enable(conv_process_function_out_unnamed_conv_process20_conv_process_avm_enable),
        .out_unnamed_conv_process20_conv_process_avm_read(conv_process_function_out_unnamed_conv_process20_conv_process_avm_read),
        .out_unnamed_conv_process20_conv_process_avm_write(conv_process_function_out_unnamed_conv_process20_conv_process_avm_write),
        .out_unnamed_conv_process20_conv_process_avm_writedata(conv_process_function_out_unnamed_conv_process20_conv_process_avm_writedata),
        .out_unnamed_conv_process21_conv_process_avm_address(conv_process_function_out_unnamed_conv_process21_conv_process_avm_address),
        .out_unnamed_conv_process21_conv_process_avm_burstcount(conv_process_function_out_unnamed_conv_process21_conv_process_avm_burstcount),
        .out_unnamed_conv_process21_conv_process_avm_byteenable(conv_process_function_out_unnamed_conv_process21_conv_process_avm_byteenable),
        .out_unnamed_conv_process21_conv_process_avm_enable(conv_process_function_out_unnamed_conv_process21_conv_process_avm_enable),
        .out_unnamed_conv_process21_conv_process_avm_read(conv_process_function_out_unnamed_conv_process21_conv_process_avm_read),
        .out_unnamed_conv_process21_conv_process_avm_write(conv_process_function_out_unnamed_conv_process21_conv_process_avm_write),
        .out_unnamed_conv_process21_conv_process_avm_writedata(conv_process_function_out_unnamed_conv_process21_conv_process_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_address(GPOUT,173)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_address = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_burstcount(GPOUT,174)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_burstcount = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_byteenable(GPOUT,175)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_byteenable = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_enable(GPOUT,176)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_enable = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_read(GPOUT,177)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_read = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_write(GPOUT,178)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_write = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;

    // avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_writedata(GPOUT,179)
    assign avm_memcoalesce_load_conv_process_fpgaunique_227_conv_process_writedata = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_address(GPOUT,180)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_address = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_burstcount(GPOUT,181)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_burstcount = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_byteenable(GPOUT,182)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_byteenable = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_enable(GPOUT,183)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_enable = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_read(GPOUT,184)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_read = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_write(GPOUT,185)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_write = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;

    // avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_writedata(GPOUT,186)
    assign avm_memcoalesce_load_conv_process_fpgaunique_238_conv_process_writedata = conv_process_function_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_address(GPOUT,187)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_address = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_address;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_burstcount(GPOUT,188)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_burstcount = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_burstcount;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_byteenable(GPOUT,189)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_byteenable = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_byteenable;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_enable(GPOUT,190)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_enable = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_enable;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_read(GPOUT,191)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_read = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_read;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_write(GPOUT,192)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_write = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_write;

    // avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_writedata(GPOUT,193)
    assign avm_memcoalesce_load_load_input0_fpgaunique_155_load_input0_writedata = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_155_load_input0_avm_writedata;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_address(GPOUT,194)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_address = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_burstcount(GPOUT,195)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_burstcount = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_byteenable(GPOUT,196)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_byteenable = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_enable(GPOUT,197)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_enable = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_read(GPOUT,198)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_read = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_write(GPOUT,199)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_write = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;

    // avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_writedata(GPOUT,200)
    assign avm_memcoalesce_load_load_input0_fpgaunique_164_load_input0_writedata = load_input0_function_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_address(GPOUT,201)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_address = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_address;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_burstcount(GPOUT,202)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_burstcount = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_burstcount;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_byteenable(GPOUT,203)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_byteenable = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_byteenable;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_enable(GPOUT,204)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_enable = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_enable;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_read(GPOUT,205)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_read = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_read;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_write(GPOUT,206)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_write = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_write;

    // avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_writedata(GPOUT,207)
    assign avm_memcoalesce_load_load_input1_fpgaunique_155_load_input1_writedata = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_155_load_input1_avm_writedata;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_address(GPOUT,208)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_address = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_burstcount(GPOUT,209)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_burstcount = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_byteenable(GPOUT,210)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_byteenable = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_enable(GPOUT,211)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_enable = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_read(GPOUT,212)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_read = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_write(GPOUT,213)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_write = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write;

    // avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_writedata(GPOUT,214)
    assign avm_memcoalesce_load_load_input1_fpgaunique_164_load_input1_writedata = load_input1_function_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_address(GPOUT,215)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_address = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_address;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_burstcount(GPOUT,216)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_burstcount = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_burstcount;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_byteenable(GPOUT,217)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_byteenable = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_byteenable;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_enable(GPOUT,218)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_enable = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_enable;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_read(GPOUT,219)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_read = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_read;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_write(GPOUT,220)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_write = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_write;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_writedata(GPOUT,221)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_writedata = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1375_load_weight0_avm_writedata;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_address(GPOUT,222)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_address = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_burstcount(GPOUT,223)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_burstcount = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_byteenable(GPOUT,224)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_byteenable = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_enable(GPOUT,225)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_enable = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_read(GPOUT,226)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_read = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_write(GPOUT,227)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_write = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;

    // avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_writedata(GPOUT,228)
    assign avm_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_writedata = load_weight0_function_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_address(GPOUT,229)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_address = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_burstcount(GPOUT,230)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_burstcount = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_byteenable(GPOUT,231)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_byteenable = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_enable(GPOUT,232)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_enable = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_read(GPOUT,233)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_read = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_write(GPOUT,234)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_write = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_writedata(GPOUT,235)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_writedata = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_address(GPOUT,236)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_address = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_burstcount(GPOUT,237)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_burstcount = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_byteenable(GPOUT,238)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_byteenable = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_enable(GPOUT,239)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_enable = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_read(GPOUT,240)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_read = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_write(GPOUT,241)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_write = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write;

    // avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_writedata(GPOUT,242)
    assign avm_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_writedata = load_weight1_function_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata;

    // avm_memdep_36_conv_process_address(GPOUT,243)
    assign avm_memdep_36_conv_process_address = conv_process_function_out_memdep_36_conv_process_avm_address;

    // avm_memdep_36_conv_process_burstcount(GPOUT,244)
    assign avm_memdep_36_conv_process_burstcount = conv_process_function_out_memdep_36_conv_process_avm_burstcount;

    // avm_memdep_36_conv_process_byteenable(GPOUT,245)
    assign avm_memdep_36_conv_process_byteenable = conv_process_function_out_memdep_36_conv_process_avm_byteenable;

    // avm_memdep_36_conv_process_enable(GPOUT,246)
    assign avm_memdep_36_conv_process_enable = conv_process_function_out_memdep_36_conv_process_avm_enable;

    // avm_memdep_36_conv_process_read(GPOUT,247)
    assign avm_memdep_36_conv_process_read = conv_process_function_out_memdep_36_conv_process_avm_read;

    // avm_memdep_36_conv_process_write(GPOUT,248)
    assign avm_memdep_36_conv_process_write = conv_process_function_out_memdep_36_conv_process_avm_write;

    // avm_memdep_36_conv_process_writedata(GPOUT,249)
    assign avm_memdep_36_conv_process_writedata = conv_process_function_out_memdep_36_conv_process_avm_writedata;

    // avm_memdep_3_load_input0_address(GPOUT,250)
    assign avm_memdep_3_load_input0_address = load_input0_function_out_memdep_3_load_input0_avm_address;

    // avm_memdep_3_load_input0_burstcount(GPOUT,251)
    assign avm_memdep_3_load_input0_burstcount = load_input0_function_out_memdep_3_load_input0_avm_burstcount;

    // avm_memdep_3_load_input0_byteenable(GPOUT,252)
    assign avm_memdep_3_load_input0_byteenable = load_input0_function_out_memdep_3_load_input0_avm_byteenable;

    // avm_memdep_3_load_input0_enable(GPOUT,253)
    assign avm_memdep_3_load_input0_enable = load_input0_function_out_memdep_3_load_input0_avm_enable;

    // avm_memdep_3_load_input0_read(GPOUT,254)
    assign avm_memdep_3_load_input0_read = load_input0_function_out_memdep_3_load_input0_avm_read;

    // avm_memdep_3_load_input0_write(GPOUT,255)
    assign avm_memdep_3_load_input0_write = load_input0_function_out_memdep_3_load_input0_avm_write;

    // avm_memdep_3_load_input0_writedata(GPOUT,256)
    assign avm_memdep_3_load_input0_writedata = load_input0_function_out_memdep_3_load_input0_avm_writedata;

    // avm_memdep_3_load_input1_address(GPOUT,257)
    assign avm_memdep_3_load_input1_address = load_input1_function_out_memdep_3_load_input1_avm_address;

    // avm_memdep_3_load_input1_burstcount(GPOUT,258)
    assign avm_memdep_3_load_input1_burstcount = load_input1_function_out_memdep_3_load_input1_avm_burstcount;

    // avm_memdep_3_load_input1_byteenable(GPOUT,259)
    assign avm_memdep_3_load_input1_byteenable = load_input1_function_out_memdep_3_load_input1_avm_byteenable;

    // avm_memdep_3_load_input1_enable(GPOUT,260)
    assign avm_memdep_3_load_input1_enable = load_input1_function_out_memdep_3_load_input1_avm_enable;

    // avm_memdep_3_load_input1_read(GPOUT,261)
    assign avm_memdep_3_load_input1_read = load_input1_function_out_memdep_3_load_input1_avm_read;

    // avm_memdep_3_load_input1_write(GPOUT,262)
    assign avm_memdep_3_load_input1_write = load_input1_function_out_memdep_3_load_input1_avm_write;

    // avm_memdep_3_load_input1_writedata(GPOUT,263)
    assign avm_memdep_3_load_input1_writedata = load_input1_function_out_memdep_3_load_input1_avm_writedata;

    // avm_memdep_3_load_weight0_address(GPOUT,264)
    assign avm_memdep_3_load_weight0_address = load_weight0_function_out_memdep_3_load_weight0_avm_address;

    // avm_memdep_3_load_weight0_burstcount(GPOUT,265)
    assign avm_memdep_3_load_weight0_burstcount = load_weight0_function_out_memdep_3_load_weight0_avm_burstcount;

    // avm_memdep_3_load_weight0_byteenable(GPOUT,266)
    assign avm_memdep_3_load_weight0_byteenable = load_weight0_function_out_memdep_3_load_weight0_avm_byteenable;

    // avm_memdep_3_load_weight0_enable(GPOUT,267)
    assign avm_memdep_3_load_weight0_enable = load_weight0_function_out_memdep_3_load_weight0_avm_enable;

    // avm_memdep_3_load_weight0_read(GPOUT,268)
    assign avm_memdep_3_load_weight0_read = load_weight0_function_out_memdep_3_load_weight0_avm_read;

    // avm_memdep_3_load_weight0_write(GPOUT,269)
    assign avm_memdep_3_load_weight0_write = load_weight0_function_out_memdep_3_load_weight0_avm_write;

    // avm_memdep_3_load_weight0_writedata(GPOUT,270)
    assign avm_memdep_3_load_weight0_writedata = load_weight0_function_out_memdep_3_load_weight0_avm_writedata;

    // avm_memdep_3_load_weight1_address(GPOUT,271)
    assign avm_memdep_3_load_weight1_address = load_weight1_function_out_memdep_3_load_weight1_avm_address;

    // avm_memdep_3_load_weight1_burstcount(GPOUT,272)
    assign avm_memdep_3_load_weight1_burstcount = load_weight1_function_out_memdep_3_load_weight1_avm_burstcount;

    // avm_memdep_3_load_weight1_byteenable(GPOUT,273)
    assign avm_memdep_3_load_weight1_byteenable = load_weight1_function_out_memdep_3_load_weight1_avm_byteenable;

    // avm_memdep_3_load_weight1_enable(GPOUT,274)
    assign avm_memdep_3_load_weight1_enable = load_weight1_function_out_memdep_3_load_weight1_avm_enable;

    // avm_memdep_3_load_weight1_read(GPOUT,275)
    assign avm_memdep_3_load_weight1_read = load_weight1_function_out_memdep_3_load_weight1_avm_read;

    // avm_memdep_3_load_weight1_write(GPOUT,276)
    assign avm_memdep_3_load_weight1_write = load_weight1_function_out_memdep_3_load_weight1_avm_write;

    // avm_memdep_3_load_weight1_writedata(GPOUT,277)
    assign avm_memdep_3_load_weight1_writedata = load_weight1_function_out_memdep_3_load_weight1_avm_writedata;

    // avm_memdep_5_conv_process_address(GPOUT,278)
    assign avm_memdep_5_conv_process_address = conv_process_function_out_memdep_5_conv_process_avm_address;

    // avm_memdep_5_conv_process_burstcount(GPOUT,279)
    assign avm_memdep_5_conv_process_burstcount = conv_process_function_out_memdep_5_conv_process_avm_burstcount;

    // avm_memdep_5_conv_process_byteenable(GPOUT,280)
    assign avm_memdep_5_conv_process_byteenable = conv_process_function_out_memdep_5_conv_process_avm_byteenable;

    // avm_memdep_5_conv_process_enable(GPOUT,281)
    assign avm_memdep_5_conv_process_enable = conv_process_function_out_memdep_5_conv_process_avm_enable;

    // avm_memdep_5_conv_process_read(GPOUT,282)
    assign avm_memdep_5_conv_process_read = conv_process_function_out_memdep_5_conv_process_avm_read;

    // avm_memdep_5_conv_process_write(GPOUT,283)
    assign avm_memdep_5_conv_process_write = conv_process_function_out_memdep_5_conv_process_avm_write;

    // avm_memdep_5_conv_process_writedata(GPOUT,284)
    assign avm_memdep_5_conv_process_writedata = conv_process_function_out_memdep_5_conv_process_avm_writedata;

    // avm_unnamed_cnn_top80_cnn_top_address(GPOUT,285)
    assign avm_unnamed_cnn_top80_cnn_top_address = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_address;

    // avm_unnamed_cnn_top80_cnn_top_burstcount(GPOUT,286)
    assign avm_unnamed_cnn_top80_cnn_top_burstcount = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_burstcount;

    // avm_unnamed_cnn_top80_cnn_top_byteenable(GPOUT,287)
    assign avm_unnamed_cnn_top80_cnn_top_byteenable = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_byteenable;

    // avm_unnamed_cnn_top80_cnn_top_enable(GPOUT,288)
    assign avm_unnamed_cnn_top80_cnn_top_enable = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_enable;

    // avm_unnamed_cnn_top80_cnn_top_read(GPOUT,289)
    assign avm_unnamed_cnn_top80_cnn_top_read = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_read;

    // avm_unnamed_cnn_top80_cnn_top_write(GPOUT,290)
    assign avm_unnamed_cnn_top80_cnn_top_write = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_write;

    // avm_unnamed_cnn_top80_cnn_top_writedata(GPOUT,291)
    assign avm_unnamed_cnn_top80_cnn_top_writedata = cnn_top_function_out_unnamed_cnn_top80_cnn_top_avm_writedata;

    // avm_unnamed_cnn_top9_cnn_top_address(GPOUT,292)
    assign avm_unnamed_cnn_top9_cnn_top_address = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_address;

    // avm_unnamed_cnn_top9_cnn_top_burstcount(GPOUT,293)
    assign avm_unnamed_cnn_top9_cnn_top_burstcount = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_burstcount;

    // avm_unnamed_cnn_top9_cnn_top_byteenable(GPOUT,294)
    assign avm_unnamed_cnn_top9_cnn_top_byteenable = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_byteenable;

    // avm_unnamed_cnn_top9_cnn_top_enable(GPOUT,295)
    assign avm_unnamed_cnn_top9_cnn_top_enable = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_enable;

    // avm_unnamed_cnn_top9_cnn_top_read(GPOUT,296)
    assign avm_unnamed_cnn_top9_cnn_top_read = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_read;

    // avm_unnamed_cnn_top9_cnn_top_write(GPOUT,297)
    assign avm_unnamed_cnn_top9_cnn_top_write = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_write;

    // avm_unnamed_cnn_top9_cnn_top_writedata(GPOUT,298)
    assign avm_unnamed_cnn_top9_cnn_top_writedata = cnn_top_function_out_unnamed_cnn_top9_cnn_top_avm_writedata;

    // avm_unnamed_conv_process101_conv_process_address(GPOUT,299)
    assign avm_unnamed_conv_process101_conv_process_address = conv_process_function_out_unnamed_conv_process101_conv_process_avm_address;

    // avm_unnamed_conv_process101_conv_process_burstcount(GPOUT,300)
    assign avm_unnamed_conv_process101_conv_process_burstcount = conv_process_function_out_unnamed_conv_process101_conv_process_avm_burstcount;

    // avm_unnamed_conv_process101_conv_process_byteenable(GPOUT,301)
    assign avm_unnamed_conv_process101_conv_process_byteenable = conv_process_function_out_unnamed_conv_process101_conv_process_avm_byteenable;

    // avm_unnamed_conv_process101_conv_process_enable(GPOUT,302)
    assign avm_unnamed_conv_process101_conv_process_enable = conv_process_function_out_unnamed_conv_process101_conv_process_avm_enable;

    // avm_unnamed_conv_process101_conv_process_read(GPOUT,303)
    assign avm_unnamed_conv_process101_conv_process_read = conv_process_function_out_unnamed_conv_process101_conv_process_avm_read;

    // avm_unnamed_conv_process101_conv_process_write(GPOUT,304)
    assign avm_unnamed_conv_process101_conv_process_write = conv_process_function_out_unnamed_conv_process101_conv_process_avm_write;

    // avm_unnamed_conv_process101_conv_process_writedata(GPOUT,305)
    assign avm_unnamed_conv_process101_conv_process_writedata = conv_process_function_out_unnamed_conv_process101_conv_process_avm_writedata;

    // avm_unnamed_conv_process20_conv_process_address(GPOUT,306)
    assign avm_unnamed_conv_process20_conv_process_address = conv_process_function_out_unnamed_conv_process20_conv_process_avm_address;

    // avm_unnamed_conv_process20_conv_process_burstcount(GPOUT,307)
    assign avm_unnamed_conv_process20_conv_process_burstcount = conv_process_function_out_unnamed_conv_process20_conv_process_avm_burstcount;

    // avm_unnamed_conv_process20_conv_process_byteenable(GPOUT,308)
    assign avm_unnamed_conv_process20_conv_process_byteenable = conv_process_function_out_unnamed_conv_process20_conv_process_avm_byteenable;

    // avm_unnamed_conv_process20_conv_process_enable(GPOUT,309)
    assign avm_unnamed_conv_process20_conv_process_enable = conv_process_function_out_unnamed_conv_process20_conv_process_avm_enable;

    // avm_unnamed_conv_process20_conv_process_read(GPOUT,310)
    assign avm_unnamed_conv_process20_conv_process_read = conv_process_function_out_unnamed_conv_process20_conv_process_avm_read;

    // avm_unnamed_conv_process20_conv_process_write(GPOUT,311)
    assign avm_unnamed_conv_process20_conv_process_write = conv_process_function_out_unnamed_conv_process20_conv_process_avm_write;

    // avm_unnamed_conv_process20_conv_process_writedata(GPOUT,312)
    assign avm_unnamed_conv_process20_conv_process_writedata = conv_process_function_out_unnamed_conv_process20_conv_process_avm_writedata;

    // avm_unnamed_conv_process21_conv_process_address(GPOUT,313)
    assign avm_unnamed_conv_process21_conv_process_address = conv_process_function_out_unnamed_conv_process21_conv_process_avm_address;

    // avm_unnamed_conv_process21_conv_process_burstcount(GPOUT,314)
    assign avm_unnamed_conv_process21_conv_process_burstcount = conv_process_function_out_unnamed_conv_process21_conv_process_avm_burstcount;

    // avm_unnamed_conv_process21_conv_process_byteenable(GPOUT,315)
    assign avm_unnamed_conv_process21_conv_process_byteenable = conv_process_function_out_unnamed_conv_process21_conv_process_avm_byteenable;

    // avm_unnamed_conv_process21_conv_process_enable(GPOUT,316)
    assign avm_unnamed_conv_process21_conv_process_enable = conv_process_function_out_unnamed_conv_process21_conv_process_avm_enable;

    // avm_unnamed_conv_process21_conv_process_read(GPOUT,317)
    assign avm_unnamed_conv_process21_conv_process_read = conv_process_function_out_unnamed_conv_process21_conv_process_avm_read;

    // avm_unnamed_conv_process21_conv_process_write(GPOUT,318)
    assign avm_unnamed_conv_process21_conv_process_write = conv_process_function_out_unnamed_conv_process21_conv_process_avm_write;

    // avm_unnamed_conv_process21_conv_process_writedata(GPOUT,319)
    assign avm_unnamed_conv_process21_conv_process_writedata = conv_process_function_out_unnamed_conv_process21_conv_process_avm_writedata;

    // avst_iord_bl_call_cnn_top_almost_full(GPOUT,320)
    assign avst_iord_bl_call_cnn_top_almost_full = cnn_top_function_out_iord_bl_call_cnn_top_o_fifoalmost_full;

    // avst_iord_bl_call_cnn_top_ready(GPOUT,321)
    assign avst_iord_bl_call_cnn_top_ready = cnn_top_function_out_iord_bl_call_cnn_top_o_fifoready;

    // avst_iowr_bl_return_cnn_top_data(GPOUT,322)
    assign avst_iowr_bl_return_cnn_top_data = cnn_top_function_out_iowr_bl_return_cnn_top_o_fifodata;

    // avst_iowr_bl_return_cnn_top_valid(GPOUT,323)
    assign avst_iowr_bl_return_cnn_top_valid = cnn_top_function_out_iowr_bl_return_cnn_top_o_fifovalid;

    // not_ready(LOGICAL,171)
    assign not_ready_q = ~ (cnn_top_function_out_iord_bl_call_cnn_top_o_fifoready);

    // busy_and(LOGICAL,30)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,328)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,327)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,31)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,324)
    assign busy = busy_or_q;

    // done(GPOUT,325)
    assign done = cnn_top_function_out_iowr_bl_return_cnn_top_o_fifovalid;

endmodule
