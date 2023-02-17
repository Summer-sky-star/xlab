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

// SystemVerilog created from cnn_top_bb_B7_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B7_stall_region (
    input wire [0:0] in_iowr_bl_call_load_input1_i_fifoready,
    output wire [703:0] out_iowr_bl_call_load_input1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_input1_o_fifovalid,
    output wire [31:0] out_inc_i,
    output wire [31:0] out_pre2,
    output wire [0:0] out_unnamed_cnn_top56,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_load_weight0_i_fifoready,
    output wire [703:0] out_iowr_bl_call_load_weight0_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_weight0_o_fifovalid,
    input wire [0:0] in_iowr_bl_call_load_weight1_i_fifoready,
    output wire [703:0] out_iowr_bl_call_load_weight1_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_weight1_o_fifovalid,
    input wire [0:0] in_iowr_bl_call_conv_process_i_fifoready,
    output wire [831:0] out_iowr_bl_call_conv_process_o_fifodata,
    output wire [0:0] out_iowr_bl_call_conv_process_o_fifovalid,
    input wire [0:0] in_iord_bl_return_load_input0_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_input0_i_fifovalid,
    output wire [0:0] out_iord_bl_return_load_input0_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_input0_o_fifoalmost_full,
    input wire [0:0] in_iord_bl_return_load_input1_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_input1_i_fifovalid,
    output wire [0:0] out_iord_bl_return_load_input1_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_input1_o_fifoalmost_full,
    input wire [0:0] in_iord_bl_return_load_weight0_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_weight0_i_fifovalid,
    output wire [0:0] out_iord_bl_return_load_weight0_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_weight0_o_fifoalmost_full,
    input wire [0:0] in_iord_bl_return_load_weight1_i_fifodata,
    input wire [0:0] in_iord_bl_return_load_weight1_i_fifovalid,
    output wire [0:0] out_iord_bl_return_load_weight1_o_fifoready,
    output wire [0:0] out_iord_bl_return_load_weight1_o_fifoalmost_full,
    input wire [0:0] in_iord_bl_return_conv_process_i_fifodata,
    input wire [0:0] in_iord_bl_return_conv_process_i_fifovalid,
    output wire [0:0] out_iord_bl_return_conv_process_o_fifoready,
    output wire [0:0] out_iord_bl_return_conv_process_o_fifoalmost_full,
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
    input wire [0:0] in_iowr_bl_call_load_input0_i_fifoready,
    output wire [703:0] out_iowr_bl_call_load_input0_o_fifodata,
    output wire [0:0] out_iowr_bl_call_load_input0_o_fifovalid,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_35_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_pre2,
    input wire [31:0] in_tr_i_0115,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] bgTrunc_i_inc_i_cnn_top32_sel_x_b;
    wire [31:0] cnn_top_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] cnn_top_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] cnn_top_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_top_B7_merge_reg_aunroll_x_out_valid_out;
    wire [831:0] i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata;
    wire [0:0] i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid;
    wire [0:0] i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_valid;
    wire [703:0] i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata;
    wire [0:0] i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid;
    wire [0:0] i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_valid;
    wire [703:0] i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata;
    wire [0:0] i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid;
    wire [0:0] i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_valid;
    wire [703:0] i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata;
    wire [0:0] i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid;
    wire [0:0] i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_valid;
    wire [703:0] i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata;
    wire [0:0] i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid;
    wire [0:0] i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_valid;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_4_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_3_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_3_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_19_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_19_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_15_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_15_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_15_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_1_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_valid_out;
    wire [31:0] c_i32_138_q;
    wire [33:0] i_cmp3_i_cnn_top34_a;
    wire [33:0] i_cmp3_i_cnn_top34_b;
    logic [33:0] i_cmp3_i_cnn_top34_o;
    wire [0:0] i_cmp3_i_cnn_top34_c;
    wire [32:0] i_inc_i_cnn_top32_a;
    wire [32:0] i_inc_i_cnn_top32_b;
    logic [32:0] i_inc_i_cnn_top32_o;
    wire [32:0] i_inc_i_cnn_top32_q;
    wire [31:0] i_inc_i_cnn_top32_vt_join_q;
    wire [30:0] i_inc_i_cnn_top32_vt_select_30_b;
    wire [0:0] i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoready;
    wire [0:0] i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_stall;
    wire [0:0] i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_valid;
    wire [0:0] i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoready;
    wire [0:0] i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_stall;
    wire [0:0] i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_valid;
    wire [0:0] i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoready;
    wire [0:0] i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_stall;
    wire [0:0] i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_valid;
    wire [0:0] i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoready;
    wire [0:0] i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_stall;
    wire [0:0] i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_valid;
    wire [0:0] i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoready;
    wire [0:0] i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_stall;
    wire [0:0] i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_valid;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_dest_data_out_34_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_dest_data_out_35_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_dest_data_out_22_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_valid_out;
    wire [0:0] i_unnamed_cnn_top37_q;
    wire [63:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    reg [63:0] coalesced_delay_0_0_q;
    wire [63:0] bubble_join_cnn_top_B7_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_cnn_top_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_cnn_top_B7_merge_reg_aunroll_x_c;
    wire [0:0] bubble_join_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_b;
    wire [223:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_b;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_f;
    wire [159:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_e;
    wire [159:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_e;
    wire [671:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_r;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_s;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_t;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_u;
    wire [671:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_r;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_s;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_t;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_u;
    wire [511:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q;
    wire [511:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q;
    wire [511:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_c;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_b;
    wire [63:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg12;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg12;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed12;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg13;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg13;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed13;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg14;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg14;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed14;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg15;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg15;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed15;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg16;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg16;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed16;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg17;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg17;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed17;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg18;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg18;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed18;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg19;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg19;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed19;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg20;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg20;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed20;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg21;
    reg [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg21;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed21;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or11;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or12;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or13;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or14;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or15;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or16;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or17;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or18;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or19;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_or20;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V12;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V13;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V14;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V15;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V16;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V17;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V18;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V19;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V20;
    wire [0:0] SE_out_cnn_top_B7_merge_reg_aunroll_x_V21;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_3;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_or2;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_coalesced_delay_0_0_V3;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [63:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [63:0] SR_SE_coalesced_delay_0_0_D0;


    // bubble_join_cnn_top_B7_merge_reg_aunroll_x(BITJOIN,155)
    assign bubble_join_cnn_top_B7_merge_reg_aunroll_x_q = {cnn_top_B7_merge_reg_aunroll_x_out_data_out_1_tpl, cnn_top_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_cnn_top_B7_merge_reg_aunroll_x(BITSELECT,156)
    assign bubble_select_cnn_top_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_cnn_top_B7_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_cnn_top_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_cnn_top_B7_merge_reg_aunroll_x_q[63:32]);

    // join_for_coalesced_delay_0(BITJOIN,151)
    assign join_for_coalesced_delay_0_q = {bubble_select_cnn_top_B7_merge_reg_aunroll_x_c, bubble_select_cnn_top_B7_merge_reg_aunroll_x_b};

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30(BITJOIN,253)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30(BITSELECT,254)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20(BITJOIN,238)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20(BITSELECT,239)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x(BITJOIN,218)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x(BITSELECT,219)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_q[63:32]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x(BITJOIN,209)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x(BITSELECT,210)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q[511:480]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x(BITJOIN,194)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x(BITSELECT,195)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q[127:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_q[223:192]);

    // i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x(BLACKBOX,23)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_conv_process_o_fifodata@20000000
    // out out_iowr_bl_call_conv_process_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_call_conv_process_unnamed_66_cnn_top0 thei_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_f),
        .in_i_data_5_tpl(sel_for_coalesced_delay_0_b),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_b),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_c),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_d),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_e),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_f),
        .in_i_data_11_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_g),
        .in_i_data_12_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_h),
        .in_i_data_13_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_i),
        .in_i_data_14_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_j),
        .in_i_data_15_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_k),
        .in_i_data_16_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_l),
        .in_i_data_17_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_m),
        .in_i_data_18_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_n),
        .in_i_data_19_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_o),
        .in_i_data_20_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_p),
        .in_i_data_21_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_q),
        .in_i_data_22_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_b),
        .in_i_data_23_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_c),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_V0),
        .in_iowr_bl_call_conv_process_i_fifoready(in_iowr_bl_call_conv_process_i_fifoready),
        .in_unnamed_cnn_top65(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_b),
        .out_iowr_bl_call_conv_process_o_fifodata(i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata),
        .out_iowr_bl_call_conv_process_o_fifovalid(i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30(STALLENABLE,331)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_backStall = i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_wireValid = i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_and0;

    // bubble_join_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x(BITJOIN,179)
    assign bubble_join_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_q = i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x(BITSELECT,180)
    assign bubble_select_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_q[0:0]);

    // i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31(BLACKBOX,55)@2
    // in in_i_stall@20000000
    // out out_iord_bl_return_conv_process_o_fifoalmost_full@20000000
    // out out_iord_bl_return_conv_process_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_return_conv_process_unnamed_76_cnn_top0 thei_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_V0),
        .in_iord_bl_return_conv_process_i_fifodata(in_iord_bl_return_conv_process_i_fifodata),
        .in_iord_bl_return_conv_process_i_fifovalid(in_iord_bl_return_conv_process_i_fifovalid),
        .in_unnamed_cnn_top75(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_b),
        .out_iord_bl_return_conv_process_o_fifoalmost_full(i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoalmost_full),
        .out_iord_bl_return_conv_process_o_fifoready(i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_stall),
        .out_o_valid(i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22(BITJOIN,241)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22(BITSELECT,242)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3(BITJOIN,226)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3(BITSELECT,227)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x(BITJOIN,215)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x(BITSELECT,216)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q[511:480]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x(BITJOIN,197)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x(BITSELECT,198)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_q[159:128]);

    // i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x(BLACKBOX,24)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_load_input0_o_fifodata@20000000
    // out out_iowr_bl_call_load_input0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_call_load_input0_unnamed_58_cnn_top0 thei_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_e),
        .in_i_data_4_tpl(sel_for_coalesced_delay_0_b),
        .in_i_data_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_b),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_c),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_d),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_e),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_f),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_g),
        .in_i_data_11_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_h),
        .in_i_data_12_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_i),
        .in_i_data_13_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_j),
        .in_i_data_14_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_k),
        .in_i_data_15_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_l),
        .in_i_data_16_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_m),
        .in_i_data_17_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_n),
        .in_i_data_18_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_o),
        .in_i_data_19_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_p),
        .in_i_data_20_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_V0),
        .in_iowr_bl_call_load_input0_i_fifoready(in_iowr_bl_call_load_input0_i_fifoready),
        .in_unnamed_cnn_top57(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_b),
        .out_iowr_bl_call_load_input0_o_fifodata(i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata),
        .out_iowr_bl_call_load_input0_o_fifovalid(i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22(STALLENABLE,323)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_backStall = i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_wireValid = i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_and0;

    // bubble_join_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x(BITJOIN,182)
    assign bubble_join_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_q = i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x(BITSELECT,183)
    assign bubble_select_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_q[0:0]);

    // i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23(BLACKBOX,56)@2
    // in in_i_stall@20000000
    // out out_iord_bl_return_load_input0_o_fifoalmost_full@20000000
    // out out_iord_bl_return_load_input0_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_return_load_input0_unnamed_68_cnn_top0 thei_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_V0),
        .in_iord_bl_return_load_input0_i_fifodata(in_iord_bl_return_load_input0_i_fifodata),
        .in_iord_bl_return_load_input0_i_fifovalid(in_iord_bl_return_load_input0_i_fifovalid),
        .in_unnamed_cnn_top67(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_b),
        .out_iord_bl_return_load_input0_o_fifoalmost_full(i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoalmost_full),
        .out_iord_bl_return_load_input0_o_fifoready(i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_stall),
        .out_o_valid(i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24(BITJOIN,244)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24(BITSELECT,245)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_q[0:0]);

    // bubble_join_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x(BITJOIN,185)
    assign bubble_join_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_q = i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x(BITSELECT,186)
    assign bubble_select_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_q[0:0]);

    // i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25(BLACKBOX,57)@2
    // in in_i_stall@20000000
    // out out_iord_bl_return_load_input1_o_fifoalmost_full@20000000
    // out out_iord_bl_return_load_input1_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_return_load_input1_unnamed_70_cnn_top0 thei_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_V0),
        .in_iord_bl_return_load_input1_i_fifodata(in_iord_bl_return_load_input1_i_fifodata),
        .in_iord_bl_return_load_input1_i_fifovalid(in_iord_bl_return_load_input1_i_fifovalid),
        .in_unnamed_cnn_top69(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_b),
        .out_iord_bl_return_load_input1_o_fifoalmost_full(i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoalmost_full),
        .out_iord_bl_return_load_input1_o_fifoready(i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_stall),
        .out_o_valid(i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26(BITJOIN,247)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26(BITSELECT,248)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10(BITJOIN,232)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10(BITSELECT,233)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_q[0:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10(STALLENABLE,317)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_backStall = i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_wireValid = i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x(BITJOIN,203)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_19_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_18_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_17_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_16_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x(BITSELECT,204)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[511:480]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[543:512]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_r = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[575:544]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_s = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[607:576]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_t = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[639:608]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_u = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q[671:640]);

    // i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x(BLACKBOX,26)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_load_weight0_o_fifodata@20000000
    // out out_iowr_bl_call_load_weight0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_call_load_weight0_unnamed_62_cnn_top0 thei_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_l),
        .in_i_data_11_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_m),
        .in_i_data_12_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_n),
        .in_i_data_13_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_o),
        .in_i_data_14_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_p),
        .in_i_data_15_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_q),
        .in_i_data_16_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_r),
        .in_i_data_17_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_s),
        .in_i_data_18_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_t),
        .in_i_data_19_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_u),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_V0),
        .in_iowr_bl_call_load_weight0_i_fifoready(in_iowr_bl_call_load_weight0_i_fifoready),
        .in_unnamed_cnn_top61(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_b),
        .out_iowr_bl_call_load_weight0_o_fifodata(i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata),
        .out_iowr_bl_call_load_weight0_o_fifovalid(i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26(STALLENABLE,327)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_backStall = i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_wireValid = i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_and0;

    // bubble_join_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x(BITJOIN,188)
    assign bubble_join_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_q = i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x(BITSELECT,189)
    assign bubble_select_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_q[0:0]);

    // i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27(BLACKBOX,58)@2
    // in in_i_stall@20000000
    // out out_iord_bl_return_load_weight0_o_fifoalmost_full@20000000
    // out out_iord_bl_return_load_weight0_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_return_load_weight0_unnamed_72_cnn_top0 thei_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_V0),
        .in_iord_bl_return_load_weight0_i_fifodata(in_iord_bl_return_load_weight0_i_fifodata),
        .in_iord_bl_return_load_weight0_i_fifovalid(in_iord_bl_return_load_weight0_i_fifovalid),
        .in_unnamed_cnn_top71(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_b),
        .out_iord_bl_return_load_weight0_o_fifoalmost_full(i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoalmost_full),
        .out_iord_bl_return_load_weight0_o_fifoready(i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_stall),
        .out_o_valid(i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28(BITJOIN,250)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28(BITSELECT,251)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13(BITJOIN,235)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13(BITSELECT,236)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_q[0:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13(STALLENABLE,319)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_backStall = i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_wireValid = i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x(BITJOIN,206)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_19_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_18_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_17_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_16_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x(BITSELECT,207)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[511:480]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[543:512]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_r = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[575:544]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_s = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[607:576]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_t = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[639:608]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_u = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q[671:640]);

    // i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x(BLACKBOX,27)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_load_weight1_o_fifodata@20000000
    // out out_iowr_bl_call_load_weight1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_call_load_weight1_unnamed_64_cnn_top0 thei_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_l),
        .in_i_data_11_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_m),
        .in_i_data_12_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_n),
        .in_i_data_13_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_o),
        .in_i_data_14_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_p),
        .in_i_data_15_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_q),
        .in_i_data_16_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_r),
        .in_i_data_17_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_s),
        .in_i_data_18_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_t),
        .in_i_data_19_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_u),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_V0),
        .in_iowr_bl_call_load_weight1_i_fifoready(in_iowr_bl_call_load_weight1_i_fifoready),
        .in_unnamed_cnn_top63(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_b),
        .out_iowr_bl_call_load_weight1_o_fifodata(i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata),
        .out_iowr_bl_call_load_weight1_o_fifovalid(i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28(STALLENABLE,329)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_backStall = i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_wireValid = i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_and0;

    // bubble_join_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x(BITJOIN,191)
    assign bubble_join_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_q = i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x(BITSELECT,192)
    assign bubble_select_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_q[0:0]);

    // i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29(BLACKBOX,59)@2
    // in in_i_stall@20000000
    // out out_iord_bl_return_load_weight1_o_fifoalmost_full@20000000
    // out out_iord_bl_return_load_weight1_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_return_load_weight1_unnamed_74_cnn_top0 thei_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_V0),
        .in_iord_bl_return_load_weight1_i_fifodata(in_iord_bl_return_load_weight1_i_fifodata),
        .in_iord_bl_return_load_weight1_i_fifovalid(in_iord_bl_return_load_weight1_i_fifovalid),
        .in_unnamed_cnn_top73(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_b),
        .out_iord_bl_return_load_weight1_o_fifoalmost_full(i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoalmost_full),
        .out_iord_bl_return_load_weight1_o_fifoready(i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_stall),
        .out_o_valid(i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33(STALLENABLE,335)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and0 = i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and1 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and2 = i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and3 = i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and4 = i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and5 = i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and6 = i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and5;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_wireValid = SE_coalesced_delay_0_0_V3 & SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_and6;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3(STALLENABLE,313)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall = i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and1 = i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and2 = i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_wireValid = SE_coalesced_delay_0_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20(STALLENABLE,321)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall = i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and1 = i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and2 = i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and3 = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_and3;

    // SE_coalesced_delay_0_0(STALLENABLE,341)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_V3 = SE_coalesced_delay_0_0_R_v_3;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall & SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_s_tv_3 = SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall & SE_coalesced_delay_0_0_R_v_3;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_or2 = SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_3 | SE_coalesced_delay_0_0_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_R_v_3 & SE_coalesced_delay_0_0_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_0(STALLREG,512)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_cnn_top_B7_merge_reg_aunroll_x_V21;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33(BLACKBOX,71)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_22_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_0 thei_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V20),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_dest_data_out_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36(BLACKBOX,70)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_35_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_77_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V19),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_dest_data_out_35_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30(BLACKBOX,69)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_75_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V18),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28(BLACKBOX,68)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_73_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V17),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26(BLACKBOX,67)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_71_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V16),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24(BLACKBOX,66)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_69_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V15),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22(BLACKBOX,65)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_67_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V14),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20(BLACKBOX,64)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_65_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V13),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13(BLACKBOX,63)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_63_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V12),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10(BLACKBOX,62)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_61_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V11),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3(BLACKBOX,60)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_57_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V9),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_25_0_0_tpl@2
    // out out_dest_data_out_25_0_1_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_s00001_insert_i_i_i_i43_0 thei_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x (
        .in_intel_reserved_ffwd_25_0_0_tpl(in_intel_reserved_ffwd_25_0_0_tpl),
        .in_intel_reserved_ffwd_25_0_1_tpl(in_intel_reserved_ffwd_25_0_1_tpl),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V8),
        .out_dest_data_out_25_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_0_tpl),
        .out_dest_data_out_25_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_dest_data_out_25_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x(BLACKBOX,35)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0_0_tpl@2
    // out out_dest_data_out_24_0_1_tpl@2
    // out out_dest_data_out_24_0_2_tpl@2
    // out out_dest_data_out_24_0_3_tpl@2
    // out out_dest_data_out_24_0_4_tpl@2
    // out out_dest_data_out_24_0_5_tpl@2
    // out out_dest_data_out_24_0_6_tpl@2
    // out out_dest_data_out_24_0_7_tpl@2
    // out out_dest_data_out_24_0_8_tpl@2
    // out out_dest_data_out_24_0_9_tpl@2
    // out out_dest_data_out_24_0_10_tpl@2
    // out out_dest_data_out_24_0_11_tpl@2
    // out out_dest_data_out_24_0_12_tpl@2
    // out out_dest_data_out_24_0_13_tpl@2
    // out out_dest_data_out_24_0_14_tpl@2
    // out out_dest_data_out_24_0_15_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_p0000nsert_i_i_i173_i40_0 thei_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V7),
        .out_dest_data_out_24_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_0_tpl),
        .out_dest_data_out_24_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_1_tpl),
        .out_dest_data_out_24_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_2_tpl),
        .out_dest_data_out_24_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_3_tpl),
        .out_dest_data_out_24_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_4_tpl),
        .out_dest_data_out_24_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_5_tpl),
        .out_dest_data_out_24_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_6_tpl),
        .out_dest_data_out_24_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_7_tpl),
        .out_dest_data_out_24_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_8_tpl),
        .out_dest_data_out_24_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_9_tpl),
        .out_dest_data_out_24_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_10_tpl),
        .out_dest_data_out_24_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_11_tpl),
        .out_dest_data_out_24_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_12_tpl),
        .out_dest_data_out_24_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_13_tpl),
        .out_dest_data_out_24_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_14_tpl),
        .out_dest_data_out_24_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_dest_data_out_24_0_15_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x(BLACKBOX,34)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0_0_tpl@2
    // out out_dest_data_out_24_0_1_tpl@2
    // out out_dest_data_out_24_0_2_tpl@2
    // out out_dest_data_out_24_0_3_tpl@2
    // out out_dest_data_out_24_0_4_tpl@2
    // out out_dest_data_out_24_0_5_tpl@2
    // out out_dest_data_out_24_0_6_tpl@2
    // out out_dest_data_out_24_0_7_tpl@2
    // out out_dest_data_out_24_0_8_tpl@2
    // out out_dest_data_out_24_0_9_tpl@2
    // out out_dest_data_out_24_0_10_tpl@2
    // out out_dest_data_out_24_0_11_tpl@2
    // out out_dest_data_out_24_0_12_tpl@2
    // out out_dest_data_out_24_0_13_tpl@2
    // out out_dest_data_out_24_0_14_tpl@2
    // out out_dest_data_out_24_0_15_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_p0000nsert_i_i_i173_i39_0 thei_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V6),
        .out_dest_data_out_24_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_0_tpl),
        .out_dest_data_out_24_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_1_tpl),
        .out_dest_data_out_24_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_2_tpl),
        .out_dest_data_out_24_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_3_tpl),
        .out_dest_data_out_24_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_4_tpl),
        .out_dest_data_out_24_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_5_tpl),
        .out_dest_data_out_24_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_6_tpl),
        .out_dest_data_out_24_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_7_tpl),
        .out_dest_data_out_24_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_8_tpl),
        .out_dest_data_out_24_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_9_tpl),
        .out_dest_data_out_24_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_10_tpl),
        .out_dest_data_out_24_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_11_tpl),
        .out_dest_data_out_24_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_12_tpl),
        .out_dest_data_out_24_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_13_tpl),
        .out_dest_data_out_24_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_14_tpl),
        .out_dest_data_out_24_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_15_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x(BLACKBOX,33)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0_0_tpl@2
    // out out_dest_data_out_24_0_1_tpl@2
    // out out_dest_data_out_24_0_2_tpl@2
    // out out_dest_data_out_24_0_3_tpl@2
    // out out_dest_data_out_24_0_4_tpl@2
    // out out_dest_data_out_24_0_5_tpl@2
    // out out_dest_data_out_24_0_6_tpl@2
    // out out_dest_data_out_24_0_7_tpl@2
    // out out_dest_data_out_24_0_8_tpl@2
    // out out_dest_data_out_24_0_9_tpl@2
    // out out_dest_data_out_24_0_10_tpl@2
    // out out_dest_data_out_24_0_11_tpl@2
    // out out_dest_data_out_24_0_12_tpl@2
    // out out_dest_data_out_24_0_13_tpl@2
    // out out_dest_data_out_24_0_14_tpl@2
    // out out_dest_data_out_24_0_15_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_p0000nsert_i_i_i173_i38_0 thei_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V5),
        .out_dest_data_out_24_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_0_tpl),
        .out_dest_data_out_24_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_1_tpl),
        .out_dest_data_out_24_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_2_tpl),
        .out_dest_data_out_24_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_3_tpl),
        .out_dest_data_out_24_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_4_tpl),
        .out_dest_data_out_24_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_5_tpl),
        .out_dest_data_out_24_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_6_tpl),
        .out_dest_data_out_24_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_7_tpl),
        .out_dest_data_out_24_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_8_tpl),
        .out_dest_data_out_24_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_9_tpl),
        .out_dest_data_out_24_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_10_tpl),
        .out_dest_data_out_24_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_11_tpl),
        .out_dest_data_out_24_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_12_tpl),
        .out_dest_data_out_24_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_13_tpl),
        .out_dest_data_out_24_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_14_tpl),
        .out_dest_data_out_24_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_dest_data_out_24_0_15_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_41_0_0_tpl@2
    // out out_dest_data_out_41_0_1_tpl@2
    // out out_dest_data_out_41_0_2_tpl@2
    // out out_dest_data_out_41_0_3_tpl@2
    // out out_dest_data_out_41_0_4_tpl@2
    // out out_dest_data_out_41_0_5_tpl@2
    // out out_dest_data_out_41_0_6_tpl@2
    // out out_dest_data_out_41_0_7_tpl@2
    // out out_dest_data_out_41_0_8_tpl@2
    // out out_dest_data_out_41_0_9_tpl@2
    // out out_dest_data_out_41_0_10_tpl@2
    // out out_dest_data_out_41_0_11_tpl@2
    // out out_dest_data_out_41_0_12_tpl@2
    // out out_dest_data_out_41_0_13_tpl@2
    // out out_dest_data_out_41_0_14_tpl@2
    // out out_dest_data_out_41_0_15_tpl@2
    // out out_dest_data_out_41_0_16_tpl@2
    // out out_dest_data_out_41_0_17_tpl@2
    // out out_dest_data_out_41_0_18_tpl@2
    // out out_dest_data_out_41_0_19_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000putss_do_input2155_0 thei_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V4),
        .out_dest_data_out_41_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_0_tpl),
        .out_dest_data_out_41_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_1_tpl),
        .out_dest_data_out_41_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_2_tpl),
        .out_dest_data_out_41_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_3_tpl),
        .out_dest_data_out_41_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_4_tpl),
        .out_dest_data_out_41_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_5_tpl),
        .out_dest_data_out_41_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_6_tpl),
        .out_dest_data_out_41_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_7_tpl),
        .out_dest_data_out_41_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_8_tpl),
        .out_dest_data_out_41_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_9_tpl),
        .out_dest_data_out_41_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_10_tpl),
        .out_dest_data_out_41_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_11_tpl),
        .out_dest_data_out_41_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_12_tpl),
        .out_dest_data_out_41_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_13_tpl),
        .out_dest_data_out_41_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_14_tpl),
        .out_dest_data_out_41_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_15_tpl),
        .out_dest_data_out_41_0_16_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_16_tpl),
        .out_dest_data_out_41_0_17_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_17_tpl),
        .out_dest_data_out_41_0_18_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_18_tpl),
        .out_dest_data_out_41_0_19_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_dest_data_out_41_0_19_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_40_0_0_tpl@2
    // out out_dest_data_out_40_0_1_tpl@2
    // out out_dest_data_out_40_0_2_tpl@2
    // out out_dest_data_out_40_0_3_tpl@2
    // out out_dest_data_out_40_0_4_tpl@2
    // out out_dest_data_out_40_0_5_tpl@2
    // out out_dest_data_out_40_0_6_tpl@2
    // out out_dest_data_out_40_0_7_tpl@2
    // out out_dest_data_out_40_0_8_tpl@2
    // out out_dest_data_out_40_0_9_tpl@2
    // out out_dest_data_out_40_0_10_tpl@2
    // out out_dest_data_out_40_0_11_tpl@2
    // out out_dest_data_out_40_0_12_tpl@2
    // out out_dest_data_out_40_0_13_tpl@2
    // out out_dest_data_out_40_0_14_tpl@2
    // out out_dest_data_out_40_0_15_tpl@2
    // out out_dest_data_out_40_0_16_tpl@2
    // out out_dest_data_out_40_0_17_tpl@2
    // out out_dest_data_out_40_0_18_tpl@2
    // out out_dest_data_out_40_0_19_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000putss_do_input1654_0 thei_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V3),
        .out_dest_data_out_40_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_0_tpl),
        .out_dest_data_out_40_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_1_tpl),
        .out_dest_data_out_40_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_2_tpl),
        .out_dest_data_out_40_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_3_tpl),
        .out_dest_data_out_40_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_4_tpl),
        .out_dest_data_out_40_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_5_tpl),
        .out_dest_data_out_40_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_6_tpl),
        .out_dest_data_out_40_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_7_tpl),
        .out_dest_data_out_40_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_8_tpl),
        .out_dest_data_out_40_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_9_tpl),
        .out_dest_data_out_40_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_10_tpl),
        .out_dest_data_out_40_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_11_tpl),
        .out_dest_data_out_40_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_12_tpl),
        .out_dest_data_out_40_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_13_tpl),
        .out_dest_data_out_40_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_14_tpl),
        .out_dest_data_out_40_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_15_tpl),
        .out_dest_data_out_40_0_16_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_16_tpl),
        .out_dest_data_out_40_0_17_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_17_tpl),
        .out_dest_data_out_40_0_18_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_18_tpl),
        .out_dest_data_out_40_0_19_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_dest_data_out_40_0_19_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x(BLACKBOX,30)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_39_0_0_tpl@2
    // out out_dest_data_out_39_0_1_tpl@2
    // out out_dest_data_out_39_0_2_tpl@2
    // out out_dest_data_out_39_0_3_tpl@2
    // out out_dest_data_out_39_0_4_tpl@2
    // out out_dest_data_out_39_0_5_tpl@2
    // out out_dest_data_out_39_0_6_tpl@2
    // out out_dest_data_out_39_0_7_tpl@2
    // out out_dest_data_out_39_0_8_tpl@2
    // out out_dest_data_out_39_0_9_tpl@2
    // out out_dest_data_out_39_0_10_tpl@2
    // out out_dest_data_out_39_0_11_tpl@2
    // out out_dest_data_out_39_0_12_tpl@2
    // out out_dest_data_out_39_0_13_tpl@2
    // out out_dest_data_out_39_0_14_tpl@2
    // out out_dest_data_out_39_0_15_tpl@2
    // out out_dest_data_out_39_0_16_tpl@2
    // out out_dest_data_out_39_0_17_tpl@2
    // out out_dest_data_out_39_0_18_tpl@2
    // out out_dest_data_out_39_0_19_tpl@2
    // out out_dest_data_out_39_0_20_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000nputss_do_input953_0 thei_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V2),
        .out_dest_data_out_39_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_0_tpl),
        .out_dest_data_out_39_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_1_tpl),
        .out_dest_data_out_39_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_2_tpl),
        .out_dest_data_out_39_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_3_tpl),
        .out_dest_data_out_39_0_4_tpl(),
        .out_dest_data_out_39_0_5_tpl(),
        .out_dest_data_out_39_0_6_tpl(),
        .out_dest_data_out_39_0_7_tpl(),
        .out_dest_data_out_39_0_8_tpl(),
        .out_dest_data_out_39_0_9_tpl(),
        .out_dest_data_out_39_0_10_tpl(),
        .out_dest_data_out_39_0_11_tpl(),
        .out_dest_data_out_39_0_12_tpl(),
        .out_dest_data_out_39_0_13_tpl(),
        .out_dest_data_out_39_0_14_tpl(),
        .out_dest_data_out_39_0_15_tpl(),
        .out_dest_data_out_39_0_16_tpl(),
        .out_dest_data_out_39_0_17_tpl(),
        .out_dest_data_out_39_0_18_tpl(),
        .out_dest_data_out_39_0_19_tpl(),
        .out_dest_data_out_39_0_20_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x(BLACKBOX,29)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_38_0_0_tpl@2
    // out out_dest_data_out_38_0_1_tpl@2
    // out out_dest_data_out_38_0_2_tpl@2
    // out out_dest_data_out_38_0_3_tpl@2
    // out out_dest_data_out_38_0_4_tpl@2
    // out out_dest_data_out_38_0_5_tpl@2
    // out out_dest_data_out_38_0_6_tpl@2
    // out out_dest_data_out_38_0_7_tpl@2
    // out out_dest_data_out_38_0_8_tpl@2
    // out out_dest_data_out_38_0_9_tpl@2
    // out out_dest_data_out_38_0_10_tpl@2
    // out out_dest_data_out_38_0_11_tpl@2
    // out out_dest_data_out_38_0_12_tpl@2
    // out out_dest_data_out_38_0_13_tpl@2
    // out out_dest_data_out_38_0_14_tpl@2
    // out out_dest_data_out_38_0_15_tpl@2
    // out out_dest_data_out_38_0_16_tpl@2
    // out out_dest_data_out_38_0_17_tpl@2
    // out out_dest_data_out_38_0_18_tpl@2
    // out out_dest_data_out_38_0_19_tpl@2
    // out out_dest_data_out_38_0_20_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000nputss_do_input352_0 thei_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V1),
        .out_dest_data_out_38_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_0_tpl),
        .out_dest_data_out_38_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_1_tpl),
        .out_dest_data_out_38_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_2_tpl),
        .out_dest_data_out_38_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_dest_data_out_38_0_3_tpl),
        .out_dest_data_out_38_0_4_tpl(),
        .out_dest_data_out_38_0_5_tpl(),
        .out_dest_data_out_38_0_6_tpl(),
        .out_dest_data_out_38_0_7_tpl(),
        .out_dest_data_out_38_0_8_tpl(),
        .out_dest_data_out_38_0_9_tpl(),
        .out_dest_data_out_38_0_10_tpl(),
        .out_dest_data_out_38_0_11_tpl(),
        .out_dest_data_out_38_0_12_tpl(),
        .out_dest_data_out_38_0_13_tpl(),
        .out_dest_data_out_38_0_14_tpl(),
        .out_dest_data_out_38_0_15_tpl(),
        .out_dest_data_out_38_0_16_tpl(),
        .out_dest_data_out_38_0_17_tpl(),
        .out_dest_data_out_38_0_18_tpl(),
        .out_dest_data_out_38_0_19_tpl(),
        .out_dest_data_out_38_0_20_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x(BLACKBOX,28)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_42_0_0_tpl@2
    // out out_dest_data_out_42_0_1_tpl@2
    // out out_dest_data_out_42_0_2_tpl@2
    // out out_dest_data_out_42_0_3_tpl@2
    // out out_dest_data_out_42_0_4_tpl@2
    // out out_dest_data_out_42_0_5_tpl@2
    // out out_dest_data_out_42_0_6_tpl@2
    // out out_dest_data_out_42_0_7_tpl@2
    // out out_dest_data_out_42_0_8_tpl@2
    // out out_dest_data_out_42_0_9_tpl@2
    // out out_dest_data_out_42_0_10_tpl@2
    // out out_dest_data_out_42_0_11_tpl@2
    // out out_dest_data_out_42_0_12_tpl@2
    // out out_dest_data_out_42_0_13_tpl@2
    // out out_dest_data_out_42_0_14_tpl@2
    // out out_dest_data_out_42_0_15_tpl@2
    // out out_dest_data_out_42_0_16_tpl@2
    // out out_dest_data_out_42_0_17_tpl@2
    // out out_dest_data_out_42_0_18_tpl@2
    // out out_dest_data_out_42_0_19_tpl@2
    // out out_dest_data_out_42_0_20_tpl@2
    // out out_dest_data_out_42_0_21_tpl@2
    // out out_dest_data_out_42_0_22_tpl@2
    // out out_dest_data_out_42_0_23_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_c0000putss_do_input2656_0 thei_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x (
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
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V0),
        .out_dest_data_out_42_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_0_tpl),
        .out_dest_data_out_42_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_1_tpl),
        .out_dest_data_out_42_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_2_tpl),
        .out_dest_data_out_42_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_3_tpl),
        .out_dest_data_out_42_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_dest_data_out_42_0_4_tpl),
        .out_dest_data_out_42_0_5_tpl(),
        .out_dest_data_out_42_0_6_tpl(),
        .out_dest_data_out_42_0_7_tpl(),
        .out_dest_data_out_42_0_8_tpl(),
        .out_dest_data_out_42_0_9_tpl(),
        .out_dest_data_out_42_0_10_tpl(),
        .out_dest_data_out_42_0_11_tpl(),
        .out_dest_data_out_42_0_12_tpl(),
        .out_dest_data_out_42_0_13_tpl(),
        .out_dest_data_out_42_0_14_tpl(),
        .out_dest_data_out_42_0_15_tpl(),
        .out_dest_data_out_42_0_16_tpl(),
        .out_dest_data_out_42_0_17_tpl(),
        .out_dest_data_out_42_0_18_tpl(),
        .out_dest_data_out_42_0_19_tpl(),
        .out_dest_data_out_42_0_20_tpl(),
        .out_dest_data_out_42_0_21_tpl(),
        .out_dest_data_out_42_0_22_tpl(),
        .out_dest_data_out_42_0_23_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,337)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_top_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,264)
    assign bubble_join_stall_entry_q = {in_tr_i_0115, in_pre2};

    // bubble_select_stall_entry(BITSELECT,265)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);

    // cnn_top_B7_merge_reg_aunroll_x(BLACKBOX,3)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_B7_merge_reg thecnn_top_B7_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(cnn_top_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(cnn_top_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(cnn_top_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_top_B7_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_top_B7_merge_reg_aunroll_x(STALLENABLE,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg11 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg12 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg13 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg14 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg15 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg16 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg17 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg18 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg19 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg20 <= '0;
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg21 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg0 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg1 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg2 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg3 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg4 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg5 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg6 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg7 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg8 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg9 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg10 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg11 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg11;
            // Successor 12
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg12 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg12;
            // Successor 13
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg13 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg13;
            // Successor 14
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg14 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg14;
            // Successor 15
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg15 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg15;
            // Successor 16
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg16 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg16;
            // Successor 17
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg17 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg17;
            // Successor 18
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg18 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg18;
            // Successor 19
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg19 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg19;
            // Successor 20
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg20 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg20;
            // Successor 21
            SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg21 <= SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg21;
        end
    end
    // Input Stall processing
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top16_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg0;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input352_cnn_top0_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg1;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg2;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1654_cnn_top11_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg3;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input2155_cnn_top14_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg4;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i38_cnn_top18_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg5;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg6;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i40_cnn_top2_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg7;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_dest_s_struct_scales_param1_fca_1_insert_i_i_i_i43_cnn_top19_aunroll_x_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg8;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top57_cnn_top3_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg9;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg10;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed11 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top61_cnn_top10_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg11;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed12 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top63_cnn_top13_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg12;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed13 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top65_cnn_top20_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg13;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed14 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top67_cnn_top22_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg14;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed15 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg15;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed16 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top71_cnn_top26_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg16;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed17 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top73_cnn_top28_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg17;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed18 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top75_cnn_top30_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg18;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed19 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg19;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed20 = (~ (i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_stall_out) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg20;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed21 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg21;
    // Consuming
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid = SE_out_cnn_top_B7_merge_reg_aunroll_x_backStall & SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg0 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg1 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed1;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg2 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed2;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg3 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed3;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg4 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed4;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg5 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed5;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg6 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed6;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg7 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed7;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg8 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed8;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg9 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed9;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg10 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed10;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg11 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed11;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg12 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed12;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg13 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed13;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg14 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed14;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg15 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed15;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg16 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed16;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg17 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed17;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg18 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed18;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg19 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed19;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg20 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed20;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_toReg21 = SE_out_cnn_top_B7_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed21;
    // Backward Stall generation
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or0 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or1 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed1 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or0;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or2 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed2 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or1;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or3 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed3 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or2;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or4 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed4 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or3;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or5 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed5 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or4;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or6 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed6 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or5;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or7 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed7 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or6;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or8 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed8 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or7;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or9 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed9 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or8;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or10 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed10 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or9;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or11 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed11 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or10;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or12 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed12 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or11;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or13 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed13 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or12;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or14 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed14 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or13;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or15 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed15 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or14;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or16 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed16 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or15;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or17 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed17 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or16;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or18 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed18 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or17;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or19 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed19 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or18;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_or20 = SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed20 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or19;
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_wireStall = ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_consumed21 & SE_out_cnn_top_B7_merge_reg_aunroll_x_or20);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_backStall = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V0 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg0);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V1 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg1);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V2 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg2);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V3 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg3);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V4 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg4);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V5 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg5);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V6 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg6);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V7 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg7);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V8 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg8);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V9 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg9);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V10 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg10);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V11 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg11);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V12 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg12);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V13 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg13);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V14 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg14);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V15 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg15);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V16 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg16);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V17 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg17);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V18 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg18);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V19 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg19);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V20 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg20);
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_V21 = SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B7_merge_reg_aunroll_x_fromReg21);
    // Computing multiple Valid(s)
    assign SE_out_cnn_top_B7_merge_reg_aunroll_x_wireValid = cnn_top_B7_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8(BLACKBOX,61)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_34_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_59_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall),
        .in_valid_in(SE_out_cnn_top_B7_merge_reg_aunroll_x_V10),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_dest_data_out_34_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8(BITJOIN,229)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_dest_data_out_34_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8(BITSELECT,230)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_q[0:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8(STALLENABLE,315)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_backStall = i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and1 = i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and2 = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_wireValid = SE_coalesced_delay_0_0_V2 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24(STALLENABLE,325)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_backStall = i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_wireValid = i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x(BITJOIN,212)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_out_dest_data_out_24_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x(BITSELECT,213)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q[511:480]);

    // coalesced_delay_0_0(REG,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,152)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[63:32]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x(BITJOIN,200)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_out_dest_data_out_39_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x(BITSELECT,201)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_q[159:128]);

    // i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x(BLACKBOX,25)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_load_input1_o_fifodata@20000000
    // out out_iowr_bl_call_load_input1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_call_load_input1_unnamed_60_cnn_top0 thei_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top5_aunroll_x_e),
        .in_i_data_4_tpl(sel_for_coalesced_delay_0_b),
        .in_i_data_5_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_b),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_c),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_d),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_e),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_f),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_g),
        .in_i_data_11_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_h),
        .in_i_data_12_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_i),
        .in_i_data_13_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_j),
        .in_i_data_14_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_k),
        .in_i_data_15_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_l),
        .in_i_data_16_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_m),
        .in_i_data_17_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_n),
        .in_i_data_18_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_o),
        .in_i_data_19_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_p),
        .in_i_data_20_tpl(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i39_cnn_top7_aunroll_x_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top69_cnn_top24_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_V0),
        .in_iowr_bl_call_load_input1_i_fifoready(in_iowr_bl_call_load_input1_i_fifoready),
        .in_unnamed_cnn_top59(bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top59_cnn_top8_b),
        .out_iowr_bl_call_load_input1_o_fifodata(i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata),
        .out_iowr_bl_call_load_input1_o_fifovalid(i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,5)
    assign out_iowr_bl_call_load_input1_o_fifodata = i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifodata;
    assign out_iowr_bl_call_load_input1_o_fifovalid = i_iowr_bl_call_load_input1_unnamed_cnn_top60_cnn_top9_aunroll_x_out_iowr_bl_call_load_input1_o_fifovalid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36(BITJOIN,256)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_out_dest_data_out_35_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36(BITSELECT,257)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33(BITJOIN,260)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_q = i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_out_dest_data_out_22_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33(BITSELECT,261)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_q[31:0]);

    // i_cmp3_i_cnn_top34(COMPARE,50)@2
    assign i_cmp3_i_cnn_top34_a = $unsigned({{2{sel_for_coalesced_delay_0_b[31]}}, sel_for_coalesced_delay_0_b});
    assign i_cmp3_i_cnn_top34_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_b});
    assign i_cmp3_i_cnn_top34_o = $unsigned($signed(i_cmp3_i_cnn_top34_a) - $signed(i_cmp3_i_cnn_top34_b));
    assign i_cmp3_i_cnn_top34_c[0] = i_cmp3_i_cnn_top34_o[33];

    // i_unnamed_cnn_top37(LOGICAL,72)@2
    assign i_unnamed_cnn_top37_q = i_cmp3_i_cnn_top34_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top77_cnn_top36_b;

    // c_i32_138(CONSTANT,45)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_i_cnn_top32(ADD,51)@2
    assign i_inc_i_cnn_top32_a = {1'b0, sel_for_coalesced_delay_0_b};
    assign i_inc_i_cnn_top32_b = {1'b0, c_i32_138_q};
    assign i_inc_i_cnn_top32_o = $unsigned(i_inc_i_cnn_top32_a) + $unsigned(i_inc_i_cnn_top32_b);
    assign i_inc_i_cnn_top32_q = i_inc_i_cnn_top32_o[32:0];

    // bgTrunc_i_inc_i_cnn_top32_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_inc_i_cnn_top32_sel_x_b = i_inc_i_cnn_top32_q[31:0];

    // i_inc_i_cnn_top32_vt_select_30(BITSELECT,54)@2
    assign i_inc_i_cnn_top32_vt_select_30_b = bgTrunc_i_inc_i_cnn_top32_sel_x_b[30:0];

    // i_inc_i_cnn_top32_vt_join(BITJOIN,53)@2
    assign i_inc_i_cnn_top32_vt_join_q = {GND_q, i_inc_i_cnn_top32_vt_select_30_b};

    // dupName_0_sync_out_x(GPOUT,6)@2
    assign out_inc_i = i_inc_i_cnn_top32_vt_join_q;
    assign out_pre2 = sel_for_coalesced_delay_0_c;
    assign out_unnamed_cnn_top56 = i_unnamed_cnn_top37_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_div_i178_i36_cnn_top33_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_call_load_weight0_o_fifodata = i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifodata;
    assign out_iowr_bl_call_load_weight0_o_fifovalid = i_iowr_bl_call_load_weight0_unnamed_cnn_top62_cnn_top12_aunroll_x_out_iowr_bl_call_load_weight0_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,10)
    assign out_iowr_bl_call_load_weight1_o_fifodata = i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifodata;
    assign out_iowr_bl_call_load_weight1_o_fifovalid = i_iowr_bl_call_load_weight1_unnamed_cnn_top64_cnn_top15_aunroll_x_out_iowr_bl_call_load_weight1_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,12)
    assign out_iowr_bl_call_conv_process_o_fifodata = i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifodata;
    assign out_iowr_bl_call_conv_process_o_fifovalid = i_iowr_bl_call_conv_process_unnamed_cnn_top66_cnn_top21_aunroll_x_out_iowr_bl_call_conv_process_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,14)
    assign out_iord_bl_return_load_input0_o_fifoready = i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoready;
    assign out_iord_bl_return_load_input0_o_fifoalmost_full = i_iord_bl_return_load_input0_unnamed_cnn_top68_cnn_top23_out_iord_bl_return_load_input0_o_fifoalmost_full;

    // dupName_5_ext_sig_sync_out_x(GPOUT,16)
    assign out_iord_bl_return_load_input1_o_fifoready = i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoready;
    assign out_iord_bl_return_load_input1_o_fifoalmost_full = i_iord_bl_return_load_input1_unnamed_cnn_top70_cnn_top25_out_iord_bl_return_load_input1_o_fifoalmost_full;

    // dupName_6_ext_sig_sync_out_x(GPOUT,18)
    assign out_iord_bl_return_load_weight0_o_fifoready = i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoready;
    assign out_iord_bl_return_load_weight0_o_fifoalmost_full = i_iord_bl_return_load_weight0_unnamed_cnn_top72_cnn_top27_out_iord_bl_return_load_weight0_o_fifoalmost_full;

    // dupName_7_ext_sig_sync_out_x(GPOUT,20)
    assign out_iord_bl_return_load_weight1_o_fifoready = i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoready;
    assign out_iord_bl_return_load_weight1_o_fifoalmost_full = i_iord_bl_return_load_weight1_unnamed_cnn_top74_cnn_top29_out_iord_bl_return_load_weight1_o_fifoalmost_full;

    // dupName_8_ext_sig_sync_out_x(GPOUT,22)
    assign out_iord_bl_return_conv_process_o_fifoready = i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoready;
    assign out_iord_bl_return_conv_process_o_fifoalmost_full = i_iord_bl_return_conv_process_unnamed_cnn_top76_cnn_top31_out_iord_bl_return_conv_process_o_fifoalmost_full;

    // ext_sig_sync_out(GPOUT,49)
    assign out_iowr_bl_call_load_input0_o_fifodata = i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifodata;
    assign out_iowr_bl_call_load_input0_o_fifovalid = i_iowr_bl_call_load_input0_unnamed_cnn_top58_cnn_top4_aunroll_x_out_iowr_bl_call_load_input0_o_fifovalid;

    // sync_out(GPOUT,145)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
