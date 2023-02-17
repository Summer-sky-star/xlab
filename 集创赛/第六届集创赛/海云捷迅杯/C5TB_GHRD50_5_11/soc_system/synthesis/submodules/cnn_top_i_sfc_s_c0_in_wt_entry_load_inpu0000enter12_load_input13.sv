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

// SystemVerilog created from cnn_top_i_sfc_s_c0_in_wt_entry_load_inpu0000enter12_load_input13
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c0_in_wt_entry_load_inpu0000enter12_load_input13 (
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_o_valid,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [32:0] out_intel_reserved_ffwd_14_0,
    output wire [32:0] out_intel_reserved_ffwd_15_0,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    output wire [32:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [63:0] in_c0_eni1_1_tpl,
    input wire [31:0] in_c0_eni1_2_tpl,
    input wire [31:0] in_c0_eni1_3_tpl,
    input wire [31:0] in_c0_eni1_4_tpl,
    input wire [31:0] in_c0_eni1_5_tpl,
    input wire [31:0] in_c0_eni1_6_tpl,
    input wire [31:0] in_c0_eni1_7_tpl,
    input wire [31:0] in_c0_eni1_8_tpl,
    input wire [31:0] in_c0_eni1_9_tpl,
    input wire [31:0] in_c0_eni1_10_tpl,
    input wire [31:0] in_c0_eni1_11_tpl,
    input wire [31:0] in_c0_eni1_12_tpl,
    input wire [31:0] in_c0_eni1_13_tpl,
    input wire [31:0] in_c0_eni1_14_tpl,
    input wire [31:0] in_c0_eni1_15_tpl,
    input wire [31:0] in_c0_eni1_16_tpl,
    input wire [31:0] in_c0_eni1_17_tpl,
    input wire [31:0] in_c0_eni1_18_tpl,
    input wire [31:0] in_c0_eni1_19_tpl,
    input wire [31:0] in_c0_eni1_20_tpl,
    input wire [31:0] in_c0_eni1_21_tpl,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_valid_out;
    wire [63:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_0_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [32:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [32:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [32:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [32:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x(BLACKBOX,21)@2
    // out out_unnamed_load_input119_0_tpl@5
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_valid@5
    // out out_unnamed_load_input120@5
    cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000enter12_load_input10 thei_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x (
        .in_c0_eni1_0_tpl(in_c0_eni1_0_tpl),
        .in_c0_eni1_1_tpl(in_c0_eni1_1_tpl),
        .in_c0_eni1_2_tpl(in_c0_eni1_2_tpl),
        .in_c0_eni1_3_tpl(in_c0_eni1_3_tpl),
        .in_c0_eni1_4_tpl(in_c0_eni1_4_tpl),
        .in_c0_eni1_5_tpl(in_c0_eni1_5_tpl),
        .in_c0_eni1_6_tpl(in_c0_eni1_6_tpl),
        .in_c0_eni1_7_tpl(in_c0_eni1_7_tpl),
        .in_c0_eni1_8_tpl(in_c0_eni1_8_tpl),
        .in_c0_eni1_9_tpl(in_c0_eni1_9_tpl),
        .in_c0_eni1_10_tpl(in_c0_eni1_10_tpl),
        .in_c0_eni1_11_tpl(in_c0_eni1_11_tpl),
        .in_c0_eni1_12_tpl(in_c0_eni1_12_tpl),
        .in_c0_eni1_13_tpl(in_c0_eni1_13_tpl),
        .in_c0_eni1_14_tpl(in_c0_eni1_14_tpl),
        .in_c0_eni1_15_tpl(in_c0_eni1_15_tpl),
        .in_c0_eni1_16_tpl(in_c0_eni1_16_tpl),
        .in_c0_eni1_17_tpl(in_c0_eni1_17_tpl),
        .in_c0_eni1_18_tpl(in_c0_eni1_18_tpl),
        .in_c0_eni1_19_tpl(in_c0_eni1_19_tpl),
        .in_c0_eni1_20_tpl(in_c0_eni1_20_tpl),
        .in_c0_eni1_21_tpl(in_c0_eni1_21_tpl),
        .in_i_valid(input_accepted_and_q),
        .out_unnamed_load_input119_0_tpl(),
        .out_intel_reserved_ffwd_0_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_10_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_1_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_valid(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_o_valid),
        .out_unnamed_load_input120(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,25)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,24)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x(BLACKBOX,20)@5
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@8
    // out out_stall_entry@20000000
    // out out_valid_out@8
    cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_wt0000c0_exit_load_input10 thei_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_data_out_0_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@8
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_10_0;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_11_0;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_8_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_1_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_1_0;

    // dupName_9_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_2_0;

    // dupName_10_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_3_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_3_0;

    // dupName_11_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_4_0;

    // dupName_12_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_13_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_14_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_15_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_16_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_9_0;

    // regfree_osync(GPOUT,26)
    assign out_intel_reserved_ffwd_0_0 = i_sfc_logic_s_c0_in_wt_entry_load_input1s_c0_enter12_load_input10_aunroll_x_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,28)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_load_input1s_c0_exit_load_input11_aunroll_x_out_stall_entry;

endmodule
