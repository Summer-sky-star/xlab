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

// SystemVerilog created from cnn_top_i_sfc_s_c1_in_for_body9_s_c1_enter126_cnn_top9
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c1_in_for_body9_s_c1_enter126_cnn_top9 (
    output wire [0:0] out_c1_exit133_0_tpl,
    output wire [0:0] out_o_valid,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    input wire [0:0] in_c0_exe2114,
    input wire [0:0] in_c0_exe7119,
    input wire [0:0] in_c1_eni6125_0_tpl,
    input wire [0:0] in_c1_eni6125_1_tpl,
    input wire [0:0] in_c1_eni6125_2_tpl,
    input wire [31:0] in_c1_eni6125_3_tpl,
    input wire [0:0] in_c1_eni6125_4_tpl,
    input wire [0:0] in_c1_eni6125_5_tpl,
    input wire [0:0] in_c1_eni6125_6_tpl,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x(BLACKBOX,5)@78
    // out out_unnamed_cnn_top83_0_tpl@79
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_o_valid@79
    // out out_unnamed_cnn_top1@79
    cnn_top_i_sfc_logic_s_c1_in_for_body9_s_c1_enter126_cnn_top0 thei_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x (
        .in_c1_eni6125_0_tpl(in_c1_eni6125_0_tpl),
        .in_c1_eni6125_1_tpl(in_c1_eni6125_1_tpl),
        .in_c1_eni6125_2_tpl(in_c1_eni6125_2_tpl),
        .in_c1_eni6125_3_tpl(in_c1_eni6125_3_tpl),
        .in_c1_eni6125_4_tpl(in_c1_eni6125_4_tpl),
        .in_c1_eni6125_5_tpl(in_c1_eni6125_5_tpl),
        .in_c1_eni6125_6_tpl(in_c1_eni6125_6_tpl),
        .in_enable(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .out_unnamed_cnn_top83_0_tpl(),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_o_valid(i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_o_valid),
        .out_unnamed_cnn_top1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,9)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,8)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x(BLACKBOX,4)@79
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    cnn_top_i_llvm_fpga_sfc_exit_s_c1_out_fo0000_c1_exit133_cnn_top0 thei_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_dec_pipelined_thread(in_c0_exe2114),
        .in_inc_pipelined_thread(in_c0_exe7119),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_data_out_0_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@79
    assign out_c1_exit133_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_44_0;

    // regfree_osync(GPOUT,10)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_for_body9_cnn_tops_c1_exit133_cnn_top1_aunroll_x_out_stall_entry;

endmodule
