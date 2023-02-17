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

// SystemVerilog created from cnn_top_bb_B5_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B5_stall_region (
    output wire [63:0] out_intel_reserved_ffwd_38_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_38_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_39_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_39_0_20_tpl,
    output wire [63:0] out_intel_reserved_ffwd_40_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_40_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_41_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_41_0_19_tpl,
    output wire [63:0] out_intel_reserved_ffwd_42_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_42_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_20_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_21_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_22_tpl,
    output wire [31:0] out_intel_reserved_ffwd_42_0_23_tpl,
    output wire [31:0] out_pre,
    output wire [0:0] out_valid_out,
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
    input wire [63:0] in_intel_reserved_ffwd_29_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_29_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_30_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_30_0_20_tpl,
    input wire [63:0] in_intel_reserved_ffwd_31_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_31_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_32_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_32_0_19_tpl,
    input wire [63:0] in_intel_reserved_ffwd_33_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_33_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_3_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_4_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_5_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_6_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_7_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_8_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_9_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_10_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_11_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_12_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_13_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_14_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_15_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_16_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_17_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_18_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_19_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_20_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_21_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_22_tpl,
    input wire [31:0] in_intel_reserved_ffwd_33_0_23_tpl,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [0:0] in_intel_reserved_ffwd_26_0,
    input wire [0:0] in_intel_reserved_ffwd_27_0,
    input wire [0:0] in_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_too_i_0117,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_pre_cnn_top0_sel_x_b;
    wire [31:0] cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] cnn_top_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_top_B5_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_20_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_21_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_22_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_23_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_20_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_20_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_dest_data_out_31_0_0_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_dest_data_out_32_0_0_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_15_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_15_tpl;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_valid_out;
    wire [31:0] c_i32_027_q;
    wire [31:0] c_i32_126_q;
    wire [0:0] i_acl_4_cnn_top3_s;
    reg [31:0] i_acl_4_cnn_top3_q;
    wire [0:0] i_acl_6_cnn_top5_s;
    reg [31:0] i_acl_6_cnn_top5_q;
    wire [0:0] i_acl_8_cnn_top7_s;
    reg [31:0] i_acl_8_cnn_top7_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_dest_data_out_27_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_dest_data_out_26_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_dest_data_out_28_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_dest_data_out_23_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_intel_reserved_ffwd_37_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_valid_out;
    wire [32:0] i_pre_cnn_top0_a;
    wire [32:0] i_pre_cnn_top0_b;
    logic [32:0] i_pre_cnn_top0_o;
    wire [32:0] i_pre_cnn_top0_q;
    reg [31:0] redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    reg [31:0] redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q;
    wire [31:0] bubble_join_cnn_top_B5_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_cnn_top_B5_merge_reg_aunroll_x_b;
    wire [735:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_b;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_s;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_t;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_u;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_v;
    wire [607:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_s;
    wire [607:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_s;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_b;
    wire [511:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q;
    wire [511:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_f;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_l;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_m;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_n;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_o;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_p;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg10;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg10;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed10;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg11;
    reg [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg11;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed11;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or9;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_or10;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V9;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V10;
    wire [0:0] SE_out_cnn_top_B5_merge_reg_aunroll_x_V11;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    reg [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_8;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or7;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7;
    wire [0:0] SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V8;
    wire [0:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_i_valid;
    reg [0:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid;
    reg [31:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data0;
    reg [31:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data1;
    wire [0:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V;
    wire [31:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D0;
    wire [31:0] SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and2;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and3;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data1;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data2;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data3;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data4;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data5;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data7;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data8;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data9;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data10;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data11;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data12;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data13;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data14;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data15;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data16;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data17;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data18;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data19;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D0;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D1;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D2;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D3;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D4;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D5;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D7;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D8;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D9;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D10;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D11;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D12;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D13;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D14;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D15;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D16;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D17;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D18;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D19;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and2;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and3;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data1;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data2;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data3;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data4;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data5;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data7;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data8;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data9;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data10;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data11;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data12;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data13;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data14;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data15;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data16;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data17;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data18;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data19;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D0;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D1;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D2;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D3;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D4;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D5;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D7;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D8;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D9;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D10;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D11;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D12;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D13;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D14;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D15;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D16;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D17;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D18;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D19;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and2;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data1;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data2;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data3;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data4;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data5;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data7;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data8;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data9;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data10;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data11;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data12;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data13;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data14;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data15;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data16;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data17;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data18;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data19;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data20;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D0;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D1;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D2;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D3;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D4;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D5;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D7;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D8;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D9;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D10;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D11;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D12;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D13;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D14;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D15;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D16;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D17;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D18;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D19;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D20;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and2;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data0;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data1;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data2;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data3;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data4;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data5;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data7;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data8;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data9;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data10;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data11;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data12;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data13;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data14;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data15;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data16;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data17;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data18;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data19;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data20;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D0;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D1;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D2;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D3;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D4;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D5;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D7;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D8;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D9;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D10;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D11;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D12;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D13;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D14;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D15;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D16;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D17;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D18;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D19;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D20;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i_valid;
    reg [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and0;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and1;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and2;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data0;
    reg [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data1;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data2;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data3;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data4;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data5;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data6;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data7;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data8;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data9;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data10;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data11;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data12;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data13;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data14;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data15;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data16;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data17;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data18;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data19;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data20;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data21;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data22;
    reg [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data23;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall;
    wire [0:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D0;
    wire [63:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D1;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D2;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D3;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D4;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D5;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D6;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D7;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D8;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D9;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D10;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D11;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D12;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D13;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D14;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D15;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D16;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D17;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D18;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D19;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D20;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D21;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D22;
    wire [31:0] SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D23;


    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x(STALLENABLE,157)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6(BLACKBOX,39)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_28_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_47_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V9),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_dest_data_out_28_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x(BLACKBOX,16)@1
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
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_p0000nsert_i_i_i173_i42_0 thei_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x (
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
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V6),
        .out_dest_data_out_24_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_0_tpl),
        .out_dest_data_out_24_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_1_tpl),
        .out_dest_data_out_24_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_2_tpl),
        .out_dest_data_out_24_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_3_tpl),
        .out_dest_data_out_24_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_4_tpl),
        .out_dest_data_out_24_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_5_tpl),
        .out_dest_data_out_24_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_6_tpl),
        .out_dest_data_out_24_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_7_tpl),
        .out_dest_data_out_24_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_8_tpl),
        .out_dest_data_out_24_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_9_tpl),
        .out_dest_data_out_24_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_10_tpl),
        .out_dest_data_out_24_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_11_tpl),
        .out_dest_data_out_24_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_12_tpl),
        .out_dest_data_out_24_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_13_tpl),
        .out_dest_data_out_24_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_14_tpl),
        .out_dest_data_out_24_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_15_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x(BLACKBOX,15)@1
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
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_p0000nsert_i_i_i173_i41_0 thei_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x (
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
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V5),
        .out_dest_data_out_24_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_0_tpl),
        .out_dest_data_out_24_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_1_tpl),
        .out_dest_data_out_24_0_2_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_2_tpl),
        .out_dest_data_out_24_0_3_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_3_tpl),
        .out_dest_data_out_24_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_4_tpl),
        .out_dest_data_out_24_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_5_tpl),
        .out_dest_data_out_24_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_6_tpl),
        .out_dest_data_out_24_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_7_tpl),
        .out_dest_data_out_24_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_8_tpl),
        .out_dest_data_out_24_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_9_tpl),
        .out_dest_data_out_24_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_10_tpl),
        .out_dest_data_out_24_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_11_tpl),
        .out_dest_data_out_24_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_12_tpl),
        .out_dest_data_out_24_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_13_tpl),
        .out_dest_data_out_24_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_14_tpl),
        .out_dest_data_out_24_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_15_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_32_0_0_tpl@2
    // out out_dest_data_out_32_0_1_tpl@2
    // out out_dest_data_out_32_0_2_tpl@2
    // out out_dest_data_out_32_0_3_tpl@2
    // out out_dest_data_out_32_0_4_tpl@2
    // out out_dest_data_out_32_0_5_tpl@2
    // out out_dest_data_out_32_0_6_tpl@2
    // out out_dest_data_out_32_0_7_tpl@2
    // out out_dest_data_out_32_0_8_tpl@2
    // out out_dest_data_out_32_0_9_tpl@2
    // out out_dest_data_out_32_0_10_tpl@2
    // out out_dest_data_out_32_0_11_tpl@2
    // out out_dest_data_out_32_0_12_tpl@2
    // out out_dest_data_out_32_0_13_tpl@2
    // out out_dest_data_out_32_0_14_tpl@2
    // out out_dest_data_out_32_0_15_tpl@2
    // out out_dest_data_out_32_0_16_tpl@2
    // out out_dest_data_out_32_0_17_tpl@2
    // out out_dest_data_out_32_0_18_tpl@2
    // out out_dest_data_out_32_0_19_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000putss_do_input1749_0 thei_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x (
        .in_intel_reserved_ffwd_32_0_0_tpl(in_intel_reserved_ffwd_32_0_0_tpl),
        .in_intel_reserved_ffwd_32_0_1_tpl(in_intel_reserved_ffwd_32_0_1_tpl),
        .in_intel_reserved_ffwd_32_0_2_tpl(in_intel_reserved_ffwd_32_0_2_tpl),
        .in_intel_reserved_ffwd_32_0_3_tpl(in_intel_reserved_ffwd_32_0_3_tpl),
        .in_intel_reserved_ffwd_32_0_4_tpl(in_intel_reserved_ffwd_32_0_4_tpl),
        .in_intel_reserved_ffwd_32_0_5_tpl(in_intel_reserved_ffwd_32_0_5_tpl),
        .in_intel_reserved_ffwd_32_0_6_tpl(in_intel_reserved_ffwd_32_0_6_tpl),
        .in_intel_reserved_ffwd_32_0_7_tpl(in_intel_reserved_ffwd_32_0_7_tpl),
        .in_intel_reserved_ffwd_32_0_8_tpl(in_intel_reserved_ffwd_32_0_8_tpl),
        .in_intel_reserved_ffwd_32_0_9_tpl(in_intel_reserved_ffwd_32_0_9_tpl),
        .in_intel_reserved_ffwd_32_0_10_tpl(in_intel_reserved_ffwd_32_0_10_tpl),
        .in_intel_reserved_ffwd_32_0_11_tpl(in_intel_reserved_ffwd_32_0_11_tpl),
        .in_intel_reserved_ffwd_32_0_12_tpl(in_intel_reserved_ffwd_32_0_12_tpl),
        .in_intel_reserved_ffwd_32_0_13_tpl(in_intel_reserved_ffwd_32_0_13_tpl),
        .in_intel_reserved_ffwd_32_0_14_tpl(in_intel_reserved_ffwd_32_0_14_tpl),
        .in_intel_reserved_ffwd_32_0_15_tpl(in_intel_reserved_ffwd_32_0_15_tpl),
        .in_intel_reserved_ffwd_32_0_16_tpl(in_intel_reserved_ffwd_32_0_16_tpl),
        .in_intel_reserved_ffwd_32_0_17_tpl(in_intel_reserved_ffwd_32_0_17_tpl),
        .in_intel_reserved_ffwd_32_0_18_tpl(in_intel_reserved_ffwd_32_0_18_tpl),
        .in_intel_reserved_ffwd_32_0_19_tpl(in_intel_reserved_ffwd_32_0_19_tpl),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V4),
        .out_dest_data_out_32_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_dest_data_out_32_0_0_tpl),
        .out_dest_data_out_32_0_1_tpl(),
        .out_dest_data_out_32_0_2_tpl(),
        .out_dest_data_out_32_0_3_tpl(),
        .out_dest_data_out_32_0_4_tpl(),
        .out_dest_data_out_32_0_5_tpl(),
        .out_dest_data_out_32_0_6_tpl(),
        .out_dest_data_out_32_0_7_tpl(),
        .out_dest_data_out_32_0_8_tpl(),
        .out_dest_data_out_32_0_9_tpl(),
        .out_dest_data_out_32_0_10_tpl(),
        .out_dest_data_out_32_0_11_tpl(),
        .out_dest_data_out_32_0_12_tpl(),
        .out_dest_data_out_32_0_13_tpl(),
        .out_dest_data_out_32_0_14_tpl(),
        .out_dest_data_out_32_0_15_tpl(),
        .out_dest_data_out_32_0_16_tpl(),
        .out_dest_data_out_32_0_17_tpl(),
        .out_dest_data_out_32_0_18_tpl(),
        .out_dest_data_out_32_0_19_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_31_0_0_tpl@2
    // out out_dest_data_out_31_0_1_tpl@2
    // out out_dest_data_out_31_0_2_tpl@2
    // out out_dest_data_out_31_0_3_tpl@2
    // out out_dest_data_out_31_0_4_tpl@2
    // out out_dest_data_out_31_0_5_tpl@2
    // out out_dest_data_out_31_0_6_tpl@2
    // out out_dest_data_out_31_0_7_tpl@2
    // out out_dest_data_out_31_0_8_tpl@2
    // out out_dest_data_out_31_0_9_tpl@2
    // out out_dest_data_out_31_0_10_tpl@2
    // out out_dest_data_out_31_0_11_tpl@2
    // out out_dest_data_out_31_0_12_tpl@2
    // out out_dest_data_out_31_0_13_tpl@2
    // out out_dest_data_out_31_0_14_tpl@2
    // out out_dest_data_out_31_0_15_tpl@2
    // out out_dest_data_out_31_0_16_tpl@2
    // out out_dest_data_out_31_0_17_tpl@2
    // out out_dest_data_out_31_0_18_tpl@2
    // out out_dest_data_out_31_0_19_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000putss_do_input1248_0 thei_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x (
        .in_intel_reserved_ffwd_31_0_0_tpl(in_intel_reserved_ffwd_31_0_0_tpl),
        .in_intel_reserved_ffwd_31_0_1_tpl(in_intel_reserved_ffwd_31_0_1_tpl),
        .in_intel_reserved_ffwd_31_0_2_tpl(in_intel_reserved_ffwd_31_0_2_tpl),
        .in_intel_reserved_ffwd_31_0_3_tpl(in_intel_reserved_ffwd_31_0_3_tpl),
        .in_intel_reserved_ffwd_31_0_4_tpl(in_intel_reserved_ffwd_31_0_4_tpl),
        .in_intel_reserved_ffwd_31_0_5_tpl(in_intel_reserved_ffwd_31_0_5_tpl),
        .in_intel_reserved_ffwd_31_0_6_tpl(in_intel_reserved_ffwd_31_0_6_tpl),
        .in_intel_reserved_ffwd_31_0_7_tpl(in_intel_reserved_ffwd_31_0_7_tpl),
        .in_intel_reserved_ffwd_31_0_8_tpl(in_intel_reserved_ffwd_31_0_8_tpl),
        .in_intel_reserved_ffwd_31_0_9_tpl(in_intel_reserved_ffwd_31_0_9_tpl),
        .in_intel_reserved_ffwd_31_0_10_tpl(in_intel_reserved_ffwd_31_0_10_tpl),
        .in_intel_reserved_ffwd_31_0_11_tpl(in_intel_reserved_ffwd_31_0_11_tpl),
        .in_intel_reserved_ffwd_31_0_12_tpl(in_intel_reserved_ffwd_31_0_12_tpl),
        .in_intel_reserved_ffwd_31_0_13_tpl(in_intel_reserved_ffwd_31_0_13_tpl),
        .in_intel_reserved_ffwd_31_0_14_tpl(in_intel_reserved_ffwd_31_0_14_tpl),
        .in_intel_reserved_ffwd_31_0_15_tpl(in_intel_reserved_ffwd_31_0_15_tpl),
        .in_intel_reserved_ffwd_31_0_16_tpl(in_intel_reserved_ffwd_31_0_16_tpl),
        .in_intel_reserved_ffwd_31_0_17_tpl(in_intel_reserved_ffwd_31_0_17_tpl),
        .in_intel_reserved_ffwd_31_0_18_tpl(in_intel_reserved_ffwd_31_0_18_tpl),
        .in_intel_reserved_ffwd_31_0_19_tpl(in_intel_reserved_ffwd_31_0_19_tpl),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V3),
        .out_dest_data_out_31_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_dest_data_out_31_0_0_tpl),
        .out_dest_data_out_31_0_1_tpl(),
        .out_dest_data_out_31_0_2_tpl(),
        .out_dest_data_out_31_0_3_tpl(),
        .out_dest_data_out_31_0_4_tpl(),
        .out_dest_data_out_31_0_5_tpl(),
        .out_dest_data_out_31_0_6_tpl(),
        .out_dest_data_out_31_0_7_tpl(),
        .out_dest_data_out_31_0_8_tpl(),
        .out_dest_data_out_31_0_9_tpl(),
        .out_dest_data_out_31_0_10_tpl(),
        .out_dest_data_out_31_0_11_tpl(),
        .out_dest_data_out_31_0_12_tpl(),
        .out_dest_data_out_31_0_13_tpl(),
        .out_dest_data_out_31_0_14_tpl(),
        .out_dest_data_out_31_0_15_tpl(),
        .out_dest_data_out_31_0_16_tpl(),
        .out_dest_data_out_31_0_17_tpl(),
        .out_dest_data_out_31_0_18_tpl(),
        .out_dest_data_out_31_0_19_tpl(),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_30_0_0_tpl@2
    // out out_dest_data_out_30_0_1_tpl@2
    // out out_dest_data_out_30_0_2_tpl@2
    // out out_dest_data_out_30_0_3_tpl@2
    // out out_dest_data_out_30_0_4_tpl@2
    // out out_dest_data_out_30_0_5_tpl@2
    // out out_dest_data_out_30_0_6_tpl@2
    // out out_dest_data_out_30_0_7_tpl@2
    // out out_dest_data_out_30_0_8_tpl@2
    // out out_dest_data_out_30_0_9_tpl@2
    // out out_dest_data_out_30_0_10_tpl@2
    // out out_dest_data_out_30_0_11_tpl@2
    // out out_dest_data_out_30_0_12_tpl@2
    // out out_dest_data_out_30_0_13_tpl@2
    // out out_dest_data_out_30_0_14_tpl@2
    // out out_dest_data_out_30_0_15_tpl@2
    // out out_dest_data_out_30_0_16_tpl@2
    // out out_dest_data_out_30_0_17_tpl@2
    // out out_dest_data_out_30_0_18_tpl@2
    // out out_dest_data_out_30_0_19_tpl@2
    // out out_dest_data_out_30_0_20_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000nputss_do_input647_0 thei_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x (
        .in_intel_reserved_ffwd_30_0_0_tpl(in_intel_reserved_ffwd_30_0_0_tpl),
        .in_intel_reserved_ffwd_30_0_1_tpl(in_intel_reserved_ffwd_30_0_1_tpl),
        .in_intel_reserved_ffwd_30_0_2_tpl(in_intel_reserved_ffwd_30_0_2_tpl),
        .in_intel_reserved_ffwd_30_0_3_tpl(in_intel_reserved_ffwd_30_0_3_tpl),
        .in_intel_reserved_ffwd_30_0_4_tpl(in_intel_reserved_ffwd_30_0_4_tpl),
        .in_intel_reserved_ffwd_30_0_5_tpl(in_intel_reserved_ffwd_30_0_5_tpl),
        .in_intel_reserved_ffwd_30_0_6_tpl(in_intel_reserved_ffwd_30_0_6_tpl),
        .in_intel_reserved_ffwd_30_0_7_tpl(in_intel_reserved_ffwd_30_0_7_tpl),
        .in_intel_reserved_ffwd_30_0_8_tpl(in_intel_reserved_ffwd_30_0_8_tpl),
        .in_intel_reserved_ffwd_30_0_9_tpl(in_intel_reserved_ffwd_30_0_9_tpl),
        .in_intel_reserved_ffwd_30_0_10_tpl(in_intel_reserved_ffwd_30_0_10_tpl),
        .in_intel_reserved_ffwd_30_0_11_tpl(in_intel_reserved_ffwd_30_0_11_tpl),
        .in_intel_reserved_ffwd_30_0_12_tpl(in_intel_reserved_ffwd_30_0_12_tpl),
        .in_intel_reserved_ffwd_30_0_13_tpl(in_intel_reserved_ffwd_30_0_13_tpl),
        .in_intel_reserved_ffwd_30_0_14_tpl(in_intel_reserved_ffwd_30_0_14_tpl),
        .in_intel_reserved_ffwd_30_0_15_tpl(in_intel_reserved_ffwd_30_0_15_tpl),
        .in_intel_reserved_ffwd_30_0_16_tpl(in_intel_reserved_ffwd_30_0_16_tpl),
        .in_intel_reserved_ffwd_30_0_17_tpl(in_intel_reserved_ffwd_30_0_17_tpl),
        .in_intel_reserved_ffwd_30_0_18_tpl(in_intel_reserved_ffwd_30_0_18_tpl),
        .in_intel_reserved_ffwd_30_0_19_tpl(in_intel_reserved_ffwd_30_0_19_tpl),
        .in_intel_reserved_ffwd_30_0_20_tpl(in_intel_reserved_ffwd_30_0_20_tpl),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V2),
        .out_dest_data_out_30_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_0_tpl),
        .out_dest_data_out_30_0_1_tpl(),
        .out_dest_data_out_30_0_2_tpl(),
        .out_dest_data_out_30_0_3_tpl(),
        .out_dest_data_out_30_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_4_tpl),
        .out_dest_data_out_30_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_5_tpl),
        .out_dest_data_out_30_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_6_tpl),
        .out_dest_data_out_30_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_7_tpl),
        .out_dest_data_out_30_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_8_tpl),
        .out_dest_data_out_30_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_9_tpl),
        .out_dest_data_out_30_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_10_tpl),
        .out_dest_data_out_30_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_11_tpl),
        .out_dest_data_out_30_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_12_tpl),
        .out_dest_data_out_30_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_13_tpl),
        .out_dest_data_out_30_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_14_tpl),
        .out_dest_data_out_30_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_15_tpl),
        .out_dest_data_out_30_0_16_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_16_tpl),
        .out_dest_data_out_30_0_17_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_17_tpl),
        .out_dest_data_out_30_0_18_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_18_tpl),
        .out_dest_data_out_30_0_19_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_19_tpl),
        .out_dest_data_out_30_0_20_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_20_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_29_0_0_tpl@2
    // out out_dest_data_out_29_0_1_tpl@2
    // out out_dest_data_out_29_0_2_tpl@2
    // out out_dest_data_out_29_0_3_tpl@2
    // out out_dest_data_out_29_0_4_tpl@2
    // out out_dest_data_out_29_0_5_tpl@2
    // out out_dest_data_out_29_0_6_tpl@2
    // out out_dest_data_out_29_0_7_tpl@2
    // out out_dest_data_out_29_0_8_tpl@2
    // out out_dest_data_out_29_0_9_tpl@2
    // out out_dest_data_out_29_0_10_tpl@2
    // out out_dest_data_out_29_0_11_tpl@2
    // out out_dest_data_out_29_0_12_tpl@2
    // out out_dest_data_out_29_0_13_tpl@2
    // out out_dest_data_out_29_0_14_tpl@2
    // out out_dest_data_out_29_0_15_tpl@2
    // out out_dest_data_out_29_0_16_tpl@2
    // out out_dest_data_out_29_0_17_tpl@2
    // out out_dest_data_out_29_0_18_tpl@2
    // out out_dest_data_out_29_0_19_tpl@2
    // out out_dest_data_out_29_0_20_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000inputss_do_input46_0 thei_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x (
        .in_intel_reserved_ffwd_29_0_0_tpl(in_intel_reserved_ffwd_29_0_0_tpl),
        .in_intel_reserved_ffwd_29_0_1_tpl(in_intel_reserved_ffwd_29_0_1_tpl),
        .in_intel_reserved_ffwd_29_0_2_tpl(in_intel_reserved_ffwd_29_0_2_tpl),
        .in_intel_reserved_ffwd_29_0_3_tpl(in_intel_reserved_ffwd_29_0_3_tpl),
        .in_intel_reserved_ffwd_29_0_4_tpl(in_intel_reserved_ffwd_29_0_4_tpl),
        .in_intel_reserved_ffwd_29_0_5_tpl(in_intel_reserved_ffwd_29_0_5_tpl),
        .in_intel_reserved_ffwd_29_0_6_tpl(in_intel_reserved_ffwd_29_0_6_tpl),
        .in_intel_reserved_ffwd_29_0_7_tpl(in_intel_reserved_ffwd_29_0_7_tpl),
        .in_intel_reserved_ffwd_29_0_8_tpl(in_intel_reserved_ffwd_29_0_8_tpl),
        .in_intel_reserved_ffwd_29_0_9_tpl(in_intel_reserved_ffwd_29_0_9_tpl),
        .in_intel_reserved_ffwd_29_0_10_tpl(in_intel_reserved_ffwd_29_0_10_tpl),
        .in_intel_reserved_ffwd_29_0_11_tpl(in_intel_reserved_ffwd_29_0_11_tpl),
        .in_intel_reserved_ffwd_29_0_12_tpl(in_intel_reserved_ffwd_29_0_12_tpl),
        .in_intel_reserved_ffwd_29_0_13_tpl(in_intel_reserved_ffwd_29_0_13_tpl),
        .in_intel_reserved_ffwd_29_0_14_tpl(in_intel_reserved_ffwd_29_0_14_tpl),
        .in_intel_reserved_ffwd_29_0_15_tpl(in_intel_reserved_ffwd_29_0_15_tpl),
        .in_intel_reserved_ffwd_29_0_16_tpl(in_intel_reserved_ffwd_29_0_16_tpl),
        .in_intel_reserved_ffwd_29_0_17_tpl(in_intel_reserved_ffwd_29_0_17_tpl),
        .in_intel_reserved_ffwd_29_0_18_tpl(in_intel_reserved_ffwd_29_0_18_tpl),
        .in_intel_reserved_ffwd_29_0_19_tpl(in_intel_reserved_ffwd_29_0_19_tpl),
        .in_intel_reserved_ffwd_29_0_20_tpl(in_intel_reserved_ffwd_29_0_20_tpl),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V1),
        .out_dest_data_out_29_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_0_tpl),
        .out_dest_data_out_29_0_1_tpl(),
        .out_dest_data_out_29_0_2_tpl(),
        .out_dest_data_out_29_0_3_tpl(),
        .out_dest_data_out_29_0_4_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_4_tpl),
        .out_dest_data_out_29_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_5_tpl),
        .out_dest_data_out_29_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_6_tpl),
        .out_dest_data_out_29_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_7_tpl),
        .out_dest_data_out_29_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_8_tpl),
        .out_dest_data_out_29_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_9_tpl),
        .out_dest_data_out_29_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_10_tpl),
        .out_dest_data_out_29_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_11_tpl),
        .out_dest_data_out_29_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_12_tpl),
        .out_dest_data_out_29_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_13_tpl),
        .out_dest_data_out_29_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_14_tpl),
        .out_dest_data_out_29_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_15_tpl),
        .out_dest_data_out_29_0_16_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_16_tpl),
        .out_dest_data_out_29_0_17_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_17_tpl),
        .out_dest_data_out_29_0_18_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_18_tpl),
        .out_dest_data_out_29_0_19_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_19_tpl),
        .out_dest_data_out_29_0_20_tpl(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_20_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x(BLACKBOX,10)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_33_0_0_tpl@2
    // out out_dest_data_out_33_0_1_tpl@2
    // out out_dest_data_out_33_0_2_tpl@2
    // out out_dest_data_out_33_0_3_tpl@2
    // out out_dest_data_out_33_0_4_tpl@2
    // out out_dest_data_out_33_0_5_tpl@2
    // out out_dest_data_out_33_0_6_tpl@2
    // out out_dest_data_out_33_0_7_tpl@2
    // out out_dest_data_out_33_0_8_tpl@2
    // out out_dest_data_out_33_0_9_tpl@2
    // out out_dest_data_out_33_0_10_tpl@2
    // out out_dest_data_out_33_0_11_tpl@2
    // out out_dest_data_out_33_0_12_tpl@2
    // out out_dest_data_out_33_0_13_tpl@2
    // out out_dest_data_out_33_0_14_tpl@2
    // out out_dest_data_out_33_0_15_tpl@2
    // out out_dest_data_out_33_0_16_tpl@2
    // out out_dest_data_out_33_0_17_tpl@2
    // out out_dest_data_out_33_0_18_tpl@2
    // out out_dest_data_out_33_0_19_tpl@2
    // out out_dest_data_out_33_0_20_tpl@2
    // out out_dest_data_out_33_0_21_tpl@2
    // out out_dest_data_out_33_0_22_tpl@2
    // out out_dest_data_out_33_0_23_tpl@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_s_struct_c0000putss_do_input2350_0 thei_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x (
        .in_intel_reserved_ffwd_33_0_0_tpl(in_intel_reserved_ffwd_33_0_0_tpl),
        .in_intel_reserved_ffwd_33_0_1_tpl(in_intel_reserved_ffwd_33_0_1_tpl),
        .in_intel_reserved_ffwd_33_0_2_tpl(in_intel_reserved_ffwd_33_0_2_tpl),
        .in_intel_reserved_ffwd_33_0_3_tpl(in_intel_reserved_ffwd_33_0_3_tpl),
        .in_intel_reserved_ffwd_33_0_4_tpl(in_intel_reserved_ffwd_33_0_4_tpl),
        .in_intel_reserved_ffwd_33_0_5_tpl(in_intel_reserved_ffwd_33_0_5_tpl),
        .in_intel_reserved_ffwd_33_0_6_tpl(in_intel_reserved_ffwd_33_0_6_tpl),
        .in_intel_reserved_ffwd_33_0_7_tpl(in_intel_reserved_ffwd_33_0_7_tpl),
        .in_intel_reserved_ffwd_33_0_8_tpl(in_intel_reserved_ffwd_33_0_8_tpl),
        .in_intel_reserved_ffwd_33_0_9_tpl(in_intel_reserved_ffwd_33_0_9_tpl),
        .in_intel_reserved_ffwd_33_0_10_tpl(in_intel_reserved_ffwd_33_0_10_tpl),
        .in_intel_reserved_ffwd_33_0_11_tpl(in_intel_reserved_ffwd_33_0_11_tpl),
        .in_intel_reserved_ffwd_33_0_12_tpl(in_intel_reserved_ffwd_33_0_12_tpl),
        .in_intel_reserved_ffwd_33_0_13_tpl(in_intel_reserved_ffwd_33_0_13_tpl),
        .in_intel_reserved_ffwd_33_0_14_tpl(in_intel_reserved_ffwd_33_0_14_tpl),
        .in_intel_reserved_ffwd_33_0_15_tpl(in_intel_reserved_ffwd_33_0_15_tpl),
        .in_intel_reserved_ffwd_33_0_16_tpl(in_intel_reserved_ffwd_33_0_16_tpl),
        .in_intel_reserved_ffwd_33_0_17_tpl(in_intel_reserved_ffwd_33_0_17_tpl),
        .in_intel_reserved_ffwd_33_0_18_tpl(in_intel_reserved_ffwd_33_0_18_tpl),
        .in_intel_reserved_ffwd_33_0_19_tpl(in_intel_reserved_ffwd_33_0_19_tpl),
        .in_intel_reserved_ffwd_33_0_20_tpl(in_intel_reserved_ffwd_33_0_20_tpl),
        .in_intel_reserved_ffwd_33_0_21_tpl(in_intel_reserved_ffwd_33_0_21_tpl),
        .in_intel_reserved_ffwd_33_0_22_tpl(in_intel_reserved_ffwd_33_0_22_tpl),
        .in_intel_reserved_ffwd_33_0_23_tpl(in_intel_reserved_ffwd_33_0_23_tpl),
        .in_stall_in(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V0),
        .out_dest_data_out_33_0_0_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_0_tpl),
        .out_dest_data_out_33_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_1_tpl),
        .out_dest_data_out_33_0_2_tpl(),
        .out_dest_data_out_33_0_3_tpl(),
        .out_dest_data_out_33_0_4_tpl(),
        .out_dest_data_out_33_0_5_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_5_tpl),
        .out_dest_data_out_33_0_6_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_6_tpl),
        .out_dest_data_out_33_0_7_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_7_tpl),
        .out_dest_data_out_33_0_8_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_8_tpl),
        .out_dest_data_out_33_0_9_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_9_tpl),
        .out_dest_data_out_33_0_10_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_10_tpl),
        .out_dest_data_out_33_0_11_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_11_tpl),
        .out_dest_data_out_33_0_12_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_12_tpl),
        .out_dest_data_out_33_0_13_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_13_tpl),
        .out_dest_data_out_33_0_14_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_14_tpl),
        .out_dest_data_out_33_0_15_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_15_tpl),
        .out_dest_data_out_33_0_16_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_16_tpl),
        .out_dest_data_out_33_0_17_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_17_tpl),
        .out_dest_data_out_33_0_18_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_18_tpl),
        .out_dest_data_out_33_0_19_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_19_tpl),
        .out_dest_data_out_33_0_20_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_20_tpl),
        .out_dest_data_out_33_0_21_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_21_tpl),
        .out_dest_data_out_33_0_22_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_22_tpl),
        .out_dest_data_out_33_0_23_tpl(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_23_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,192)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_top_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,148)
    assign bubble_join_stall_entry_q = in_too_i_0117;

    // bubble_select_stall_entry(BITSELECT,149)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // cnn_top_B5_merge_reg_aunroll_x(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_B5_merge_reg thecnn_top_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(cnn_top_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_top_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_top_B5_merge_reg_aunroll_x(STALLENABLE,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg9 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg10 <= '0;
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg11 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg5 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg6 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg7 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg8 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg9 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg9;
            // Successor 10
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg10 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg10;
            // Successor 11
            SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg11 <= SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg11;
        end
    end
    // Input Stall processing
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg4;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg5;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg6;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg7;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg8;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg9;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_stall_out) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg10;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed11 = (~ (SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall) & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid) | SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg11;
    // Consuming
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid = SE_out_cnn_top_B5_merge_reg_aunroll_x_backStall & SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg0 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg1 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg2 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg3 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg4 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed4;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg5 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed5;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg6 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed6;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg7 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed7;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg8 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed8;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg9 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed9;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg10 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed10;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_toReg11 = SE_out_cnn_top_B5_merge_reg_aunroll_x_StallValid & SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed11;
    // Backward Stall generation
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or0 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or1 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed1 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or0;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or2 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed2 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or1;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or3 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed3 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or2;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or4 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed4 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or3;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or5 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed5 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or4;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or6 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed6 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or5;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or7 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed7 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or6;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or8 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed8 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or7;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or9 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed9 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or8;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_or10 = SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed10 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or9;
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_consumed11 & SE_out_cnn_top_B5_merge_reg_aunroll_x_or10);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_backStall = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V0 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V1 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V2 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V3 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V4 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg4);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V5 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg5);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V6 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg6);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V7 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg7);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V8 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg8);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V9 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg9);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V10 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg10);
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_V11 = SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_cnn_top_B5_merge_reg_aunroll_x_fromReg11);
    // Computing multiple Valid(s)
    assign SE_out_cnn_top_B5_merge_reg_aunroll_x_wireValid = cnn_top_B5_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_27_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_acl_545_0 thei_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V7),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_dest_data_out_27_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2(BLACKBOX,38)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_26_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_switchleaf44_0 thei_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V8),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_dest_data_out_26_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1(BLACKBOX,40)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_23_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_0 thei_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall),
        .in_valid_in(SE_out_cnn_top_B5_merge_reg_aunroll_x_V10),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_dest_data_out_23_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1(STALLENABLE,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg2 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg3 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg3 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg4 <= SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed1 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed2 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed3 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed4 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg3 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_toReg4 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or2 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or3 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed3 & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_consumed4 & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_or3);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V2 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg2);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V3 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg3);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V4 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and0 = i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and1 = i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and2 = i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_wireValid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7 & SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6(STALLENABLE,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg2 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg3 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg3 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg4 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed0 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed1 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed2 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed3 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed4 = (~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_toReg4 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed3 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_consumed4 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_or3);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg2);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg3);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V4 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_wireValid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x(BITJOIN,124)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_dest_data_out_24_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x(BITSELECT,125)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q[511:480]);

    // c_i32_027(CONSTANT,30)
    assign c_i32_027_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1(BITJOIN,144)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_q = i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_out_dest_data_out_23_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1(BITSELECT,145)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_q[31:0]);

    // redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0(REG,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q <= $unsigned(SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D1);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2(BITJOIN,138)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_q = i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_out_dest_data_out_26_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2(BITSELECT,139)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_q[0:0]);

    // i_acl_4_cnn_top3(MUX,34)@2
    assign i_acl_4_cnn_top3_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_switchleaf44_cnn_top2_b;
    always @(i_acl_4_cnn_top3_s or redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_b)
    begin
        unique case (i_acl_4_cnn_top3_s)
            1'b0 : i_acl_4_cnn_top3_q = redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q;
            1'b1 : i_acl_4_cnn_top3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_b;
            default : i_acl_4_cnn_top3_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4(BITJOIN,135)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_q = i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_out_dest_data_out_27_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4(BITSELECT,136)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_acl_6_cnn_top5(MUX,35)@2
    assign i_acl_6_cnn_top5_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_acl_545_cnn_top4_b;
    always @(i_acl_6_cnn_top5_s or i_acl_4_cnn_top3_q or c_i32_027_q)
    begin
        unique case (i_acl_6_cnn_top5_s)
            1'b0 : i_acl_6_cnn_top5_q = i_acl_4_cnn_top3_q;
            1'b1 : i_acl_6_cnn_top5_q = c_i32_027_q;
            default : i_acl_6_cnn_top5_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6(BITJOIN,141)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_out_dest_data_out_28_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6(BITSELECT,142)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_q[0:0]);

    // i_acl_8_cnn_top7(MUX,36)@2
    assign i_acl_8_cnn_top7_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_b;
    always @(i_acl_8_cnn_top7_s or redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q or c_i32_027_q)
    begin
        unique case (i_acl_8_cnn_top7_s)
            1'b0 : i_acl_8_cnn_top7_q = redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
            1'b1 : i_acl_8_cnn_top7_q = c_i32_027_q;
            default : i_acl_8_cnn_top7_q = 32'b0;
        endcase
    end

    // redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x(BITJOIN,121)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_dest_data_out_32_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x(BITSELECT,122)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_q[63:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x(STALLENABLE,165)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x(STALLREG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data5 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data11 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data12 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data14 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data16 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data17 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data18 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data19 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data1 <= $unsigned(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data2 <= i_acl_8_cnn_top7_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data3 <= i_acl_6_cnn_top5_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data4 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data5 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_c);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data6 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_d);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data7 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_e);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data8 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_f);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data9 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_g);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data10 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_h);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data11 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data12 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_j);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data13 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_k);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data14 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_l);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data15 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_m);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data16 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_n);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data17 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_o);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data18 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_p);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data19 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and1 = i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_out_valid_out & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V4 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and1;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V4 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and2;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i_valid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_and3;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1749_cnn_top15_aunroll_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data1 : redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data2 : i_acl_8_cnn_top7_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data3 : i_acl_6_cnn_top5_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data4 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_b;
    // Data5
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D5 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data5 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_c;
    // Data6
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D6 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data6 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_d;
    // Data7
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D7 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data7 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_e;
    // Data8
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D8 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data8 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_f;
    // Data9
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D9 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data9 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_g;
    // Data10
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D10 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data10 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_h;
    // Data11
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D11 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data11 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_i;
    // Data12
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D12 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data12 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_j;
    // Data13
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D13 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data13 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_k;
    // Data14
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D14 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data14 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_l;
    // Data15
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D15 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data15 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_m;
    // Data16
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D16 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data16 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_n;
    // Data17
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D17 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data17 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_o;
    // Data18
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D18 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data18 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_p;
    // Data19
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D19 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_r_data19 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x(BITJOIN,127)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_3_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_2_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_dest_data_out_24_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x(BITSELECT,128)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[31:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[63:32]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q[511:480]);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x(BITJOIN,118)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_dest_data_out_31_0_0_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x(BITSELECT,119)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_q[63:0]);

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x(STALLENABLE,167)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x(STALLREG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data5 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data11 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data12 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data14 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data16 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data17 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data18 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data19 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data1 <= $unsigned(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data2 <= i_acl_8_cnn_top7_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data3 <= i_acl_6_cnn_top5_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data4 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data5 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_c);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data6 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_d);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data7 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_e);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data8 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_f);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data9 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_g);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data10 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_h);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data11 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data12 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_j);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data13 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_k);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data14 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_l);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data15 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_m);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data16 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_n);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data17 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_o);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data18 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_p);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data19 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and1 = i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_out_valid_out & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V3 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and1;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and3 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V3 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and2;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i_valid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_and3;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_do_input1248_cnn_top12_aunroll_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data1 : redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data2 : i_acl_8_cnn_top7_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data3 : i_acl_6_cnn_top5_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data4 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_b;
    // Data5
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D5 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data5 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_c;
    // Data6
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D6 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data6 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_d;
    // Data7
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D7 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data7 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_e;
    // Data8
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D8 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data8 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_f;
    // Data9
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D9 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data9 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_g;
    // Data10
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D10 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data10 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_h;
    // Data11
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D11 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data11 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_i;
    // Data12
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D12 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data12 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_j;
    // Data13
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D13 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data13 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_k;
    // Data14
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D14 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data14 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_l;
    // Data15
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D15 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data15 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_m;
    // Data16
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D16 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data16 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_n;
    // Data17
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D17 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data17 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_o;
    // Data18
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D18 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data18 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_p;
    // Data19
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D19 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_r_data19 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_20_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_19_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_18_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_17_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_16_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_dest_data_out_30_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[511:480]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[543:512]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[575:544]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_s = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q[607:576]);

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x(STALLREG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data5 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data11 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data12 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data14 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data16 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data17 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data18 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data19 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data20 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data1 <= $unsigned(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data2 <= i_acl_8_cnn_top7_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data3 <= i_acl_6_cnn_top5_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data4 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_c);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data5 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_d);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data6 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_e);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data7 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_f);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data8 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_g);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data9 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_h);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data10 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data11 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_j);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data12 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_k);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data13 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_l);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data14 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_m);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data15 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_n);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data16 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_o);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data17 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_p);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data18 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data19 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data20 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_s);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V2 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V2 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and1;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i_valid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_and2;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data1 : redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data2 : i_acl_8_cnn_top7_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data3 : i_acl_6_cnn_top5_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data4 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_c;
    // Data5
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D5 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data5 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_d;
    // Data6
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D6 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data6 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_e;
    // Data7
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D7 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data7 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_f;
    // Data8
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D8 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data8 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_g;
    // Data9
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D9 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data9 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_h;
    // Data10
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D10 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data10 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_i;
    // Data11
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D11 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data11 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_j;
    // Data12
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D12 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data12 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_k;
    // Data13
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D13 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data13 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_l;
    // Data14
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D14 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data14 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_m;
    // Data15
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D15 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data15 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_n;
    // Data16
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D16 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data16 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_o;
    // Data17
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D17 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data17 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_p;
    // Data18
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D18 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data18 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_q;
    // Data19
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D19 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data19 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r;
    // Data20
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D20 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_r_data20 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_s;

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x(BITJOIN,109)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_23_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_22_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_21_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_20_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_19_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_18_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_17_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_16_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_1_tpl, i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_dest_data_out_33_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x(BITSELECT,110)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[127:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[511:480]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[543:512]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[575:544]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[607:576]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_s = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[639:608]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_t = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[671:640]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_u = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[703:672]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_v = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q[735:704]);

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x(STALLENABLE,155)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_wireValid = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V;

    // SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x(STALLREG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data1 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data5 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data11 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data12 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data14 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data16 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data17 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data18 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data19 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data20 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data21 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data22 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data23 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_c);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data2 <= $unsigned(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data3 <= i_acl_8_cnn_top7_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data4 <= i_acl_6_cnn_top5_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data5 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_d);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data6 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_e);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data7 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_f);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data8 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_g);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data9 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_h);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data10 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data11 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_j);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data12 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_k);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data13 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_l);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data14 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_m);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data15 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_n);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data16 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_o);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data17 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_p);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data18 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data19 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data20 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_s);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data21 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_t);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data22 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_u);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data23 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_v);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and1;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i_valid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_and2;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data1 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_c;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data2 : redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data3 : i_acl_8_cnn_top7_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data4 : i_acl_6_cnn_top5_q;
    // Data5
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D5 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data5 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_d;
    // Data6
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D6 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data6 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_e;
    // Data7
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D7 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data7 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_f;
    // Data8
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D8 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data8 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_g;
    // Data9
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D9 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data9 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_h;
    // Data10
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D10 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data10 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_i;
    // Data11
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D11 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data11 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_j;
    // Data12
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D12 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data12 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_k;
    // Data13
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D13 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data13 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_l;
    // Data14
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D14 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data14 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_m;
    // Data15
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D15 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data15 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_n;
    // Data16
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D16 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data16 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_o;
    // Data17
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D17 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data17 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_p;
    // Data18
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D18 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data18 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_q;
    // Data19
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D19 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data19 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r;
    // Data20
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D20 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data20 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_s;
    // Data21
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D21 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data21 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_t;
    // Data22
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D22 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data22 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_u;
    // Data23
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D23 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_r_data23 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_v;

    // c_i32_126(CONSTANT,31)
    assign c_i32_126_q = $unsigned(32'b00000000000000000000000000000001);

    // i_pre_cnn_top0(ADD,42)@1
    assign i_pre_cnn_top0_a = {1'b0, bubble_select_cnn_top_B5_merge_reg_aunroll_x_b};
    assign i_pre_cnn_top0_b = {1'b0, c_i32_126_q};
    assign i_pre_cnn_top0_o = $unsigned(i_pre_cnn_top0_a) + $unsigned(i_pre_cnn_top0_b);
    assign i_pre_cnn_top0_q = i_pre_cnn_top0_o[32:0];

    // bgTrunc_i_pre_cnn_top0_sel_x(BITSELECT,7)@1
    assign bgTrunc_i_pre_cnn_top0_sel_x_b = i_pre_cnn_top0_q[31:0];

    // bubble_join_cnn_top_B5_merge_reg_aunroll_x(BITJOIN,95)
    assign bubble_join_cnn_top_B5_merge_reg_aunroll_x_q = cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_cnn_top_B5_merge_reg_aunroll_x(BITSELECT,96)
    assign bubble_select_cnn_top_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_cnn_top_B5_merge_reg_aunroll_x_q[31:0]);

    // SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLREG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid <= 1'b0;
            SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall & (SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid | SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_i_valid);

            if (SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data0 <= $unsigned(bubble_select_cnn_top_B5_merge_reg_aunroll_x_b);
                SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data1 <= bgTrunc_i_pre_cnn_top0_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_i_valid = SE_out_cnn_top_B5_merge_reg_aunroll_x_V11;
    // Stall signal propagation
    assign SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid | ~ (SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V = SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid == 1'b1 ? SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid : SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_i_valid;

    // Data0
    assign SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D0 = SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid == 1'b1 ? SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data0 : bubble_select_cnn_top_B5_merge_reg_aunroll_x_b;
    // Data1
    assign SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_D1 = SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_valid == 1'b1 ? SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_r_data1 : bgTrunc_i_pre_cnn_top0_sel_x_b;

    // SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,194)
    // Valid signal propagation
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V2 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V3 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V4 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V5 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V7 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V8 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8;
    // Stall signal propagation
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_stall_out & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_8 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8;
    // Backward Enable generation
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or0;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or1;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or2;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or3;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or4;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or5;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or7 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or6;
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN = ~ (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_8 | SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_or7);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0 = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN & SR_SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V;
    // Backward Stall generation
    assign SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = ~ (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= 1'b0;
            SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_1 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_2;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_2 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_3;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_3 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_4;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_4 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_5;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_5 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_6;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_6 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_7;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_7 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

            if (SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8 & SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_8;
            end
            else
            begin
                SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_8 <= SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x(BLACKBOX,17)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_42_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_20_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_21_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_22_tpl@20000000
    // out out_intel_reserved_ffwd_42_0_23_tpl@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_53_cnn_top0 thei_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x (
        .in_src_data_in_42_0_0_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D0),
        .in_src_data_in_42_0_1_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D1),
        .in_src_data_in_42_0_2_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D2),
        .in_src_data_in_42_0_3_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D3),
        .in_src_data_in_42_0_4_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D4),
        .in_src_data_in_42_0_5_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D5),
        .in_src_data_in_42_0_6_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D6),
        .in_src_data_in_42_0_7_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D7),
        .in_src_data_in_42_0_8_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D8),
        .in_src_data_in_42_0_9_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D9),
        .in_src_data_in_42_0_10_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D10),
        .in_src_data_in_42_0_11_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D11),
        .in_src_data_in_42_0_12_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D12),
        .in_src_data_in_42_0_13_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D13),
        .in_src_data_in_42_0_14_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D14),
        .in_src_data_in_42_0_15_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D15),
        .in_src_data_in_42_0_16_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D16),
        .in_src_data_in_42_0_17_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D17),
        .in_src_data_in_42_0_18_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D18),
        .in_src_data_in_42_0_19_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D19),
        .in_src_data_in_42_0_20_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D20),
        .in_src_data_in_42_0_21_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D21),
        .in_src_data_in_42_0_22_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D22),
        .in_src_data_in_42_0_23_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_D23),
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2350_cnn_top18_aunroll_x_V0),
        .out_intel_reserved_ffwd_42_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl),
        .out_intel_reserved_ffwd_42_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl),
        .out_intel_reserved_ffwd_42_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl),
        .out_intel_reserved_ffwd_42_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl),
        .out_intel_reserved_ffwd_42_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl),
        .out_intel_reserved_ffwd_42_0_5_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl),
        .out_intel_reserved_ffwd_42_0_6_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl),
        .out_intel_reserved_ffwd_42_0_7_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl),
        .out_intel_reserved_ffwd_42_0_8_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl),
        .out_intel_reserved_ffwd_42_0_9_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl),
        .out_intel_reserved_ffwd_42_0_10_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl),
        .out_intel_reserved_ffwd_42_0_11_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl),
        .out_intel_reserved_ffwd_42_0_12_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl),
        .out_intel_reserved_ffwd_42_0_13_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl),
        .out_intel_reserved_ffwd_42_0_14_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl),
        .out_intel_reserved_ffwd_42_0_15_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl),
        .out_intel_reserved_ffwd_42_0_16_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl),
        .out_intel_reserved_ffwd_42_0_17_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl),
        .out_intel_reserved_ffwd_42_0_18_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl),
        .out_intel_reserved_ffwd_42_0_19_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl),
        .out_intel_reserved_ffwd_42_0_20_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl),
        .out_intel_reserved_ffwd_42_0_21_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl),
        .out_intel_reserved_ffwd_42_0_22_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl),
        .out_intel_reserved_ffwd_42_0_23_tpl(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x(BLACKBOX,19)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_39_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_39_0_20_tpl@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_50_cnn_top0 thei_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x (
        .in_src_data_in_39_0_0_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D0),
        .in_src_data_in_39_0_1_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D1),
        .in_src_data_in_39_0_2_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D2),
        .in_src_data_in_39_0_3_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D3),
        .in_src_data_in_39_0_4_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D4),
        .in_src_data_in_39_0_5_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D5),
        .in_src_data_in_39_0_6_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D6),
        .in_src_data_in_39_0_7_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D7),
        .in_src_data_in_39_0_8_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D8),
        .in_src_data_in_39_0_9_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D9),
        .in_src_data_in_39_0_10_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D10),
        .in_src_data_in_39_0_11_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D11),
        .in_src_data_in_39_0_12_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D12),
        .in_src_data_in_39_0_13_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D13),
        .in_src_data_in_39_0_14_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D14),
        .in_src_data_in_39_0_15_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D15),
        .in_src_data_in_39_0_16_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D16),
        .in_src_data_in_39_0_17_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D17),
        .in_src_data_in_39_0_18_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D18),
        .in_src_data_in_39_0_19_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D19),
        .in_src_data_in_39_0_20_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_D20),
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input647_cnn_top10_aunroll_x_V0),
        .out_intel_reserved_ffwd_39_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl),
        .out_intel_reserved_ffwd_39_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl),
        .out_intel_reserved_ffwd_39_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl),
        .out_intel_reserved_ffwd_39_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl),
        .out_intel_reserved_ffwd_39_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl),
        .out_intel_reserved_ffwd_39_0_5_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl),
        .out_intel_reserved_ffwd_39_0_6_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl),
        .out_intel_reserved_ffwd_39_0_7_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl),
        .out_intel_reserved_ffwd_39_0_8_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl),
        .out_intel_reserved_ffwd_39_0_9_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl),
        .out_intel_reserved_ffwd_39_0_10_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl),
        .out_intel_reserved_ffwd_39_0_11_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl),
        .out_intel_reserved_ffwd_39_0_12_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl),
        .out_intel_reserved_ffwd_39_0_13_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl),
        .out_intel_reserved_ffwd_39_0_14_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl),
        .out_intel_reserved_ffwd_39_0_15_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl),
        .out_intel_reserved_ffwd_39_0_16_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl),
        .out_intel_reserved_ffwd_39_0_17_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl),
        .out_intel_reserved_ffwd_39_0_18_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl),
        .out_intel_reserved_ffwd_39_0_19_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl),
        .out_intel_reserved_ffwd_39_0_20_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_40_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_40_0_19_tpl@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_51_cnn_top0 thei_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x (
        .in_src_data_in_40_0_0_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D0),
        .in_src_data_in_40_0_1_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D1),
        .in_src_data_in_40_0_2_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D2),
        .in_src_data_in_40_0_3_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D3),
        .in_src_data_in_40_0_4_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D4),
        .in_src_data_in_40_0_5_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D5),
        .in_src_data_in_40_0_6_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D6),
        .in_src_data_in_40_0_7_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D7),
        .in_src_data_in_40_0_8_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D8),
        .in_src_data_in_40_0_9_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D9),
        .in_src_data_in_40_0_10_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D10),
        .in_src_data_in_40_0_11_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D11),
        .in_src_data_in_40_0_12_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D12),
        .in_src_data_in_40_0_13_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D13),
        .in_src_data_in_40_0_14_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D14),
        .in_src_data_in_40_0_15_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D15),
        .in_src_data_in_40_0_16_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D16),
        .in_src_data_in_40_0_17_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D17),
        .in_src_data_in_40_0_18_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D18),
        .in_src_data_in_40_0_19_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_D19),
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i42_cnn_top14_aunroll_x_V0),
        .out_intel_reserved_ffwd_40_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl),
        .out_intel_reserved_ffwd_40_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl),
        .out_intel_reserved_ffwd_40_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl),
        .out_intel_reserved_ffwd_40_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl),
        .out_intel_reserved_ffwd_40_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl),
        .out_intel_reserved_ffwd_40_0_5_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl),
        .out_intel_reserved_ffwd_40_0_6_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl),
        .out_intel_reserved_ffwd_40_0_7_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl),
        .out_intel_reserved_ffwd_40_0_8_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl),
        .out_intel_reserved_ffwd_40_0_9_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl),
        .out_intel_reserved_ffwd_40_0_10_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl),
        .out_intel_reserved_ffwd_40_0_11_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl),
        .out_intel_reserved_ffwd_40_0_12_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl),
        .out_intel_reserved_ffwd_40_0_13_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl),
        .out_intel_reserved_ffwd_40_0_14_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl),
        .out_intel_reserved_ffwd_40_0_15_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl),
        .out_intel_reserved_ffwd_40_0_16_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl),
        .out_intel_reserved_ffwd_40_0_17_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl),
        .out_intel_reserved_ffwd_40_0_18_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl),
        .out_intel_reserved_ffwd_40_0_19_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_41_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_41_0_19_tpl@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_52_cnn_top0 thei_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x (
        .in_src_data_in_41_0_0_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D0),
        .in_src_data_in_41_0_1_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D1),
        .in_src_data_in_41_0_2_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D2),
        .in_src_data_in_41_0_3_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D3),
        .in_src_data_in_41_0_4_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D4),
        .in_src_data_in_41_0_5_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D5),
        .in_src_data_in_41_0_6_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D6),
        .in_src_data_in_41_0_7_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D7),
        .in_src_data_in_41_0_8_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D8),
        .in_src_data_in_41_0_9_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D9),
        .in_src_data_in_41_0_10_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D10),
        .in_src_data_in_41_0_11_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D11),
        .in_src_data_in_41_0_12_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D12),
        .in_src_data_in_41_0_13_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D13),
        .in_src_data_in_41_0_14_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D14),
        .in_src_data_in_41_0_15_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D15),
        .in_src_data_in_41_0_16_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D16),
        .in_src_data_in_41_0_17_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D17),
        .in_src_data_in_41_0_18_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D18),
        .in_src_data_in_41_0_19_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_D19),
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_parameters_param_fca_15_insert_i_i_i173_i41_cnn_top17_aunroll_x_V0),
        .out_intel_reserved_ffwd_41_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl),
        .out_intel_reserved_ffwd_41_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl),
        .out_intel_reserved_ffwd_41_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl),
        .out_intel_reserved_ffwd_41_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl),
        .out_intel_reserved_ffwd_41_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl),
        .out_intel_reserved_ffwd_41_0_5_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl),
        .out_intel_reserved_ffwd_41_0_6_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl),
        .out_intel_reserved_ffwd_41_0_7_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl),
        .out_intel_reserved_ffwd_41_0_8_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl),
        .out_intel_reserved_ffwd_41_0_9_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl),
        .out_intel_reserved_ffwd_41_0_10_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl),
        .out_intel_reserved_ffwd_41_0_11_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl),
        .out_intel_reserved_ffwd_41_0_12_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl),
        .out_intel_reserved_ffwd_41_0_13_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl),
        .out_intel_reserved_ffwd_41_0_14_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl),
        .out_intel_reserved_ffwd_41_0_15_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl),
        .out_intel_reserved_ffwd_41_0_16_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl),
        .out_intel_reserved_ffwd_41_0_17_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl),
        .out_intel_reserved_ffwd_41_0_18_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl),
        .out_intel_reserved_ffwd_41_0_19_tpl(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20(BLACKBOX,41)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_48_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_37_0(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V6),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_intel_reserved_ffwd_37_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20(STALLENABLE,190)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and1 = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and2 = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and3 = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and4 = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and5 = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_wireValid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V8 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_and5;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x(BITJOIN,112)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q = {i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_20_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_19_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_18_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_17_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_16_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_15_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_14_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_13_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_12_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_11_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_10_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_9_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_8_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_7_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_6_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_5_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_4_tpl, i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_dest_data_out_29_0_0_tpl};

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x(BITSELECT,113)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[95:64]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[127:96]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[159:128]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[191:160]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[223:192]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[255:224]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[287:256]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[319:288]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[351:320]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[383:352]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_m = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[415:384]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_n = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[447:416]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_o = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[479:448]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_p = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[511:480]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[543:512]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[575:544]);
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_s = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q[607:576]);

    // SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x(STALLREG,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid <= 1'b0;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data5 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data11 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data12 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data13 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data14 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data15 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data16 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data17 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data18 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data19 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data20 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall & (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid | SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i_valid);

            if (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_b);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data1 <= $unsigned(redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data2 <= i_acl_8_cnn_top7_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data3 <= i_acl_6_cnn_top5_q;
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data4 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_c);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data5 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_d);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data6 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_e);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data7 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_f);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data8 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_g);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data9 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_h);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data10 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data11 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_j);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data12 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_k);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data13 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_l);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data14 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_m);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data15 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_n);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data16 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_o);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data17 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_p);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data18 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data19 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r);
                SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data20 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_s);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and0 = i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_out_valid_out;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and1 = SE_out_i_llvm_fpga_ffwd_dest_i32_add_i176_i37_cnn_top1_V1 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and0;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top47_cnn_top6_V1 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and1;
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i_valid = SE_redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V1 & SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_and2;
    // Stall signal propagation
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_backStall = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid | ~ (SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i_valid);

    // Valid
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid : SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i_valid;

    // Data0
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D0 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data0 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_b;
    // Data1
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D1 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data1 : redist0_cnn_top_B5_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    // Data2
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D2 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data2 : i_acl_8_cnn_top7_q;
    // Data3
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D3 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data3 : i_acl_6_cnn_top5_q;
    // Data4
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D4 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data4 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_c;
    // Data5
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D5 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data5 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_d;
    // Data6
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D6 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data6 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_e;
    // Data7
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D7 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data7 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_f;
    // Data8
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D8 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data8 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_g;
    // Data9
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D9 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data9 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_h;
    // Data10
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D10 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data10 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_i;
    // Data11
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D11 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data11 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_j;
    // Data12
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D12 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data12 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_k;
    // Data13
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D13 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data13 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_l;
    // Data14
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D14 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data14 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_m;
    // Data15
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D15 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data15 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_n;
    // Data16
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D16 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data16 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_o;
    // Data17
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D17 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data17 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_p;
    // Data18
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D18 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data18 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_q;
    // Data19
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D19 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data19 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r;
    // Data20
    assign SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D20 = SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_valid == 1'b1 ? SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_r_data20 : bubble_select_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_s;

    // i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x(BLACKBOX,18)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_38_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_4_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_5_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_6_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_7_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_8_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_9_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_10_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_11_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_12_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_13_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_14_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_15_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_16_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_17_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_18_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_19_tpl@20000000
    // out out_intel_reserved_ffwd_38_0_20_tpl@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_49_cnn_top0 thei_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x (
        .in_src_data_in_38_0_0_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D0),
        .in_src_data_in_38_0_1_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D1),
        .in_src_data_in_38_0_2_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D2),
        .in_src_data_in_38_0_3_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D3),
        .in_src_data_in_38_0_4_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D4),
        .in_src_data_in_38_0_5_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D5),
        .in_src_data_in_38_0_6_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D6),
        .in_src_data_in_38_0_7_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D7),
        .in_src_data_in_38_0_8_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D8),
        .in_src_data_in_38_0_9_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D9),
        .in_src_data_in_38_0_10_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D10),
        .in_src_data_in_38_0_11_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D11),
        .in_src_data_in_38_0_12_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D12),
        .in_src_data_in_38_0_13_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D13),
        .in_src_data_in_38_0_14_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D14),
        .in_src_data_in_38_0_15_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D15),
        .in_src_data_in_38_0_16_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D16),
        .in_src_data_in_38_0_17_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D17),
        .in_src_data_in_38_0_18_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D18),
        .in_src_data_in_38_0_19_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D19),
        .in_src_data_in_38_0_20_tpl(SR_SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_D20),
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input46_cnn_top8_aunroll_x_V0),
        .out_intel_reserved_ffwd_38_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl),
        .out_intel_reserved_ffwd_38_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl),
        .out_intel_reserved_ffwd_38_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl),
        .out_intel_reserved_ffwd_38_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl),
        .out_intel_reserved_ffwd_38_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl),
        .out_intel_reserved_ffwd_38_0_5_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl),
        .out_intel_reserved_ffwd_38_0_6_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl),
        .out_intel_reserved_ffwd_38_0_7_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl),
        .out_intel_reserved_ffwd_38_0_8_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl),
        .out_intel_reserved_ffwd_38_0_9_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl),
        .out_intel_reserved_ffwd_38_0_10_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl),
        .out_intel_reserved_ffwd_38_0_11_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl),
        .out_intel_reserved_ffwd_38_0_12_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl),
        .out_intel_reserved_ffwd_38_0_13_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl),
        .out_intel_reserved_ffwd_38_0_14_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl),
        .out_intel_reserved_ffwd_38_0_15_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl),
        .out_intel_reserved_ffwd_38_0_16_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl),
        .out_intel_reserved_ffwd_38_0_17_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl),
        .out_intel_reserved_ffwd_38_0_18_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl),
        .out_intel_reserved_ffwd_38_0_19_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl),
        .out_intel_reserved_ffwd_38_0_20_tpl(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_aunroll_x(GPOUT,2)
    assign out_intel_reserved_ffwd_38_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_0_tpl;
    assign out_intel_reserved_ffwd_38_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_1_tpl;
    assign out_intel_reserved_ffwd_38_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_2_tpl;
    assign out_intel_reserved_ffwd_38_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_3_tpl;
    assign out_intel_reserved_ffwd_38_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_4_tpl;
    assign out_intel_reserved_ffwd_38_0_5_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_5_tpl;
    assign out_intel_reserved_ffwd_38_0_6_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_6_tpl;
    assign out_intel_reserved_ffwd_38_0_7_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_7_tpl;
    assign out_intel_reserved_ffwd_38_0_8_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_8_tpl;
    assign out_intel_reserved_ffwd_38_0_9_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_9_tpl;
    assign out_intel_reserved_ffwd_38_0_10_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_10_tpl;
    assign out_intel_reserved_ffwd_38_0_11_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_11_tpl;
    assign out_intel_reserved_ffwd_38_0_12_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_12_tpl;
    assign out_intel_reserved_ffwd_38_0_13_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_13_tpl;
    assign out_intel_reserved_ffwd_38_0_14_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_14_tpl;
    assign out_intel_reserved_ffwd_38_0_15_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_15_tpl;
    assign out_intel_reserved_ffwd_38_0_16_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_16_tpl;
    assign out_intel_reserved_ffwd_38_0_17_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_17_tpl;
    assign out_intel_reserved_ffwd_38_0_18_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_18_tpl;
    assign out_intel_reserved_ffwd_38_0_19_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_19_tpl;
    assign out_intel_reserved_ffwd_38_0_20_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top49_cnn_top21_aunroll_x_out_intel_reserved_ffwd_38_0_20_tpl;

    // dupName_1_regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_39_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_0_tpl;
    assign out_intel_reserved_ffwd_39_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_1_tpl;
    assign out_intel_reserved_ffwd_39_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_2_tpl;
    assign out_intel_reserved_ffwd_39_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_3_tpl;
    assign out_intel_reserved_ffwd_39_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_4_tpl;
    assign out_intel_reserved_ffwd_39_0_5_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_5_tpl;
    assign out_intel_reserved_ffwd_39_0_6_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_6_tpl;
    assign out_intel_reserved_ffwd_39_0_7_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_7_tpl;
    assign out_intel_reserved_ffwd_39_0_8_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_8_tpl;
    assign out_intel_reserved_ffwd_39_0_9_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_9_tpl;
    assign out_intel_reserved_ffwd_39_0_10_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_10_tpl;
    assign out_intel_reserved_ffwd_39_0_11_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_11_tpl;
    assign out_intel_reserved_ffwd_39_0_12_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_12_tpl;
    assign out_intel_reserved_ffwd_39_0_13_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_13_tpl;
    assign out_intel_reserved_ffwd_39_0_14_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_14_tpl;
    assign out_intel_reserved_ffwd_39_0_15_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_15_tpl;
    assign out_intel_reserved_ffwd_39_0_16_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_16_tpl;
    assign out_intel_reserved_ffwd_39_0_17_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_17_tpl;
    assign out_intel_reserved_ffwd_39_0_18_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_18_tpl;
    assign out_intel_reserved_ffwd_39_0_19_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_19_tpl;
    assign out_intel_reserved_ffwd_39_0_20_tpl = i_llvm_fpga_ffwd_source_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top50_cnn_top22_aunroll_x_out_intel_reserved_ffwd_39_0_20_tpl;

    // dupName_2_regfree_osync_aunroll_x(GPOUT,4)
    assign out_intel_reserved_ffwd_40_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_0_tpl;
    assign out_intel_reserved_ffwd_40_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_1_tpl;
    assign out_intel_reserved_ffwd_40_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_2_tpl;
    assign out_intel_reserved_ffwd_40_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_3_tpl;
    assign out_intel_reserved_ffwd_40_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_4_tpl;
    assign out_intel_reserved_ffwd_40_0_5_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_5_tpl;
    assign out_intel_reserved_ffwd_40_0_6_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_6_tpl;
    assign out_intel_reserved_ffwd_40_0_7_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_7_tpl;
    assign out_intel_reserved_ffwd_40_0_8_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_8_tpl;
    assign out_intel_reserved_ffwd_40_0_9_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_9_tpl;
    assign out_intel_reserved_ffwd_40_0_10_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_10_tpl;
    assign out_intel_reserved_ffwd_40_0_11_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_11_tpl;
    assign out_intel_reserved_ffwd_40_0_12_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_12_tpl;
    assign out_intel_reserved_ffwd_40_0_13_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_13_tpl;
    assign out_intel_reserved_ffwd_40_0_14_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_14_tpl;
    assign out_intel_reserved_ffwd_40_0_15_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_15_tpl;
    assign out_intel_reserved_ffwd_40_0_16_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_16_tpl;
    assign out_intel_reserved_ffwd_40_0_17_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_17_tpl;
    assign out_intel_reserved_ffwd_40_0_18_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_18_tpl;
    assign out_intel_reserved_ffwd_40_0_19_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top23_aunroll_x_out_intel_reserved_ffwd_40_0_19_tpl;

    // dupName_3_regfree_osync_aunroll_x(GPOUT,5)
    assign out_intel_reserved_ffwd_41_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_0_tpl;
    assign out_intel_reserved_ffwd_41_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_1_tpl;
    assign out_intel_reserved_ffwd_41_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_2_tpl;
    assign out_intel_reserved_ffwd_41_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_3_tpl;
    assign out_intel_reserved_ffwd_41_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_4_tpl;
    assign out_intel_reserved_ffwd_41_0_5_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_5_tpl;
    assign out_intel_reserved_ffwd_41_0_6_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_6_tpl;
    assign out_intel_reserved_ffwd_41_0_7_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_7_tpl;
    assign out_intel_reserved_ffwd_41_0_8_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_8_tpl;
    assign out_intel_reserved_ffwd_41_0_9_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_9_tpl;
    assign out_intel_reserved_ffwd_41_0_10_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_10_tpl;
    assign out_intel_reserved_ffwd_41_0_11_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_11_tpl;
    assign out_intel_reserved_ffwd_41_0_12_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_12_tpl;
    assign out_intel_reserved_ffwd_41_0_13_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_13_tpl;
    assign out_intel_reserved_ffwd_41_0_14_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_14_tpl;
    assign out_intel_reserved_ffwd_41_0_15_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_15_tpl;
    assign out_intel_reserved_ffwd_41_0_16_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_16_tpl;
    assign out_intel_reserved_ffwd_41_0_17_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_17_tpl;
    assign out_intel_reserved_ffwd_41_0_18_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_18_tpl;
    assign out_intel_reserved_ffwd_41_0_19_tpl = i_llvm_fpga_ffwd_source_s_struct_load_weight1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top52_cnn_top24_aunroll_x_out_intel_reserved_ffwd_41_0_19_tpl;

    // dupName_4_regfree_osync_aunroll_x(GPOUT,6)
    assign out_intel_reserved_ffwd_42_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_0_tpl;
    assign out_intel_reserved_ffwd_42_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_1_tpl;
    assign out_intel_reserved_ffwd_42_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_2_tpl;
    assign out_intel_reserved_ffwd_42_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_3_tpl;
    assign out_intel_reserved_ffwd_42_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_4_tpl;
    assign out_intel_reserved_ffwd_42_0_5_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_5_tpl;
    assign out_intel_reserved_ffwd_42_0_6_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_6_tpl;
    assign out_intel_reserved_ffwd_42_0_7_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_7_tpl;
    assign out_intel_reserved_ffwd_42_0_8_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_8_tpl;
    assign out_intel_reserved_ffwd_42_0_9_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_9_tpl;
    assign out_intel_reserved_ffwd_42_0_10_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_10_tpl;
    assign out_intel_reserved_ffwd_42_0_11_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_11_tpl;
    assign out_intel_reserved_ffwd_42_0_12_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_12_tpl;
    assign out_intel_reserved_ffwd_42_0_13_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_13_tpl;
    assign out_intel_reserved_ffwd_42_0_14_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_14_tpl;
    assign out_intel_reserved_ffwd_42_0_15_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_15_tpl;
    assign out_intel_reserved_ffwd_42_0_16_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_16_tpl;
    assign out_intel_reserved_ffwd_42_0_17_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_17_tpl;
    assign out_intel_reserved_ffwd_42_0_18_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_18_tpl;
    assign out_intel_reserved_ffwd_42_0_19_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_19_tpl;
    assign out_intel_reserved_ffwd_42_0_20_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_20_tpl;
    assign out_intel_reserved_ffwd_42_0_21_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_21_tpl;
    assign out_intel_reserved_ffwd_42_0_22_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_22_tpl;
    assign out_intel_reserved_ffwd_42_0_23_tpl = i_llvm_fpga_ffwd_source_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_unnamed_cnn_top53_cnn_top25_aunroll_x_out_intel_reserved_ffwd_42_0_23_tpl;

    // dupName_0_sync_out_x(GPOUT,9)@2
    assign out_pre = redist1_bgTrunc_i_pre_cnn_top0_sel_x_b_1_0_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_V0;

    // regfree_osync(GPOUT,83)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top48_cnn_top20_out_intel_reserved_ffwd_37_0;

    // sync_out(GPOUT,87)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
