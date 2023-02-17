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

// SystemVerilog created from cnn_top_load_input1_B12_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input1_B12_merge (
    input wire [0:0] in_forked50_0,
    input wire [0:0] in_forked50_1,
    input wire [31:0] in_kh_080_pop21132_0,
    input wire [31:0] in_kh_080_pop21132_1,
    input wire [31:0] in_li_082126_0,
    input wire [31:0] in_li_082126_1,
    input wire [31:0] in_li_08298_pop22137_0,
    input wire [31:0] in_li_08298_pop22137_1,
    input wire [0:0] in_notcmp89127_0,
    input wire [0:0] in_notcmp89127_1,
    input wire [0:0] in_pop23142_0,
    input wire [0:0] in_pop23142_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_input145_0,
    input wire [0:0] in_unnamed_load_input145_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked50,
    output wire [31:0] out_kh_080_pop21132,
    output wire [31:0] out_li_082126,
    output wire [31:0] out_li_08298_pop22137,
    output wire [0:0] out_notcmp89127,
    output wire [0:0] out_pop23142,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_input145,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked50_mux_s;
    reg [0:0] forked50_mux_q;
    wire [0:0] kh_080_pop21132_mux_s;
    reg [31:0] kh_080_pop21132_mux_q;
    wire [0:0] li_082126_mux_s;
    reg [31:0] li_082126_mux_q;
    wire [0:0] li_08298_pop22137_mux_s;
    reg [31:0] li_08298_pop22137_mux_q;
    wire [0:0] notcmp89127_mux_s;
    reg [0:0] notcmp89127_mux_q;
    wire [0:0] pop23142_mux_s;
    reg [0:0] pop23142_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_input145_mux_s;
    reg [0:0] unnamed_load_input145_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked50_mux(MUX,2)
    assign forked50_mux_s = in_valid_in_0;
    always @(forked50_mux_s or in_forked50_1 or in_forked50_0)
    begin
        unique case (forked50_mux_s)
            1'b0 : forked50_mux_q = in_forked50_1;
            1'b1 : forked50_mux_q = in_forked50_0;
            default : forked50_mux_q = 1'b0;
        endcase
    end

    // out_forked50(GPOUT,24)
    assign out_forked50 = forked50_mux_q;

    // kh_080_pop21132_mux(MUX,20)
    assign kh_080_pop21132_mux_s = in_valid_in_0;
    always @(kh_080_pop21132_mux_s or in_kh_080_pop21132_1 or in_kh_080_pop21132_0)
    begin
        unique case (kh_080_pop21132_mux_s)
            1'b0 : kh_080_pop21132_mux_q = in_kh_080_pop21132_1;
            1'b1 : kh_080_pop21132_mux_q = in_kh_080_pop21132_0;
            default : kh_080_pop21132_mux_q = 32'b0;
        endcase
    end

    // out_kh_080_pop21132(GPOUT,25)
    assign out_kh_080_pop21132 = kh_080_pop21132_mux_q;

    // li_082126_mux(MUX,21)
    assign li_082126_mux_s = in_valid_in_0;
    always @(li_082126_mux_s or in_li_082126_1 or in_li_082126_0)
    begin
        unique case (li_082126_mux_s)
            1'b0 : li_082126_mux_q = in_li_082126_1;
            1'b1 : li_082126_mux_q = in_li_082126_0;
            default : li_082126_mux_q = 32'b0;
        endcase
    end

    // out_li_082126(GPOUT,26)
    assign out_li_082126 = li_082126_mux_q;

    // li_08298_pop22137_mux(MUX,22)
    assign li_08298_pop22137_mux_s = in_valid_in_0;
    always @(li_08298_pop22137_mux_s or in_li_08298_pop22137_1 or in_li_08298_pop22137_0)
    begin
        unique case (li_08298_pop22137_mux_s)
            1'b0 : li_08298_pop22137_mux_q = in_li_08298_pop22137_1;
            1'b1 : li_08298_pop22137_mux_q = in_li_08298_pop22137_0;
            default : li_08298_pop22137_mux_q = 32'b0;
        endcase
    end

    // out_li_08298_pop22137(GPOUT,27)
    assign out_li_08298_pop22137 = li_08298_pop22137_mux_q;

    // notcmp89127_mux(MUX,23)
    assign notcmp89127_mux_s = in_valid_in_0;
    always @(notcmp89127_mux_s or in_notcmp89127_1 or in_notcmp89127_0)
    begin
        unique case (notcmp89127_mux_s)
            1'b0 : notcmp89127_mux_q = in_notcmp89127_1;
            1'b1 : notcmp89127_mux_q = in_notcmp89127_0;
            default : notcmp89127_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89127(GPOUT,28)
    assign out_notcmp89127 = notcmp89127_mux_q;

    // pop23142_mux(MUX,34)
    assign pop23142_mux_s = in_valid_in_0;
    always @(pop23142_mux_s or in_pop23142_1 or in_pop23142_0)
    begin
        unique case (pop23142_mux_s)
            1'b0 : pop23142_mux_q = in_pop23142_1;
            1'b1 : pop23142_mux_q = in_pop23142_0;
            default : pop23142_mux_q = 1'b0;
        endcase
    end

    // out_pop23142(GPOUT,29)
    assign out_pop23142 = pop23142_mux_q;

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

    // unnamed_load_input145_mux(MUX,37)
    assign unnamed_load_input145_mux_s = in_valid_in_0;
    always @(unnamed_load_input145_mux_s or in_unnamed_load_input145_1 or in_unnamed_load_input145_0)
    begin
        unique case (unnamed_load_input145_mux_s)
            1'b0 : unnamed_load_input145_mux_q = in_unnamed_load_input145_1;
            1'b1 : unnamed_load_input145_mux_q = in_unnamed_load_input145_0;
            default : unnamed_load_input145_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_input145(GPOUT,32)
    assign out_unnamed_load_input145 = unnamed_load_input145_mux_q;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = valid_or_q;

endmodule
