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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c1_out_fo0001v_process1_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c1_out_fo0001v_process1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc52_in;
    wire [0:0] adapt_scalar_trunc52_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc56_in;
    wire [0:0] adapt_scalar_trunc56_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc62_in;
    wire [0:0] adapt_scalar_trunc62_q;
    wire [0:0] adapt_scalar_trunc64_in;
    wire [0:0] adapt_scalar_trunc64_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc70_in;
    wire [0:0] adapt_scalar_trunc70_q;
    wire [0:0] adapt_scalar_trunc72_in;
    wire [0:0] adapt_scalar_trunc72_q;
    wire [0:0] adapt_scalar_trunc74_in;
    wire [0:0] adapt_scalar_trunc74_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [0:0] adapt_scalar_trunc78_in;
    wire [0:0] adapt_scalar_trunc78_q;
    wire [0:0] adapt_scalar_trunc80_in;
    wire [0:0] adapt_scalar_trunc80_q;
    wire [0:0] adapt_scalar_trunc82_in;
    wire [0:0] adapt_scalar_trunc82_q;
    wire [0:0] adapt_scalar_trunc84_in;
    wire [0:0] adapt_scalar_trunc84_q;
    wire [0:0] adapt_scalar_trunc86_in;
    wire [0:0] adapt_scalar_trunc86_q;
    wire [0:0] adapt_scalar_trunc88_in;
    wire [0:0] adapt_scalar_trunc88_q;
    wire [0:0] adapt_scalar_trunc90_in;
    wire [0:0] adapt_scalar_trunc90_q;
    wire [0:0] adapt_scalar_trunc92_in;
    wire [0:0] adapt_scalar_trunc92_q;
    wire [0:0] adapt_scalar_trunc94_in;
    wire [0:0] adapt_scalar_trunc94_q;
    wire [0:0] adapt_scalar_trunc96_in;
    wire [0:0] adapt_scalar_trunc96_q;
    wire [6:0] c_i7_010_q;
    wire [7:0] c_i8_049_q;
    wire [223:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension15_q;
    wire [7:0] element_extension17_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension23_q;
    wire [7:0] element_extension25_q;
    wire [7:0] element_extension27_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension33_q;
    wire [7:0] element_extension35_q;
    wire [7:0] element_extension37_q;
    wire [7:0] element_extension39_q;
    wire [7:0] element_extension41_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension45_q;
    wire [7:0] element_extension47_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full_bitsignaltemp;
    wire [223:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [0:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;
    wire [0:0] ip_dsdk_adapt_bitselect61_b;
    wire [0:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [0:0] ip_dsdk_adapt_bitselect69_b;
    wire [0:0] ip_dsdk_adapt_bitselect71_b;
    wire [0:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;
    wire [0:0] ip_dsdk_adapt_bitselect77_b;
    wire [0:0] ip_dsdk_adapt_bitselect79_b;
    wire [0:0] ip_dsdk_adapt_bitselect81_b;
    wire [0:0] ip_dsdk_adapt_bitselect83_b;
    wire [0:0] ip_dsdk_adapt_bitselect85_b;
    wire [0:0] ip_dsdk_adapt_bitselect87_b;
    wire [0:0] ip_dsdk_adapt_bitselect89_b;
    wire [0:0] ip_dsdk_adapt_bitselect91_b;
    wire [0:0] ip_dsdk_adapt_bitselect93_b;
    wire [0:0] ip_dsdk_adapt_bitselect95_b;
    wire [31:0] ip_dsdk_adapt_bitselect97_b;


    // ip_dsdk_adapt_bitselect97(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect97_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[223:192];

    // ip_dsdk_adapt_bitselect95(BITSELECT,98)
    assign ip_dsdk_adapt_bitselect95_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[176:176];

    // adapt_scalar_trunc96(ROUND,26)
    assign adapt_scalar_trunc96_in = ip_dsdk_adapt_bitselect95_b;
    assign adapt_scalar_trunc96_q = adapt_scalar_trunc96_in[0:0];

    // ip_dsdk_adapt_bitselect93(BITSELECT,97)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[168:168];

    // adapt_scalar_trunc94(ROUND,25)
    assign adapt_scalar_trunc94_in = ip_dsdk_adapt_bitselect93_b;
    assign adapt_scalar_trunc94_q = adapt_scalar_trunc94_in[0:0];

    // ip_dsdk_adapt_bitselect91(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect91_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[160:160];

    // adapt_scalar_trunc92(ROUND,24)
    assign adapt_scalar_trunc92_in = ip_dsdk_adapt_bitselect91_b;
    assign adapt_scalar_trunc92_q = adapt_scalar_trunc92_in[0:0];

    // ip_dsdk_adapt_bitselect89(BITSELECT,95)
    assign ip_dsdk_adapt_bitselect89_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[152:152];

    // adapt_scalar_trunc90(ROUND,23)
    assign adapt_scalar_trunc90_in = ip_dsdk_adapt_bitselect89_b;
    assign adapt_scalar_trunc90_q = adapt_scalar_trunc90_in[0:0];

    // ip_dsdk_adapt_bitselect87(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect87_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[144:144];

    // adapt_scalar_trunc88(ROUND,22)
    assign adapt_scalar_trunc88_in = ip_dsdk_adapt_bitselect87_b;
    assign adapt_scalar_trunc88_q = adapt_scalar_trunc88_in[0:0];

    // ip_dsdk_adapt_bitselect85(BITSELECT,93)
    assign ip_dsdk_adapt_bitselect85_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[136:136];

    // adapt_scalar_trunc86(ROUND,21)
    assign adapt_scalar_trunc86_in = ip_dsdk_adapt_bitselect85_b;
    assign adapt_scalar_trunc86_q = adapt_scalar_trunc86_in[0:0];

    // ip_dsdk_adapt_bitselect83(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect83_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[128:128];

    // adapt_scalar_trunc84(ROUND,20)
    assign adapt_scalar_trunc84_in = ip_dsdk_adapt_bitselect83_b;
    assign adapt_scalar_trunc84_q = adapt_scalar_trunc84_in[0:0];

    // ip_dsdk_adapt_bitselect81(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect81_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[120:120];

    // adapt_scalar_trunc82(ROUND,19)
    assign adapt_scalar_trunc82_in = ip_dsdk_adapt_bitselect81_b;
    assign adapt_scalar_trunc82_q = adapt_scalar_trunc82_in[0:0];

    // ip_dsdk_adapt_bitselect79(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect79_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[112:112];

    // adapt_scalar_trunc80(ROUND,18)
    assign adapt_scalar_trunc80_in = ip_dsdk_adapt_bitselect79_b;
    assign adapt_scalar_trunc80_q = adapt_scalar_trunc80_in[0:0];

    // ip_dsdk_adapt_bitselect77(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[104:104];

    // adapt_scalar_trunc78(ROUND,17)
    assign adapt_scalar_trunc78_in = ip_dsdk_adapt_bitselect77_b;
    assign adapt_scalar_trunc78_q = adapt_scalar_trunc78_in[0:0];

    // ip_dsdk_adapt_bitselect75(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[96:96];

    // adapt_scalar_trunc76(ROUND,16)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[88:88];

    // adapt_scalar_trunc74(ROUND,15)
    assign adapt_scalar_trunc74_in = ip_dsdk_adapt_bitselect73_b;
    assign adapt_scalar_trunc74_q = adapt_scalar_trunc74_in[0:0];

    // ip_dsdk_adapt_bitselect71(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[80:80];

    // adapt_scalar_trunc72(ROUND,14)
    assign adapt_scalar_trunc72_in = ip_dsdk_adapt_bitselect71_b;
    assign adapt_scalar_trunc72_q = adapt_scalar_trunc72_in[0:0];

    // ip_dsdk_adapt_bitselect69(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[72:72];

    // adapt_scalar_trunc70(ROUND,13)
    assign adapt_scalar_trunc70_in = ip_dsdk_adapt_bitselect69_b;
    assign adapt_scalar_trunc70_q = adapt_scalar_trunc70_in[0:0];

    // ip_dsdk_adapt_bitselect67(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[64:64];

    // adapt_scalar_trunc68(ROUND,12)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[56:56];

    // adapt_scalar_trunc66(ROUND,11)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[48:48];

    // adapt_scalar_trunc64(ROUND,10)
    assign adapt_scalar_trunc64_in = ip_dsdk_adapt_bitselect63_b;
    assign adapt_scalar_trunc64_q = adapt_scalar_trunc64_in[0:0];

    // ip_dsdk_adapt_bitselect61(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[40:40];

    // adapt_scalar_trunc62(ROUND,9)
    assign adapt_scalar_trunc62_in = ip_dsdk_adapt_bitselect61_b;
    assign adapt_scalar_trunc62_q = adapt_scalar_trunc62_in[0:0];

    // ip_dsdk_adapt_bitselect59(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[32:32];

    // adapt_scalar_trunc60(ROUND,8)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[24:24];

    // adapt_scalar_trunc58(ROUND,7)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[16:16];

    // adapt_scalar_trunc56(ROUND,6)
    assign adapt_scalar_trunc56_in = ip_dsdk_adapt_bitselect55_b;
    assign adapt_scalar_trunc56_q = adapt_scalar_trunc56_in[0:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[8:8];

    // adapt_scalar_trunc54(ROUND,5)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data[0:0];

    // adapt_scalar_trunc52(ROUND,4)
    assign adapt_scalar_trunc52_in = ip_dsdk_adapt_bitselect51_b;
    assign adapt_scalar_trunc52_q = adapt_scalar_trunc52_in[0:0];

    // c_i8_049(CONSTANT,50)
    assign c_i8_049_q = $unsigned(8'b00000000);

    // c_i7_010(CONSTANT,27)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension47(BITJOIN,71)
    assign element_extension47_q = {c_i7_010_q, in_i_data_22_tpl};

    // element_extension45(BITJOIN,70)
    assign element_extension45_q = {c_i7_010_q, in_i_data_21_tpl};

    // element_extension43(BITJOIN,69)
    assign element_extension43_q = {c_i7_010_q, in_i_data_20_tpl};

    // element_extension41(BITJOIN,68)
    assign element_extension41_q = {c_i7_010_q, in_i_data_19_tpl};

    // element_extension39(BITJOIN,67)
    assign element_extension39_q = {c_i7_010_q, in_i_data_18_tpl};

    // element_extension37(BITJOIN,66)
    assign element_extension37_q = {c_i7_010_q, in_i_data_17_tpl};

    // element_extension35(BITJOIN,65)
    assign element_extension35_q = {c_i7_010_q, in_i_data_16_tpl};

    // element_extension33(BITJOIN,64)
    assign element_extension33_q = {c_i7_010_q, in_i_data_15_tpl};

    // element_extension31(BITJOIN,63)
    assign element_extension31_q = {c_i7_010_q, in_i_data_14_tpl};

    // element_extension29(BITJOIN,61)
    assign element_extension29_q = {c_i7_010_q, in_i_data_13_tpl};

    // element_extension27(BITJOIN,60)
    assign element_extension27_q = {c_i7_010_q, in_i_data_12_tpl};

    // element_extension25(BITJOIN,59)
    assign element_extension25_q = {c_i7_010_q, in_i_data_11_tpl};

    // element_extension23(BITJOIN,58)
    assign element_extension23_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension21(BITJOIN,57)
    assign element_extension21_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension19(BITJOIN,56)
    assign element_extension19_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension17(BITJOIN,55)
    assign element_extension17_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension15(BITJOIN,54)
    assign element_extension15_q = {c_i7_010_q, in_i_data_6_tpl};

    // element_extension13(BITJOIN,53)
    assign element_extension13_q = {c_i7_010_q, in_i_data_5_tpl};

    // element_extension11(BITJOIN,52)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,74)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,73)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,72)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,62)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,51)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_23_tpl, c_i8_049_q, element_extension47_q, element_extension45_q, element_extension43_q, element_extension41_q, element_extension39_q, element_extension37_q, element_extension35_q, element_extension33_q, element_extension31_q, element_extension29_q, element_extension27_q, element_extension25_q, element_extension23_q, element_extension21_q, element_extension19_q, element_extension17_q, element_extension15_q, element_extension13_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0(EXTIFACE,75)
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(224)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc52_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc56_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc58_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc60_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc62_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc64_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc68_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc70_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc72_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc74_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc76_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc78_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc80_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc82_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc84_q;
    assign out_o_data_17_tpl = adapt_scalar_trunc86_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc88_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc90_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc92_q;
    assign out_o_data_21_tpl = adapt_scalar_trunc94_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc96_q;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect97_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_valid;

    // sync_out(GPOUT,102)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body18_i_conv_processs_c1_exit924_conv_process0_o_stall;

endmodule
