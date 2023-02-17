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

// SystemVerilog created from cnn_top_load_input1_B16_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input1_B16_merge (
    input wire [31:0] in_add78166_0,
    input wire [31:0] in_add78166_1,
    input wire [0:0] in_forked65_0,
    input wire [0:0] in_forked65_1,
    input wire [31:0] in_kh_080_pop21107_pop37164_0,
    input wire [31:0] in_kh_080_pop21107_pop37164_1,
    input wire [31:0] in_kh_080_pop21108_pop43171_0,
    input wire [31:0] in_kh_080_pop21108_pop43171_1,
    input wire [31:0] in_kh_080_pop21135_0,
    input wire [31:0] in_kh_080_pop21135_1,
    input wire [31:0] in_kw_077_pop33112_pop45165_0,
    input wire [31:0] in_kw_077_pop33112_pop45165_1,
    input wire [31:0] in_kw_077_pop33152_0,
    input wire [31:0] in_kw_077_pop33152_1,
    input wire [31:0] in_li_082100_pop40168_0,
    input wire [31:0] in_li_082100_pop40168_1,
    input wire [31:0] in_li_082124_0,
    input wire [31:0] in_li_082124_1,
    input wire [31:0] in_li_08298_pop22140_0,
    input wire [31:0] in_li_08298_pop22140_1,
    input wire [31:0] in_li_08299_pop34155_0,
    input wire [31:0] in_li_08299_pop34155_1,
    input wire [0:0] in_notcmp81167_0,
    input wire [0:0] in_notcmp81167_1,
    input wire [0:0] in_notcmp85110_pop44172_0,
    input wire [0:0] in_notcmp85110_pop44172_1,
    input wire [0:0] in_notcmp85149_0,
    input wire [0:0] in_notcmp85149_1,
    input wire [0:0] in_notcmp89104_pop36161_0,
    input wire [0:0] in_notcmp89104_pop36161_1,
    input wire [0:0] in_notcmp89105_pop42170_0,
    input wire [0:0] in_notcmp89105_pop42170_1,
    input wire [0:0] in_notcmp89130_0,
    input wire [0:0] in_notcmp89130_1,
    input wire [0:0] in_pop23145_0,
    input wire [0:0] in_pop23145_1,
    input wire [0:0] in_pop35158_0,
    input wire [0:0] in_pop35158_1,
    input wire [0:0] in_pop41169_0,
    input wire [0:0] in_pop41169_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_input151_0,
    input wire [0:0] in_unnamed_load_input151_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add78166,
    output wire [0:0] out_forked65,
    output wire [31:0] out_kh_080_pop21107_pop37164,
    output wire [31:0] out_kh_080_pop21108_pop43171,
    output wire [31:0] out_kh_080_pop21135,
    output wire [31:0] out_kw_077_pop33112_pop45165,
    output wire [31:0] out_kw_077_pop33152,
    output wire [31:0] out_li_082100_pop40168,
    output wire [31:0] out_li_082124,
    output wire [31:0] out_li_08298_pop22140,
    output wire [31:0] out_li_08299_pop34155,
    output wire [0:0] out_notcmp81167,
    output wire [0:0] out_notcmp85110_pop44172,
    output wire [0:0] out_notcmp85149,
    output wire [0:0] out_notcmp89104_pop36161,
    output wire [0:0] out_notcmp89105_pop42170,
    output wire [0:0] out_notcmp89130,
    output wire [0:0] out_pop23145,
    output wire [0:0] out_pop35158,
    output wire [0:0] out_pop41169,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_input151,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add78166_mux_s;
    reg [31:0] add78166_mux_q;
    wire [0:0] forked65_mux_s;
    reg [0:0] forked65_mux_q;
    wire [0:0] kh_080_pop21107_pop37164_mux_s;
    reg [31:0] kh_080_pop21107_pop37164_mux_q;
    wire [0:0] kh_080_pop21108_pop43171_mux_s;
    reg [31:0] kh_080_pop21108_pop43171_mux_q;
    wire [0:0] kh_080_pop21135_mux_s;
    reg [31:0] kh_080_pop21135_mux_q;
    wire [0:0] kw_077_pop33112_pop45165_mux_s;
    reg [31:0] kw_077_pop33112_pop45165_mux_q;
    wire [0:0] kw_077_pop33152_mux_s;
    reg [31:0] kw_077_pop33152_mux_q;
    wire [0:0] li_082100_pop40168_mux_s;
    reg [31:0] li_082100_pop40168_mux_q;
    wire [0:0] li_082124_mux_s;
    reg [31:0] li_082124_mux_q;
    wire [0:0] li_08298_pop22140_mux_s;
    reg [31:0] li_08298_pop22140_mux_q;
    wire [0:0] li_08299_pop34155_mux_s;
    reg [31:0] li_08299_pop34155_mux_q;
    wire [0:0] notcmp81167_mux_s;
    reg [0:0] notcmp81167_mux_q;
    wire [0:0] notcmp85110_pop44172_mux_s;
    reg [0:0] notcmp85110_pop44172_mux_q;
    wire [0:0] notcmp85149_mux_s;
    reg [0:0] notcmp85149_mux_q;
    wire [0:0] notcmp89104_pop36161_mux_s;
    reg [0:0] notcmp89104_pop36161_mux_q;
    wire [0:0] notcmp89105_pop42170_mux_s;
    reg [0:0] notcmp89105_pop42170_mux_q;
    wire [0:0] notcmp89130_mux_s;
    reg [0:0] notcmp89130_mux_q;
    wire [0:0] pop23145_mux_s;
    reg [0:0] pop23145_mux_q;
    wire [0:0] pop35158_mux_s;
    reg [0:0] pop35158_mux_q;
    wire [0:0] pop41169_mux_s;
    reg [0:0] pop41169_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_input151_mux_s;
    reg [0:0] unnamed_load_input151_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add78166_mux(MUX,2)
    assign add78166_mux_s = in_valid_in_0;
    always @(add78166_mux_s or in_add78166_1 or in_add78166_0)
    begin
        unique case (add78166_mux_s)
            1'b0 : add78166_mux_q = in_add78166_1;
            1'b1 : add78166_mux_q = in_add78166_0;
            default : add78166_mux_q = 32'b0;
        endcase
    end

    // out_add78166(GPOUT,64)
    assign out_add78166 = add78166_mux_q;

    // forked65_mux(MUX,3)
    assign forked65_mux_s = in_valid_in_0;
    always @(forked65_mux_s or in_forked65_1 or in_forked65_0)
    begin
        unique case (forked65_mux_s)
            1'b0 : forked65_mux_q = in_forked65_1;
            1'b1 : forked65_mux_q = in_forked65_0;
            default : forked65_mux_q = 1'b0;
        endcase
    end

    // out_forked65(GPOUT,65)
    assign out_forked65 = forked65_mux_q;

    // kh_080_pop21107_pop37164_mux(MUX,49)
    assign kh_080_pop21107_pop37164_mux_s = in_valid_in_0;
    always @(kh_080_pop21107_pop37164_mux_s or in_kh_080_pop21107_pop37164_1 or in_kh_080_pop21107_pop37164_0)
    begin
        unique case (kh_080_pop21107_pop37164_mux_s)
            1'b0 : kh_080_pop21107_pop37164_mux_q = in_kh_080_pop21107_pop37164_1;
            1'b1 : kh_080_pop21107_pop37164_mux_q = in_kh_080_pop21107_pop37164_0;
            default : kh_080_pop21107_pop37164_mux_q = 32'b0;
        endcase
    end

    // out_kh_080_pop21107_pop37164(GPOUT,66)
    assign out_kh_080_pop21107_pop37164 = kh_080_pop21107_pop37164_mux_q;

    // kh_080_pop21108_pop43171_mux(MUX,50)
    assign kh_080_pop21108_pop43171_mux_s = in_valid_in_0;
    always @(kh_080_pop21108_pop43171_mux_s or in_kh_080_pop21108_pop43171_1 or in_kh_080_pop21108_pop43171_0)
    begin
        unique case (kh_080_pop21108_pop43171_mux_s)
            1'b0 : kh_080_pop21108_pop43171_mux_q = in_kh_080_pop21108_pop43171_1;
            1'b1 : kh_080_pop21108_pop43171_mux_q = in_kh_080_pop21108_pop43171_0;
            default : kh_080_pop21108_pop43171_mux_q = 32'b0;
        endcase
    end

    // out_kh_080_pop21108_pop43171(GPOUT,67)
    assign out_kh_080_pop21108_pop43171 = kh_080_pop21108_pop43171_mux_q;

    // kh_080_pop21135_mux(MUX,51)
    assign kh_080_pop21135_mux_s = in_valid_in_0;
    always @(kh_080_pop21135_mux_s or in_kh_080_pop21135_1 or in_kh_080_pop21135_0)
    begin
        unique case (kh_080_pop21135_mux_s)
            1'b0 : kh_080_pop21135_mux_q = in_kh_080_pop21135_1;
            1'b1 : kh_080_pop21135_mux_q = in_kh_080_pop21135_0;
            default : kh_080_pop21135_mux_q = 32'b0;
        endcase
    end

    // out_kh_080_pop21135(GPOUT,68)
    assign out_kh_080_pop21135 = kh_080_pop21135_mux_q;

    // kw_077_pop33112_pop45165_mux(MUX,52)
    assign kw_077_pop33112_pop45165_mux_s = in_valid_in_0;
    always @(kw_077_pop33112_pop45165_mux_s or in_kw_077_pop33112_pop45165_1 or in_kw_077_pop33112_pop45165_0)
    begin
        unique case (kw_077_pop33112_pop45165_mux_s)
            1'b0 : kw_077_pop33112_pop45165_mux_q = in_kw_077_pop33112_pop45165_1;
            1'b1 : kw_077_pop33112_pop45165_mux_q = in_kw_077_pop33112_pop45165_0;
            default : kw_077_pop33112_pop45165_mux_q = 32'b0;
        endcase
    end

    // out_kw_077_pop33112_pop45165(GPOUT,69)
    assign out_kw_077_pop33112_pop45165 = kw_077_pop33112_pop45165_mux_q;

    // kw_077_pop33152_mux(MUX,53)
    assign kw_077_pop33152_mux_s = in_valid_in_0;
    always @(kw_077_pop33152_mux_s or in_kw_077_pop33152_1 or in_kw_077_pop33152_0)
    begin
        unique case (kw_077_pop33152_mux_s)
            1'b0 : kw_077_pop33152_mux_q = in_kw_077_pop33152_1;
            1'b1 : kw_077_pop33152_mux_q = in_kw_077_pop33152_0;
            default : kw_077_pop33152_mux_q = 32'b0;
        endcase
    end

    // out_kw_077_pop33152(GPOUT,70)
    assign out_kw_077_pop33152 = kw_077_pop33152_mux_q;

    // li_082100_pop40168_mux(MUX,54)
    assign li_082100_pop40168_mux_s = in_valid_in_0;
    always @(li_082100_pop40168_mux_s or in_li_082100_pop40168_1 or in_li_082100_pop40168_0)
    begin
        unique case (li_082100_pop40168_mux_s)
            1'b0 : li_082100_pop40168_mux_q = in_li_082100_pop40168_1;
            1'b1 : li_082100_pop40168_mux_q = in_li_082100_pop40168_0;
            default : li_082100_pop40168_mux_q = 32'b0;
        endcase
    end

    // out_li_082100_pop40168(GPOUT,71)
    assign out_li_082100_pop40168 = li_082100_pop40168_mux_q;

    // li_082124_mux(MUX,55)
    assign li_082124_mux_s = in_valid_in_0;
    always @(li_082124_mux_s or in_li_082124_1 or in_li_082124_0)
    begin
        unique case (li_082124_mux_s)
            1'b0 : li_082124_mux_q = in_li_082124_1;
            1'b1 : li_082124_mux_q = in_li_082124_0;
            default : li_082124_mux_q = 32'b0;
        endcase
    end

    // out_li_082124(GPOUT,72)
    assign out_li_082124 = li_082124_mux_q;

    // li_08298_pop22140_mux(MUX,56)
    assign li_08298_pop22140_mux_s = in_valid_in_0;
    always @(li_08298_pop22140_mux_s or in_li_08298_pop22140_1 or in_li_08298_pop22140_0)
    begin
        unique case (li_08298_pop22140_mux_s)
            1'b0 : li_08298_pop22140_mux_q = in_li_08298_pop22140_1;
            1'b1 : li_08298_pop22140_mux_q = in_li_08298_pop22140_0;
            default : li_08298_pop22140_mux_q = 32'b0;
        endcase
    end

    // out_li_08298_pop22140(GPOUT,73)
    assign out_li_08298_pop22140 = li_08298_pop22140_mux_q;

    // li_08299_pop34155_mux(MUX,57)
    assign li_08299_pop34155_mux_s = in_valid_in_0;
    always @(li_08299_pop34155_mux_s or in_li_08299_pop34155_1 or in_li_08299_pop34155_0)
    begin
        unique case (li_08299_pop34155_mux_s)
            1'b0 : li_08299_pop34155_mux_q = in_li_08299_pop34155_1;
            1'b1 : li_08299_pop34155_mux_q = in_li_08299_pop34155_0;
            default : li_08299_pop34155_mux_q = 32'b0;
        endcase
    end

    // out_li_08299_pop34155(GPOUT,74)
    assign out_li_08299_pop34155 = li_08299_pop34155_mux_q;

    // notcmp81167_mux(MUX,58)
    assign notcmp81167_mux_s = in_valid_in_0;
    always @(notcmp81167_mux_s or in_notcmp81167_1 or in_notcmp81167_0)
    begin
        unique case (notcmp81167_mux_s)
            1'b0 : notcmp81167_mux_q = in_notcmp81167_1;
            1'b1 : notcmp81167_mux_q = in_notcmp81167_0;
            default : notcmp81167_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81167(GPOUT,75)
    assign out_notcmp81167 = notcmp81167_mux_q;

    // notcmp85110_pop44172_mux(MUX,59)
    assign notcmp85110_pop44172_mux_s = in_valid_in_0;
    always @(notcmp85110_pop44172_mux_s or in_notcmp85110_pop44172_1 or in_notcmp85110_pop44172_0)
    begin
        unique case (notcmp85110_pop44172_mux_s)
            1'b0 : notcmp85110_pop44172_mux_q = in_notcmp85110_pop44172_1;
            1'b1 : notcmp85110_pop44172_mux_q = in_notcmp85110_pop44172_0;
            default : notcmp85110_pop44172_mux_q = 1'b0;
        endcase
    end

    // out_notcmp85110_pop44172(GPOUT,76)
    assign out_notcmp85110_pop44172 = notcmp85110_pop44172_mux_q;

    // notcmp85149_mux(MUX,60)
    assign notcmp85149_mux_s = in_valid_in_0;
    always @(notcmp85149_mux_s or in_notcmp85149_1 or in_notcmp85149_0)
    begin
        unique case (notcmp85149_mux_s)
            1'b0 : notcmp85149_mux_q = in_notcmp85149_1;
            1'b1 : notcmp85149_mux_q = in_notcmp85149_0;
            default : notcmp85149_mux_q = 1'b0;
        endcase
    end

    // out_notcmp85149(GPOUT,77)
    assign out_notcmp85149 = notcmp85149_mux_q;

    // notcmp89104_pop36161_mux(MUX,61)
    assign notcmp89104_pop36161_mux_s = in_valid_in_0;
    always @(notcmp89104_pop36161_mux_s or in_notcmp89104_pop36161_1 or in_notcmp89104_pop36161_0)
    begin
        unique case (notcmp89104_pop36161_mux_s)
            1'b0 : notcmp89104_pop36161_mux_q = in_notcmp89104_pop36161_1;
            1'b1 : notcmp89104_pop36161_mux_q = in_notcmp89104_pop36161_0;
            default : notcmp89104_pop36161_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89104_pop36161(GPOUT,78)
    assign out_notcmp89104_pop36161 = notcmp89104_pop36161_mux_q;

    // notcmp89105_pop42170_mux(MUX,62)
    assign notcmp89105_pop42170_mux_s = in_valid_in_0;
    always @(notcmp89105_pop42170_mux_s or in_notcmp89105_pop42170_1 or in_notcmp89105_pop42170_0)
    begin
        unique case (notcmp89105_pop42170_mux_s)
            1'b0 : notcmp89105_pop42170_mux_q = in_notcmp89105_pop42170_1;
            1'b1 : notcmp89105_pop42170_mux_q = in_notcmp89105_pop42170_0;
            default : notcmp89105_pop42170_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89105_pop42170(GPOUT,79)
    assign out_notcmp89105_pop42170 = notcmp89105_pop42170_mux_q;

    // notcmp89130_mux(MUX,63)
    assign notcmp89130_mux_s = in_valid_in_0;
    always @(notcmp89130_mux_s or in_notcmp89130_1 or in_notcmp89130_0)
    begin
        unique case (notcmp89130_mux_s)
            1'b0 : notcmp89130_mux_q = in_notcmp89130_1;
            1'b1 : notcmp89130_mux_q = in_notcmp89130_0;
            default : notcmp89130_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89130(GPOUT,80)
    assign out_notcmp89130 = notcmp89130_mux_q;

    // pop23145_mux(MUX,88)
    assign pop23145_mux_s = in_valid_in_0;
    always @(pop23145_mux_s or in_pop23145_1 or in_pop23145_0)
    begin
        unique case (pop23145_mux_s)
            1'b0 : pop23145_mux_q = in_pop23145_1;
            1'b1 : pop23145_mux_q = in_pop23145_0;
            default : pop23145_mux_q = 1'b0;
        endcase
    end

    // out_pop23145(GPOUT,81)
    assign out_pop23145 = pop23145_mux_q;

    // pop35158_mux(MUX,89)
    assign pop35158_mux_s = in_valid_in_0;
    always @(pop35158_mux_s or in_pop35158_1 or in_pop35158_0)
    begin
        unique case (pop35158_mux_s)
            1'b0 : pop35158_mux_q = in_pop35158_1;
            1'b1 : pop35158_mux_q = in_pop35158_0;
            default : pop35158_mux_q = 1'b0;
        endcase
    end

    // out_pop35158(GPOUT,82)
    assign out_pop35158 = pop35158_mux_q;

    // pop41169_mux(MUX,90)
    assign pop41169_mux_s = in_valid_in_0;
    always @(pop41169_mux_s or in_pop41169_1 or in_pop41169_0)
    begin
        unique case (pop41169_mux_s)
            1'b0 : pop41169_mux_q = in_pop41169_1;
            1'b1 : pop41169_mux_q = in_pop41169_0;
            default : pop41169_mux_q = 1'b0;
        endcase
    end

    // out_pop41169(GPOUT,83)
    assign out_pop41169 = pop41169_mux_q;

    // valid_or(LOGICAL,94)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,91)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,84)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,92)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,85)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_input151_mux(MUX,93)
    assign unnamed_load_input151_mux_s = in_valid_in_0;
    always @(unnamed_load_input151_mux_s or in_unnamed_load_input151_1 or in_unnamed_load_input151_0)
    begin
        unique case (unnamed_load_input151_mux_s)
            1'b0 : unnamed_load_input151_mux_q = in_unnamed_load_input151_1;
            1'b1 : unnamed_load_input151_mux_q = in_unnamed_load_input151_0;
            default : unnamed_load_input151_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_input151(GPOUT,86)
    assign out_unnamed_load_input151 = unnamed_load_input151_mux_q;

    // out_valid_out(GPOUT,87)
    assign out_valid_out = valid_or_q;

endmodule
