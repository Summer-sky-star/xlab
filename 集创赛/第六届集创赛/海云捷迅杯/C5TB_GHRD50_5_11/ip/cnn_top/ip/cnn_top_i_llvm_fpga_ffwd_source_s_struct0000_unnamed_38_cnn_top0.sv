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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_38_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_38_cnn_top0 (
    output wire [0:0] out_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_29_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_3_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_4_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_5_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_6_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_7_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_8_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_9_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_10_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_11_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_12_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_13_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_14_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_15_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_16_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_17_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_18_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_19_tpl,
    output wire [31:0] out_intel_reserved_ffwd_29_0_20_tpl,
    input wire [0:0] in_predicate_in,
    input wire [63:0] in_src_data_in_29_0_0_tpl,
    input wire [31:0] in_src_data_in_29_0_1_tpl,
    input wire [31:0] in_src_data_in_29_0_2_tpl,
    input wire [31:0] in_src_data_in_29_0_3_tpl,
    input wire [31:0] in_src_data_in_29_0_4_tpl,
    input wire [31:0] in_src_data_in_29_0_5_tpl,
    input wire [31:0] in_src_data_in_29_0_6_tpl,
    input wire [31:0] in_src_data_in_29_0_7_tpl,
    input wire [31:0] in_src_data_in_29_0_8_tpl,
    input wire [31:0] in_src_data_in_29_0_9_tpl,
    input wire [31:0] in_src_data_in_29_0_10_tpl,
    input wire [31:0] in_src_data_in_29_0_11_tpl,
    input wire [31:0] in_src_data_in_29_0_12_tpl,
    input wire [31:0] in_src_data_in_29_0_13_tpl,
    input wire [31:0] in_src_data_in_29_0_14_tpl,
    input wire [31:0] in_src_data_in_29_0_15_tpl,
    input wire [31:0] in_src_data_in_29_0_16_tpl,
    input wire [31:0] in_src_data_in_29_0_17_tpl,
    input wire [31:0] in_src_data_in_29_0_18_tpl,
    input wire [31:0] in_src_data_in_29_0_19_tpl,
    input wire [31:0] in_src_data_in_29_0_20_tpl,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [703:0] dsdk_ip_adapt_bitjoin2_q;
    wire [511:0] dsdk_ip_adapt_bitjoin4_q;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in;
    wire i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in;
    wire i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    wire [31:0] ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    wire [511:0] ip_dsdk_adapt_bitselect10_merged_bit_select_f;
    wire [63:0] ip_dsdk_adapt_bitselect10_merged_bit_select_g;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_b;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_c;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_d;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_e;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_f;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_g;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_h;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_i;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_j;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_k;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_l;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_m;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_n;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_o;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_p;
    wire [31:0] ip_dsdk_adapt_bitselect20_merged_bit_select_q;


    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_valid_out = in_valid_in;

    // ip_dsdk_adapt_bitselect20_merged_bit_select(BITSELECT,55)@20000000
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_b = ip_dsdk_adapt_bitselect10_merged_bit_select_f[31:0];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_c = ip_dsdk_adapt_bitselect10_merged_bit_select_f[63:32];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_d = ip_dsdk_adapt_bitselect10_merged_bit_select_f[95:64];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_e = ip_dsdk_adapt_bitselect10_merged_bit_select_f[127:96];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_f = ip_dsdk_adapt_bitselect10_merged_bit_select_f[159:128];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_g = ip_dsdk_adapt_bitselect10_merged_bit_select_f[191:160];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_h = ip_dsdk_adapt_bitselect10_merged_bit_select_f[223:192];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_i = ip_dsdk_adapt_bitselect10_merged_bit_select_f[255:224];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_j = ip_dsdk_adapt_bitselect10_merged_bit_select_f[287:256];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_k = ip_dsdk_adapt_bitselect10_merged_bit_select_f[319:288];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_l = ip_dsdk_adapt_bitselect10_merged_bit_select_f[351:320];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_m = ip_dsdk_adapt_bitselect10_merged_bit_select_f[383:352];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_n = ip_dsdk_adapt_bitselect10_merged_bit_select_f[415:384];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_o = ip_dsdk_adapt_bitselect10_merged_bit_select_f[447:416];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_p = ip_dsdk_adapt_bitselect10_merged_bit_select_f[479:448];
    assign ip_dsdk_adapt_bitselect20_merged_bit_select_q = ip_dsdk_adapt_bitselect10_merged_bit_select_f[511:480];

    // dsdk_ip_adapt_bitjoin4(BITJOIN,7)@1
    assign dsdk_ip_adapt_bitjoin4_q = {in_src_data_in_29_0_20_tpl, in_src_data_in_29_0_19_tpl, in_src_data_in_29_0_18_tpl, in_src_data_in_29_0_17_tpl, in_src_data_in_29_0_16_tpl, in_src_data_in_29_0_15_tpl, in_src_data_in_29_0_14_tpl, in_src_data_in_29_0_13_tpl, in_src_data_in_29_0_12_tpl, in_src_data_in_29_0_11_tpl, in_src_data_in_29_0_10_tpl, in_src_data_in_29_0_9_tpl, in_src_data_in_29_0_8_tpl, in_src_data_in_29_0_7_tpl, in_src_data_in_29_0_6_tpl, in_src_data_in_29_0_5_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,6)@1
    assign dsdk_ip_adapt_bitjoin2_q = {dsdk_ip_adapt_bitjoin4_q, in_src_data_in_29_0_4_tpl, in_src_data_in_29_0_3_tpl, in_src_data_in_29_0_2_tpl, in_src_data_in_29_0_1_tpl, in_src_data_in_29_0_0_tpl};

    // i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1(EXTIFACE,8)@1
    assign i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(704)
    ) thei_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1 (
        .predicate_in(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_predicate_in_bitsignaltemp),
        .source_in(dsdk_ip_adapt_bitjoin2_q),
        .valid_in(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out),
        .clock(clock)
    );

    // ip_dsdk_adapt_bitselect10_merged_bit_select(BITSELECT,54)@20000000
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_b = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[95:64];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_c = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[127:96];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_d = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[159:128];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_e = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[191:160];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_f = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[703:192];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_g = i_llvm_fpga_ffwd_source_s_struct_load_input0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_00_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhhuparameter_z_inputss_unnamed_cnn_top38_cnn_top1_source_out[63:0];

    // regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_29_0_0_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_g;
    assign out_intel_reserved_ffwd_29_0_1_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    assign out_intel_reserved_ffwd_29_0_2_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    assign out_intel_reserved_ffwd_29_0_3_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    assign out_intel_reserved_ffwd_29_0_4_tpl = ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    assign out_intel_reserved_ffwd_29_0_5_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_b;
    assign out_intel_reserved_ffwd_29_0_6_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_c;
    assign out_intel_reserved_ffwd_29_0_7_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_d;
    assign out_intel_reserved_ffwd_29_0_8_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_e;
    assign out_intel_reserved_ffwd_29_0_9_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_f;
    assign out_intel_reserved_ffwd_29_0_10_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_g;
    assign out_intel_reserved_ffwd_29_0_11_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_h;
    assign out_intel_reserved_ffwd_29_0_12_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_i;
    assign out_intel_reserved_ffwd_29_0_13_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_j;
    assign out_intel_reserved_ffwd_29_0_14_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_k;
    assign out_intel_reserved_ffwd_29_0_15_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_l;
    assign out_intel_reserved_ffwd_29_0_16_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_m;
    assign out_intel_reserved_ffwd_29_0_17_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_n;
    assign out_intel_reserved_ffwd_29_0_18_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_o;
    assign out_intel_reserved_ffwd_29_0_19_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_p;
    assign out_intel_reserved_ffwd_29_0_20_tpl = ip_dsdk_adapt_bitselect20_merged_bit_select_q;

    // sync_out(GPOUT,53)@1
    assign out_stall_out = in_stall_in;

endmodule
