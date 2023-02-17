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

// SystemVerilog created from cnn_top_conv_process_B21_branch
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B21_branch (
    input wire [0:0] in_c0_exe10908,
    input wire [0:0] in_c0_exe11909,
    input wire [0:0] in_c0_exe12910,
    input wire [0:0] in_c0_exe13911,
    input wire [0:0] in_c0_exe14912,
    input wire [0:0] in_c0_exe15,
    input wire [0:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe2900,
    input wire [31:0] in_c0_exe3901,
    input wire [0:0] in_c0_exe4902,
    input wire [0:0] in_c0_exe5903,
    input wire [0:0] in_c0_exe6904,
    input wire [0:0] in_c0_exe7905,
    input wire [0:0] in_c0_exe8906,
    input wire [0:0] in_c0_exe9907,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10908,
    output wire [0:0] out_c0_exe11909,
    output wire [0:0] out_c0_exe12910,
    output wire [0:0] out_c0_exe13911,
    output wire [0:0] out_c0_exe14912,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2900,
    output wire [31:0] out_c0_exe3901,
    output wire [0:0] out_c0_exe4902,
    output wire [0:0] out_c0_exe5903,
    output wire [0:0] out_c0_exe6904,
    output wire [0:0] out_c0_exe7905,
    output wire [0:0] out_c0_exe8906,
    output wire [0:0] out_c0_exe9907,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10908(GPOUT,20)
    assign out_c0_exe10908 = in_c0_exe10908;

    // out_c0_exe11909(GPOUT,21)
    assign out_c0_exe11909 = in_c0_exe11909;

    // out_c0_exe12910(GPOUT,22)
    assign out_c0_exe12910 = in_c0_exe12910;

    // out_c0_exe13911(GPOUT,23)
    assign out_c0_exe13911 = in_c0_exe13911;

    // out_c0_exe14912(GPOUT,24)
    assign out_c0_exe14912 = in_c0_exe14912;

    // out_c0_exe15(GPOUT,25)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,26)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,27)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe2900(GPOUT,28)
    assign out_c0_exe2900 = in_c0_exe2900;

    // out_c0_exe3901(GPOUT,29)
    assign out_c0_exe3901 = in_c0_exe3901;

    // out_c0_exe4902(GPOUT,30)
    assign out_c0_exe4902 = in_c0_exe4902;

    // out_c0_exe5903(GPOUT,31)
    assign out_c0_exe5903 = in_c0_exe5903;

    // out_c0_exe6904(GPOUT,32)
    assign out_c0_exe6904 = in_c0_exe6904;

    // out_c0_exe7905(GPOUT,33)
    assign out_c0_exe7905 = in_c0_exe7905;

    // out_c0_exe8906(GPOUT,34)
    assign out_c0_exe8906 = in_c0_exe8906;

    // out_c0_exe9907(GPOUT,35)
    assign out_c0_exe9907 = in_c0_exe9907;

    // stall_out(LOGICAL,38)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,36)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = in_valid_in;

endmodule
