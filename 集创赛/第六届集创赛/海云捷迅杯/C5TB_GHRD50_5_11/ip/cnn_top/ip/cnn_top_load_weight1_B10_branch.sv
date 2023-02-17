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

// SystemVerilog created from cnn_top_load_weight1_B10_branch
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight1_B10_branch (
    input wire [31:0] in_c0_exe1218,
    input wire [0:0] in_c0_exe3220,
    input wire [31:0] in_c0_exe4221,
    input wire [0:0] in_c0_exe5222,
    input wire [31:0] in_c0_exe6223,
    input wire [0:0] in_c0_exe7224,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1218,
    output wire [0:0] out_c0_exe3220,
    output wire [31:0] out_c0_exe4221,
    output wire [0:0] out_c0_exe5222,
    output wire [31:0] out_c0_exe6223,
    output wire [0:0] out_c0_exe7224,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1218(GPOUT,10)
    assign out_c0_exe1218 = in_c0_exe1218;

    // out_c0_exe3220(GPOUT,11)
    assign out_c0_exe3220 = in_c0_exe3220;

    // out_c0_exe4221(GPOUT,12)
    assign out_c0_exe4221 = in_c0_exe4221;

    // out_c0_exe5222(GPOUT,13)
    assign out_c0_exe5222 = in_c0_exe5222;

    // out_c0_exe6223(GPOUT,14)
    assign out_c0_exe6223 = in_c0_exe6223;

    // out_c0_exe7224(GPOUT,15)
    assign out_c0_exe7224 = in_c0_exe7224;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

endmodule
