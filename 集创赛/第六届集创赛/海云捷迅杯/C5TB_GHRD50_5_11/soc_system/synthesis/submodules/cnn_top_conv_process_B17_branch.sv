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

// SystemVerilog created from cnn_top_conv_process_B17_branch
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B17_branch (
    input wire [0:0] in_c0_exe2817,
    input wire [0:0] in_c0_exe3818,
    input wire [0:0] in_c0_exe4819,
    input wire [0:0] in_c0_exe5820,
    input wire [0:0] in_c0_exe6821,
    input wire [0:0] in_c0_exe7822,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe2817,
    output wire [0:0] out_c0_exe3818,
    output wire [0:0] out_c0_exe4819,
    output wire [0:0] out_c0_exe5820,
    output wire [0:0] out_c0_exe6821,
    output wire [0:0] out_c0_exe7822,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe2817(GPOUT,10)
    assign out_c0_exe2817 = in_c0_exe2817;

    // out_c0_exe3818(GPOUT,11)
    assign out_c0_exe3818 = in_c0_exe3818;

    // out_c0_exe4819(GPOUT,12)
    assign out_c0_exe4819 = in_c0_exe4819;

    // out_c0_exe5820(GPOUT,13)
    assign out_c0_exe5820 = in_c0_exe5820;

    // out_c0_exe6821(GPOUT,14)
    assign out_c0_exe6821 = in_c0_exe6821;

    // out_c0_exe7822(GPOUT,15)
    assign out_c0_exe7822 = in_c0_exe7822;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

endmodule
