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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000nputss_do_input953_0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_dest_s_struct_l0000nputss_do_input953_0 (
    output wire [63:0] out_dest_data_out_39_0_0_tpl,
    output wire [31:0] out_dest_data_out_39_0_1_tpl,
    output wire [31:0] out_dest_data_out_39_0_2_tpl,
    output wire [31:0] out_dest_data_out_39_0_3_tpl,
    output wire [31:0] out_dest_data_out_39_0_4_tpl,
    output wire [31:0] out_dest_data_out_39_0_5_tpl,
    output wire [31:0] out_dest_data_out_39_0_6_tpl,
    output wire [31:0] out_dest_data_out_39_0_7_tpl,
    output wire [31:0] out_dest_data_out_39_0_8_tpl,
    output wire [31:0] out_dest_data_out_39_0_9_tpl,
    output wire [31:0] out_dest_data_out_39_0_10_tpl,
    output wire [31:0] out_dest_data_out_39_0_11_tpl,
    output wire [31:0] out_dest_data_out_39_0_12_tpl,
    output wire [31:0] out_dest_data_out_39_0_13_tpl,
    output wire [31:0] out_dest_data_out_39_0_14_tpl,
    output wire [31:0] out_dest_data_out_39_0_15_tpl,
    output wire [31:0] out_dest_data_out_39_0_16_tpl,
    output wire [31:0] out_dest_data_out_39_0_17_tpl,
    output wire [31:0] out_dest_data_out_39_0_18_tpl,
    output wire [31:0] out_dest_data_out_39_0_19_tpl,
    output wire [31:0] out_dest_data_out_39_0_20_tpl,
    output wire [0:0] out_valid_out,
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
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [703:0] dsdk_ip_adapt_bitjoin2_q;
    wire [511:0] dsdk_ip_adapt_bitjoin4_q;
    wire [703:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_in;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in;
    wire i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out;
    wire i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect10_b;
    wire [31:0] ip_dsdk_adapt_bitselect12_b;
    wire [31:0] ip_dsdk_adapt_bitselect14_b;
    wire [31:0] ip_dsdk_adapt_bitselect16_b;
    wire [511:0] ip_dsdk_adapt_bitselect18_b;
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
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [31:0] ip_dsdk_adapt_bitselect44_b;
    wire [31:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [31:0] ip_dsdk_adapt_bitselect50_b;
    wire [63:0] ip_dsdk_adapt_bitselect8_b;


    // dsdk_ip_adapt_bitjoin4(BITJOIN,6)
    assign dsdk_ip_adapt_bitjoin4_q = {in_intel_reserved_ffwd_39_0_20_tpl, in_intel_reserved_ffwd_39_0_19_tpl, in_intel_reserved_ffwd_39_0_18_tpl, in_intel_reserved_ffwd_39_0_17_tpl, in_intel_reserved_ffwd_39_0_16_tpl, in_intel_reserved_ffwd_39_0_15_tpl, in_intel_reserved_ffwd_39_0_14_tpl, in_intel_reserved_ffwd_39_0_13_tpl, in_intel_reserved_ffwd_39_0_12_tpl, in_intel_reserved_ffwd_39_0_11_tpl, in_intel_reserved_ffwd_39_0_10_tpl, in_intel_reserved_ffwd_39_0_9_tpl, in_intel_reserved_ffwd_39_0_8_tpl, in_intel_reserved_ffwd_39_0_7_tpl, in_intel_reserved_ffwd_39_0_6_tpl, in_intel_reserved_ffwd_39_0_5_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,5)
    assign dsdk_ip_adapt_bitjoin2_q = {dsdk_ip_adapt_bitjoin4_q, in_intel_reserved_ffwd_39_0_4_tpl, in_intel_reserved_ffwd_39_0_3_tpl, in_intel_reserved_ffwd_39_0_2_tpl, in_intel_reserved_ffwd_39_0_1_tpl, in_intel_reserved_ffwd_39_0_0_tpl};

    // i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1(EXTIFACE,7)
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in = in_stall_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in[0];
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out[0] = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out[0] = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out_bitsignaltemp;
    acl_ffwddst #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .STALL_FREE(0),
        .WIDTH(704)
    ) thei_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .stall_in(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out),
        .stall_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect18(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[703:192];

    // ip_dsdk_adapt_bitselect50(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect50_b = ip_dsdk_adapt_bitselect18_b[511:480];

    // ip_dsdk_adapt_bitselect48(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect48_b = ip_dsdk_adapt_bitselect18_b[479:448];

    // ip_dsdk_adapt_bitselect46(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect18_b[447:416];

    // ip_dsdk_adapt_bitselect44(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect44_b = ip_dsdk_adapt_bitselect18_b[415:384];

    // ip_dsdk_adapt_bitselect42(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect42_b = ip_dsdk_adapt_bitselect18_b[383:352];

    // ip_dsdk_adapt_bitselect40(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect40_b = ip_dsdk_adapt_bitselect18_b[351:320];

    // ip_dsdk_adapt_bitselect38(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect38_b = ip_dsdk_adapt_bitselect18_b[319:288];

    // ip_dsdk_adapt_bitselect36(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect36_b = ip_dsdk_adapt_bitselect18_b[287:256];

    // ip_dsdk_adapt_bitselect34(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect34_b = ip_dsdk_adapt_bitselect18_b[255:224];

    // ip_dsdk_adapt_bitselect32(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect32_b = ip_dsdk_adapt_bitselect18_b[223:192];

    // ip_dsdk_adapt_bitselect30(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect30_b = ip_dsdk_adapt_bitselect18_b[191:160];

    // ip_dsdk_adapt_bitselect28(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect28_b = ip_dsdk_adapt_bitselect18_b[159:128];

    // ip_dsdk_adapt_bitselect26(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect26_b = ip_dsdk_adapt_bitselect18_b[127:96];

    // ip_dsdk_adapt_bitselect24(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect24_b = ip_dsdk_adapt_bitselect18_b[95:64];

    // ip_dsdk_adapt_bitselect22(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect22_b = ip_dsdk_adapt_bitselect18_b[63:32];

    // ip_dsdk_adapt_bitselect20(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect20_b = ip_dsdk_adapt_bitselect18_b[31:0];

    // ip_dsdk_adapt_bitselect16(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[191:160];

    // ip_dsdk_adapt_bitselect14(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect14_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[159:128];

    // ip_dsdk_adapt_bitselect12(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect12_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[127:96];

    // ip_dsdk_adapt_bitselect10(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect10_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[95:64];

    // ip_dsdk_adapt_bitselect8(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect8_b = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_data_out[63:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_dest_data_out_39_0_0_tpl = ip_dsdk_adapt_bitselect8_b;
    assign out_dest_data_out_39_0_1_tpl = ip_dsdk_adapt_bitselect10_b;
    assign out_dest_data_out_39_0_2_tpl = ip_dsdk_adapt_bitselect12_b;
    assign out_dest_data_out_39_0_3_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_dest_data_out_39_0_4_tpl = ip_dsdk_adapt_bitselect16_b;
    assign out_dest_data_out_39_0_5_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_dest_data_out_39_0_6_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_dest_data_out_39_0_7_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_dest_data_out_39_0_8_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_dest_data_out_39_0_9_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_dest_data_out_39_0_10_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_dest_data_out_39_0_11_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_dest_data_out_39_0_12_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_dest_data_out_39_0_13_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_dest_data_out_39_0_14_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_dest_data_out_39_0_15_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_dest_data_out_39_0_16_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_dest_data_out_39_0_17_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_dest_data_out_39_0_18_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_dest_data_out_39_0_19_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_dest_data_out_39_0_20_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_valid_out = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_valid_out;

    // sync_out(GPOUT,52)@20000000
    assign out_stall_out = i_llvm_fpga_ffwd_dest_s_struct_load_input1_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_do_input953_cnn_top1_stall_out;

endmodule
