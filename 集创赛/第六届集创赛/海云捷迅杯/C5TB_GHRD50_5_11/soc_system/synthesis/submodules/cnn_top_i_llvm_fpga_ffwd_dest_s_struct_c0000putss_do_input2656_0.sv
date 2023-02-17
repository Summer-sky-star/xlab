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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_dest_s_struct_c0000putss_do_input2656_0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_dest_s_struct_c0000putss_do_input2656_0 (
    output wire [63:0] out_dest_data_out_42_0_0_tpl,
    output wire [63:0] out_dest_data_out_42_0_1_tpl,
    output wire [31:0] out_dest_data_out_42_0_2_tpl,
    output wire [31:0] out_dest_data_out_42_0_3_tpl,
    output wire [31:0] out_dest_data_out_42_0_4_tpl,
    output wire [31:0] out_dest_data_out_42_0_5_tpl,
    output wire [31:0] out_dest_data_out_42_0_6_tpl,
    output wire [31:0] out_dest_data_out_42_0_7_tpl,
    output wire [31:0] out_dest_data_out_42_0_8_tpl,
    output wire [31:0] out_dest_data_out_42_0_9_tpl,
    output wire [31:0] out_dest_data_out_42_0_10_tpl,
    output wire [31:0] out_dest_data_out_42_0_11_tpl,
    output wire [31:0] out_dest_data_out_42_0_12_tpl,
    output wire [31:0] out_dest_data_out_42_0_13_tpl,
    output wire [31:0] out_dest_data_out_42_0_14_tpl,
    output wire [31:0] out_dest_data_out_42_0_15_tpl,
    output wire [31:0] out_dest_data_out_42_0_16_tpl,
    output wire [31:0] out_dest_data_out_42_0_17_tpl,
    output wire [31:0] out_dest_data_out_42_0_18_tpl,
    output wire [31:0] out_dest_data_out_42_0_19_tpl,
    output wire [31:0] out_dest_data_out_42_0_20_tpl,
    output wire [31:0] out_dest_data_out_42_0_21_tpl,
    output wire [31:0] out_dest_data_out_42_0_22_tpl,
    output wire [31:0] out_dest_data_out_42_0_23_tpl,
    output wire [0:0] out_valid_out,
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
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [831:0] dsdk_ip_adapt_bitjoin2_q;
    wire [511:0] dsdk_ip_adapt_bitjoin4_q;
    wire [63:0] dsdk_ip_adapt_bitjoin7_q;
    wire [831:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in_bitsignaltemp;
    wire [831:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out_bitsignaltemp;
    wire [63:0] ip_dsdk_adapt_bitselect15_b;
    wire [63:0] ip_dsdk_adapt_bitselect17_b;
    wire [31:0] ip_dsdk_adapt_bitselect19_b;
    wire [31:0] ip_dsdk_adapt_bitselect21_b;
    wire [31:0] ip_dsdk_adapt_bitselect23_b;
    wire [31:0] ip_dsdk_adapt_bitselect25_b;
    wire [511:0] ip_dsdk_adapt_bitselect27_b;
    wire [31:0] ip_dsdk_adapt_bitselect29_b;
    wire [31:0] ip_dsdk_adapt_bitselect31_b;
    wire [31:0] ip_dsdk_adapt_bitselect33_b;
    wire [31:0] ip_dsdk_adapt_bitselect35_b;
    wire [31:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [31:0] ip_dsdk_adapt_bitselect41_b;
    wire [31:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [31:0] ip_dsdk_adapt_bitselect53_b;
    wire [31:0] ip_dsdk_adapt_bitselect55_b;
    wire [31:0] ip_dsdk_adapt_bitselect57_b;
    wire [31:0] ip_dsdk_adapt_bitselect59_b;
    wire [63:0] ip_dsdk_adapt_bitselect61_b;
    wire [31:0] ip_dsdk_adapt_bitselect63_b;
    wire [31:0] ip_dsdk_adapt_bitselect65_b;


    // dsdk_ip_adapt_bitjoin7(BITJOIN,12)
    assign dsdk_ip_adapt_bitjoin7_q = {in_intel_reserved_ffwd_42_0_23_tpl, in_intel_reserved_ffwd_42_0_22_tpl};

    // dsdk_ip_adapt_bitjoin4(BITJOIN,11)
    assign dsdk_ip_adapt_bitjoin4_q = {in_intel_reserved_ffwd_42_0_21_tpl, in_intel_reserved_ffwd_42_0_20_tpl, in_intel_reserved_ffwd_42_0_19_tpl, in_intel_reserved_ffwd_42_0_18_tpl, in_intel_reserved_ffwd_42_0_17_tpl, in_intel_reserved_ffwd_42_0_16_tpl, in_intel_reserved_ffwd_42_0_15_tpl, in_intel_reserved_ffwd_42_0_14_tpl, in_intel_reserved_ffwd_42_0_13_tpl, in_intel_reserved_ffwd_42_0_12_tpl, in_intel_reserved_ffwd_42_0_11_tpl, in_intel_reserved_ffwd_42_0_10_tpl, in_intel_reserved_ffwd_42_0_9_tpl, in_intel_reserved_ffwd_42_0_8_tpl, in_intel_reserved_ffwd_42_0_7_tpl, in_intel_reserved_ffwd_42_0_6_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,10)
    assign dsdk_ip_adapt_bitjoin2_q = {dsdk_ip_adapt_bitjoin7_q, dsdk_ip_adapt_bitjoin4_q, in_intel_reserved_ffwd_42_0_5_tpl, in_intel_reserved_ffwd_42_0_4_tpl, in_intel_reserved_ffwd_42_0_3_tpl, in_intel_reserved_ffwd_42_0_2_tpl, in_intel_reserved_ffwd_42_0_1_tpl, in_intel_reserved_ffwd_42_0_0_tpl};

    // i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1(EXTIFACE,13)
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out[0] = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out[0] = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(832)
    ) thei_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect61(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[831:768];

    // ip_dsdk_adapt_bitselect65(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect65_b = ip_dsdk_adapt_bitselect61_b[63:32];

    // ip_dsdk_adapt_bitselect63(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect63_b = ip_dsdk_adapt_bitselect61_b[31:0];

    // ip_dsdk_adapt_bitselect27(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[767:256];

    // ip_dsdk_adapt_bitselect59(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect59_b = ip_dsdk_adapt_bitselect27_b[511:480];

    // ip_dsdk_adapt_bitselect57(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect57_b = ip_dsdk_adapt_bitselect27_b[479:448];

    // ip_dsdk_adapt_bitselect55(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect55_b = ip_dsdk_adapt_bitselect27_b[447:416];

    // ip_dsdk_adapt_bitselect53(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect53_b = ip_dsdk_adapt_bitselect27_b[415:384];

    // ip_dsdk_adapt_bitselect51(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect51_b = ip_dsdk_adapt_bitselect27_b[383:352];

    // ip_dsdk_adapt_bitselect49(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect49_b = ip_dsdk_adapt_bitselect27_b[351:320];

    // ip_dsdk_adapt_bitselect47(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect47_b = ip_dsdk_adapt_bitselect27_b[319:288];

    // ip_dsdk_adapt_bitselect45(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect45_b = ip_dsdk_adapt_bitselect27_b[287:256];

    // ip_dsdk_adapt_bitselect43(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect43_b = ip_dsdk_adapt_bitselect27_b[255:224];

    // ip_dsdk_adapt_bitselect41(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect41_b = ip_dsdk_adapt_bitselect27_b[223:192];

    // ip_dsdk_adapt_bitselect39(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect39_b = ip_dsdk_adapt_bitselect27_b[191:160];

    // ip_dsdk_adapt_bitselect37(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect37_b = ip_dsdk_adapt_bitselect27_b[159:128];

    // ip_dsdk_adapt_bitselect35(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect35_b = ip_dsdk_adapt_bitselect27_b[127:96];

    // ip_dsdk_adapt_bitselect33(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect33_b = ip_dsdk_adapt_bitselect27_b[95:64];

    // ip_dsdk_adapt_bitselect31(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect31_b = ip_dsdk_adapt_bitselect27_b[63:32];

    // ip_dsdk_adapt_bitselect29(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect29_b = ip_dsdk_adapt_bitselect27_b[31:0];

    // ip_dsdk_adapt_bitselect25(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[255:224];

    // ip_dsdk_adapt_bitselect23(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[223:192];

    // ip_dsdk_adapt_bitselect21(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[191:160];

    // ip_dsdk_adapt_bitselect19(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect19_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[159:128];

    // ip_dsdk_adapt_bitselect17(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[127:64];

    // ip_dsdk_adapt_bitselect15(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_data_out[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_dest_data_out_42_0_0_tpl = ip_dsdk_adapt_bitselect15_b;
    assign out_dest_data_out_42_0_1_tpl = ip_dsdk_adapt_bitselect17_b;
    assign out_dest_data_out_42_0_2_tpl = ip_dsdk_adapt_bitselect19_b;
    assign out_dest_data_out_42_0_3_tpl = ip_dsdk_adapt_bitselect21_b;
    assign out_dest_data_out_42_0_4_tpl = ip_dsdk_adapt_bitselect23_b;
    assign out_dest_data_out_42_0_5_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_dest_data_out_42_0_6_tpl = ip_dsdk_adapt_bitselect29_b;
    assign out_dest_data_out_42_0_7_tpl = ip_dsdk_adapt_bitselect31_b;
    assign out_dest_data_out_42_0_8_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_dest_data_out_42_0_9_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_dest_data_out_42_0_10_tpl = ip_dsdk_adapt_bitselect37_b;
    assign out_dest_data_out_42_0_11_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_dest_data_out_42_0_12_tpl = ip_dsdk_adapt_bitselect41_b;
    assign out_dest_data_out_42_0_13_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_dest_data_out_42_0_14_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_dest_data_out_42_0_15_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_dest_data_out_42_0_16_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_dest_data_out_42_0_17_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_dest_data_out_42_0_18_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_dest_data_out_42_0_19_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_dest_data_out_42_0_20_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_dest_data_out_42_0_21_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_dest_data_out_42_0_22_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_dest_data_out_42_0_23_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_valid_out;

    // sync_out(GPOUT,65)@20000000
    assign out_stall_out = i_llvm_fpga_ffwd_dest_s_struct_conv_process_yaxpeav_mm_host_v_ac_int_0ca_00_u_dwidth_0ca_ihc_u_awidth_0ca_3_u_aspace_02_3_u_latency_0a_3_u_waitrequest_00_3_ihc_peav_mm_host_mu_dwidth_0ca_ihc_u_awidth_0ca_2_u_aspace_04_2_u_latency_0a_2_u_waitrequest_00_2_2_hhhhuparameter_uscale_z_inputss_do_input2656_cnn_top1_stall_out;

endmodule
