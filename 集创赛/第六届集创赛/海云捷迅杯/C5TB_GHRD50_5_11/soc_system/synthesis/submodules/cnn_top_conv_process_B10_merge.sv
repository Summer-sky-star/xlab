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

// SystemVerilog created from cnn_top_conv_process_B10_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B10_merge (
    input wire [0:0] in_forked114_0,
    input wire [0:0] in_forked114_1,
    input wire [0:0] in_notcmp169597_0,
    input wire [0:0] in_notcmp169597_1,
    input wire [31:0] in_offset_0_i475_replace_phi594_0,
    input wire [31:0] in_offset_0_i475_replace_phi594_1,
    input wire [31:0] in_r_0_i106476_pop65600_0,
    input wire [31:0] in_r_0_i106476_pop65600_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv_process90_0,
    input wire [0:0] in_unnamed_conv_process90_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked114,
    output wire [0:0] out_notcmp169597,
    output wire [31:0] out_offset_0_i475_replace_phi594,
    output wire [31:0] out_r_0_i106476_pop65600,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv_process90,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked114_mux_s;
    reg [0:0] forked114_mux_q;
    wire [0:0] notcmp169597_mux_s;
    reg [0:0] notcmp169597_mux_q;
    wire [0:0] offset_0_i475_replace_phi594_mux_s;
    reg [31:0] offset_0_i475_replace_phi594_mux_q;
    wire [0:0] r_0_i106476_pop65600_mux_s;
    reg [31:0] r_0_i106476_pop65600_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv_process90_mux_s;
    reg [0:0] unnamed_conv_process90_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked114_mux(MUX,2)
    assign forked114_mux_s = in_valid_in_0;
    always @(forked114_mux_s or in_forked114_1 or in_forked114_0)
    begin
        unique case (forked114_mux_s)
            1'b0 : forked114_mux_q = in_forked114_1;
            1'b1 : forked114_mux_q = in_forked114_0;
            default : forked114_mux_q = 1'b0;
        endcase
    end

    // out_forked114(GPOUT,18)
    assign out_forked114 = forked114_mux_q;

    // notcmp169597_mux(MUX,16)
    assign notcmp169597_mux_s = in_valid_in_0;
    always @(notcmp169597_mux_s or in_notcmp169597_1 or in_notcmp169597_0)
    begin
        unique case (notcmp169597_mux_s)
            1'b0 : notcmp169597_mux_q = in_notcmp169597_1;
            1'b1 : notcmp169597_mux_q = in_notcmp169597_0;
            default : notcmp169597_mux_q = 1'b0;
        endcase
    end

    // out_notcmp169597(GPOUT,19)
    assign out_notcmp169597 = notcmp169597_mux_q;

    // offset_0_i475_replace_phi594_mux(MUX,17)
    assign offset_0_i475_replace_phi594_mux_s = in_valid_in_0;
    always @(offset_0_i475_replace_phi594_mux_s or in_offset_0_i475_replace_phi594_1 or in_offset_0_i475_replace_phi594_0)
    begin
        unique case (offset_0_i475_replace_phi594_mux_s)
            1'b0 : offset_0_i475_replace_phi594_mux_q = in_offset_0_i475_replace_phi594_1;
            1'b1 : offset_0_i475_replace_phi594_mux_q = in_offset_0_i475_replace_phi594_0;
            default : offset_0_i475_replace_phi594_mux_q = 32'b0;
        endcase
    end

    // out_offset_0_i475_replace_phi594(GPOUT,20)
    assign out_offset_0_i475_replace_phi594 = offset_0_i475_replace_phi594_mux_q;

    // r_0_i106476_pop65600_mux(MUX,26)
    assign r_0_i106476_pop65600_mux_s = in_valid_in_0;
    always @(r_0_i106476_pop65600_mux_s or in_r_0_i106476_pop65600_1 or in_r_0_i106476_pop65600_0)
    begin
        unique case (r_0_i106476_pop65600_mux_s)
            1'b0 : r_0_i106476_pop65600_mux_q = in_r_0_i106476_pop65600_1;
            1'b1 : r_0_i106476_pop65600_mux_q = in_r_0_i106476_pop65600_0;
            default : r_0_i106476_pop65600_mux_q = 32'b0;
        endcase
    end

    // out_r_0_i106476_pop65600(GPOUT,21)
    assign out_r_0_i106476_pop65600 = r_0_i106476_pop65600_mux_q;

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

    // unnamed_conv_process90_mux(MUX,29)
    assign unnamed_conv_process90_mux_s = in_valid_in_0;
    always @(unnamed_conv_process90_mux_s or in_unnamed_conv_process90_1 or in_unnamed_conv_process90_0)
    begin
        unique case (unnamed_conv_process90_mux_s)
            1'b0 : unnamed_conv_process90_mux_q = in_unnamed_conv_process90_1;
            1'b1 : unnamed_conv_process90_mux_q = in_unnamed_conv_process90_0;
            default : unnamed_conv_process90_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv_process90(GPOUT,24)
    assign out_unnamed_conv_process90 = unnamed_conv_process90_mux_q;

    // out_valid_out(GPOUT,25)
    assign out_valid_out = valid_or_q;

endmodule
