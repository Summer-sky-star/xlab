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

// SystemVerilog created from cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_51_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_ffwd_source_s_struct0000_unnamed_51_cnn_top0 (
    output wire [0:0] out_valid_out,
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
    input wire [0:0] in_predicate_in,
    input wire [63:0] in_src_data_in_40_0_0_tpl,
    input wire [31:0] in_src_data_in_40_0_1_tpl,
    input wire [31:0] in_src_data_in_40_0_2_tpl,
    input wire [31:0] in_src_data_in_40_0_3_tpl,
    input wire [31:0] in_src_data_in_40_0_4_tpl,
    input wire [31:0] in_src_data_in_40_0_5_tpl,
    input wire [31:0] in_src_data_in_40_0_6_tpl,
    input wire [31:0] in_src_data_in_40_0_7_tpl,
    input wire [31:0] in_src_data_in_40_0_8_tpl,
    input wire [31:0] in_src_data_in_40_0_9_tpl,
    input wire [31:0] in_src_data_in_40_0_10_tpl,
    input wire [31:0] in_src_data_in_40_0_11_tpl,
    input wire [31:0] in_src_data_in_40_0_12_tpl,
    input wire [31:0] in_src_data_in_40_0_13_tpl,
    input wire [31:0] in_src_data_in_40_0_14_tpl,
    input wire [31:0] in_src_data_in_40_0_15_tpl,
    input wire [31:0] in_src_data_in_40_0_16_tpl,
    input wire [31:0] in_src_data_in_40_0_17_tpl,
    input wire [31:0] in_src_data_in_40_0_18_tpl,
    input wire [31:0] in_src_data_in_40_0_19_tpl,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] c_i32_07_q;
    wire [703:0] dsdk_ip_adapt_bitjoin2_q;
    wire [511:0] dsdk_ip_adapt_bitjoin4_q;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in;
    wire i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in;
    wire i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in_bitsignaltemp;
    wire [703:0] i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out;
    wire [31:0] ip_dsdk_adapt_bitselect11_b;
    wire [31:0] ip_dsdk_adapt_bitselect13_b;
    wire [31:0] ip_dsdk_adapt_bitselect15_b;
    wire [511:0] ip_dsdk_adapt_bitselect17_b;
    wire [31:0] ip_dsdk_adapt_bitselect19_b;
    wire [31:0] ip_dsdk_adapt_bitselect21_b;
    wire [31:0] ip_dsdk_adapt_bitselect23_b;
    wire [31:0] ip_dsdk_adapt_bitselect25_b;
    wire [31:0] ip_dsdk_adapt_bitselect27_b;
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
    wire [63:0] ip_dsdk_adapt_bitselect9_b;


    // dupName_0_sync_out_x(GPOUT,2)@2
    assign out_valid_out = in_valid_in;

    // c_i32_07(CONSTANT,6)
    assign c_i32_07_q = $unsigned(32'b00000000000000000000000000000000);

    // dsdk_ip_adapt_bitjoin4(BITJOIN,8)
    assign dsdk_ip_adapt_bitjoin4_q = {in_src_data_in_40_0_19_tpl, in_src_data_in_40_0_18_tpl, in_src_data_in_40_0_17_tpl, in_src_data_in_40_0_16_tpl, in_src_data_in_40_0_15_tpl, in_src_data_in_40_0_14_tpl, in_src_data_in_40_0_13_tpl, in_src_data_in_40_0_12_tpl, in_src_data_in_40_0_11_tpl, in_src_data_in_40_0_10_tpl, in_src_data_in_40_0_9_tpl, in_src_data_in_40_0_8_tpl, in_src_data_in_40_0_7_tpl, in_src_data_in_40_0_6_tpl, in_src_data_in_40_0_5_tpl, in_src_data_in_40_0_4_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,7)
    assign dsdk_ip_adapt_bitjoin2_q = {c_i32_07_q, dsdk_ip_adapt_bitjoin4_q, in_src_data_in_40_0_3_tpl, in_src_data_in_40_0_2_tpl, in_src_data_in_40_0_1_tpl, in_src_data_in_40_0_0_tpl};

    // i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1(EXTIFACE,9)
    assign i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(704)
    ) thei_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1 (
        .predicate_in(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_predicate_in_bitsignaltemp),
        .source_in(dsdk_ip_adapt_bitjoin2_q),
        .valid_in(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out),
        .clock(clock)
    );

    // ip_dsdk_adapt_bitselect17(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out[671:160];

    // ip_dsdk_adapt_bitselect49(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect49_b = ip_dsdk_adapt_bitselect17_b[511:480];

    // ip_dsdk_adapt_bitselect47(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect47_b = ip_dsdk_adapt_bitselect17_b[479:448];

    // ip_dsdk_adapt_bitselect45(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect45_b = ip_dsdk_adapt_bitselect17_b[447:416];

    // ip_dsdk_adapt_bitselect43(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect43_b = ip_dsdk_adapt_bitselect17_b[415:384];

    // ip_dsdk_adapt_bitselect41(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect41_b = ip_dsdk_adapt_bitselect17_b[383:352];

    // ip_dsdk_adapt_bitselect39(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect39_b = ip_dsdk_adapt_bitselect17_b[351:320];

    // ip_dsdk_adapt_bitselect37(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect37_b = ip_dsdk_adapt_bitselect17_b[319:288];

    // ip_dsdk_adapt_bitselect35(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect35_b = ip_dsdk_adapt_bitselect17_b[287:256];

    // ip_dsdk_adapt_bitselect33(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect33_b = ip_dsdk_adapt_bitselect17_b[255:224];

    // ip_dsdk_adapt_bitselect31(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect31_b = ip_dsdk_adapt_bitselect17_b[223:192];

    // ip_dsdk_adapt_bitselect29(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect29_b = ip_dsdk_adapt_bitselect17_b[191:160];

    // ip_dsdk_adapt_bitselect27(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect27_b = ip_dsdk_adapt_bitselect17_b[159:128];

    // ip_dsdk_adapt_bitselect25(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect25_b = ip_dsdk_adapt_bitselect17_b[127:96];

    // ip_dsdk_adapt_bitselect23(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect23_b = ip_dsdk_adapt_bitselect17_b[95:64];

    // ip_dsdk_adapt_bitselect21(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect21_b = ip_dsdk_adapt_bitselect17_b[63:32];

    // ip_dsdk_adapt_bitselect19(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect19_b = ip_dsdk_adapt_bitselect17_b[31:0];

    // ip_dsdk_adapt_bitselect15(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out[159:128];

    // ip_dsdk_adapt_bitselect13(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect13_b = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out[127:96];

    // ip_dsdk_adapt_bitselect11(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect11_b = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out[95:64];

    // ip_dsdk_adapt_bitselect9(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect9_b = i_llvm_fpga_ffwd_source_s_struct_load_weight0_yaxpeav_mm_host_v_ac_int_0ia_00_u_dwidth_0ia_ihc_u_awidth_0ca_3_u_aspace_01_3_u_latency_0a_3_u_waitrequest_00_3_ihc_hhhuparameter_z_inputss_unnamed_cnn_top51_cnn_top1_source_out[63:0];

    // regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_40_0_0_tpl = ip_dsdk_adapt_bitselect9_b;
    assign out_intel_reserved_ffwd_40_0_1_tpl = ip_dsdk_adapt_bitselect11_b;
    assign out_intel_reserved_ffwd_40_0_2_tpl = ip_dsdk_adapt_bitselect13_b;
    assign out_intel_reserved_ffwd_40_0_3_tpl = ip_dsdk_adapt_bitselect15_b;
    assign out_intel_reserved_ffwd_40_0_4_tpl = ip_dsdk_adapt_bitselect19_b;
    assign out_intel_reserved_ffwd_40_0_5_tpl = ip_dsdk_adapt_bitselect21_b;
    assign out_intel_reserved_ffwd_40_0_6_tpl = ip_dsdk_adapt_bitselect23_b;
    assign out_intel_reserved_ffwd_40_0_7_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_intel_reserved_ffwd_40_0_8_tpl = ip_dsdk_adapt_bitselect27_b;
    assign out_intel_reserved_ffwd_40_0_9_tpl = ip_dsdk_adapt_bitselect29_b;
    assign out_intel_reserved_ffwd_40_0_10_tpl = ip_dsdk_adapt_bitselect31_b;
    assign out_intel_reserved_ffwd_40_0_11_tpl = ip_dsdk_adapt_bitselect33_b;
    assign out_intel_reserved_ffwd_40_0_12_tpl = ip_dsdk_adapt_bitselect35_b;
    assign out_intel_reserved_ffwd_40_0_13_tpl = ip_dsdk_adapt_bitselect37_b;
    assign out_intel_reserved_ffwd_40_0_14_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_intel_reserved_ffwd_40_0_15_tpl = ip_dsdk_adapt_bitselect41_b;
    assign out_intel_reserved_ffwd_40_0_16_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_intel_reserved_ffwd_40_0_17_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_intel_reserved_ffwd_40_0_18_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_intel_reserved_ffwd_40_0_19_tpl = ip_dsdk_adapt_bitselect49_b;

    // sync_out(GPOUT,52)@20000000
    assign out_stall_out = in_stall_in;

endmodule
