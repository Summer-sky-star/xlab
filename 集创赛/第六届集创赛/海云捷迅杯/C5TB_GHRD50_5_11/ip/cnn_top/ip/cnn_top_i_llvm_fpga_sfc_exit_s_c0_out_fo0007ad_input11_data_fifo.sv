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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0007ad_input11_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0007ad_input11_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [7:0] out_o_data_3_tpl,
    output wire [7:0] out_o_data_4_tpl,
    output wire [7:0] out_o_data_5_tpl,
    output wire [7:0] out_o_data_6_tpl,
    output wire [7:0] out_o_data_7_tpl,
    output wire [7:0] out_o_data_8_tpl,
    output wire [7:0] out_o_data_9_tpl,
    output wire [7:0] out_o_data_10_tpl,
    output wire [0:0] out_o_data_11_tpl,
    output wire [0:0] out_o_data_12_tpl,
    output wire [0:0] out_o_data_13_tpl,
    output wire [0:0] out_o_data_14_tpl,
    output wire [0:0] out_o_data_15_tpl,
    output wire [31:0] out_o_data_16_tpl,
    output wire [0:0] out_o_data_17_tpl,
    output wire [0:0] out_o_data_18_tpl,
    output wire [31:0] out_o_data_19_tpl,
    output wire [31:0] out_o_data_20_tpl,
    output wire [0:0] out_o_data_21_tpl,
    output wire [0:0] out_o_data_22_tpl,
    output wire [31:0] out_o_data_23_tpl,
    output wire [31:0] out_o_data_24_tpl,
    output wire [0:0] out_o_data_25_tpl,
    output wire [0:0] out_o_data_26_tpl,
    output wire [31:0] out_o_data_27_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [7:0] in_i_data_3_tpl,
    input wire [7:0] in_i_data_4_tpl,
    input wire [7:0] in_i_data_5_tpl,
    input wire [7:0] in_i_data_6_tpl,
    input wire [7:0] in_i_data_7_tpl,
    input wire [7:0] in_i_data_8_tpl,
    input wire [7:0] in_i_data_9_tpl,
    input wire [7:0] in_i_data_10_tpl,
    input wire [0:0] in_i_data_11_tpl,
    input wire [0:0] in_i_data_12_tpl,
    input wire [0:0] in_i_data_13_tpl,
    input wire [0:0] in_i_data_14_tpl,
    input wire [0:0] in_i_data_15_tpl,
    input wire [31:0] in_i_data_16_tpl,
    input wire [0:0] in_i_data_17_tpl,
    input wire [0:0] in_i_data_18_tpl,
    input wire [31:0] in_i_data_19_tpl,
    input wire [31:0] in_i_data_20_tpl,
    input wire [0:0] in_i_data_21_tpl,
    input wire [0:0] in_i_data_22_tpl,
    input wire [31:0] in_i_data_23_tpl,
    input wire [31:0] in_i_data_24_tpl,
    input wire [0:0] in_i_data_25_tpl,
    input wire [0:0] in_i_data_26_tpl,
    input wire [31:0] in_i_data_27_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc114_in;
    wire [0:0] adapt_scalar_trunc114_q;
    wire [0:0] adapt_scalar_trunc116_in;
    wire [0:0] adapt_scalar_trunc116_q;
    wire [0:0] adapt_scalar_trunc118_in;
    wire [0:0] adapt_scalar_trunc118_q;
    wire [0:0] adapt_scalar_trunc188_in;
    wire [0:0] adapt_scalar_trunc188_q;
    wire [0:0] adapt_scalar_trunc190_in;
    wire [0:0] adapt_scalar_trunc190_q;
    wire [0:0] adapt_scalar_trunc192_in;
    wire [0:0] adapt_scalar_trunc192_q;
    wire [0:0] adapt_scalar_trunc194_in;
    wire [0:0] adapt_scalar_trunc194_q;
    wire [0:0] adapt_scalar_trunc196_in;
    wire [0:0] adapt_scalar_trunc196_q;
    wire [0:0] adapt_scalar_trunc200_in;
    wire [0:0] adapt_scalar_trunc200_q;
    wire [0:0] adapt_scalar_trunc202_in;
    wire [0:0] adapt_scalar_trunc202_q;
    wire [0:0] adapt_scalar_trunc208_in;
    wire [0:0] adapt_scalar_trunc208_q;
    wire [0:0] adapt_scalar_trunc210_in;
    wire [0:0] adapt_scalar_trunc210_q;
    wire [0:0] adapt_scalar_trunc216_in;
    wire [0:0] adapt_scalar_trunc216_q;
    wire [0:0] adapt_scalar_trunc218_in;
    wire [0:0] adapt_scalar_trunc218_q;
    wire [15:0] c_i16_0101_q;
    wire [6:0] c_i7_0100_q;
    wire [415:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] dsdk_ip_adapt_bitjoin13_q;
    wire [7:0] dsdk_ip_adapt_bitjoin15_q;
    wire [7:0] dsdk_ip_adapt_bitjoin17_q;
    wire [7:0] dsdk_ip_adapt_bitjoin22_q;
    wire [7:0] dsdk_ip_adapt_bitjoin24_q;
    wire [7:0] dsdk_ip_adapt_bitjoin26_q;
    wire [7:0] dsdk_ip_adapt_bitjoin31_q;
    wire [7:0] dsdk_ip_adapt_bitjoin33_q;
    wire [7:0] dsdk_ip_adapt_bitjoin35_q;
    wire [7:0] dsdk_ip_adapt_bitjoin40_q;
    wire [7:0] dsdk_ip_adapt_bitjoin42_q;
    wire [7:0] dsdk_ip_adapt_bitjoin44_q;
    wire [7:0] dsdk_ip_adapt_bitjoin49_q;
    wire [7:0] dsdk_ip_adapt_bitjoin51_q;
    wire [7:0] dsdk_ip_adapt_bitjoin53_q;
    wire [7:0] dsdk_ip_adapt_bitjoin58_q;
    wire [7:0] dsdk_ip_adapt_bitjoin60_q;
    wire [7:0] dsdk_ip_adapt_bitjoin62_q;
    wire [7:0] dsdk_ip_adapt_bitjoin67_q;
    wire [7:0] dsdk_ip_adapt_bitjoin69_q;
    wire [7:0] dsdk_ip_adapt_bitjoin71_q;
    wire [7:0] dsdk_ip_adapt_bitjoin76_q;
    wire [7:0] dsdk_ip_adapt_bitjoin78_q;
    wire [7:0] dsdk_ip_adapt_bitjoin80_q;
    wire [63:0] dsdk_ip_adapt_bitjoin9_q;
    wire [63:0] dsdk_ip_array_adapt_bitjoin11_q;
    wire [7:0] element_extension102_q;
    wire [7:0] element_extension104_q;
    wire [7:0] element_extension107_q;
    wire [7:0] element_extension109_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension87_q;
    wire [7:0] element_extension89_q;
    wire [7:0] element_extension91_q;
    wire [7:0] element_extension93_q;
    wire [7:0] element_extension95_q;
    wire [7:0] element_extension97_q;
    wire [7:0] element_extension99_q;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full_bitsignaltemp;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect113_b;
    wire [0:0] ip_dsdk_adapt_bitselect115_b;
    wire [0:0] ip_dsdk_adapt_bitselect117_b;
    wire [63:0] ip_dsdk_adapt_bitselect119_b;
    wire [7:0] ip_dsdk_adapt_bitselect123_b;
    wire [7:0] ip_dsdk_adapt_bitselect131_b;
    wire [7:0] ip_dsdk_adapt_bitselect139_b;
    wire [7:0] ip_dsdk_adapt_bitselect147_b;
    wire [7:0] ip_dsdk_adapt_bitselect155_b;
    wire [7:0] ip_dsdk_adapt_bitselect163_b;
    wire [7:0] ip_dsdk_adapt_bitselect171_b;
    wire [7:0] ip_dsdk_adapt_bitselect179_b;
    wire [0:0] ip_dsdk_adapt_bitselect187_b;
    wire [0:0] ip_dsdk_adapt_bitselect189_b;
    wire [0:0] ip_dsdk_adapt_bitselect191_b;
    wire [0:0] ip_dsdk_adapt_bitselect193_b;
    wire [0:0] ip_dsdk_adapt_bitselect195_b;
    wire [31:0] ip_dsdk_adapt_bitselect197_b;
    wire [0:0] ip_dsdk_adapt_bitselect199_b;
    wire [0:0] ip_dsdk_adapt_bitselect201_b;
    wire [31:0] ip_dsdk_adapt_bitselect203_b;
    wire [31:0] ip_dsdk_adapt_bitselect205_b;
    wire [0:0] ip_dsdk_adapt_bitselect207_b;
    wire [0:0] ip_dsdk_adapt_bitselect209_b;
    wire [31:0] ip_dsdk_adapt_bitselect211_b;
    wire [31:0] ip_dsdk_adapt_bitselect213_b;
    wire [0:0] ip_dsdk_adapt_bitselect215_b;
    wire [0:0] ip_dsdk_adapt_bitselect217_b;
    wire [31:0] ip_dsdk_adapt_bitselect219_b;


    // ip_dsdk_adapt_bitselect219(BITSELECT,156)
    assign ip_dsdk_adapt_bitselect219_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[415:384];

    // ip_dsdk_adapt_bitselect217(BITSELECT,155)
    assign ip_dsdk_adapt_bitselect217_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[360:360];

    // adapt_scalar_trunc218(ROUND,17)
    assign adapt_scalar_trunc218_in = ip_dsdk_adapt_bitselect217_b;
    assign adapt_scalar_trunc218_q = adapt_scalar_trunc218_in[0:0];

    // ip_dsdk_adapt_bitselect215(BITSELECT,154)
    assign ip_dsdk_adapt_bitselect215_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[352:352];

    // adapt_scalar_trunc216(ROUND,16)
    assign adapt_scalar_trunc216_in = ip_dsdk_adapt_bitselect215_b;
    assign adapt_scalar_trunc216_q = adapt_scalar_trunc216_in[0:0];

    // ip_dsdk_adapt_bitselect213(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect213_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[351:320];

    // ip_dsdk_adapt_bitselect211(BITSELECT,152)
    assign ip_dsdk_adapt_bitselect211_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[319:288];

    // ip_dsdk_adapt_bitselect209(BITSELECT,151)
    assign ip_dsdk_adapt_bitselect209_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[264:264];

    // adapt_scalar_trunc210(ROUND,15)
    assign adapt_scalar_trunc210_in = ip_dsdk_adapt_bitselect209_b;
    assign adapt_scalar_trunc210_q = adapt_scalar_trunc210_in[0:0];

    // ip_dsdk_adapt_bitselect207(BITSELECT,150)
    assign ip_dsdk_adapt_bitselect207_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[256:256];

    // adapt_scalar_trunc208(ROUND,14)
    assign adapt_scalar_trunc208_in = ip_dsdk_adapt_bitselect207_b;
    assign adapt_scalar_trunc208_q = adapt_scalar_trunc208_in[0:0];

    // ip_dsdk_adapt_bitselect205(BITSELECT,149)
    assign ip_dsdk_adapt_bitselect205_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[255:224];

    // ip_dsdk_adapt_bitselect203(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect203_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[223:192];

    // ip_dsdk_adapt_bitselect201(BITSELECT,147)
    assign ip_dsdk_adapt_bitselect201_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[168:168];

    // adapt_scalar_trunc202(ROUND,13)
    assign adapt_scalar_trunc202_in = ip_dsdk_adapt_bitselect201_b;
    assign adapt_scalar_trunc202_q = adapt_scalar_trunc202_in[0:0];

    // ip_dsdk_adapt_bitselect199(BITSELECT,146)
    assign ip_dsdk_adapt_bitselect199_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[160:160];

    // adapt_scalar_trunc200(ROUND,12)
    assign adapt_scalar_trunc200_in = ip_dsdk_adapt_bitselect199_b;
    assign adapt_scalar_trunc200_q = adapt_scalar_trunc200_in[0:0];

    // ip_dsdk_adapt_bitselect197(BITSELECT,145)
    assign ip_dsdk_adapt_bitselect197_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[159:128];

    // ip_dsdk_adapt_bitselect195(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect195_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[120:120];

    // adapt_scalar_trunc196(ROUND,11)
    assign adapt_scalar_trunc196_in = ip_dsdk_adapt_bitselect195_b;
    assign adapt_scalar_trunc196_q = adapt_scalar_trunc196_in[0:0];

    // ip_dsdk_adapt_bitselect193(BITSELECT,143)
    assign ip_dsdk_adapt_bitselect193_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[112:112];

    // adapt_scalar_trunc194(ROUND,10)
    assign adapt_scalar_trunc194_in = ip_dsdk_adapt_bitselect193_b;
    assign adapt_scalar_trunc194_q = adapt_scalar_trunc194_in[0:0];

    // ip_dsdk_adapt_bitselect191(BITSELECT,142)
    assign ip_dsdk_adapt_bitselect191_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[104:104];

    // adapt_scalar_trunc192(ROUND,9)
    assign adapt_scalar_trunc192_in = ip_dsdk_adapt_bitselect191_b;
    assign adapt_scalar_trunc192_q = adapt_scalar_trunc192_in[0:0];

    // ip_dsdk_adapt_bitselect189(BITSELECT,141)
    assign ip_dsdk_adapt_bitselect189_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[96:96];

    // adapt_scalar_trunc190(ROUND,8)
    assign adapt_scalar_trunc190_in = ip_dsdk_adapt_bitselect189_b;
    assign adapt_scalar_trunc190_q = adapt_scalar_trunc190_in[0:0];

    // ip_dsdk_adapt_bitselect187(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect187_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[88:88];

    // adapt_scalar_trunc188(ROUND,7)
    assign adapt_scalar_trunc188_in = ip_dsdk_adapt_bitselect187_b;
    assign adapt_scalar_trunc188_q = adapt_scalar_trunc188_in[0:0];

    // ip_dsdk_adapt_bitselect119(BITSELECT,106)
    assign ip_dsdk_adapt_bitselect119_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[87:24];

    // ip_dsdk_adapt_bitselect179(BITSELECT,136)
    assign ip_dsdk_adapt_bitselect179_b = ip_dsdk_adapt_bitselect119_b[63:56];

    // ip_dsdk_adapt_bitselect171(BITSELECT,132)
    assign ip_dsdk_adapt_bitselect171_b = ip_dsdk_adapt_bitselect119_b[55:48];

    // ip_dsdk_adapt_bitselect163(BITSELECT,128)
    assign ip_dsdk_adapt_bitselect163_b = ip_dsdk_adapt_bitselect119_b[47:40];

    // ip_dsdk_adapt_bitselect155(BITSELECT,124)
    assign ip_dsdk_adapt_bitselect155_b = ip_dsdk_adapt_bitselect119_b[39:32];

    // ip_dsdk_adapt_bitselect147(BITSELECT,120)
    assign ip_dsdk_adapt_bitselect147_b = ip_dsdk_adapt_bitselect119_b[31:24];

    // ip_dsdk_adapt_bitselect139(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect139_b = ip_dsdk_adapt_bitselect119_b[23:16];

    // ip_dsdk_adapt_bitselect131(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect131_b = ip_dsdk_adapt_bitselect119_b[15:8];

    // ip_dsdk_adapt_bitselect123(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect123_b = ip_dsdk_adapt_bitselect119_b[7:0];

    // ip_dsdk_adapt_bitselect117(BITSELECT,105)
    assign ip_dsdk_adapt_bitselect117_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[16:16];

    // adapt_scalar_trunc118(ROUND,6)
    assign adapt_scalar_trunc118_in = ip_dsdk_adapt_bitselect117_b;
    assign adapt_scalar_trunc118_q = adapt_scalar_trunc118_in[0:0];

    // ip_dsdk_adapt_bitselect115(BITSELECT,104)
    assign ip_dsdk_adapt_bitselect115_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[8:8];

    // adapt_scalar_trunc116(ROUND,5)
    assign adapt_scalar_trunc116_in = ip_dsdk_adapt_bitselect115_b;
    assign adapt_scalar_trunc116_q = adapt_scalar_trunc116_in[0:0];

    // ip_dsdk_adapt_bitselect113(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect113_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data[0:0];

    // adapt_scalar_trunc114(ROUND,4)
    assign adapt_scalar_trunc114_in = ip_dsdk_adapt_bitselect113_b;
    assign adapt_scalar_trunc114_q = adapt_scalar_trunc114_in[0:0];

    // c_i7_0100(CONSTANT,47)
    assign c_i7_0100_q = $unsigned(7'b0000000);

    // element_extension109(BITJOIN,91)
    assign element_extension109_q = {c_i7_0100_q, in_i_data_26_tpl};

    // element_extension107(BITJOIN,90)
    assign element_extension107_q = {c_i7_0100_q, in_i_data_25_tpl};

    // element_extension104(BITJOIN,89)
    assign element_extension104_q = {c_i7_0100_q, in_i_data_22_tpl};

    // element_extension102(BITJOIN,88)
    assign element_extension102_q = {c_i7_0100_q, in_i_data_21_tpl};

    // c_i16_0101(CONSTANT,44)
    assign c_i16_0101_q = $unsigned(16'b0000000000000000);

    // element_extension99(BITJOIN,101)
    assign element_extension99_q = {c_i7_0100_q, in_i_data_18_tpl};

    // element_extension97(BITJOIN,100)
    assign element_extension97_q = {c_i7_0100_q, in_i_data_17_tpl};

    // element_extension95(BITJOIN,99)
    assign element_extension95_q = {c_i7_0100_q, in_i_data_15_tpl};

    // element_extension93(BITJOIN,98)
    assign element_extension93_q = {c_i7_0100_q, in_i_data_14_tpl};

    // element_extension91(BITJOIN,97)
    assign element_extension91_q = {c_i7_0100_q, in_i_data_13_tpl};

    // element_extension89(BITJOIN,96)
    assign element_extension89_q = {c_i7_0100_q, in_i_data_12_tpl};

    // element_extension87(BITJOIN,95)
    assign element_extension87_q = {c_i7_0100_q, in_i_data_11_tpl};

    // dsdk_ip_adapt_bitjoin80(BITJOIN,85)
    assign dsdk_ip_adapt_bitjoin80_q = in_i_data_10_tpl;

    // dsdk_ip_adapt_bitjoin78(BITJOIN,84)
    assign dsdk_ip_adapt_bitjoin78_q = dsdk_ip_adapt_bitjoin80_q;

    // dsdk_ip_adapt_bitjoin76(BITJOIN,83)
    assign dsdk_ip_adapt_bitjoin76_q = dsdk_ip_adapt_bitjoin78_q;

    // dsdk_ip_adapt_bitjoin71(BITJOIN,82)
    assign dsdk_ip_adapt_bitjoin71_q = in_i_data_9_tpl;

    // dsdk_ip_adapt_bitjoin69(BITJOIN,81)
    assign dsdk_ip_adapt_bitjoin69_q = dsdk_ip_adapt_bitjoin71_q;

    // dsdk_ip_adapt_bitjoin67(BITJOIN,80)
    assign dsdk_ip_adapt_bitjoin67_q = dsdk_ip_adapt_bitjoin69_q;

    // dsdk_ip_adapt_bitjoin62(BITJOIN,79)
    assign dsdk_ip_adapt_bitjoin62_q = in_i_data_8_tpl;

    // dsdk_ip_adapt_bitjoin60(BITJOIN,78)
    assign dsdk_ip_adapt_bitjoin60_q = dsdk_ip_adapt_bitjoin62_q;

    // dsdk_ip_adapt_bitjoin58(BITJOIN,77)
    assign dsdk_ip_adapt_bitjoin58_q = dsdk_ip_adapt_bitjoin60_q;

    // dsdk_ip_adapt_bitjoin53(BITJOIN,76)
    assign dsdk_ip_adapt_bitjoin53_q = in_i_data_7_tpl;

    // dsdk_ip_adapt_bitjoin51(BITJOIN,75)
    assign dsdk_ip_adapt_bitjoin51_q = dsdk_ip_adapt_bitjoin53_q;

    // dsdk_ip_adapt_bitjoin49(BITJOIN,74)
    assign dsdk_ip_adapt_bitjoin49_q = dsdk_ip_adapt_bitjoin51_q;

    // dsdk_ip_adapt_bitjoin44(BITJOIN,73)
    assign dsdk_ip_adapt_bitjoin44_q = in_i_data_6_tpl;

    // dsdk_ip_adapt_bitjoin42(BITJOIN,72)
    assign dsdk_ip_adapt_bitjoin42_q = dsdk_ip_adapt_bitjoin44_q;

    // dsdk_ip_adapt_bitjoin40(BITJOIN,71)
    assign dsdk_ip_adapt_bitjoin40_q = dsdk_ip_adapt_bitjoin42_q;

    // dsdk_ip_adapt_bitjoin35(BITJOIN,70)
    assign dsdk_ip_adapt_bitjoin35_q = in_i_data_5_tpl;

    // dsdk_ip_adapt_bitjoin33(BITJOIN,69)
    assign dsdk_ip_adapt_bitjoin33_q = dsdk_ip_adapt_bitjoin35_q;

    // dsdk_ip_adapt_bitjoin31(BITJOIN,68)
    assign dsdk_ip_adapt_bitjoin31_q = dsdk_ip_adapt_bitjoin33_q;

    // dsdk_ip_adapt_bitjoin26(BITJOIN,67)
    assign dsdk_ip_adapt_bitjoin26_q = in_i_data_4_tpl;

    // dsdk_ip_adapt_bitjoin24(BITJOIN,66)
    assign dsdk_ip_adapt_bitjoin24_q = dsdk_ip_adapt_bitjoin26_q;

    // dsdk_ip_adapt_bitjoin22(BITJOIN,65)
    assign dsdk_ip_adapt_bitjoin22_q = dsdk_ip_adapt_bitjoin24_q;

    // dsdk_ip_adapt_bitjoin17(BITJOIN,64)
    assign dsdk_ip_adapt_bitjoin17_q = in_i_data_3_tpl;

    // dsdk_ip_adapt_bitjoin15(BITJOIN,63)
    assign dsdk_ip_adapt_bitjoin15_q = dsdk_ip_adapt_bitjoin17_q;

    // dsdk_ip_adapt_bitjoin13(BITJOIN,62)
    assign dsdk_ip_adapt_bitjoin13_q = dsdk_ip_adapt_bitjoin15_q;

    // dsdk_ip_array_adapt_bitjoin11(BITJOIN,87)
    assign dsdk_ip_array_adapt_bitjoin11_q = {dsdk_ip_adapt_bitjoin76_q, dsdk_ip_adapt_bitjoin67_q, dsdk_ip_adapt_bitjoin58_q, dsdk_ip_adapt_bitjoin49_q, dsdk_ip_adapt_bitjoin40_q, dsdk_ip_adapt_bitjoin31_q, dsdk_ip_adapt_bitjoin22_q, dsdk_ip_adapt_bitjoin13_q};

    // dsdk_ip_adapt_bitjoin9(BITJOIN,86)
    assign dsdk_ip_adapt_bitjoin9_q = dsdk_ip_array_adapt_bitjoin11_q;

    // element_extension7(BITJOIN,94)
    assign element_extension7_q = {c_i7_0100_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,93)
    assign element_extension5_q = {c_i7_0100_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,92)
    assign element_extension3_q = {c_i7_0100_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,61)
    assign dsdk_ip_adapt_bitjoin1_q = {in_i_data_27_tpl, c_i16_0101_q, element_extension109_q, element_extension107_q, in_i_data_24_tpl, in_i_data_23_tpl, c_i16_0101_q, element_extension104_q, element_extension102_q, in_i_data_20_tpl, in_i_data_19_tpl, c_i16_0101_q, element_extension99_q, element_extension97_q, in_i_data_16_tpl, element_extension95_q, element_extension93_q, element_extension91_q, element_extension89_q, element_extension87_q, dsdk_ip_adapt_bitjoin9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10(EXTIFACE,102)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(416)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc114_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc116_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc118_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect123_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect131_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect139_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect147_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect155_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect163_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect171_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect179_b;
    assign out_o_data_11_tpl = adapt_scalar_trunc188_q;
    assign out_o_data_12_tpl = adapt_scalar_trunc190_q;
    assign out_o_data_13_tpl = adapt_scalar_trunc192_q;
    assign out_o_data_14_tpl = adapt_scalar_trunc194_q;
    assign out_o_data_15_tpl = adapt_scalar_trunc196_q;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect197_b;
    assign out_o_data_17_tpl = adapt_scalar_trunc200_q;
    assign out_o_data_18_tpl = adapt_scalar_trunc202_q;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect203_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect205_b;
    assign out_o_data_21_tpl = adapt_scalar_trunc208_q;
    assign out_o_data_22_tpl = adapt_scalar_trunc210_q;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect211_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect213_b;
    assign out_o_data_25_tpl = adapt_scalar_trunc216_q;
    assign out_o_data_26_tpl = adapt_scalar_trunc218_q;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect219_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_valid;

    // sync_out(GPOUT,172)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond67_preheader_load_input1s_c0_exit352_load_input10_o_stall;

endmodule
