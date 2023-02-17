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

// SystemVerilog created from cnn_top_i_sfc_s_c1_in_for_body_conv_proc0000_enter_conv_process6
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c1_in_for_body_conv_proc0000_enter_conv_process6 (
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [0:0] out_o_valid,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [0:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [31:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x(BLACKBOX,35)@79
    // out out_unnamed_conv_process54_0_tpl@94
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_o_valid@94
    // out out_unnamed_conv_process19@94
    cnn_top_i_sfc_logic_s_c1_in_for_body_con0000_enter_conv_process0 thei_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x (
        .in_c1_eni5_0_tpl(in_c1_eni5_0_tpl),
        .in_c1_eni5_1_tpl(in_c1_eni5_1_tpl),
        .in_c1_eni5_2_tpl(in_c1_eni5_2_tpl),
        .in_c1_eni5_3_tpl(in_c1_eni5_3_tpl),
        .in_c1_eni5_4_tpl(in_c1_eni5_4_tpl),
        .in_c1_eni5_5_tpl(in_c1_eni5_5_tpl),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .out_unnamed_conv_process54_0_tpl(),
        .out_intel_reserved_ffwd_16_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_o_valid),
        .out_unnamed_conv_process19(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,39)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,38)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x(BLACKBOX,34)@94
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@97
    // out out_stall_entry@20000000
    // out out_valid_out@97
    cnn_top_i_llvm_fpga_sfc_exit_s_c1_out_fo00001_exit_conv_process0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_dec_pipelined_thread(in_c0_exe2),
        .in_inc_pipelined_thread(in_c0_exe6),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_data_out_0_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@97
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_8_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_9_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_10_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_11_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_12_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_13_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_14_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_15_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_16_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_17_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_18_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_19_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_20_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_21_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_22_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_23_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_24_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_25_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_26_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_27_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_28_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_29_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_30_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_47_0;

    // regfree_osync(GPOUT,42)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_logic_s_c1_in_for_body_conv_processs_c1_enter_conv_process0_aunroll_x_out_intel_reserved_ffwd_16_0;

    // sync_out(GPOUT,44)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body_conv_processs_c1_exit_conv_process1_aunroll_x_out_stall_entry;

endmodule
