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

// SystemVerilog created from cnn_top_load_weight1_B14_branch
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight1_B14_branch (
    input wire [31:0] in_c0_exe10289,
    input wire [0:0] in_c0_exe11290,
    input wire [31:0] in_c0_exe12291,
    input wire [0:0] in_c0_exe1280,
    input wire [0:0] in_c0_exe13292,
    input wire [31:0] in_c0_exe14293,
    input wire [0:0] in_c0_exe15,
    input wire [0:0] in_c0_exe16,
    input wire [31:0] in_c0_exe17,
    input wire [31:0] in_c0_exe18,
    input wire [0:0] in_c0_exe19,
    input wire [31:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [0:0] in_c0_exe22,
    input wire [0:0] in_c0_exe3282,
    input wire [31:0] in_c0_exe4283,
    input wire [0:0] in_c0_exe5284,
    input wire [31:0] in_c0_exe6285,
    input wire [0:0] in_c0_exe7286,
    input wire [31:0] in_c0_exe8287,
    input wire [0:0] in_c0_exe9288,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10289,
    output wire [0:0] out_c0_exe11290,
    output wire [31:0] out_c0_exe12291,
    output wire [0:0] out_c0_exe1280,
    output wire [0:0] out_c0_exe13292,
    output wire [31:0] out_c0_exe14293,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe3282,
    output wire [31:0] out_c0_exe4283,
    output wire [0:0] out_c0_exe5284,
    output wire [31:0] out_c0_exe6285,
    output wire [0:0] out_c0_exe7286,
    output wire [31:0] out_c0_exe8287,
    output wire [0:0] out_c0_exe9288,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10289(GPOUT,25)
    assign out_c0_exe10289 = in_c0_exe10289;

    // out_c0_exe11290(GPOUT,26)
    assign out_c0_exe11290 = in_c0_exe11290;

    // out_c0_exe12291(GPOUT,27)
    assign out_c0_exe12291 = in_c0_exe12291;

    // out_c0_exe1280(GPOUT,28)
    assign out_c0_exe1280 = in_c0_exe1280;

    // out_c0_exe13292(GPOUT,29)
    assign out_c0_exe13292 = in_c0_exe13292;

    // out_c0_exe14293(GPOUT,30)
    assign out_c0_exe14293 = in_c0_exe14293;

    // out_c0_exe15(GPOUT,31)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,32)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,33)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,34)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,35)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,36)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,37)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,38)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe3282(GPOUT,39)
    assign out_c0_exe3282 = in_c0_exe3282;

    // out_c0_exe4283(GPOUT,40)
    assign out_c0_exe4283 = in_c0_exe4283;

    // out_c0_exe5284(GPOUT,41)
    assign out_c0_exe5284 = in_c0_exe5284;

    // out_c0_exe6285(GPOUT,42)
    assign out_c0_exe6285 = in_c0_exe6285;

    // out_c0_exe7286(GPOUT,43)
    assign out_c0_exe7286 = in_c0_exe7286;

    // out_c0_exe8287(GPOUT,44)
    assign out_c0_exe8287 = in_c0_exe8287;

    // out_c0_exe9288(GPOUT,45)
    assign out_c0_exe9288 = in_c0_exe9288;

    // stall_out(LOGICAL,48)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,46)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,47)
    assign out_valid_out_0 = in_valid_in;

endmodule
