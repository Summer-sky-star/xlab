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

// SystemVerilog created from cnn_top_load_weight1_B14_merge
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight1_B14_merge (
    input wire [31:0] in_add79142_0,
    input wire [31:0] in_add79142_1,
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [31:0] in_li_075117_0,
    input wire [31:0] in_li_075117_1,
    input wire [31:0] in_li_07591_pop22133_0,
    input wire [31:0] in_li_07591_pop22133_1,
    input wire [31:0] in_li_07592_pop33148_0,
    input wire [31:0] in_li_07592_pop33148_1,
    input wire [31:0] in_mul78123_0,
    input wire [31:0] in_mul78123_1,
    input wire [31:0] in_mul7897_pop35139_0,
    input wire [31:0] in_mul7897_pop35139_1,
    input wire [0:0] in_notcmp78145_0,
    input wire [0:0] in_notcmp78145_1,
    input wire [0:0] in_notcmp82100_pop36154_0,
    input wire [0:0] in_notcmp82100_pop36154_1,
    input wire [0:0] in_notcmp82128_0,
    input wire [0:0] in_notcmp82128_1,
    input wire [0:0] in_pop23138_0,
    input wire [0:0] in_pop23138_1,
    input wire [0:0] in_pop34151_0,
    input wire [0:0] in_pop34151_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_weight144_0,
    input wire [0:0] in_unnamed_load_weight144_1,
    input wire [0:0] in_unnamed_load_weight145_0,
    input wire [0:0] in_unnamed_load_weight145_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add79142,
    output wire [0:0] out_forked43,
    output wire [31:0] out_li_075117,
    output wire [31:0] out_li_07591_pop22133,
    output wire [31:0] out_li_07592_pop33148,
    output wire [31:0] out_mul78123,
    output wire [31:0] out_mul7897_pop35139,
    output wire [0:0] out_notcmp78145,
    output wire [0:0] out_notcmp82100_pop36154,
    output wire [0:0] out_notcmp82128,
    output wire [0:0] out_pop23138,
    output wire [0:0] out_pop34151,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_weight144,
    output wire [0:0] out_unnamed_load_weight145,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add79142_mux_s;
    reg [31:0] add79142_mux_q;
    wire [0:0] forked43_mux_s;
    reg [0:0] forked43_mux_q;
    wire [0:0] li_075117_mux_s;
    reg [31:0] li_075117_mux_q;
    wire [0:0] li_07591_pop22133_mux_s;
    reg [31:0] li_07591_pop22133_mux_q;
    wire [0:0] li_07592_pop33148_mux_s;
    reg [31:0] li_07592_pop33148_mux_q;
    wire [0:0] mul78123_mux_s;
    reg [31:0] mul78123_mux_q;
    wire [0:0] mul7897_pop35139_mux_s;
    reg [31:0] mul7897_pop35139_mux_q;
    wire [0:0] notcmp78145_mux_s;
    reg [0:0] notcmp78145_mux_q;
    wire [0:0] notcmp82100_pop36154_mux_s;
    reg [0:0] notcmp82100_pop36154_mux_q;
    wire [0:0] notcmp82128_mux_s;
    reg [0:0] notcmp82128_mux_q;
    wire [0:0] pop23138_mux_s;
    reg [0:0] pop23138_mux_q;
    wire [0:0] pop34151_mux_s;
    reg [0:0] pop34151_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_weight144_mux_s;
    reg [0:0] unnamed_load_weight144_mux_q;
    wire [0:0] unnamed_load_weight145_mux_s;
    reg [0:0] unnamed_load_weight145_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add79142_mux(MUX,2)
    assign add79142_mux_s = in_valid_in_0;
    always @(add79142_mux_s or in_add79142_1 or in_add79142_0)
    begin
        unique case (add79142_mux_s)
            1'b0 : add79142_mux_q = in_add79142_1;
            1'b1 : add79142_mux_q = in_add79142_0;
            default : add79142_mux_q = 32'b0;
        endcase
    end

    // out_add79142(GPOUT,43)
    assign out_add79142 = add79142_mux_q;

    // forked43_mux(MUX,3)
    assign forked43_mux_s = in_valid_in_0;
    always @(forked43_mux_s or in_forked43_1 or in_forked43_0)
    begin
        unique case (forked43_mux_s)
            1'b0 : forked43_mux_q = in_forked43_1;
            1'b1 : forked43_mux_q = in_forked43_0;
            default : forked43_mux_q = 1'b0;
        endcase
    end

    // out_forked43(GPOUT,44)
    assign out_forked43 = forked43_mux_q;

    // li_075117_mux(MUX,35)
    assign li_075117_mux_s = in_valid_in_0;
    always @(li_075117_mux_s or in_li_075117_1 or in_li_075117_0)
    begin
        unique case (li_075117_mux_s)
            1'b0 : li_075117_mux_q = in_li_075117_1;
            1'b1 : li_075117_mux_q = in_li_075117_0;
            default : li_075117_mux_q = 32'b0;
        endcase
    end

    // out_li_075117(GPOUT,45)
    assign out_li_075117 = li_075117_mux_q;

    // li_07591_pop22133_mux(MUX,36)
    assign li_07591_pop22133_mux_s = in_valid_in_0;
    always @(li_07591_pop22133_mux_s or in_li_07591_pop22133_1 or in_li_07591_pop22133_0)
    begin
        unique case (li_07591_pop22133_mux_s)
            1'b0 : li_07591_pop22133_mux_q = in_li_07591_pop22133_1;
            1'b1 : li_07591_pop22133_mux_q = in_li_07591_pop22133_0;
            default : li_07591_pop22133_mux_q = 32'b0;
        endcase
    end

    // out_li_07591_pop22133(GPOUT,46)
    assign out_li_07591_pop22133 = li_07591_pop22133_mux_q;

    // li_07592_pop33148_mux(MUX,37)
    assign li_07592_pop33148_mux_s = in_valid_in_0;
    always @(li_07592_pop33148_mux_s or in_li_07592_pop33148_1 or in_li_07592_pop33148_0)
    begin
        unique case (li_07592_pop33148_mux_s)
            1'b0 : li_07592_pop33148_mux_q = in_li_07592_pop33148_1;
            1'b1 : li_07592_pop33148_mux_q = in_li_07592_pop33148_0;
            default : li_07592_pop33148_mux_q = 32'b0;
        endcase
    end

    // out_li_07592_pop33148(GPOUT,47)
    assign out_li_07592_pop33148 = li_07592_pop33148_mux_q;

    // mul78123_mux(MUX,38)
    assign mul78123_mux_s = in_valid_in_0;
    always @(mul78123_mux_s or in_mul78123_1 or in_mul78123_0)
    begin
        unique case (mul78123_mux_s)
            1'b0 : mul78123_mux_q = in_mul78123_1;
            1'b1 : mul78123_mux_q = in_mul78123_0;
            default : mul78123_mux_q = 32'b0;
        endcase
    end

    // out_mul78123(GPOUT,48)
    assign out_mul78123 = mul78123_mux_q;

    // mul7897_pop35139_mux(MUX,39)
    assign mul7897_pop35139_mux_s = in_valid_in_0;
    always @(mul7897_pop35139_mux_s or in_mul7897_pop35139_1 or in_mul7897_pop35139_0)
    begin
        unique case (mul7897_pop35139_mux_s)
            1'b0 : mul7897_pop35139_mux_q = in_mul7897_pop35139_1;
            1'b1 : mul7897_pop35139_mux_q = in_mul7897_pop35139_0;
            default : mul7897_pop35139_mux_q = 32'b0;
        endcase
    end

    // out_mul7897_pop35139(GPOUT,49)
    assign out_mul7897_pop35139 = mul7897_pop35139_mux_q;

    // notcmp78145_mux(MUX,40)
    assign notcmp78145_mux_s = in_valid_in_0;
    always @(notcmp78145_mux_s or in_notcmp78145_1 or in_notcmp78145_0)
    begin
        unique case (notcmp78145_mux_s)
            1'b0 : notcmp78145_mux_q = in_notcmp78145_1;
            1'b1 : notcmp78145_mux_q = in_notcmp78145_0;
            default : notcmp78145_mux_q = 1'b0;
        endcase
    end

    // out_notcmp78145(GPOUT,50)
    assign out_notcmp78145 = notcmp78145_mux_q;

    // notcmp82100_pop36154_mux(MUX,41)
    assign notcmp82100_pop36154_mux_s = in_valid_in_0;
    always @(notcmp82100_pop36154_mux_s or in_notcmp82100_pop36154_1 or in_notcmp82100_pop36154_0)
    begin
        unique case (notcmp82100_pop36154_mux_s)
            1'b0 : notcmp82100_pop36154_mux_q = in_notcmp82100_pop36154_1;
            1'b1 : notcmp82100_pop36154_mux_q = in_notcmp82100_pop36154_0;
            default : notcmp82100_pop36154_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82100_pop36154(GPOUT,51)
    assign out_notcmp82100_pop36154 = notcmp82100_pop36154_mux_q;

    // notcmp82128_mux(MUX,42)
    assign notcmp82128_mux_s = in_valid_in_0;
    always @(notcmp82128_mux_s or in_notcmp82128_1 or in_notcmp82128_0)
    begin
        unique case (notcmp82128_mux_s)
            1'b0 : notcmp82128_mux_q = in_notcmp82128_1;
            1'b1 : notcmp82128_mux_q = in_notcmp82128_0;
            default : notcmp82128_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82128(GPOUT,52)
    assign out_notcmp82128 = notcmp82128_mux_q;

    // pop23138_mux(MUX,60)
    assign pop23138_mux_s = in_valid_in_0;
    always @(pop23138_mux_s or in_pop23138_1 or in_pop23138_0)
    begin
        unique case (pop23138_mux_s)
            1'b0 : pop23138_mux_q = in_pop23138_1;
            1'b1 : pop23138_mux_q = in_pop23138_0;
            default : pop23138_mux_q = 1'b0;
        endcase
    end

    // out_pop23138(GPOUT,53)
    assign out_pop23138 = pop23138_mux_q;

    // pop34151_mux(MUX,61)
    assign pop34151_mux_s = in_valid_in_0;
    always @(pop34151_mux_s or in_pop34151_1 or in_pop34151_0)
    begin
        unique case (pop34151_mux_s)
            1'b0 : pop34151_mux_q = in_pop34151_1;
            1'b1 : pop34151_mux_q = in_pop34151_0;
            default : pop34151_mux_q = 1'b0;
        endcase
    end

    // out_pop34151(GPOUT,54)
    assign out_pop34151 = pop34151_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,62)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,55)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,63)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,56)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_weight144_mux(MUX,64)
    assign unnamed_load_weight144_mux_s = in_valid_in_0;
    always @(unnamed_load_weight144_mux_s or in_unnamed_load_weight144_1 or in_unnamed_load_weight144_0)
    begin
        unique case (unnamed_load_weight144_mux_s)
            1'b0 : unnamed_load_weight144_mux_q = in_unnamed_load_weight144_1;
            1'b1 : unnamed_load_weight144_mux_q = in_unnamed_load_weight144_0;
            default : unnamed_load_weight144_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_weight144(GPOUT,57)
    assign out_unnamed_load_weight144 = unnamed_load_weight144_mux_q;

    // unnamed_load_weight145_mux(MUX,65)
    assign unnamed_load_weight145_mux_s = in_valid_in_0;
    always @(unnamed_load_weight145_mux_s or in_unnamed_load_weight145_1 or in_unnamed_load_weight145_0)
    begin
        unique case (unnamed_load_weight145_mux_s)
            1'b0 : unnamed_load_weight145_mux_q = in_unnamed_load_weight145_1;
            1'b1 : unnamed_load_weight145_mux_q = in_unnamed_load_weight145_0;
            default : unnamed_load_weight145_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_weight145(GPOUT,58)
    assign out_unnamed_load_weight145 = unnamed_load_weight145_mux_q;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = valid_or_q;

endmodule
