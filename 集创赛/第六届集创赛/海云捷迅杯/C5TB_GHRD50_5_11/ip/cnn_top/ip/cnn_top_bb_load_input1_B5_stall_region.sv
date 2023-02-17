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

// SystemVerilog created from cnn_top_bb_load_input1_B5_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B5_stall_region (
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,24)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x(BLACKBOX,3)@0
    // in in_i_stall@20000000
    // out out_c0_exit184_0_tpl@10
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    cnn_top_i_sfc_s_c0_in_for_cond20_prehead0000nter183_load_input10 thei_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x (
        .in_unnamed_load_input133_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .out_c0_exit184_0_tpl(),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_o_stall(i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x(STALLENABLE,23)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_o_valid;

    // dupName_0_sync_out_x(GPOUT,2)@10
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_V0;

    // regfree_osync(GPOUT,14)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c0_in_for_cond20_preheader_preheader_load_input1s_c0_enter183_load_input10_aunroll_x_out_intel_reserved_ffwd_23_0;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
