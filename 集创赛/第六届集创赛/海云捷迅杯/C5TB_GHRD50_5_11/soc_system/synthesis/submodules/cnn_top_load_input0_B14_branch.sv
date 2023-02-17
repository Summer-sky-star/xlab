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

// SystemVerilog created from cnn_top_load_input0_B14_branch
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input0_B14_branch (
    input wire [31:0] in_c0_exe10301,
    input wire [0:0] in_c0_exe11302,
    input wire [0:0] in_c0_exe12303,
    input wire [31:0] in_c0_exe1292,
    input wire [31:0] in_c0_exe13304,
    input wire [31:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [0:0] in_c0_exe16,
    input wire [31:0] in_c0_exe17,
    input wire [31:0] in_c0_exe18,
    input wire [0:0] in_c0_exe19,
    input wire [0:0] in_c0_exe20,
    input wire [31:0] in_c0_exe21,
    input wire [31:0] in_c0_exe2293,
    input wire [0:0] in_c0_exe4295,
    input wire [31:0] in_c0_exe5296,
    input wire [0:0] in_c0_exe6297,
    input wire [0:0] in_c0_exe7298,
    input wire [31:0] in_c0_exe8299,
    input wire [0:0] in_c0_exe9300,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10301,
    output wire [0:0] out_c0_exe11302,
    output wire [0:0] out_c0_exe12303,
    output wire [31:0] out_c0_exe1292,
    output wire [31:0] out_c0_exe13304,
    output wire [31:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2293,
    output wire [0:0] out_c0_exe4295,
    output wire [31:0] out_c0_exe5296,
    output wire [0:0] out_c0_exe6297,
    output wire [0:0] out_c0_exe7298,
    output wire [31:0] out_c0_exe8299,
    output wire [0:0] out_c0_exe9300,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10301(GPOUT,24)
    assign out_c0_exe10301 = in_c0_exe10301;

    // out_c0_exe11302(GPOUT,25)
    assign out_c0_exe11302 = in_c0_exe11302;

    // out_c0_exe12303(GPOUT,26)
    assign out_c0_exe12303 = in_c0_exe12303;

    // out_c0_exe1292(GPOUT,27)
    assign out_c0_exe1292 = in_c0_exe1292;

    // out_c0_exe13304(GPOUT,28)
    assign out_c0_exe13304 = in_c0_exe13304;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,31)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,32)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,33)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,34)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,35)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,36)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe2293(GPOUT,37)
    assign out_c0_exe2293 = in_c0_exe2293;

    // out_c0_exe4295(GPOUT,38)
    assign out_c0_exe4295 = in_c0_exe4295;

    // out_c0_exe5296(GPOUT,39)
    assign out_c0_exe5296 = in_c0_exe5296;

    // out_c0_exe6297(GPOUT,40)
    assign out_c0_exe6297 = in_c0_exe6297;

    // out_c0_exe7298(GPOUT,41)
    assign out_c0_exe7298 = in_c0_exe7298;

    // out_c0_exe8299(GPOUT,42)
    assign out_c0_exe8299 = in_c0_exe8299;

    // out_c0_exe9300(GPOUT,43)
    assign out_c0_exe9300 = in_c0_exe9300;

    // stall_out(LOGICAL,46)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,44)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,45)
    assign out_valid_out_0 = in_valid_in;

endmodule
