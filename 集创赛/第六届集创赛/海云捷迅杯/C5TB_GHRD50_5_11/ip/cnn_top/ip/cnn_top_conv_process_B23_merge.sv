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

// SystemVerilog created from cnn_top_conv_process_B23_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B23_merge (
    input wire [0:0] in_c1_exe1024_0,
    input wire [0:0] in_c1_exe1125_0,
    input wire [0:0] in_c1_exe715_0,
    input wire [0:0] in_c1_exe819_0,
    input wire [0:0] in_c1_exe922_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c1_exe1024,
    output wire [0:0] out_c1_exe1125,
    output wire [0:0] out_c1_exe715,
    output wire [0:0] out_c1_exe819,
    output wire [0:0] out_c1_exe922,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c1_exe1024(GPOUT,9)
    assign out_c1_exe1024 = in_c1_exe1024_0;

    // out_c1_exe1125(GPOUT,10)
    assign out_c1_exe1125 = in_c1_exe1125_0;

    // out_c1_exe715(GPOUT,11)
    assign out_c1_exe715 = in_c1_exe715_0;

    // out_c1_exe819(GPOUT,12)
    assign out_c1_exe819 = in_c1_exe819_0;

    // out_c1_exe922(GPOUT,13)
    assign out_c1_exe922 = in_c1_exe922_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
