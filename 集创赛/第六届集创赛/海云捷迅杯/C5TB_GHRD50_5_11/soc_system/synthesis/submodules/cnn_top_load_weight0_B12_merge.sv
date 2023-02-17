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

// SystemVerilog created from cnn_top_load_weight0_B12_merge
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight0_B12_merge (
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [31:0] in_li_075118_0,
    input wire [31:0] in_li_075118_1,
    input wire [31:0] in_li_07591_pop22129_0,
    input wire [31:0] in_li_07591_pop22129_1,
    input wire [31:0] in_mul78119_0,
    input wire [31:0] in_mul78119_1,
    input wire [0:0] in_notcmp82124_0,
    input wire [0:0] in_notcmp82124_1,
    input wire [0:0] in_pop23134_0,
    input wire [0:0] in_pop23134_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_weight040_0,
    input wire [0:0] in_unnamed_load_weight040_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked45,
    output wire [31:0] out_li_075118,
    output wire [31:0] out_li_07591_pop22129,
    output wire [31:0] out_mul78119,
    output wire [0:0] out_notcmp82124,
    output wire [0:0] out_pop23134,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_weight040,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked45_mux_s;
    reg [0:0] forked45_mux_q;
    wire [0:0] li_075118_mux_s;
    reg [31:0] li_075118_mux_q;
    wire [0:0] li_07591_pop22129_mux_s;
    reg [31:0] li_07591_pop22129_mux_q;
    wire [0:0] mul78119_mux_s;
    reg [31:0] mul78119_mux_q;
    wire [0:0] notcmp82124_mux_s;
    reg [0:0] notcmp82124_mux_q;
    wire [0:0] pop23134_mux_s;
    reg [0:0] pop23134_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_weight040_mux_s;
    reg [0:0] unnamed_load_weight040_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked45_mux(MUX,2)
    assign forked45_mux_s = in_valid_in_0;
    always @(forked45_mux_s or in_forked45_1 or in_forked45_0)
    begin
        unique case (forked45_mux_s)
            1'b0 : forked45_mux_q = in_forked45_1;
            1'b1 : forked45_mux_q = in_forked45_0;
            default : forked45_mux_q = 1'b0;
        endcase
    end

    // out_forked45(GPOUT,24)
    assign out_forked45 = forked45_mux_q;

    // li_075118_mux(MUX,20)
    assign li_075118_mux_s = in_valid_in_0;
    always @(li_075118_mux_s or in_li_075118_1 or in_li_075118_0)
    begin
        unique case (li_075118_mux_s)
            1'b0 : li_075118_mux_q = in_li_075118_1;
            1'b1 : li_075118_mux_q = in_li_075118_0;
            default : li_075118_mux_q = 32'b0;
        endcase
    end

    // out_li_075118(GPOUT,25)
    assign out_li_075118 = li_075118_mux_q;

    // li_07591_pop22129_mux(MUX,21)
    assign li_07591_pop22129_mux_s = in_valid_in_0;
    always @(li_07591_pop22129_mux_s or in_li_07591_pop22129_1 or in_li_07591_pop22129_0)
    begin
        unique case (li_07591_pop22129_mux_s)
            1'b0 : li_07591_pop22129_mux_q = in_li_07591_pop22129_1;
            1'b1 : li_07591_pop22129_mux_q = in_li_07591_pop22129_0;
            default : li_07591_pop22129_mux_q = 32'b0;
        endcase
    end

    // out_li_07591_pop22129(GPOUT,26)
    assign out_li_07591_pop22129 = li_07591_pop22129_mux_q;

    // mul78119_mux(MUX,22)
    assign mul78119_mux_s = in_valid_in_0;
    always @(mul78119_mux_s or in_mul78119_1 or in_mul78119_0)
    begin
        unique case (mul78119_mux_s)
            1'b0 : mul78119_mux_q = in_mul78119_1;
            1'b1 : mul78119_mux_q = in_mul78119_0;
            default : mul78119_mux_q = 32'b0;
        endcase
    end

    // out_mul78119(GPOUT,27)
    assign out_mul78119 = mul78119_mux_q;

    // notcmp82124_mux(MUX,23)
    assign notcmp82124_mux_s = in_valid_in_0;
    always @(notcmp82124_mux_s or in_notcmp82124_1 or in_notcmp82124_0)
    begin
        unique case (notcmp82124_mux_s)
            1'b0 : notcmp82124_mux_q = in_notcmp82124_1;
            1'b1 : notcmp82124_mux_q = in_notcmp82124_0;
            default : notcmp82124_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82124(GPOUT,28)
    assign out_notcmp82124 = notcmp82124_mux_q;

    // pop23134_mux(MUX,34)
    assign pop23134_mux_s = in_valid_in_0;
    always @(pop23134_mux_s or in_pop23134_1 or in_pop23134_0)
    begin
        unique case (pop23134_mux_s)
            1'b0 : pop23134_mux_q = in_pop23134_1;
            1'b1 : pop23134_mux_q = in_pop23134_0;
            default : pop23134_mux_q = 1'b0;
        endcase
    end

    // out_pop23134(GPOUT,29)
    assign out_pop23134 = pop23134_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,35)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,30)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,36)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,31)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_weight040_mux(MUX,37)
    assign unnamed_load_weight040_mux_s = in_valid_in_0;
    always @(unnamed_load_weight040_mux_s or in_unnamed_load_weight040_1 or in_unnamed_load_weight040_0)
    begin
        unique case (unnamed_load_weight040_mux_s)
            1'b0 : unnamed_load_weight040_mux_q = in_unnamed_load_weight040_1;
            1'b1 : unnamed_load_weight040_mux_q = in_unnamed_load_weight040_0;
            default : unnamed_load_weight040_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_weight040(GPOUT,32)
    assign out_unnamed_load_weight040 = unnamed_load_weight040_mux_q;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = valid_or_q;

endmodule
