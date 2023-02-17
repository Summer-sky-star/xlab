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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0004ad_input01_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0004ad_input01_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [31:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [0:0] in_i_data_5_tpl,
    input wire [31:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc18_in;
    wire [0:0] adapt_scalar_trunc18_q;
    wire [0:0] adapt_scalar_trunc20_in;
    wire [0:0] adapt_scalar_trunc20_q;
    wire [0:0] adapt_scalar_trunc22_in;
    wire [0:0] adapt_scalar_trunc22_q;
    wire [0:0] adapt_scalar_trunc28_in;
    wire [0:0] adapt_scalar_trunc28_q;
    wire [0:0] adapt_scalar_trunc32_in;
    wire [0:0] adapt_scalar_trunc32_q;
    wire [23:0] c_i24_012_q;
    wire [6:0] c_i7_011_q;
    wire [7:0] c_i8_09_q;
    wire [191:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension10_q;
    wire [7:0] element_extension13_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full_bitsignaltemp;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect17_b;
    wire [0:0] ip_dsdk_adapt_bitselect19_b;
    wire [0:0] ip_dsdk_adapt_bitselect21_b;
    wire [31:0] ip_dsdk_adapt_bitselect23_b;
    wire [31:0] ip_dsdk_adapt_bitselect25_b;
    wire [0:0] ip_dsdk_adapt_bitselect27_b;
    wire [31:0] ip_dsdk_adapt_bitselect29_b;
    wire [0:0] ip_dsdk_adapt_bitselect31_b;


    // ip_dsdk_adapt_bitselect31(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[160:160];

    // adapt_scalar_trunc32(ROUND,8)
    assign adapt_scalar_trunc32_in = ip_dsdk_adapt_bitselect31_b;
    assign adapt_scalar_trunc32_q = adapt_scalar_trunc32_in[0:0];

    // ip_dsdk_adapt_bitselect29(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[159:128];

    // ip_dsdk_adapt_bitselect27(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[96:96];

    // adapt_scalar_trunc28(ROUND,7)
    assign adapt_scalar_trunc28_in = ip_dsdk_adapt_bitselect27_b;
    assign adapt_scalar_trunc28_q = adapt_scalar_trunc28_in[0:0];

    // ip_dsdk_adapt_bitselect25(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect25_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[95:64];

    // ip_dsdk_adapt_bitselect23(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect23_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[63:32];

    // ip_dsdk_adapt_bitselect21(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[16:16];

    // adapt_scalar_trunc22(ROUND,6)
    assign adapt_scalar_trunc22_in = ip_dsdk_adapt_bitselect21_b;
    assign adapt_scalar_trunc22_q = adapt_scalar_trunc22_in[0:0];

    // ip_dsdk_adapt_bitselect19(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect19_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[8:8];

    // adapt_scalar_trunc20(ROUND,5)
    assign adapt_scalar_trunc20_in = ip_dsdk_adapt_bitselect19_b;
    assign adapt_scalar_trunc20_q = adapt_scalar_trunc20_in[0:0];

    // ip_dsdk_adapt_bitselect17(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect17_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data[0:0];

    // adapt_scalar_trunc18(ROUND,4)
    assign adapt_scalar_trunc18_in = ip_dsdk_adapt_bitselect17_b;
    assign adapt_scalar_trunc18_q = adapt_scalar_trunc18_in[0:0];

    // c_i7_011(CONSTANT,11)
    assign c_i7_011_q = $unsigned(7'b0000000);

    // element_extension13(BITJOIN,19)
    assign element_extension13_q = {c_i7_011_q, in_i_data_7_tpl};

    // c_i24_012(CONSTANT,9)
    assign c_i24_012_q = $unsigned(24'b000000000000000000000000);

    // element_extension10(BITJOIN,18)
    assign element_extension10_q = {c_i7_011_q, in_i_data_5_tpl};

    // c_i8_09(CONSTANT,16)
    assign c_i8_09_q = $unsigned(8'b00000000);

    // element_extension7(BITJOIN,22)
    assign element_extension7_q = {c_i7_011_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,21)
    assign element_extension5_q = {c_i7_011_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,20)
    assign element_extension3_q = {c_i7_011_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,17)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_012_q, element_extension13_q, in_i_data_6_tpl, c_i24_012_q, element_extension10_q, in_i_data_4_tpl, in_i_data_3_tpl, c_i8_09_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00(EXTIFACE,23)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(192)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc18_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc20_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc22_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect23_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect25_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc28_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect29_b;
    assign out_o_data_7_tpl = adapt_scalar_trunc32_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_valid;

    // sync_out(GPOUT,36)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond58_preheader_preheader_load_input0s_c0_exit229_load_input00_o_stall;

endmodule
