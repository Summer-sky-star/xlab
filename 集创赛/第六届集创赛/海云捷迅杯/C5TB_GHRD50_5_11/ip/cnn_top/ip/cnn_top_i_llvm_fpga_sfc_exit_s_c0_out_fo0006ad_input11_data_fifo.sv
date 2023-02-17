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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0006ad_input11_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0006ad_input11_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [0:0] out_o_data_16_tpl,
    output wire [31:0] out_o_data_17_tpl,
    output wire [31:0] out_o_data_18_tpl,
    output wire [0:0] out_o_data_19_tpl,
    output wire [0:0] out_o_data_20_tpl,
    output wire [31:0] out_o_data_21_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [31:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [0:0] in_i_data_16_tpl,
    input wire [31:0] in_i_data_17_tpl,
    input wire [31:0] in_i_data_18_tpl,
    input wire [0:0] in_i_data_19_tpl,
    input wire [0:0] in_i_data_20_tpl,
    input wire [31:0] in_i_data_21_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc36_in;
    wire [0:0] adapt_scalar_trunc36_q;
    wire [0:0] adapt_scalar_trunc42_in;
    wire [0:0] adapt_scalar_trunc42_q;
    wire [0:0] adapt_scalar_trunc44_in;
    wire [0:0] adapt_scalar_trunc44_q;
    wire [0:0] adapt_scalar_trunc48_in;
    wire [0:0] adapt_scalar_trunc48_q;
    wire [0:0] adapt_scalar_trunc50_in;
    wire [0:0] adapt_scalar_trunc50_q;
    wire [0:0] adapt_scalar_trunc54_in;
    wire [0:0] adapt_scalar_trunc54_q;
    wire [0:0] adapt_scalar_trunc58_in;
    wire [0:0] adapt_scalar_trunc58_q;
    wire [0:0] adapt_scalar_trunc60_in;
    wire [0:0] adapt_scalar_trunc60_q;
    wire [0:0] adapt_scalar_trunc66_in;
    wire [0:0] adapt_scalar_trunc66_q;
    wire [0:0] adapt_scalar_trunc68_in;
    wire [0:0] adapt_scalar_trunc68_q;
    wire [0:0] adapt_scalar_trunc74_in;
    wire [0:0] adapt_scalar_trunc74_q;
    wire [0:0] adapt_scalar_trunc76_in;
    wire [0:0] adapt_scalar_trunc76_q;
    wire [15:0] c_i16_010_q;
    wire [23:0] c_i24_018_q;
    wire [6:0] c_i7_012_q;
    wire [543:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension19_q;
    wire [7:0] element_extension21_q;
    wire [7:0] element_extension24_q;
    wire [7:0] element_extension26_q;
    wire [7:0] element_extension29_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension31_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [543:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full_bitsignaltemp;
    wire [543:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect35_b;
    wire [31:0] ip_dsdk_adapt_bitselect37_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [0:0] ip_dsdk_adapt_bitselect41_b;
    wire [0:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect45_b;
    wire [0:0] ip_dsdk_adapt_bitselect47_b;
    wire [0:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [0:0] ip_dsdk_adapt_bitselect53_b;
    wire [31:0] ip_dsdk_adapt_bitselect55_b;
    wire [0:0] ip_dsdk_adapt_bitselect57_b;
    wire [0:0] ip_dsdk_adapt_bitselect59_b;
    wire [31:0] ip_dsdk_adapt_bitselect61_b;
    wire [31:0] ip_dsdk_adapt_bitselect63_b;
    wire [0:0] ip_dsdk_adapt_bitselect65_b;
    wire [0:0] ip_dsdk_adapt_bitselect67_b;
    wire [31:0] ip_dsdk_adapt_bitselect69_b;
    wire [31:0] ip_dsdk_adapt_bitselect71_b;
    wire [0:0] ip_dsdk_adapt_bitselect73_b;
    wire [0:0] ip_dsdk_adapt_bitselect75_b;
    wire [31:0] ip_dsdk_adapt_bitselect77_b;


    // ip_dsdk_adapt_bitselect77(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect77_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[543:512];

    // ip_dsdk_adapt_bitselect75(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect75_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[488:488];

    // adapt_scalar_trunc76(ROUND,15)
    assign adapt_scalar_trunc76_in = ip_dsdk_adapt_bitselect75_b;
    assign adapt_scalar_trunc76_q = adapt_scalar_trunc76_in[0:0];

    // ip_dsdk_adapt_bitselect73(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect73_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[480:480];

    // adapt_scalar_trunc74(ROUND,14)
    assign adapt_scalar_trunc74_in = ip_dsdk_adapt_bitselect73_b;
    assign adapt_scalar_trunc74_q = adapt_scalar_trunc74_in[0:0];

    // ip_dsdk_adapt_bitselect71(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect71_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[479:448];

    // ip_dsdk_adapt_bitselect69(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect69_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[447:416];

    // ip_dsdk_adapt_bitselect67(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect67_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[392:392];

    // adapt_scalar_trunc68(ROUND,13)
    assign adapt_scalar_trunc68_in = ip_dsdk_adapt_bitselect67_b;
    assign adapt_scalar_trunc68_q = adapt_scalar_trunc68_in[0:0];

    // ip_dsdk_adapt_bitselect65(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect65_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[384:384];

    // adapt_scalar_trunc66(ROUND,12)
    assign adapt_scalar_trunc66_in = ip_dsdk_adapt_bitselect65_b;
    assign adapt_scalar_trunc66_q = adapt_scalar_trunc66_in[0:0];

    // ip_dsdk_adapt_bitselect63(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect63_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[383:352];

    // ip_dsdk_adapt_bitselect61(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect61_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[351:320];

    // ip_dsdk_adapt_bitselect59(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect59_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[296:296];

    // adapt_scalar_trunc60(ROUND,11)
    assign adapt_scalar_trunc60_in = ip_dsdk_adapt_bitselect59_b;
    assign adapt_scalar_trunc60_q = adapt_scalar_trunc60_in[0:0];

    // ip_dsdk_adapt_bitselect57(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect57_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[288:288];

    // adapt_scalar_trunc58(ROUND,10)
    assign adapt_scalar_trunc58_in = ip_dsdk_adapt_bitselect57_b;
    assign adapt_scalar_trunc58_q = adapt_scalar_trunc58_in[0:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[287:256];

    // ip_dsdk_adapt_bitselect53(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[224:224];

    // adapt_scalar_trunc54(ROUND,9)
    assign adapt_scalar_trunc54_in = ip_dsdk_adapt_bitselect53_b;
    assign adapt_scalar_trunc54_q = adapt_scalar_trunc54_in[0:0];

    // ip_dsdk_adapt_bitselect51(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[223:192];

    // ip_dsdk_adapt_bitselect49(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect49_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[168:168];

    // adapt_scalar_trunc50(ROUND,8)
    assign adapt_scalar_trunc50_in = ip_dsdk_adapt_bitselect49_b;
    assign adapt_scalar_trunc50_q = adapt_scalar_trunc50_in[0:0];

    // ip_dsdk_adapt_bitselect47(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[160:160];

    // adapt_scalar_trunc48(ROUND,7)
    assign adapt_scalar_trunc48_in = ip_dsdk_adapt_bitselect47_b;
    assign adapt_scalar_trunc48_q = adapt_scalar_trunc48_in[0:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect45_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[159:128];

    // ip_dsdk_adapt_bitselect43(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[104:104];

    // adapt_scalar_trunc44(ROUND,6)
    assign adapt_scalar_trunc44_in = ip_dsdk_adapt_bitselect43_b;
    assign adapt_scalar_trunc44_q = adapt_scalar_trunc44_in[0:0];

    // ip_dsdk_adapt_bitselect41(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[96:96];

    // adapt_scalar_trunc42(ROUND,5)
    assign adapt_scalar_trunc42_in = ip_dsdk_adapt_bitselect41_b;
    assign adapt_scalar_trunc42_q = adapt_scalar_trunc42_in[0:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[95:64];

    // ip_dsdk_adapt_bitselect37(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect37_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[63:32];

    // ip_dsdk_adapt_bitselect35(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data[0:0];

    // adapt_scalar_trunc36(ROUND,4)
    assign adapt_scalar_trunc36_in = ip_dsdk_adapt_bitselect35_b;
    assign adapt_scalar_trunc36_q = adapt_scalar_trunc36_in[0:0];

    // c_i7_012(CONSTANT,23)
    assign c_i7_012_q = $unsigned(7'b0000000);

    // element_extension31(BITJOIN,45)
    assign element_extension31_q = {c_i7_012_q, in_i_data_20_tpl};

    // element_extension29(BITJOIN,43)
    assign element_extension29_q = {c_i7_012_q, in_i_data_19_tpl};

    // element_extension26(BITJOIN,42)
    assign element_extension26_q = {c_i7_012_q, in_i_data_16_tpl};

    // element_extension24(BITJOIN,41)
    assign element_extension24_q = {c_i7_012_q, in_i_data_15_tpl};

    // element_extension21(BITJOIN,40)
    assign element_extension21_q = {c_i7_012_q, in_i_data_12_tpl};

    // element_extension19(BITJOIN,39)
    assign element_extension19_q = {c_i7_012_q, in_i_data_11_tpl};

    // element_extension16(BITJOIN,38)
    assign element_extension16_q = {c_i7_012_q, in_i_data_9_tpl};

    // element_extension13(BITJOIN,37)
    assign element_extension13_q = {c_i7_012_q, in_i_data_7_tpl};

    // element_extension11(BITJOIN,36)
    assign element_extension11_q = {c_i7_012_q, in_i_data_6_tpl};

    // c_i16_010(CONSTANT,16)
    assign c_i16_010_q = $unsigned(16'b0000000000000000);

    // element_extension8(BITJOIN,47)
    assign element_extension8_q = {c_i7_012_q, in_i_data_4_tpl};

    // element_extension6(BITJOIN,46)
    assign element_extension6_q = {c_i7_012_q, in_i_data_3_tpl};

    // c_i24_018(CONSTANT,21)
    assign c_i24_018_q = $unsigned(24'b000000000000000000000000);

    // element_extension3(BITJOIN,44)
    assign element_extension3_q = {c_i7_012_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,35)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_21_tpl, c_i16_010_q, element_extension31_q, element_extension29_q, in_i_data_18_tpl, in_i_data_17_tpl, c_i16_010_q, element_extension26_q, element_extension24_q, in_i_data_14_tpl, in_i_data_13_tpl, c_i16_010_q, element_extension21_q, element_extension19_q, in_i_data_10_tpl, c_i24_018_q, element_extension16_q, in_i_data_8_tpl, c_i16_010_q, element_extension13_q, element_extension11_q, in_i_data_5_tpl, c_i16_010_q, element_extension8_q, element_extension6_q, in_i_data_2_tpl, in_i_data_1_tpl, c_i24_018_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10(EXTIFACE,48)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(544)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc36_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect37_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect39_b;
    assign out_o_data_3_tpl = adapt_scalar_trunc42_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc44_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect45_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc48_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc50_q;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_9_tpl = adapt_scalar_trunc54_q;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect55_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc58_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc60_q;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect61_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_o_data_15_tpl = adapt_scalar_trunc66_q;
    assign out_o_data_16_tpl = adapt_scalar_trunc68_q;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect69_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect71_b;
    assign out_o_data_19_tpl = adapt_scalar_trunc74_q;
    assign out_o_data_20_tpl = adapt_scalar_trunc76_q;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_valid;

    // sync_out(GPOUT,82)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond63_preheader_load_input1s_c0_exit291_load_input10_o_stall;

endmodule
