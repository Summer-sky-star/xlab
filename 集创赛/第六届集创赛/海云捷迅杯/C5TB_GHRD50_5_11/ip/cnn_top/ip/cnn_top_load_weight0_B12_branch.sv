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

// SystemVerilog created from cnn_top_load_weight0_B12_branch
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight0_B12_branch (
    input wire [0:0] in_c0_exe10,
    input wire [31:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [0:0] in_c0_exe1242,
    input wire [31:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [31:0] in_c0_exe2243,
    input wire [31:0] in_c0_exe3244,
    input wire [0:0] in_c0_exe5246,
    input wire [31:0] in_c0_exe6247,
    input wire [0:0] in_c0_exe7248,
    input wire [0:0] in_c0_exe8,
    input wire [31:0] in_c0_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe1242,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe2243,
    output wire [31:0] out_c0_exe3244,
    output wire [0:0] out_c0_exe5246,
    output wire [31:0] out_c0_exe6247,
    output wire [0:0] out_c0_exe7248,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,17)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,18)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,19)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe1242(GPOUT,20)
    assign out_c0_exe1242 = in_c0_exe1242;

    // out_c0_exe13(GPOUT,21)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,22)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe2243(GPOUT,23)
    assign out_c0_exe2243 = in_c0_exe2243;

    // out_c0_exe3244(GPOUT,24)
    assign out_c0_exe3244 = in_c0_exe3244;

    // out_c0_exe5246(GPOUT,25)
    assign out_c0_exe5246 = in_c0_exe5246;

    // out_c0_exe6247(GPOUT,26)
    assign out_c0_exe6247 = in_c0_exe6247;

    // out_c0_exe7248(GPOUT,27)
    assign out_c0_exe7248 = in_c0_exe7248;

    // out_c0_exe8(GPOUT,28)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,29)
    assign out_c0_exe9 = in_c0_exe9;

    // stall_out(LOGICAL,32)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,30)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = in_valid_in;

endmodule
