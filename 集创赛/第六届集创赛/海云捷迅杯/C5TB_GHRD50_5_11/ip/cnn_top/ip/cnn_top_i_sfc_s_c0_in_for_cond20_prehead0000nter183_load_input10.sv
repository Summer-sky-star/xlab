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

// SystemVerilog created from cnn_top_i_sfc_s_c0_in_for_cond20_prehead0000nter183_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c0_in_for_cond20_prehead0000nter183_load_input10 (
    output wire [0:0] out_c0_exit184_0_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_load_input133_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x(BLACKBOX,4)@0
    // out out_unnamed_load_input135_0_tpl@7
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_o_valid@7
    // out out_unnamed_load_input120@7
    cnn_top_i_sfc_logic_s_c0_in_for_cond20_p0000nter183_load_input10 thei_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .out_unnamed_load_input135_0_tpl(),
        .out_intel_reserved_ffwd_23_0(i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid),
        .out_unnamed_load_input120(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,8)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,7)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x(BLACKBOX,3)@7
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@10
    // out out_stall_entry@20000000
    // out out_valid_out@10
    cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0000exit184_load_input10 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x (
        .in_data_in_0_tpl(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_data_out_0_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@10
    assign out_c0_exit184_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_valid_out;

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_logic_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0;

    // sync_out(GPOUT,16)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond20_preheader_preheader_load_input1s_c0_exit184_load_input11_aunroll_x_out_stall_entry;

endmodule
