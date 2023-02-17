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

// SystemVerilog created from cnn_top_conv_process_B17_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B17_merge (
    input wire [0:0] in_forked127_0,
    input wire [0:0] in_forked127_1,
    input wire [0:0] in_lnot281_pop74636_0,
    input wire [0:0] in_lnot281_pop74636_1,
    input wire [0:0] in_lnot628_0,
    input wire [0:0] in_lnot628_1,
    input wire [0:0] in_notcmp206629_0,
    input wire [0:0] in_notcmp206629_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked127,
    output wire [0:0] out_lnot281_pop74636,
    output wire [0:0] out_lnot628,
    output wire [0:0] out_notcmp206629,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked127_mux_s;
    reg [0:0] forked127_mux_q;
    wire [0:0] lnot281_pop74636_mux_s;
    reg [0:0] lnot281_pop74636_mux_q;
    wire [0:0] lnot628_mux_s;
    reg [0:0] lnot628_mux_q;
    wire [0:0] notcmp206629_mux_s;
    reg [0:0] notcmp206629_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked127_mux(MUX,2)
    assign forked127_mux_s = in_valid_in_0;
    always @(forked127_mux_s or in_forked127_1 or in_forked127_0)
    begin
        unique case (forked127_mux_s)
            1'b0 : forked127_mux_q = in_forked127_1;
            1'b1 : forked127_mux_q = in_forked127_0;
            default : forked127_mux_q = 1'b0;
        endcase
    end

    // out_forked127(GPOUT,17)
    assign out_forked127 = forked127_mux_q;

    // lnot281_pop74636_mux(MUX,14)
    assign lnot281_pop74636_mux_s = in_valid_in_0;
    always @(lnot281_pop74636_mux_s or in_lnot281_pop74636_1 or in_lnot281_pop74636_0)
    begin
        unique case (lnot281_pop74636_mux_s)
            1'b0 : lnot281_pop74636_mux_q = in_lnot281_pop74636_1;
            1'b1 : lnot281_pop74636_mux_q = in_lnot281_pop74636_0;
            default : lnot281_pop74636_mux_q = 1'b0;
        endcase
    end

    // out_lnot281_pop74636(GPOUT,18)
    assign out_lnot281_pop74636 = lnot281_pop74636_mux_q;

    // lnot628_mux(MUX,15)
    assign lnot628_mux_s = in_valid_in_0;
    always @(lnot628_mux_s or in_lnot628_1 or in_lnot628_0)
    begin
        unique case (lnot628_mux_s)
            1'b0 : lnot628_mux_q = in_lnot628_1;
            1'b1 : lnot628_mux_q = in_lnot628_0;
            default : lnot628_mux_q = 1'b0;
        endcase
    end

    // out_lnot628(GPOUT,19)
    assign out_lnot628 = lnot628_mux_q;

    // notcmp206629_mux(MUX,16)
    assign notcmp206629_mux_s = in_valid_in_0;
    always @(notcmp206629_mux_s or in_notcmp206629_1 or in_notcmp206629_0)
    begin
        unique case (notcmp206629_mux_s)
            1'b0 : notcmp206629_mux_q = in_notcmp206629_1;
            1'b1 : notcmp206629_mux_q = in_notcmp206629_0;
            default : notcmp206629_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206629(GPOUT,20)
    assign out_notcmp206629 = notcmp206629_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = valid_or_q;

endmodule
