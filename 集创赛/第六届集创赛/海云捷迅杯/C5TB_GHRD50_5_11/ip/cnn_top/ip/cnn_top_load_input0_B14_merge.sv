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

// SystemVerilog created from cnn_top_load_input0_B14_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input0_B14_merge (
    input wire [0:0] in_forked48_0,
    input wire [0:0] in_forked48_1,
    input wire [31:0] in_kh_071_pop21107_pop37162_0,
    input wire [31:0] in_kh_071_pop21107_pop37162_1,
    input wire [31:0] in_kh_071_pop21136_0,
    input wire [31:0] in_kh_071_pop21136_1,
    input wire [31:0] in_kw_068_pop33150_0,
    input wire [31:0] in_kw_068_pop33150_1,
    input wire [31:0] in_li_073125_0,
    input wire [31:0] in_li_073125_1,
    input wire [31:0] in_li_07398_pop22141_0,
    input wire [31:0] in_li_07398_pop22141_1,
    input wire [31:0] in_li_07399_pop34153_0,
    input wire [31:0] in_li_07399_pop34153_1,
    input wire [0:0] in_notcmp85147_0,
    input wire [0:0] in_notcmp85147_1,
    input wire [0:0] in_notcmp89104_pop36159_0,
    input wire [0:0] in_notcmp89104_pop36159_1,
    input wire [0:0] in_notcmp89131_0,
    input wire [0:0] in_notcmp89131_1,
    input wire [0:0] in_pop23146_0,
    input wire [0:0] in_pop23146_1,
    input wire [0:0] in_pop35156_0,
    input wire [0:0] in_pop35156_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_input048_0,
    input wire [0:0] in_unnamed_load_input048_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked48,
    output wire [31:0] out_kh_071_pop21107_pop37162,
    output wire [31:0] out_kh_071_pop21136,
    output wire [31:0] out_kw_068_pop33150,
    output wire [31:0] out_li_073125,
    output wire [31:0] out_li_07398_pop22141,
    output wire [31:0] out_li_07399_pop34153,
    output wire [0:0] out_notcmp85147,
    output wire [0:0] out_notcmp89104_pop36159,
    output wire [0:0] out_notcmp89131,
    output wire [0:0] out_pop23146,
    output wire [0:0] out_pop35156,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_input048,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked48_mux_s;
    reg [0:0] forked48_mux_q;
    wire [0:0] kh_071_pop21107_pop37162_mux_s;
    reg [31:0] kh_071_pop21107_pop37162_mux_q;
    wire [0:0] kh_071_pop21136_mux_s;
    reg [31:0] kh_071_pop21136_mux_q;
    wire [0:0] kw_068_pop33150_mux_s;
    reg [31:0] kw_068_pop33150_mux_q;
    wire [0:0] li_073125_mux_s;
    reg [31:0] li_073125_mux_q;
    wire [0:0] li_07398_pop22141_mux_s;
    reg [31:0] li_07398_pop22141_mux_q;
    wire [0:0] li_07399_pop34153_mux_s;
    reg [31:0] li_07399_pop34153_mux_q;
    wire [0:0] notcmp85147_mux_s;
    reg [0:0] notcmp85147_mux_q;
    wire [0:0] notcmp89104_pop36159_mux_s;
    reg [0:0] notcmp89104_pop36159_mux_q;
    wire [0:0] notcmp89131_mux_s;
    reg [0:0] notcmp89131_mux_q;
    wire [0:0] pop23146_mux_s;
    reg [0:0] pop23146_mux_q;
    wire [0:0] pop35156_mux_s;
    reg [0:0] pop35156_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_input048_mux_s;
    reg [0:0] unnamed_load_input048_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked48_mux(MUX,2)
    assign forked48_mux_s = in_valid_in_0;
    always @(forked48_mux_s or in_forked48_1 or in_forked48_0)
    begin
        unique case (forked48_mux_s)
            1'b0 : forked48_mux_q = in_forked48_1;
            1'b1 : forked48_mux_q = in_forked48_0;
            default : forked48_mux_q = 1'b0;
        endcase
    end

    // out_forked48(GPOUT,41)
    assign out_forked48 = forked48_mux_q;

    // kh_071_pop21107_pop37162_mux(MUX,32)
    assign kh_071_pop21107_pop37162_mux_s = in_valid_in_0;
    always @(kh_071_pop21107_pop37162_mux_s or in_kh_071_pop21107_pop37162_1 or in_kh_071_pop21107_pop37162_0)
    begin
        unique case (kh_071_pop21107_pop37162_mux_s)
            1'b0 : kh_071_pop21107_pop37162_mux_q = in_kh_071_pop21107_pop37162_1;
            1'b1 : kh_071_pop21107_pop37162_mux_q = in_kh_071_pop21107_pop37162_0;
            default : kh_071_pop21107_pop37162_mux_q = 32'b0;
        endcase
    end

    // out_kh_071_pop21107_pop37162(GPOUT,42)
    assign out_kh_071_pop21107_pop37162 = kh_071_pop21107_pop37162_mux_q;

    // kh_071_pop21136_mux(MUX,33)
    assign kh_071_pop21136_mux_s = in_valid_in_0;
    always @(kh_071_pop21136_mux_s or in_kh_071_pop21136_1 or in_kh_071_pop21136_0)
    begin
        unique case (kh_071_pop21136_mux_s)
            1'b0 : kh_071_pop21136_mux_q = in_kh_071_pop21136_1;
            1'b1 : kh_071_pop21136_mux_q = in_kh_071_pop21136_0;
            default : kh_071_pop21136_mux_q = 32'b0;
        endcase
    end

    // out_kh_071_pop21136(GPOUT,43)
    assign out_kh_071_pop21136 = kh_071_pop21136_mux_q;

    // kw_068_pop33150_mux(MUX,34)
    assign kw_068_pop33150_mux_s = in_valid_in_0;
    always @(kw_068_pop33150_mux_s or in_kw_068_pop33150_1 or in_kw_068_pop33150_0)
    begin
        unique case (kw_068_pop33150_mux_s)
            1'b0 : kw_068_pop33150_mux_q = in_kw_068_pop33150_1;
            1'b1 : kw_068_pop33150_mux_q = in_kw_068_pop33150_0;
            default : kw_068_pop33150_mux_q = 32'b0;
        endcase
    end

    // out_kw_068_pop33150(GPOUT,44)
    assign out_kw_068_pop33150 = kw_068_pop33150_mux_q;

    // li_073125_mux(MUX,35)
    assign li_073125_mux_s = in_valid_in_0;
    always @(li_073125_mux_s or in_li_073125_1 or in_li_073125_0)
    begin
        unique case (li_073125_mux_s)
            1'b0 : li_073125_mux_q = in_li_073125_1;
            1'b1 : li_073125_mux_q = in_li_073125_0;
            default : li_073125_mux_q = 32'b0;
        endcase
    end

    // out_li_073125(GPOUT,45)
    assign out_li_073125 = li_073125_mux_q;

    // li_07398_pop22141_mux(MUX,36)
    assign li_07398_pop22141_mux_s = in_valid_in_0;
    always @(li_07398_pop22141_mux_s or in_li_07398_pop22141_1 or in_li_07398_pop22141_0)
    begin
        unique case (li_07398_pop22141_mux_s)
            1'b0 : li_07398_pop22141_mux_q = in_li_07398_pop22141_1;
            1'b1 : li_07398_pop22141_mux_q = in_li_07398_pop22141_0;
            default : li_07398_pop22141_mux_q = 32'b0;
        endcase
    end

    // out_li_07398_pop22141(GPOUT,46)
    assign out_li_07398_pop22141 = li_07398_pop22141_mux_q;

    // li_07399_pop34153_mux(MUX,37)
    assign li_07399_pop34153_mux_s = in_valid_in_0;
    always @(li_07399_pop34153_mux_s or in_li_07399_pop34153_1 or in_li_07399_pop34153_0)
    begin
        unique case (li_07399_pop34153_mux_s)
            1'b0 : li_07399_pop34153_mux_q = in_li_07399_pop34153_1;
            1'b1 : li_07399_pop34153_mux_q = in_li_07399_pop34153_0;
            default : li_07399_pop34153_mux_q = 32'b0;
        endcase
    end

    // out_li_07399_pop34153(GPOUT,47)
    assign out_li_07399_pop34153 = li_07399_pop34153_mux_q;

    // notcmp85147_mux(MUX,38)
    assign notcmp85147_mux_s = in_valid_in_0;
    always @(notcmp85147_mux_s or in_notcmp85147_1 or in_notcmp85147_0)
    begin
        unique case (notcmp85147_mux_s)
            1'b0 : notcmp85147_mux_q = in_notcmp85147_1;
            1'b1 : notcmp85147_mux_q = in_notcmp85147_0;
            default : notcmp85147_mux_q = 1'b0;
        endcase
    end

    // out_notcmp85147(GPOUT,48)
    assign out_notcmp85147 = notcmp85147_mux_q;

    // notcmp89104_pop36159_mux(MUX,39)
    assign notcmp89104_pop36159_mux_s = in_valid_in_0;
    always @(notcmp89104_pop36159_mux_s or in_notcmp89104_pop36159_1 or in_notcmp89104_pop36159_0)
    begin
        unique case (notcmp89104_pop36159_mux_s)
            1'b0 : notcmp89104_pop36159_mux_q = in_notcmp89104_pop36159_1;
            1'b1 : notcmp89104_pop36159_mux_q = in_notcmp89104_pop36159_0;
            default : notcmp89104_pop36159_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89104_pop36159(GPOUT,49)
    assign out_notcmp89104_pop36159 = notcmp89104_pop36159_mux_q;

    // notcmp89131_mux(MUX,40)
    assign notcmp89131_mux_s = in_valid_in_0;
    always @(notcmp89131_mux_s or in_notcmp89131_1 or in_notcmp89131_0)
    begin
        unique case (notcmp89131_mux_s)
            1'b0 : notcmp89131_mux_q = in_notcmp89131_1;
            1'b1 : notcmp89131_mux_q = in_notcmp89131_0;
            default : notcmp89131_mux_q = 1'b0;
        endcase
    end

    // out_notcmp89131(GPOUT,50)
    assign out_notcmp89131 = notcmp89131_mux_q;

    // pop23146_mux(MUX,57)
    assign pop23146_mux_s = in_valid_in_0;
    always @(pop23146_mux_s or in_pop23146_1 or in_pop23146_0)
    begin
        unique case (pop23146_mux_s)
            1'b0 : pop23146_mux_q = in_pop23146_1;
            1'b1 : pop23146_mux_q = in_pop23146_0;
            default : pop23146_mux_q = 1'b0;
        endcase
    end

    // out_pop23146(GPOUT,51)
    assign out_pop23146 = pop23146_mux_q;

    // pop35156_mux(MUX,58)
    assign pop35156_mux_s = in_valid_in_0;
    always @(pop35156_mux_s or in_pop35156_1 or in_pop35156_0)
    begin
        unique case (pop35156_mux_s)
            1'b0 : pop35156_mux_q = in_pop35156_1;
            1'b1 : pop35156_mux_q = in_pop35156_0;
            default : pop35156_mux_q = 1'b0;
        endcase
    end

    // out_pop35156(GPOUT,52)
    assign out_pop35156 = pop35156_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,59)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,53)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,60)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,54)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_input048_mux(MUX,61)
    assign unnamed_load_input048_mux_s = in_valid_in_0;
    always @(unnamed_load_input048_mux_s or in_unnamed_load_input048_1 or in_unnamed_load_input048_0)
    begin
        unique case (unnamed_load_input048_mux_s)
            1'b0 : unnamed_load_input048_mux_q = in_unnamed_load_input048_1;
            1'b1 : unnamed_load_input048_mux_q = in_unnamed_load_input048_0;
            default : unnamed_load_input048_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_input048(GPOUT,55)
    assign out_unnamed_load_input048 = unnamed_load_input048_mux_q;

    // out_valid_out(GPOUT,56)
    assign out_valid_out = valid_or_q;

endmodule
