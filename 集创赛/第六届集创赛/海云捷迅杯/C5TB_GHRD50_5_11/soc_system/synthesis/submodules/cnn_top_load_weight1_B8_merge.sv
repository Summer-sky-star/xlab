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

// SystemVerilog created from cnn_top_load_weight1_B8_merge
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight1_B8_merge (
    input wire [0:0] in_forked46_0,
    input wire [0:0] in_forked46_1,
    input wire [0:0] in_notcmp53109_0,
    input wire [0:0] in_notcmp53109_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tii_081_pop18110_0,
    input wire [31:0] in_tii_081_pop18110_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_weight_offset_180_replace_phi108_0,
    input wire [31:0] in_weight_offset_180_replace_phi108_1,
    output wire [0:0] out_forked46,
    output wire [0:0] out_notcmp53109,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tii_081_pop18110,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_weight_offset_180_replace_phi108,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked46_mux_s;
    reg [0:0] forked46_mux_q;
    wire [0:0] notcmp53109_mux_s;
    reg [0:0] notcmp53109_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tii_081_pop18110_mux_s;
    reg [31:0] tii_081_pop18110_mux_q;
    wire [0:0] valid_or_q;
    wire [0:0] weight_offset_180_replace_phi108_mux_s;
    reg [31:0] weight_offset_180_replace_phi108_mux_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked46_mux(MUX,2)
    assign forked46_mux_s = in_valid_in_0;
    always @(forked46_mux_s or in_forked46_1 or in_forked46_0)
    begin
        unique case (forked46_mux_s)
            1'b0 : forked46_mux_q = in_forked46_1;
            1'b1 : forked46_mux_q = in_forked46_0;
            default : forked46_mux_q = 1'b0;
        endcase
    end

    // out_forked46(GPOUT,15)
    assign out_forked46 = forked46_mux_q;

    // notcmp53109_mux(MUX,14)
    assign notcmp53109_mux_s = in_valid_in_0;
    always @(notcmp53109_mux_s or in_notcmp53109_1 or in_notcmp53109_0)
    begin
        unique case (notcmp53109_mux_s)
            1'b0 : notcmp53109_mux_q = in_notcmp53109_1;
            1'b1 : notcmp53109_mux_q = in_notcmp53109_0;
            default : notcmp53109_mux_q = 1'b0;
        endcase
    end

    // out_notcmp53109(GPOUT,16)
    assign out_notcmp53109 = notcmp53109_mux_q;

    // valid_or(LOGICAL,25)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,22)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,23)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tii_081_pop18110_mux(MUX,24)
    assign tii_081_pop18110_mux_s = in_valid_in_0;
    always @(tii_081_pop18110_mux_s or in_tii_081_pop18110_1 or in_tii_081_pop18110_0)
    begin
        unique case (tii_081_pop18110_mux_s)
            1'b0 : tii_081_pop18110_mux_q = in_tii_081_pop18110_1;
            1'b1 : tii_081_pop18110_mux_q = in_tii_081_pop18110_0;
            default : tii_081_pop18110_mux_q = 32'b0;
        endcase
    end

    // out_tii_081_pop18110(GPOUT,19)
    assign out_tii_081_pop18110 = tii_081_pop18110_mux_q;

    // out_valid_out(GPOUT,20)
    assign out_valid_out = valid_or_q;

    // weight_offset_180_replace_phi108_mux(MUX,26)
    assign weight_offset_180_replace_phi108_mux_s = in_valid_in_0;
    always @(weight_offset_180_replace_phi108_mux_s or in_weight_offset_180_replace_phi108_1 or in_weight_offset_180_replace_phi108_0)
    begin
        unique case (weight_offset_180_replace_phi108_mux_s)
            1'b0 : weight_offset_180_replace_phi108_mux_q = in_weight_offset_180_replace_phi108_1;
            1'b1 : weight_offset_180_replace_phi108_mux_q = in_weight_offset_180_replace_phi108_0;
            default : weight_offset_180_replace_phi108_mux_q = 32'b0;
        endcase
    end

    // out_weight_offset_180_replace_phi108(GPOUT,21)
    assign out_weight_offset_180_replace_phi108 = weight_offset_180_replace_phi108_mux_q;

endmodule
