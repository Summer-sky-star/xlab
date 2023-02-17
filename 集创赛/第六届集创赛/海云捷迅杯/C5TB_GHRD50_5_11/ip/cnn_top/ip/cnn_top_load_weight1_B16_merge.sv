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

// SystemVerilog created from cnn_top_load_weight1_B16_merge
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_weight1_B16_merge (
    input wire [31:0] in_add79103_pop43163_0,
    input wire [31:0] in_add79103_pop43163_1,
    input wire [31:0] in_add79144_0,
    input wire [31:0] in_add79144_1,
    input wire [0:0] in_forked58_0,
    input wire [0:0] in_forked58_1,
    input wire [31:0] in_li_075116_0,
    input wire [31:0] in_li_075116_1,
    input wire [31:0] in_li_07591_pop22132_0,
    input wire [31:0] in_li_07591_pop22132_1,
    input wire [31:0] in_li_07592_pop33150_0,
    input wire [31:0] in_li_07592_pop33150_1,
    input wire [31:0] in_li_07593_pop38159_0,
    input wire [31:0] in_li_07593_pop38159_1,
    input wire [31:0] in_mul78122_0,
    input wire [31:0] in_mul78122_1,
    input wire [31:0] in_mul7897_pop35141_0,
    input wire [31:0] in_mul7897_pop35141_1,
    input wire [31:0] in_mul7898_pop40161_0,
    input wire [31:0] in_mul7898_pop40161_1,
    input wire [0:0] in_notcmp74158_0,
    input wire [0:0] in_notcmp74158_1,
    input wire [0:0] in_notcmp78105_pop44164_0,
    input wire [0:0] in_notcmp78105_pop44164_1,
    input wire [0:0] in_notcmp78147_0,
    input wire [0:0] in_notcmp78147_1,
    input wire [0:0] in_notcmp82100_pop36156_0,
    input wire [0:0] in_notcmp82100_pop36156_1,
    input wire [0:0] in_notcmp82101_pop41162_0,
    input wire [0:0] in_notcmp82101_pop41162_1,
    input wire [0:0] in_notcmp82127_0,
    input wire [0:0] in_notcmp82127_1,
    input wire [0:0] in_pop23137_0,
    input wire [0:0] in_pop23137_1,
    input wire [0:0] in_pop34153_0,
    input wire [0:0] in_pop34153_1,
    input wire [0:0] in_pop39160_0,
    input wire [0:0] in_pop39160_1,
    input wire [0:0] in_pop42157_0,
    input wire [0:0] in_pop42157_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_weight147_0,
    input wire [0:0] in_unnamed_load_weight147_1,
    input wire [0:0] in_unnamed_load_weight148_0,
    input wire [0:0] in_unnamed_load_weight148_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add79103_pop43163,
    output wire [31:0] out_add79144,
    output wire [0:0] out_forked58,
    output wire [31:0] out_li_075116,
    output wire [31:0] out_li_07591_pop22132,
    output wire [31:0] out_li_07592_pop33150,
    output wire [31:0] out_li_07593_pop38159,
    output wire [31:0] out_mul78122,
    output wire [31:0] out_mul7897_pop35141,
    output wire [31:0] out_mul7898_pop40161,
    output wire [0:0] out_notcmp74158,
    output wire [0:0] out_notcmp78105_pop44164,
    output wire [0:0] out_notcmp78147,
    output wire [0:0] out_notcmp82100_pop36156,
    output wire [0:0] out_notcmp82101_pop41162,
    output wire [0:0] out_notcmp82127,
    output wire [0:0] out_pop23137,
    output wire [0:0] out_pop34153,
    output wire [0:0] out_pop39160,
    output wire [0:0] out_pop42157,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_weight147,
    output wire [0:0] out_unnamed_load_weight148,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add79103_pop43163_mux_s;
    reg [31:0] add79103_pop43163_mux_q;
    wire [0:0] add79144_mux_s;
    reg [31:0] add79144_mux_q;
    wire [0:0] forked58_mux_s;
    reg [0:0] forked58_mux_q;
    wire [0:0] li_075116_mux_s;
    reg [31:0] li_075116_mux_q;
    wire [0:0] li_07591_pop22132_mux_s;
    reg [31:0] li_07591_pop22132_mux_q;
    wire [0:0] li_07592_pop33150_mux_s;
    reg [31:0] li_07592_pop33150_mux_q;
    wire [0:0] li_07593_pop38159_mux_s;
    reg [31:0] li_07593_pop38159_mux_q;
    wire [0:0] mul78122_mux_s;
    reg [31:0] mul78122_mux_q;
    wire [0:0] mul7897_pop35141_mux_s;
    reg [31:0] mul7897_pop35141_mux_q;
    wire [0:0] mul7898_pop40161_mux_s;
    reg [31:0] mul7898_pop40161_mux_q;
    wire [0:0] notcmp74158_mux_s;
    reg [0:0] notcmp74158_mux_q;
    wire [0:0] notcmp78105_pop44164_mux_s;
    reg [0:0] notcmp78105_pop44164_mux_q;
    wire [0:0] notcmp78147_mux_s;
    reg [0:0] notcmp78147_mux_q;
    wire [0:0] notcmp82100_pop36156_mux_s;
    reg [0:0] notcmp82100_pop36156_mux_q;
    wire [0:0] notcmp82101_pop41162_mux_s;
    reg [0:0] notcmp82101_pop41162_mux_q;
    wire [0:0] notcmp82127_mux_s;
    reg [0:0] notcmp82127_mux_q;
    wire [0:0] pop23137_mux_s;
    reg [0:0] pop23137_mux_q;
    wire [0:0] pop34153_mux_s;
    reg [0:0] pop34153_mux_q;
    wire [0:0] pop39160_mux_s;
    reg [0:0] pop39160_mux_q;
    wire [0:0] pop42157_mux_s;
    reg [0:0] pop42157_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_weight147_mux_s;
    reg [0:0] unnamed_load_weight147_mux_q;
    wire [0:0] unnamed_load_weight148_mux_s;
    reg [0:0] unnamed_load_weight148_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add79103_pop43163_mux(MUX,2)
    assign add79103_pop43163_mux_s = in_valid_in_0;
    always @(add79103_pop43163_mux_s or in_add79103_pop43163_1 or in_add79103_pop43163_0)
    begin
        unique case (add79103_pop43163_mux_s)
            1'b0 : add79103_pop43163_mux_q = in_add79103_pop43163_1;
            1'b1 : add79103_pop43163_mux_q = in_add79103_pop43163_0;
            default : add79103_pop43163_mux_q = 32'b0;
        endcase
    end

    // out_add79103_pop43163(GPOUT,65)
    assign out_add79103_pop43163 = add79103_pop43163_mux_q;

    // add79144_mux(MUX,3)
    assign add79144_mux_s = in_valid_in_0;
    always @(add79144_mux_s or in_add79144_1 or in_add79144_0)
    begin
        unique case (add79144_mux_s)
            1'b0 : add79144_mux_q = in_add79144_1;
            1'b1 : add79144_mux_q = in_add79144_0;
            default : add79144_mux_q = 32'b0;
        endcase
    end

    // out_add79144(GPOUT,66)
    assign out_add79144 = add79144_mux_q;

    // forked58_mux(MUX,4)
    assign forked58_mux_s = in_valid_in_0;
    always @(forked58_mux_s or in_forked58_1 or in_forked58_0)
    begin
        unique case (forked58_mux_s)
            1'b0 : forked58_mux_q = in_forked58_1;
            1'b1 : forked58_mux_q = in_forked58_0;
            default : forked58_mux_q = 1'b0;
        endcase
    end

    // out_forked58(GPOUT,67)
    assign out_forked58 = forked58_mux_q;

    // li_075116_mux(MUX,52)
    assign li_075116_mux_s = in_valid_in_0;
    always @(li_075116_mux_s or in_li_075116_1 or in_li_075116_0)
    begin
        unique case (li_075116_mux_s)
            1'b0 : li_075116_mux_q = in_li_075116_1;
            1'b1 : li_075116_mux_q = in_li_075116_0;
            default : li_075116_mux_q = 32'b0;
        endcase
    end

    // out_li_075116(GPOUT,68)
    assign out_li_075116 = li_075116_mux_q;

    // li_07591_pop22132_mux(MUX,53)
    assign li_07591_pop22132_mux_s = in_valid_in_0;
    always @(li_07591_pop22132_mux_s or in_li_07591_pop22132_1 or in_li_07591_pop22132_0)
    begin
        unique case (li_07591_pop22132_mux_s)
            1'b0 : li_07591_pop22132_mux_q = in_li_07591_pop22132_1;
            1'b1 : li_07591_pop22132_mux_q = in_li_07591_pop22132_0;
            default : li_07591_pop22132_mux_q = 32'b0;
        endcase
    end

    // out_li_07591_pop22132(GPOUT,69)
    assign out_li_07591_pop22132 = li_07591_pop22132_mux_q;

    // li_07592_pop33150_mux(MUX,54)
    assign li_07592_pop33150_mux_s = in_valid_in_0;
    always @(li_07592_pop33150_mux_s or in_li_07592_pop33150_1 or in_li_07592_pop33150_0)
    begin
        unique case (li_07592_pop33150_mux_s)
            1'b0 : li_07592_pop33150_mux_q = in_li_07592_pop33150_1;
            1'b1 : li_07592_pop33150_mux_q = in_li_07592_pop33150_0;
            default : li_07592_pop33150_mux_q = 32'b0;
        endcase
    end

    // out_li_07592_pop33150(GPOUT,70)
    assign out_li_07592_pop33150 = li_07592_pop33150_mux_q;

    // li_07593_pop38159_mux(MUX,55)
    assign li_07593_pop38159_mux_s = in_valid_in_0;
    always @(li_07593_pop38159_mux_s or in_li_07593_pop38159_1 or in_li_07593_pop38159_0)
    begin
        unique case (li_07593_pop38159_mux_s)
            1'b0 : li_07593_pop38159_mux_q = in_li_07593_pop38159_1;
            1'b1 : li_07593_pop38159_mux_q = in_li_07593_pop38159_0;
            default : li_07593_pop38159_mux_q = 32'b0;
        endcase
    end

    // out_li_07593_pop38159(GPOUT,71)
    assign out_li_07593_pop38159 = li_07593_pop38159_mux_q;

    // mul78122_mux(MUX,56)
    assign mul78122_mux_s = in_valid_in_0;
    always @(mul78122_mux_s or in_mul78122_1 or in_mul78122_0)
    begin
        unique case (mul78122_mux_s)
            1'b0 : mul78122_mux_q = in_mul78122_1;
            1'b1 : mul78122_mux_q = in_mul78122_0;
            default : mul78122_mux_q = 32'b0;
        endcase
    end

    // out_mul78122(GPOUT,72)
    assign out_mul78122 = mul78122_mux_q;

    // mul7897_pop35141_mux(MUX,57)
    assign mul7897_pop35141_mux_s = in_valid_in_0;
    always @(mul7897_pop35141_mux_s or in_mul7897_pop35141_1 or in_mul7897_pop35141_0)
    begin
        unique case (mul7897_pop35141_mux_s)
            1'b0 : mul7897_pop35141_mux_q = in_mul7897_pop35141_1;
            1'b1 : mul7897_pop35141_mux_q = in_mul7897_pop35141_0;
            default : mul7897_pop35141_mux_q = 32'b0;
        endcase
    end

    // out_mul7897_pop35141(GPOUT,73)
    assign out_mul7897_pop35141 = mul7897_pop35141_mux_q;

    // mul7898_pop40161_mux(MUX,58)
    assign mul7898_pop40161_mux_s = in_valid_in_0;
    always @(mul7898_pop40161_mux_s or in_mul7898_pop40161_1 or in_mul7898_pop40161_0)
    begin
        unique case (mul7898_pop40161_mux_s)
            1'b0 : mul7898_pop40161_mux_q = in_mul7898_pop40161_1;
            1'b1 : mul7898_pop40161_mux_q = in_mul7898_pop40161_0;
            default : mul7898_pop40161_mux_q = 32'b0;
        endcase
    end

    // out_mul7898_pop40161(GPOUT,74)
    assign out_mul7898_pop40161 = mul7898_pop40161_mux_q;

    // notcmp74158_mux(MUX,59)
    assign notcmp74158_mux_s = in_valid_in_0;
    always @(notcmp74158_mux_s or in_notcmp74158_1 or in_notcmp74158_0)
    begin
        unique case (notcmp74158_mux_s)
            1'b0 : notcmp74158_mux_q = in_notcmp74158_1;
            1'b1 : notcmp74158_mux_q = in_notcmp74158_0;
            default : notcmp74158_mux_q = 1'b0;
        endcase
    end

    // out_notcmp74158(GPOUT,75)
    assign out_notcmp74158 = notcmp74158_mux_q;

    // notcmp78105_pop44164_mux(MUX,60)
    assign notcmp78105_pop44164_mux_s = in_valid_in_0;
    always @(notcmp78105_pop44164_mux_s or in_notcmp78105_pop44164_1 or in_notcmp78105_pop44164_0)
    begin
        unique case (notcmp78105_pop44164_mux_s)
            1'b0 : notcmp78105_pop44164_mux_q = in_notcmp78105_pop44164_1;
            1'b1 : notcmp78105_pop44164_mux_q = in_notcmp78105_pop44164_0;
            default : notcmp78105_pop44164_mux_q = 1'b0;
        endcase
    end

    // out_notcmp78105_pop44164(GPOUT,76)
    assign out_notcmp78105_pop44164 = notcmp78105_pop44164_mux_q;

    // notcmp78147_mux(MUX,61)
    assign notcmp78147_mux_s = in_valid_in_0;
    always @(notcmp78147_mux_s or in_notcmp78147_1 or in_notcmp78147_0)
    begin
        unique case (notcmp78147_mux_s)
            1'b0 : notcmp78147_mux_q = in_notcmp78147_1;
            1'b1 : notcmp78147_mux_q = in_notcmp78147_0;
            default : notcmp78147_mux_q = 1'b0;
        endcase
    end

    // out_notcmp78147(GPOUT,77)
    assign out_notcmp78147 = notcmp78147_mux_q;

    // notcmp82100_pop36156_mux(MUX,62)
    assign notcmp82100_pop36156_mux_s = in_valid_in_0;
    always @(notcmp82100_pop36156_mux_s or in_notcmp82100_pop36156_1 or in_notcmp82100_pop36156_0)
    begin
        unique case (notcmp82100_pop36156_mux_s)
            1'b0 : notcmp82100_pop36156_mux_q = in_notcmp82100_pop36156_1;
            1'b1 : notcmp82100_pop36156_mux_q = in_notcmp82100_pop36156_0;
            default : notcmp82100_pop36156_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82100_pop36156(GPOUT,78)
    assign out_notcmp82100_pop36156 = notcmp82100_pop36156_mux_q;

    // notcmp82101_pop41162_mux(MUX,63)
    assign notcmp82101_pop41162_mux_s = in_valid_in_0;
    always @(notcmp82101_pop41162_mux_s or in_notcmp82101_pop41162_1 or in_notcmp82101_pop41162_0)
    begin
        unique case (notcmp82101_pop41162_mux_s)
            1'b0 : notcmp82101_pop41162_mux_q = in_notcmp82101_pop41162_1;
            1'b1 : notcmp82101_pop41162_mux_q = in_notcmp82101_pop41162_0;
            default : notcmp82101_pop41162_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82101_pop41162(GPOUT,79)
    assign out_notcmp82101_pop41162 = notcmp82101_pop41162_mux_q;

    // notcmp82127_mux(MUX,64)
    assign notcmp82127_mux_s = in_valid_in_0;
    always @(notcmp82127_mux_s or in_notcmp82127_1 or in_notcmp82127_0)
    begin
        unique case (notcmp82127_mux_s)
            1'b0 : notcmp82127_mux_q = in_notcmp82127_1;
            1'b1 : notcmp82127_mux_q = in_notcmp82127_0;
            default : notcmp82127_mux_q = 1'b0;
        endcase
    end

    // out_notcmp82127(GPOUT,80)
    assign out_notcmp82127 = notcmp82127_mux_q;

    // pop23137_mux(MUX,90)
    assign pop23137_mux_s = in_valid_in_0;
    always @(pop23137_mux_s or in_pop23137_1 or in_pop23137_0)
    begin
        unique case (pop23137_mux_s)
            1'b0 : pop23137_mux_q = in_pop23137_1;
            1'b1 : pop23137_mux_q = in_pop23137_0;
            default : pop23137_mux_q = 1'b0;
        endcase
    end

    // out_pop23137(GPOUT,81)
    assign out_pop23137 = pop23137_mux_q;

    // pop34153_mux(MUX,91)
    assign pop34153_mux_s = in_valid_in_0;
    always @(pop34153_mux_s or in_pop34153_1 or in_pop34153_0)
    begin
        unique case (pop34153_mux_s)
            1'b0 : pop34153_mux_q = in_pop34153_1;
            1'b1 : pop34153_mux_q = in_pop34153_0;
            default : pop34153_mux_q = 1'b0;
        endcase
    end

    // out_pop34153(GPOUT,82)
    assign out_pop34153 = pop34153_mux_q;

    // pop39160_mux(MUX,92)
    assign pop39160_mux_s = in_valid_in_0;
    always @(pop39160_mux_s or in_pop39160_1 or in_pop39160_0)
    begin
        unique case (pop39160_mux_s)
            1'b0 : pop39160_mux_q = in_pop39160_1;
            1'b1 : pop39160_mux_q = in_pop39160_0;
            default : pop39160_mux_q = 1'b0;
        endcase
    end

    // out_pop39160(GPOUT,83)
    assign out_pop39160 = pop39160_mux_q;

    // pop42157_mux(MUX,93)
    assign pop42157_mux_s = in_valid_in_0;
    always @(pop42157_mux_s or in_pop42157_1 or in_pop42157_0)
    begin
        unique case (pop42157_mux_s)
            1'b0 : pop42157_mux_q = in_pop42157_1;
            1'b1 : pop42157_mux_q = in_pop42157_0;
            default : pop42157_mux_q = 1'b0;
        endcase
    end

    // out_pop42157(GPOUT,84)
    assign out_pop42157 = pop42157_mux_q;

    // valid_or(LOGICAL,98)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,94)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,85)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,95)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,86)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_weight147_mux(MUX,96)
    assign unnamed_load_weight147_mux_s = in_valid_in_0;
    always @(unnamed_load_weight147_mux_s or in_unnamed_load_weight147_1 or in_unnamed_load_weight147_0)
    begin
        unique case (unnamed_load_weight147_mux_s)
            1'b0 : unnamed_load_weight147_mux_q = in_unnamed_load_weight147_1;
            1'b1 : unnamed_load_weight147_mux_q = in_unnamed_load_weight147_0;
            default : unnamed_load_weight147_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_weight147(GPOUT,87)
    assign out_unnamed_load_weight147 = unnamed_load_weight147_mux_q;

    // unnamed_load_weight148_mux(MUX,97)
    assign unnamed_load_weight148_mux_s = in_valid_in_0;
    always @(unnamed_load_weight148_mux_s or in_unnamed_load_weight148_1 or in_unnamed_load_weight148_0)
    begin
        unique case (unnamed_load_weight148_mux_s)
            1'b0 : unnamed_load_weight148_mux_q = in_unnamed_load_weight148_1;
            1'b1 : unnamed_load_weight148_mux_q = in_unnamed_load_weight148_0;
            default : unnamed_load_weight148_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_weight148(GPOUT,88)
    assign out_unnamed_load_weight148 = unnamed_load_weight148_mux_q;

    // out_valid_out(GPOUT,89)
    assign out_valid_out = valid_or_q;

endmodule
