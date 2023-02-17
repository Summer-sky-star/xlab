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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo00008_cnn_top1_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo00008_cnn_top1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [63:0] out_o_data_3_tpl,
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
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [63:0] in_i_data_3_tpl,
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
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc49_in;
    wire [0:0] adapt_scalar_trunc49_q;
    wire [0:0] adapt_scalar_trunc51_in;
    wire [0:0] adapt_scalar_trunc51_q;
    wire [0:0] adapt_scalar_trunc53_in;
    wire [0:0] adapt_scalar_trunc53_q;
    wire [0:0] adapt_scalar_trunc57_in;
    wire [0:0] adapt_scalar_trunc57_q;
    wire [0:0] adapt_scalar_trunc59_in;
    wire [0:0] adapt_scalar_trunc59_q;
    wire [0:0] adapt_scalar_trunc61_in;
    wire [0:0] adapt_scalar_trunc61_q;
    wire [0:0] adapt_scalar_trunc63_in;
    wire [0:0] adapt_scalar_trunc63_q;
    wire [0:0] adapt_scalar_trunc65_in;
    wire [0:0] adapt_scalar_trunc65_q;
    wire [0:0] adapt_scalar_trunc67_in;
    wire [0:0] adapt_scalar_trunc67_q;
    wire [0:0] adapt_scalar_trunc69_in;
    wire [0:0] adapt_scalar_trunc69_q;
    wire [0:0] adapt_scalar_trunc71_in;
    wire [0:0] adapt_scalar_trunc71_q;
    wire [0:0] adapt_scalar_trunc73_in;
    wire [0:0] adapt_scalar_trunc73_q;
    wire [0:0] adapt_scalar_trunc75_in;
    wire [0:0] adapt_scalar_trunc75_q;
    wire [0:0] adapt_scalar_trunc77_in;
    wire [0:0] adapt_scalar_trunc77_q;
    wire [0:0] adapt_scalar_trunc79_in;
    wire [0:0] adapt_scalar_trunc79_q;
    wire [0:0] adapt_scalar_trunc81_in;
    wire [0:0] adapt_scalar_trunc81_q;
    wire [0:0] adapt_scalar_trunc83_in;
    wire [0:0] adapt_scalar_trunc83_q;
    wire [0:0] adapt_scalar_trunc85_in;
    wire [0:0] adapt_scalar_trunc85_q;
    wire [0:0] adapt_scalar_trunc87_in;
    wire [0:0] adapt_scalar_trunc87_q;
    wire [0:0] adapt_scalar_trunc89_in;
    wire [0:0] adapt_scalar_trunc89_q;
    wire [0:0] adapt_scalar_trunc91_in;
    wire [0:0] adapt_scalar_trunc91_q;
    wire [39:0] c_i40_09_q;
    wire [47:0] c_i48_046_q;
    wire [6:0] c_i7_011_q;
    wire [319:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension12_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension28_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension30_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension34_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension38_q;
    wire [7:0] element_extension40_q;
    wire [7:0] element_extension42_q;
    wire [7:0] element_extension44_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full_bitsignaltemp;
    wire [319:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect48_b;
    wire [0:0] ip_dsdk_adapt_bitselect50_b;
    wire [0:0] ip_dsdk_adapt_bitselect52_b;
    wire [63:0] ip_dsdk_adapt_bitselect54_b;
    wire [0:0] ip_dsdk_adapt_bitselect56_b;
    wire [0:0] ip_dsdk_adapt_bitselect58_b;
    wire [0:0] ip_dsdk_adapt_bitselect60_b;
    wire [0:0] ip_dsdk_adapt_bitselect62_b;
    wire [0:0] ip_dsdk_adapt_bitselect64_b;
    wire [0:0] ip_dsdk_adapt_bitselect66_b;
    wire [0:0] ip_dsdk_adapt_bitselect68_b;
    wire [0:0] ip_dsdk_adapt_bitselect70_b;
    wire [0:0] ip_dsdk_adapt_bitselect72_b;
    wire [0:0] ip_dsdk_adapt_bitselect74_b;
    wire [0:0] ip_dsdk_adapt_bitselect76_b;
    wire [0:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;
    wire [0:0] ip_dsdk_adapt_bitselect82_b;
    wire [0:0] ip_dsdk_adapt_bitselect84_b;
    wire [0:0] ip_dsdk_adapt_bitselect86_b;
    wire [0:0] ip_dsdk_adapt_bitselect88_b;
    wire [0:0] ip_dsdk_adapt_bitselect90_b;


    // ip_dsdk_adapt_bitselect90(BITSELECT,92)
    assign ip_dsdk_adapt_bitselect90_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[264:264];

    // adapt_scalar_trunc91(ROUND,24)
    assign adapt_scalar_trunc91_in = ip_dsdk_adapt_bitselect90_b;
    assign adapt_scalar_trunc91_q = adapt_scalar_trunc91_in[0:0];

    // ip_dsdk_adapt_bitselect88(BITSELECT,91)
    assign ip_dsdk_adapt_bitselect88_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[256:256];

    // adapt_scalar_trunc89(ROUND,23)
    assign adapt_scalar_trunc89_in = ip_dsdk_adapt_bitselect88_b;
    assign adapt_scalar_trunc89_q = adapt_scalar_trunc89_in[0:0];

    // ip_dsdk_adapt_bitselect86(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect86_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[248:248];

    // adapt_scalar_trunc87(ROUND,22)
    assign adapt_scalar_trunc87_in = ip_dsdk_adapt_bitselect86_b;
    assign adapt_scalar_trunc87_q = adapt_scalar_trunc87_in[0:0];

    // ip_dsdk_adapt_bitselect84(BITSELECT,89)
    assign ip_dsdk_adapt_bitselect84_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[240:240];

    // adapt_scalar_trunc85(ROUND,21)
    assign adapt_scalar_trunc85_in = ip_dsdk_adapt_bitselect84_b;
    assign adapt_scalar_trunc85_q = adapt_scalar_trunc85_in[0:0];

    // ip_dsdk_adapt_bitselect82(BITSELECT,88)
    assign ip_dsdk_adapt_bitselect82_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[232:232];

    // adapt_scalar_trunc83(ROUND,20)
    assign adapt_scalar_trunc83_in = ip_dsdk_adapt_bitselect82_b;
    assign adapt_scalar_trunc83_q = adapt_scalar_trunc83_in[0:0];

    // ip_dsdk_adapt_bitselect80(BITSELECT,87)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[224:224];

    // adapt_scalar_trunc81(ROUND,19)
    assign adapt_scalar_trunc81_in = ip_dsdk_adapt_bitselect80_b;
    assign adapt_scalar_trunc81_q = adapt_scalar_trunc81_in[0:0];

    // ip_dsdk_adapt_bitselect78(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect78_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[216:216];

    // adapt_scalar_trunc79(ROUND,18)
    assign adapt_scalar_trunc79_in = ip_dsdk_adapt_bitselect78_b;
    assign adapt_scalar_trunc79_q = adapt_scalar_trunc79_in[0:0];

    // ip_dsdk_adapt_bitselect76(BITSELECT,85)
    assign ip_dsdk_adapt_bitselect76_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[208:208];

    // adapt_scalar_trunc77(ROUND,17)
    assign adapt_scalar_trunc77_in = ip_dsdk_adapt_bitselect76_b;
    assign adapt_scalar_trunc77_q = adapt_scalar_trunc77_in[0:0];

    // ip_dsdk_adapt_bitselect74(BITSELECT,84)
    assign ip_dsdk_adapt_bitselect74_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[200:200];

    // adapt_scalar_trunc75(ROUND,16)
    assign adapt_scalar_trunc75_in = ip_dsdk_adapt_bitselect74_b;
    assign adapt_scalar_trunc75_q = adapt_scalar_trunc75_in[0:0];

    // ip_dsdk_adapt_bitselect72(BITSELECT,83)
    assign ip_dsdk_adapt_bitselect72_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[192:192];

    // adapt_scalar_trunc73(ROUND,15)
    assign adapt_scalar_trunc73_in = ip_dsdk_adapt_bitselect72_b;
    assign adapt_scalar_trunc73_q = adapt_scalar_trunc73_in[0:0];

    // ip_dsdk_adapt_bitselect70(BITSELECT,82)
    assign ip_dsdk_adapt_bitselect70_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[184:184];

    // adapt_scalar_trunc71(ROUND,14)
    assign adapt_scalar_trunc71_in = ip_dsdk_adapt_bitselect70_b;
    assign adapt_scalar_trunc71_q = adapt_scalar_trunc71_in[0:0];

    // ip_dsdk_adapt_bitselect68(BITSELECT,81)
    assign ip_dsdk_adapt_bitselect68_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[176:176];

    // adapt_scalar_trunc69(ROUND,13)
    assign adapt_scalar_trunc69_in = ip_dsdk_adapt_bitselect68_b;
    assign adapt_scalar_trunc69_q = adapt_scalar_trunc69_in[0:0];

    // ip_dsdk_adapt_bitselect66(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect66_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[168:168];

    // adapt_scalar_trunc67(ROUND,12)
    assign adapt_scalar_trunc67_in = ip_dsdk_adapt_bitselect66_b;
    assign adapt_scalar_trunc67_q = adapt_scalar_trunc67_in[0:0];

    // ip_dsdk_adapt_bitselect64(BITSELECT,79)
    assign ip_dsdk_adapt_bitselect64_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[160:160];

    // adapt_scalar_trunc65(ROUND,11)
    assign adapt_scalar_trunc65_in = ip_dsdk_adapt_bitselect64_b;
    assign adapt_scalar_trunc65_q = adapt_scalar_trunc65_in[0:0];

    // ip_dsdk_adapt_bitselect62(BITSELECT,78)
    assign ip_dsdk_adapt_bitselect62_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[152:152];

    // adapt_scalar_trunc63(ROUND,10)
    assign adapt_scalar_trunc63_in = ip_dsdk_adapt_bitselect62_b;
    assign adapt_scalar_trunc63_q = adapt_scalar_trunc63_in[0:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,77)
    assign ip_dsdk_adapt_bitselect60_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[144:144];

    // adapt_scalar_trunc61(ROUND,9)
    assign adapt_scalar_trunc61_in = ip_dsdk_adapt_bitselect60_b;
    assign adapt_scalar_trunc61_q = adapt_scalar_trunc61_in[0:0];

    // ip_dsdk_adapt_bitselect58(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect58_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[136:136];

    // adapt_scalar_trunc59(ROUND,8)
    assign adapt_scalar_trunc59_in = ip_dsdk_adapt_bitselect58_b;
    assign adapt_scalar_trunc59_q = adapt_scalar_trunc59_in[0:0];

    // ip_dsdk_adapt_bitselect56(BITSELECT,75)
    assign ip_dsdk_adapt_bitselect56_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[128:128];

    // adapt_scalar_trunc57(ROUND,7)
    assign adapt_scalar_trunc57_in = ip_dsdk_adapt_bitselect56_b;
    assign adapt_scalar_trunc57_q = adapt_scalar_trunc57_in[0:0];

    // ip_dsdk_adapt_bitselect54(BITSELECT,74)
    assign ip_dsdk_adapt_bitselect54_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[127:64];

    // ip_dsdk_adapt_bitselect52(BITSELECT,73)
    assign ip_dsdk_adapt_bitselect52_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[16:16];

    // adapt_scalar_trunc53(ROUND,6)
    assign adapt_scalar_trunc53_in = ip_dsdk_adapt_bitselect52_b;
    assign adapt_scalar_trunc53_q = adapt_scalar_trunc53_in[0:0];

    // ip_dsdk_adapt_bitselect50(BITSELECT,72)
    assign ip_dsdk_adapt_bitselect50_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[8:8];

    // adapt_scalar_trunc51(ROUND,5)
    assign adapt_scalar_trunc51_in = ip_dsdk_adapt_bitselect50_b;
    assign adapt_scalar_trunc51_q = adapt_scalar_trunc51_in[0:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect48_b = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data[0:0];

    // adapt_scalar_trunc49(ROUND,4)
    assign adapt_scalar_trunc49_in = ip_dsdk_adapt_bitselect48_b;
    assign adapt_scalar_trunc49_q = adapt_scalar_trunc49_in[0:0];

    // c_i48_046(CONSTANT,26)
    assign c_i48_046_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // c_i7_011(CONSTANT,27)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension44(BITJOIN,67)
    assign element_extension44_q = {c_i7_011_q, in_i_data_21_tpl};

    // element_extension42(BITJOIN,66)
    assign element_extension42_q = {c_i7_011_q, in_i_data_20_tpl};

    // element_extension40(BITJOIN,65)
    assign element_extension40_q = {c_i7_011_q, in_i_data_19_tpl};

    // element_extension38(BITJOIN,64)
    assign element_extension38_q = {c_i7_011_q, in_i_data_18_tpl};

    // element_extension36(BITJOIN,63)
    assign element_extension36_q = {c_i7_011_q, in_i_data_17_tpl};

    // element_extension34(BITJOIN,62)
    assign element_extension34_q = {c_i7_011_q, in_i_data_16_tpl};

    // element_extension32(BITJOIN,61)
    assign element_extension32_q = {c_i7_011_q, in_i_data_15_tpl};

    // element_extension30(BITJOIN,60)
    assign element_extension30_q = {c_i7_011_q, in_i_data_14_tpl};

    // element_extension28(BITJOIN,58)
    assign element_extension28_q = {c_i7_011_q, in_i_data_13_tpl};

    // element_extension26(BITJOIN,57)
    assign element_extension26_q = {c_i7_011_q, in_i_data_12_tpl};

    // element_extension24(BITJOIN,56)
    assign element_extension24_q = {c_i7_011_q, in_i_data_11_tpl};

    // element_extension22(BITJOIN,55)
    assign element_extension22_q = {c_i7_011_q, in_i_data_10_tpl};

    // element_extension20(BITJOIN,54)
    assign element_extension20_q = {c_i7_011_q, in_i_data_9_tpl};

    // element_extension18(BITJOIN,53)
    assign element_extension18_q = {c_i7_011_q, in_i_data_8_tpl};

    // element_extension16(BITJOIN,52)
    assign element_extension16_q = {c_i7_011_q, in_i_data_7_tpl};

    // element_extension14(BITJOIN,51)
    assign element_extension14_q = {c_i7_011_q, in_i_data_6_tpl};

    // element_extension12(BITJOIN,50)
    assign element_extension12_q = {c_i7_011_q, in_i_data_5_tpl};

    // element_extension10(BITJOIN,49)
    assign element_extension10_q = {c_i7_011_q, in_i_data_4_tpl};

    // c_i40_09(CONSTANT,25)
    assign c_i40_09_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // element_extension7(BITJOIN,69)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,68)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,59)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,48)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i48_046_q, element_extension44_q, element_extension42_q, element_extension40_q, element_extension38_q, element_extension36_q, element_extension34_q, element_extension32_q, element_extension30_q, element_extension28_q, element_extension26_q, element_extension24_q, element_extension22_q, element_extension20_q, element_extension18_q, element_extension16_q, element_extension14_q, element_extension12_q, element_extension10_q, in_i_data_3_tpl, c_i40_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0(EXTIFACE,70)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(320)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc49_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc51_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc53_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_4_tpl = adapt_scalar_trunc57_q;
    assign out_o_data_5_tpl = adapt_scalar_trunc59_q;
    assign out_o_data_6_tpl = adapt_scalar_trunc61_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc63_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc65_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc67_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc69_q;
    assign out_o_data_11_tpl = adapt_scalar_trunc71_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc73_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc75_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc77_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc79_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc81_q;
    assign out_o_data_17_tpl = adapt_scalar_trunc83_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc85_q;
    assign out_o_data_19_tpl = adapt_scalar_trunc87_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc89_q;
    assign out_o_data_21_tpl = adapt_scalar_trunc91_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_valid;

    // sync_out(GPOUT,95)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body_cnn_tops_c0_exit98_cnn_top0_o_stall;

endmodule
