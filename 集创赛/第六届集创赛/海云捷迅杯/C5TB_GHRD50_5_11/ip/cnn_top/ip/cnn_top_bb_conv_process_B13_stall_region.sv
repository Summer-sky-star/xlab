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

// SystemVerilog created from cnn_top_bb_conv_process_B13_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B13_stall_region (
    output wire [31:0] out_c0_exe1078010,
    output wire [31:0] out_c0_exe67763,
    output wire [0:0] out_c0_exe77775,
    output wire [0:0] out_c0_exe87787,
    output wire [0:0] out_c0_exe97798,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c0_exe1078010,
    input wire [31:0] in_c0_exe67763,
    input wire [0:0] in_c0_exe77775,
    input wire [0:0] in_c0_exe87787,
    input wire [0:0] in_c0_exe97798,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [66:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,13)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,11)
    assign bubble_join_stall_entry_q = {in_c0_exe97798, in_c0_exe87787, in_c0_exe77775, in_c0_exe67763, in_c0_exe1078010};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:66]);

    // dupName_0_sync_out_x(GPOUT,2)@0
    assign out_c0_exe1078010 = bubble_select_stall_entry_b;
    assign out_c0_exe67763 = bubble_select_stall_entry_c;
    assign out_c0_exe77775 = bubble_select_stall_entry_d;
    assign out_c0_exe87787 = bubble_select_stall_entry_e;
    assign out_c0_exe97798 = bubble_select_stall_entry_f;
    assign out_valid_out = SE_stall_entry_V0;

    // sync_out(GPOUT,8)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
