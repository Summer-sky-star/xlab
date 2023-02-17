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

// SystemVerilog created from cnn_top_conv_process_B19_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B19_merge (
    input wire [0:0] in_forked128_0,
    input wire [0:0] in_forked128_1,
    input wire [0:0] in_lnot281_pop74642_0,
    input wire [0:0] in_lnot281_pop74642_1,
    input wire [0:0] in_lnot282_pop83648_0,
    input wire [0:0] in_lnot282_pop83648_1,
    input wire [0:0] in_lnot627_0,
    input wire [0:0] in_lnot627_1,
    input wire [0:0] in_notcmp202643_0,
    input wire [0:0] in_notcmp202643_1,
    input wire [0:0] in_notcmp206292_pop84653_0,
    input wire [0:0] in_notcmp206292_pop84653_1,
    input wire [0:0] in_notcmp206635_0,
    input wire [0:0] in_notcmp206635_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked128,
    output wire [0:0] out_lnot281_pop74642,
    output wire [0:0] out_lnot282_pop83648,
    output wire [0:0] out_lnot627,
    output wire [0:0] out_notcmp202643,
    output wire [0:0] out_notcmp206292_pop84653,
    output wire [0:0] out_notcmp206635,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked128_mux_s;
    reg [0:0] forked128_mux_q;
    wire [0:0] lnot281_pop74642_mux_s;
    reg [0:0] lnot281_pop74642_mux_q;
    wire [0:0] lnot282_pop83648_mux_s;
    reg [0:0] lnot282_pop83648_mux_q;
    wire [0:0] lnot627_mux_s;
    reg [0:0] lnot627_mux_q;
    wire [0:0] notcmp202643_mux_s;
    reg [0:0] notcmp202643_mux_q;
    wire [0:0] notcmp206292_pop84653_mux_s;
    reg [0:0] notcmp206292_pop84653_mux_q;
    wire [0:0] notcmp206635_mux_s;
    reg [0:0] notcmp206635_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked128_mux(MUX,2)
    assign forked128_mux_s = in_valid_in_0;
    always @(forked128_mux_s or in_forked128_1 or in_forked128_0)
    begin
        unique case (forked128_mux_s)
            1'b0 : forked128_mux_q = in_forked128_1;
            1'b1 : forked128_mux_q = in_forked128_0;
            default : forked128_mux_q = 1'b0;
        endcase
    end

    // out_forked128(GPOUT,26)
    assign out_forked128 = forked128_mux_q;

    // lnot281_pop74642_mux(MUX,20)
    assign lnot281_pop74642_mux_s = in_valid_in_0;
    always @(lnot281_pop74642_mux_s or in_lnot281_pop74642_1 or in_lnot281_pop74642_0)
    begin
        unique case (lnot281_pop74642_mux_s)
            1'b0 : lnot281_pop74642_mux_q = in_lnot281_pop74642_1;
            1'b1 : lnot281_pop74642_mux_q = in_lnot281_pop74642_0;
            default : lnot281_pop74642_mux_q = 1'b0;
        endcase
    end

    // out_lnot281_pop74642(GPOUT,27)
    assign out_lnot281_pop74642 = lnot281_pop74642_mux_q;

    // lnot282_pop83648_mux(MUX,21)
    assign lnot282_pop83648_mux_s = in_valid_in_0;
    always @(lnot282_pop83648_mux_s or in_lnot282_pop83648_1 or in_lnot282_pop83648_0)
    begin
        unique case (lnot282_pop83648_mux_s)
            1'b0 : lnot282_pop83648_mux_q = in_lnot282_pop83648_1;
            1'b1 : lnot282_pop83648_mux_q = in_lnot282_pop83648_0;
            default : lnot282_pop83648_mux_q = 1'b0;
        endcase
    end

    // out_lnot282_pop83648(GPOUT,28)
    assign out_lnot282_pop83648 = lnot282_pop83648_mux_q;

    // lnot627_mux(MUX,22)
    assign lnot627_mux_s = in_valid_in_0;
    always @(lnot627_mux_s or in_lnot627_1 or in_lnot627_0)
    begin
        unique case (lnot627_mux_s)
            1'b0 : lnot627_mux_q = in_lnot627_1;
            1'b1 : lnot627_mux_q = in_lnot627_0;
            default : lnot627_mux_q = 1'b0;
        endcase
    end

    // out_lnot627(GPOUT,29)
    assign out_lnot627 = lnot627_mux_q;

    // notcmp202643_mux(MUX,23)
    assign notcmp202643_mux_s = in_valid_in_0;
    always @(notcmp202643_mux_s or in_notcmp202643_1 or in_notcmp202643_0)
    begin
        unique case (notcmp202643_mux_s)
            1'b0 : notcmp202643_mux_q = in_notcmp202643_1;
            1'b1 : notcmp202643_mux_q = in_notcmp202643_0;
            default : notcmp202643_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202643(GPOUT,30)
    assign out_notcmp202643 = notcmp202643_mux_q;

    // notcmp206292_pop84653_mux(MUX,24)
    assign notcmp206292_pop84653_mux_s = in_valid_in_0;
    always @(notcmp206292_pop84653_mux_s or in_notcmp206292_pop84653_1 or in_notcmp206292_pop84653_0)
    begin
        unique case (notcmp206292_pop84653_mux_s)
            1'b0 : notcmp206292_pop84653_mux_q = in_notcmp206292_pop84653_1;
            1'b1 : notcmp206292_pop84653_mux_q = in_notcmp206292_pop84653_0;
            default : notcmp206292_pop84653_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206292_pop84653(GPOUT,31)
    assign out_notcmp206292_pop84653 = notcmp206292_pop84653_mux_q;

    // notcmp206635_mux(MUX,25)
    assign notcmp206635_mux_s = in_valid_in_0;
    always @(notcmp206635_mux_s or in_notcmp206635_1 or in_notcmp206635_0)
    begin
        unique case (notcmp206635_mux_s)
            1'b0 : notcmp206635_mux_q = in_notcmp206635_1;
            1'b1 : notcmp206635_mux_q = in_notcmp206635_0;
            default : notcmp206635_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206635(GPOUT,32)
    assign out_notcmp206635 = notcmp206635_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
