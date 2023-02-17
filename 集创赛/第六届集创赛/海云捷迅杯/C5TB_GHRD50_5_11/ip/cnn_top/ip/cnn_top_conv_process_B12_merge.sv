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

// SystemVerilog created from cnn_top_conv_process_B12_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B12_merge (
    input wire [31:0] in_c_0_i110470_pop76603_0,
    input wire [31:0] in_c_0_i110470_pop76603_1,
    input wire [0:0] in_forked163_0,
    input wire [0:0] in_forked163_1,
    input wire [0:0] in_notcmp165605_0,
    input wire [0:0] in_notcmp165605_1,
    input wire [0:0] in_notcmp169288_pop80609_0,
    input wire [0:0] in_notcmp169288_pop80609_1,
    input wire [0:0] in_notcmp169599_0,
    input wire [0:0] in_notcmp169599_1,
    input wire [31:0] in_offset_0_i475_replace_phi286_pop78607_0,
    input wire [31:0] in_offset_0_i475_replace_phi286_pop78607_1,
    input wire [31:0] in_offset_0_i475_replace_phi596_0,
    input wire [31:0] in_offset_0_i475_replace_phi596_1,
    input wire [31:0] in_offset_1_i469_pop77606_0,
    input wire [31:0] in_offset_1_i469_pop77606_1,
    input wire [0:0] in_or_cond189604_0,
    input wire [0:0] in_or_cond189604_1,
    input wire [0:0] in_pop79608_0,
    input wire [0:0] in_pop79608_1,
    input wire [31:0] in_r_0_i106476_pop65290_pop81610_0,
    input wire [31:0] in_r_0_i106476_pop65290_pop81610_1,
    input wire [31:0] in_r_0_i106476_pop65602_0,
    input wire [31:0] in_r_0_i106476_pop65602_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_conv_process94_0,
    input wire [0:0] in_unnamed_conv_process94_1,
    input wire [31:0] in_unnamed_conv_process95_0,
    input wire [31:0] in_unnamed_conv_process95_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_0_i110470_pop76603,
    output wire [0:0] out_forked163,
    output wire [0:0] out_notcmp165605,
    output wire [0:0] out_notcmp169288_pop80609,
    output wire [0:0] out_notcmp169599,
    output wire [31:0] out_offset_0_i475_replace_phi286_pop78607,
    output wire [31:0] out_offset_0_i475_replace_phi596,
    output wire [31:0] out_offset_1_i469_pop77606,
    output wire [0:0] out_or_cond189604,
    output wire [0:0] out_pop79608,
    output wire [31:0] out_r_0_i106476_pop65290_pop81610,
    output wire [31:0] out_r_0_i106476_pop65602,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_conv_process94,
    output wire [31:0] out_unnamed_conv_process95,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_0_i110470_pop76603_mux_s;
    reg [31:0] c_0_i110470_pop76603_mux_q;
    wire [0:0] forked163_mux_s;
    reg [0:0] forked163_mux_q;
    wire [0:0] notcmp165605_mux_s;
    reg [0:0] notcmp165605_mux_q;
    wire [0:0] notcmp169288_pop80609_mux_s;
    reg [0:0] notcmp169288_pop80609_mux_q;
    wire [0:0] notcmp169599_mux_s;
    reg [0:0] notcmp169599_mux_q;
    wire [0:0] offset_0_i475_replace_phi286_pop78607_mux_s;
    reg [31:0] offset_0_i475_replace_phi286_pop78607_mux_q;
    wire [0:0] offset_0_i475_replace_phi596_mux_s;
    reg [31:0] offset_0_i475_replace_phi596_mux_q;
    wire [0:0] offset_1_i469_pop77606_mux_s;
    reg [31:0] offset_1_i469_pop77606_mux_q;
    wire [0:0] or_cond189604_mux_s;
    reg [0:0] or_cond189604_mux_q;
    wire [0:0] pop79608_mux_s;
    reg [0:0] pop79608_mux_q;
    wire [0:0] r_0_i106476_pop65290_pop81610_mux_s;
    reg [31:0] r_0_i106476_pop65290_pop81610_mux_q;
    wire [0:0] r_0_i106476_pop65602_mux_s;
    reg [31:0] r_0_i106476_pop65602_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_conv_process94_mux_s;
    reg [0:0] unnamed_conv_process94_mux_q;
    wire [0:0] unnamed_conv_process95_mux_s;
    reg [31:0] unnamed_conv_process95_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_0_i110470_pop76603_mux(MUX,2)
    assign c_0_i110470_pop76603_mux_s = in_valid_in_0;
    always @(c_0_i110470_pop76603_mux_s or in_c_0_i110470_pop76603_1 or in_c_0_i110470_pop76603_0)
    begin
        unique case (c_0_i110470_pop76603_mux_s)
            1'b0 : c_0_i110470_pop76603_mux_q = in_c_0_i110470_pop76603_1;
            1'b1 : c_0_i110470_pop76603_mux_q = in_c_0_i110470_pop76603_0;
            default : c_0_i110470_pop76603_mux_q = 32'b0;
        endcase
    end

    // out_c_0_i110470_pop76603(GPOUT,42)
    assign out_c_0_i110470_pop76603 = c_0_i110470_pop76603_mux_q;

    // forked163_mux(MUX,3)
    assign forked163_mux_s = in_valid_in_0;
    always @(forked163_mux_s or in_forked163_1 or in_forked163_0)
    begin
        unique case (forked163_mux_s)
            1'b0 : forked163_mux_q = in_forked163_1;
            1'b1 : forked163_mux_q = in_forked163_0;
            default : forked163_mux_q = 1'b0;
        endcase
    end

    // out_forked163(GPOUT,43)
    assign out_forked163 = forked163_mux_q;

    // notcmp165605_mux(MUX,35)
    assign notcmp165605_mux_s = in_valid_in_0;
    always @(notcmp165605_mux_s or in_notcmp165605_1 or in_notcmp165605_0)
    begin
        unique case (notcmp165605_mux_s)
            1'b0 : notcmp165605_mux_q = in_notcmp165605_1;
            1'b1 : notcmp165605_mux_q = in_notcmp165605_0;
            default : notcmp165605_mux_q = 1'b0;
        endcase
    end

    // out_notcmp165605(GPOUT,44)
    assign out_notcmp165605 = notcmp165605_mux_q;

    // notcmp169288_pop80609_mux(MUX,36)
    assign notcmp169288_pop80609_mux_s = in_valid_in_0;
    always @(notcmp169288_pop80609_mux_s or in_notcmp169288_pop80609_1 or in_notcmp169288_pop80609_0)
    begin
        unique case (notcmp169288_pop80609_mux_s)
            1'b0 : notcmp169288_pop80609_mux_q = in_notcmp169288_pop80609_1;
            1'b1 : notcmp169288_pop80609_mux_q = in_notcmp169288_pop80609_0;
            default : notcmp169288_pop80609_mux_q = 1'b0;
        endcase
    end

    // out_notcmp169288_pop80609(GPOUT,45)
    assign out_notcmp169288_pop80609 = notcmp169288_pop80609_mux_q;

    // notcmp169599_mux(MUX,37)
    assign notcmp169599_mux_s = in_valid_in_0;
    always @(notcmp169599_mux_s or in_notcmp169599_1 or in_notcmp169599_0)
    begin
        unique case (notcmp169599_mux_s)
            1'b0 : notcmp169599_mux_q = in_notcmp169599_1;
            1'b1 : notcmp169599_mux_q = in_notcmp169599_0;
            default : notcmp169599_mux_q = 1'b0;
        endcase
    end

    // out_notcmp169599(GPOUT,46)
    assign out_notcmp169599 = notcmp169599_mux_q;

    // offset_0_i475_replace_phi286_pop78607_mux(MUX,38)
    assign offset_0_i475_replace_phi286_pop78607_mux_s = in_valid_in_0;
    always @(offset_0_i475_replace_phi286_pop78607_mux_s or in_offset_0_i475_replace_phi286_pop78607_1 or in_offset_0_i475_replace_phi286_pop78607_0)
    begin
        unique case (offset_0_i475_replace_phi286_pop78607_mux_s)
            1'b0 : offset_0_i475_replace_phi286_pop78607_mux_q = in_offset_0_i475_replace_phi286_pop78607_1;
            1'b1 : offset_0_i475_replace_phi286_pop78607_mux_q = in_offset_0_i475_replace_phi286_pop78607_0;
            default : offset_0_i475_replace_phi286_pop78607_mux_q = 32'b0;
        endcase
    end

    // out_offset_0_i475_replace_phi286_pop78607(GPOUT,47)
    assign out_offset_0_i475_replace_phi286_pop78607 = offset_0_i475_replace_phi286_pop78607_mux_q;

    // offset_0_i475_replace_phi596_mux(MUX,39)
    assign offset_0_i475_replace_phi596_mux_s = in_valid_in_0;
    always @(offset_0_i475_replace_phi596_mux_s or in_offset_0_i475_replace_phi596_1 or in_offset_0_i475_replace_phi596_0)
    begin
        unique case (offset_0_i475_replace_phi596_mux_s)
            1'b0 : offset_0_i475_replace_phi596_mux_q = in_offset_0_i475_replace_phi596_1;
            1'b1 : offset_0_i475_replace_phi596_mux_q = in_offset_0_i475_replace_phi596_0;
            default : offset_0_i475_replace_phi596_mux_q = 32'b0;
        endcase
    end

    // out_offset_0_i475_replace_phi596(GPOUT,48)
    assign out_offset_0_i475_replace_phi596 = offset_0_i475_replace_phi596_mux_q;

    // offset_1_i469_pop77606_mux(MUX,40)
    assign offset_1_i469_pop77606_mux_s = in_valid_in_0;
    always @(offset_1_i469_pop77606_mux_s or in_offset_1_i469_pop77606_1 or in_offset_1_i469_pop77606_0)
    begin
        unique case (offset_1_i469_pop77606_mux_s)
            1'b0 : offset_1_i469_pop77606_mux_q = in_offset_1_i469_pop77606_1;
            1'b1 : offset_1_i469_pop77606_mux_q = in_offset_1_i469_pop77606_0;
            default : offset_1_i469_pop77606_mux_q = 32'b0;
        endcase
    end

    // out_offset_1_i469_pop77606(GPOUT,49)
    assign out_offset_1_i469_pop77606 = offset_1_i469_pop77606_mux_q;

    // or_cond189604_mux(MUX,41)
    assign or_cond189604_mux_s = in_valid_in_0;
    always @(or_cond189604_mux_s or in_or_cond189604_1 or in_or_cond189604_0)
    begin
        unique case (or_cond189604_mux_s)
            1'b0 : or_cond189604_mux_q = in_or_cond189604_1;
            1'b1 : or_cond189604_mux_q = in_or_cond189604_0;
            default : or_cond189604_mux_q = 1'b0;
        endcase
    end

    // out_or_cond189604(GPOUT,50)
    assign out_or_cond189604 = or_cond189604_mux_q;

    // pop79608_mux(MUX,59)
    assign pop79608_mux_s = in_valid_in_0;
    always @(pop79608_mux_s or in_pop79608_1 or in_pop79608_0)
    begin
        unique case (pop79608_mux_s)
            1'b0 : pop79608_mux_q = in_pop79608_1;
            1'b1 : pop79608_mux_q = in_pop79608_0;
            default : pop79608_mux_q = 1'b0;
        endcase
    end

    // out_pop79608(GPOUT,51)
    assign out_pop79608 = pop79608_mux_q;

    // r_0_i106476_pop65290_pop81610_mux(MUX,60)
    assign r_0_i106476_pop65290_pop81610_mux_s = in_valid_in_0;
    always @(r_0_i106476_pop65290_pop81610_mux_s or in_r_0_i106476_pop65290_pop81610_1 or in_r_0_i106476_pop65290_pop81610_0)
    begin
        unique case (r_0_i106476_pop65290_pop81610_mux_s)
            1'b0 : r_0_i106476_pop65290_pop81610_mux_q = in_r_0_i106476_pop65290_pop81610_1;
            1'b1 : r_0_i106476_pop65290_pop81610_mux_q = in_r_0_i106476_pop65290_pop81610_0;
            default : r_0_i106476_pop65290_pop81610_mux_q = 32'b0;
        endcase
    end

    // out_r_0_i106476_pop65290_pop81610(GPOUT,52)
    assign out_r_0_i106476_pop65290_pop81610 = r_0_i106476_pop65290_pop81610_mux_q;

    // r_0_i106476_pop65602_mux(MUX,61)
    assign r_0_i106476_pop65602_mux_s = in_valid_in_0;
    always @(r_0_i106476_pop65602_mux_s or in_r_0_i106476_pop65602_1 or in_r_0_i106476_pop65602_0)
    begin
        unique case (r_0_i106476_pop65602_mux_s)
            1'b0 : r_0_i106476_pop65602_mux_q = in_r_0_i106476_pop65602_1;
            1'b1 : r_0_i106476_pop65602_mux_q = in_r_0_i106476_pop65602_0;
            default : r_0_i106476_pop65602_mux_q = 32'b0;
        endcase
    end

    // out_r_0_i106476_pop65602(GPOUT,53)
    assign out_r_0_i106476_pop65602 = r_0_i106476_pop65602_mux_q;

    // valid_or(LOGICAL,66)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,62)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,54)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,63)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,55)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_conv_process94_mux(MUX,64)
    assign unnamed_conv_process94_mux_s = in_valid_in_0;
    always @(unnamed_conv_process94_mux_s or in_unnamed_conv_process94_1 or in_unnamed_conv_process94_0)
    begin
        unique case (unnamed_conv_process94_mux_s)
            1'b0 : unnamed_conv_process94_mux_q = in_unnamed_conv_process94_1;
            1'b1 : unnamed_conv_process94_mux_q = in_unnamed_conv_process94_0;
            default : unnamed_conv_process94_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_conv_process94(GPOUT,56)
    assign out_unnamed_conv_process94 = unnamed_conv_process94_mux_q;

    // unnamed_conv_process95_mux(MUX,65)
    assign unnamed_conv_process95_mux_s = in_valid_in_0;
    always @(unnamed_conv_process95_mux_s or in_unnamed_conv_process95_1 or in_unnamed_conv_process95_0)
    begin
        unique case (unnamed_conv_process95_mux_s)
            1'b0 : unnamed_conv_process95_mux_q = in_unnamed_conv_process95_1;
            1'b1 : unnamed_conv_process95_mux_q = in_unnamed_conv_process95_0;
            default : unnamed_conv_process95_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_conv_process95(GPOUT,57)
    assign out_unnamed_conv_process95 = unnamed_conv_process95_mux_q;

    // out_valid_out(GPOUT,58)
    assign out_valid_out = valid_or_q;

endmodule
