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

// SystemVerilog created from cnn_top_load_input1_B12_branch
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input1_B12_branch (
    input wire [0:0] in_c0_exe10,
    input wire [31:0] in_c0_exe11,
    input wire [31:0] in_c0_exe12,
    input wire [0:0] in_c0_exe13,
    input wire [0:0] in_c0_exe2257,
    input wire [31:0] in_c0_exe3258,
    input wire [31:0] in_c0_exe4259,
    input wire [0:0] in_c0_exe5260,
    input wire [0:0] in_c0_exe6261,
    input wire [31:0] in_c0_exe7262,
    input wire [31:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe2257,
    output wire [31:0] out_c0_exe3258,
    output wire [31:0] out_c0_exe4259,
    output wire [0:0] out_c0_exe5260,
    output wire [0:0] out_c0_exe6261,
    output wire [31:0] out_c0_exe7262,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,16)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,17)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,18)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,19)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe2257(GPOUT,20)
    assign out_c0_exe2257 = in_c0_exe2257;

    // out_c0_exe3258(GPOUT,21)
    assign out_c0_exe3258 = in_c0_exe3258;

    // out_c0_exe4259(GPOUT,22)
    assign out_c0_exe4259 = in_c0_exe4259;

    // out_c0_exe5260(GPOUT,23)
    assign out_c0_exe5260 = in_c0_exe5260;

    // out_c0_exe6261(GPOUT,24)
    assign out_c0_exe6261 = in_c0_exe6261;

    // out_c0_exe7262(GPOUT,25)
    assign out_c0_exe7262 = in_c0_exe7262;

    // out_c0_exe8(GPOUT,26)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,27)
    assign out_c0_exe9 = in_c0_exe9;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,28)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

endmodule
