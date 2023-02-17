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

// SystemVerilog created from cnn_top_load_input1_B8_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input1_B8_merge (
    input wire [0:0] in_forked51_0,
    input wire [0:0] in_forked51_1,
    input wire [31:0] in_input_offset_089_replace_phi116_0,
    input wire [31:0] in_input_offset_089_replace_phi116_1,
    input wire [0:0] in_notcmp60117_0,
    input wire [0:0] in_notcmp60117_1,
    input wire [31:0] in_row_090_pop18118_0,
    input wire [31:0] in_row_090_pop18118_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_input137_0,
    input wire [0:0] in_unnamed_load_input137_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked51,
    output wire [31:0] out_input_offset_089_replace_phi116,
    output wire [0:0] out_notcmp60117,
    output wire [31:0] out_row_090_pop18118,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_input137,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked51_mux_s;
    reg [0:0] forked51_mux_q;
    wire [0:0] input_offset_089_replace_phi116_mux_s;
    reg [31:0] input_offset_089_replace_phi116_mux_q;
    wire [0:0] notcmp60117_mux_s;
    reg [0:0] notcmp60117_mux_q;
    wire [0:0] row_090_pop18118_mux_s;
    reg [31:0] row_090_pop18118_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_input137_mux_s;
    reg [0:0] unnamed_load_input137_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked51_mux(MUX,2)
    assign forked51_mux_s = in_valid_in_0;
    always @(forked51_mux_s or in_forked51_1 or in_forked51_0)
    begin
        unique case (forked51_mux_s)
            1'b0 : forked51_mux_q = in_forked51_1;
            1'b1 : forked51_mux_q = in_forked51_0;
            default : forked51_mux_q = 1'b0;
        endcase
    end

    // out_forked51(GPOUT,18)
    assign out_forked51 = forked51_mux_q;

    // input_offset_089_replace_phi116_mux(MUX,16)
    assign input_offset_089_replace_phi116_mux_s = in_valid_in_0;
    always @(input_offset_089_replace_phi116_mux_s or in_input_offset_089_replace_phi116_1 or in_input_offset_089_replace_phi116_0)
    begin
        unique case (input_offset_089_replace_phi116_mux_s)
            1'b0 : input_offset_089_replace_phi116_mux_q = in_input_offset_089_replace_phi116_1;
            1'b1 : input_offset_089_replace_phi116_mux_q = in_input_offset_089_replace_phi116_0;
            default : input_offset_089_replace_phi116_mux_q = 32'b0;
        endcase
    end

    // out_input_offset_089_replace_phi116(GPOUT,19)
    assign out_input_offset_089_replace_phi116 = input_offset_089_replace_phi116_mux_q;

    // notcmp60117_mux(MUX,17)
    assign notcmp60117_mux_s = in_valid_in_0;
    always @(notcmp60117_mux_s or in_notcmp60117_1 or in_notcmp60117_0)
    begin
        unique case (notcmp60117_mux_s)
            1'b0 : notcmp60117_mux_q = in_notcmp60117_1;
            1'b1 : notcmp60117_mux_q = in_notcmp60117_0;
            default : notcmp60117_mux_q = 1'b0;
        endcase
    end

    // out_notcmp60117(GPOUT,20)
    assign out_notcmp60117 = notcmp60117_mux_q;

    // row_090_pop18118_mux(MUX,26)
    assign row_090_pop18118_mux_s = in_valid_in_0;
    always @(row_090_pop18118_mux_s or in_row_090_pop18118_1 or in_row_090_pop18118_0)
    begin
        unique case (row_090_pop18118_mux_s)
            1'b0 : row_090_pop18118_mux_q = in_row_090_pop18118_1;
            1'b1 : row_090_pop18118_mux_q = in_row_090_pop18118_0;
            default : row_090_pop18118_mux_q = 32'b0;
        endcase
    end

    // out_row_090_pop18118(GPOUT,21)
    assign out_row_090_pop18118 = row_090_pop18118_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,27)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,28)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_input137_mux(MUX,29)
    assign unnamed_load_input137_mux_s = in_valid_in_0;
    always @(unnamed_load_input137_mux_s or in_unnamed_load_input137_1 or in_unnamed_load_input137_0)
    begin
        unique case (unnamed_load_input137_mux_s)
            1'b0 : unnamed_load_input137_mux_q = in_unnamed_load_input137_1;
            1'b1 : unnamed_load_input137_mux_q = in_unnamed_load_input137_0;
            default : unnamed_load_input137_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_input137(GPOUT,24)
    assign out_unnamed_load_input137 = unnamed_load_input137_mux_q;

    // out_valid_out(GPOUT,25)
    assign out_valid_out = valid_or_q;

endmodule
