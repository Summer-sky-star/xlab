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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0005d_weight11_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0005d_weight11_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc55_in;
    wire [0:0] adapt_scalar_trunc55_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [0:0] adapt_scalar_trunc67_in;
    wire [0:0] adapt_scalar_trunc67_q;
    wire [0:0] adapt_scalar_trunc71_in;
    wire [0:0] adapt_scalar_trunc71_q;
    wire [0:0] adapt_scalar_trunc73_in;
    wire [0:0] adapt_scalar_trunc73_q;
    wire [0:0] adapt_scalar_trunc79_in;
    wire [0:0] adapt_scalar_trunc79_q;
    wire [0:0] adapt_scalar_trunc83_in;
    wire [0:0] adapt_scalar_trunc83_q;
    wire [0:0] adapt_scalar_trunc85_in;
    wire [0:0] adapt_scalar_trunc85_q;
    wire [15:0] c_i16_030_q;
    wire [23:0] c_i24_013_q;
    wire [6:0] c_i7_010_q;
    wire [575:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full_bitsignaltemp;
    wire [575:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [0:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;
    wire [31:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [31:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;
    wire [31:0] ip_dsdk_adapt_bitselect68_b;
    wire [0:0] ip_dsdk_adapt_bitselect70_b;
    wire [0:0] ip_dsdk_adapt_bitselect72_b;
    wire [31:0] ip_dsdk_adapt_bitselect74_b;
    wire [31:0] ip_dsdk_adapt_bitselect76_b;
    wire [0:0] ip_dsdk_adapt_bitselect78_b;
    wire [31:0] ip_dsdk_adapt_bitselect80_b;
    wire [0:0] ip_dsdk_adapt_bitselect82_b;
    wire [0:0] ip_dsdk_adapt_bitselect84_b;


    // ip_dsdk_adapt_bitselect84(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[552:552];

    // adapt_scalar_trunc85(ROUND,17)
    assign adapt_scalar_trunc85_in = ip_dsdk_adapt_bitselect84_b;
    assign adapt_scalar_trunc85_q = adapt_scalar_trunc85_in[0:0];

    // ip_dsdk_adapt_bitselect82(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[544:544];

    // adapt_scalar_trunc83(ROUND,16)
    assign adapt_scalar_trunc83_in = ip_dsdk_adapt_bitselect82_b;
    assign adapt_scalar_trunc83_q = adapt_scalar_trunc83_in[0:0];

    // ip_dsdk_adapt_bitselect80(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[543:512];

    // ip_dsdk_adapt_bitselect78(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[480:480];

    // adapt_scalar_trunc79(ROUND,15)
    assign adapt_scalar_trunc79_in = ip_dsdk_adapt_bitselect78_b;
    assign adapt_scalar_trunc79_q = adapt_scalar_trunc79_in[0:0];

    // ip_dsdk_adapt_bitselect76(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[479:448];

    // ip_dsdk_adapt_bitselect74(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[447:416];

    // ip_dsdk_adapt_bitselect72(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[392:392];

    // adapt_scalar_trunc73(ROUND,14)
    assign adapt_scalar_trunc73_in = ip_dsdk_adapt_bitselect72_b;
    assign adapt_scalar_trunc73_q = adapt_scalar_trunc73_in[0:0];

    // ip_dsdk_adapt_bitselect70(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[384:384];

    // adapt_scalar_trunc71(ROUND,13)
    assign adapt_scalar_trunc71_in = ip_dsdk_adapt_bitselect70_b;
    assign adapt_scalar_trunc71_q = adapt_scalar_trunc71_in[0:0];

    // ip_dsdk_adapt_bitselect68(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[383:352];

    // ip_dsdk_adapt_bitselect66(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[320:320];

    // adapt_scalar_trunc67(ROUND,12)
    assign adapt_scalar_trunc67_in = ip_dsdk_adapt_bitselect66_b;
    assign adapt_scalar_trunc67_q = adapt_scalar_trunc67_in[0:0];

    // ip_dsdk_adapt_bitselect64(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[319:288];

    // ip_dsdk_adapt_bitselect62(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[256:256];

    // adapt_scalar_trunc63(ROUND,11)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[255:224];

    // ip_dsdk_adapt_bitselect58(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[192:192];

    // adapt_scalar_trunc59(ROUND,10)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[191:160];

    // ip_dsdk_adapt_bitselect54(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[128:128];

    // adapt_scalar_trunc55(ROUND,9)
    assign adapt_scalar_trunc55_in = ip_dsdk_adapt_bitselect54_b;
    assign adapt_scalar_trunc55_q = adapt_scalar_trunc55_in[0:0];

    // ip_dsdk_adapt_bitselect52(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[127:96];

    // ip_dsdk_adapt_bitselect50(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[64:64];

    // adapt_scalar_trunc51(ROUND,8)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[63:32];

    // ip_dsdk_adapt_bitselect46(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[24:24];

    // adapt_scalar_trunc47(ROUND,7)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[16:16];

    // adapt_scalar_trunc45(ROUND,6)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[8:8];

    // adapt_scalar_trunc43(ROUND,5)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data[0:0];

    // adapt_scalar_trunc41(ROUND,4)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // c_i7_010(CONSTANT,26)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension36(BITJOIN,51)
    assign element_extension36_q = {c_i7_010_q, in_i_data_22_tpl};

    // element_extension34(BITJOIN,50)
    assign element_extension34_q = {c_i7_010_q, in_i_data_21_tpl};

    // element_extension31(BITJOIN,49)
    assign element_extension31_q = {c_i7_010_q, in_i_data_19_tpl};

    // c_i16_030(CONSTANT,18)
    assign c_i16_030_q = $unsigned(16'b0000000000000000);

    // element_extension28(BITJOIN,47)
    assign element_extension28_q = {c_i7_010_q, in_i_data_16_tpl};

    // element_extension26(BITJOIN,46)
    assign element_extension26_q = {c_i7_010_q, in_i_data_15_tpl};

    // element_extension23(BITJOIN,45)
    assign element_extension23_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension20(BITJOIN,44)
    assign element_extension20_q = {c_i7_010_q, in_i_data_11_tpl};

    // element_extension17(BITJOIN,43)
    assign element_extension17_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension14(BITJOIN,42)
    assign element_extension14_q = {c_i7_010_q, in_i_data_7_tpl};

    // c_i24_013(CONSTANT,20)
    assign c_i24_013_q = $unsigned(24'b000000000000000000000000);

    // element_extension11(BITJOIN,41)
    assign element_extension11_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension9(BITJOIN,54)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,53)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,52)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,48)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,40)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i16_030_q, element_extension36_q, element_extension34_q, in_i_data_20_tpl, c_i24_013_q, element_extension31_q, in_i_data_18_tpl, in_i_data_17_tpl, c_i16_030_q, element_extension28_q, element_extension26_q, in_i_data_14_tpl, c_i24_013_q, element_extension23_q, in_i_data_12_tpl, c_i24_013_q, element_extension20_q, in_i_data_10_tpl, c_i24_013_q, element_extension17_q, in_i_data_8_tpl, c_i24_013_q, element_extension14_q, in_i_data_6_tpl, c_i24_013_q, element_extension11_q, in_i_data_4_tpl, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10(EXTIFACE,55)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(576)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc43_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc47_q;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc55_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc59_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc63_q;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_o_data_13_tpl = adapt_scalar_trunc67_q;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc71_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc73_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_o_data_19_tpl = adapt_scalar_trunc79_q;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect80_b;
    assign out_o_data_21_tpl = adapt_scalar_trunc83_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc85_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_valid;

    // sync_out(GPOUT,89)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_weight1s_c0_exit279_load_weight10_o_stall;

endmodule
