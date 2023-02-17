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

// SystemVerilog created from cnn_top_conv_process_B24_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B24_merge (
    input wire [0:0] in_forked174_0,
    input wire [0:0] in_forked174_1,
    input wire [0:0] in_lnot281_pop74640_0,
    input wire [0:0] in_lnot281_pop74640_1,
    input wire [0:0] in_lnot282_pop83651_0,
    input wire [0:0] in_lnot282_pop83651_1,
    input wire [0:0] in_lnot283_pop99663_0,
    input wire [0:0] in_lnot283_pop99663_1,
    input wire [0:0] in_lnot284_pop104672_0,
    input wire [0:0] in_lnot284_pop104672_1,
    input wire [0:0] in_lnot625_0,
    input wire [0:0] in_lnot625_1,
    input wire [0:0] in_notcmp194670_0,
    input wire [0:0] in_notcmp194670_1,
    input wire [0:0] in_notcmp198302_pop107675_0,
    input wire [0:0] in_notcmp198302_pop107675_1,
    input wire [0:0] in_notcmp198660_0,
    input wire [0:0] in_notcmp198660_1,
    input wire [0:0] in_notcmp202299_pop101669_0,
    input wire [0:0] in_notcmp202299_pop101669_1,
    input wire [0:0] in_notcmp202300_pop106674_0,
    input wire [0:0] in_notcmp202300_pop106674_1,
    input wire [0:0] in_notcmp202646_0,
    input wire [0:0] in_notcmp202646_1,
    input wire [0:0] in_notcmp206292_pop84656_0,
    input wire [0:0] in_notcmp206292_pop84656_1,
    input wire [0:0] in_notcmp206293_pop100666_0,
    input wire [0:0] in_notcmp206293_pop100666_1,
    input wire [0:0] in_notcmp206294_pop105673_0,
    input wire [0:0] in_notcmp206294_pop105673_1,
    input wire [0:0] in_notcmp206633_0,
    input wire [0:0] in_notcmp206633_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tcc_0_i483_pop103671_0,
    input wire [31:0] in_tcc_0_i483_pop103671_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked174,
    output wire [0:0] out_lnot281_pop74640,
    output wire [0:0] out_lnot282_pop83651,
    output wire [0:0] out_lnot283_pop99663,
    output wire [0:0] out_lnot284_pop104672,
    output wire [0:0] out_lnot625,
    output wire [0:0] out_notcmp194670,
    output wire [0:0] out_notcmp198302_pop107675,
    output wire [0:0] out_notcmp198660,
    output wire [0:0] out_notcmp202299_pop101669,
    output wire [0:0] out_notcmp202300_pop106674,
    output wire [0:0] out_notcmp202646,
    output wire [0:0] out_notcmp206292_pop84656,
    output wire [0:0] out_notcmp206293_pop100666,
    output wire [0:0] out_notcmp206294_pop105673,
    output wire [0:0] out_notcmp206633,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tcc_0_i483_pop103671,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked174_mux_s;
    reg [0:0] forked174_mux_q;
    wire [0:0] lnot281_pop74640_mux_s;
    reg [0:0] lnot281_pop74640_mux_q;
    wire [0:0] lnot282_pop83651_mux_s;
    reg [0:0] lnot282_pop83651_mux_q;
    wire [0:0] lnot283_pop99663_mux_s;
    reg [0:0] lnot283_pop99663_mux_q;
    wire [0:0] lnot284_pop104672_mux_s;
    reg [0:0] lnot284_pop104672_mux_q;
    wire [0:0] lnot625_mux_s;
    reg [0:0] lnot625_mux_q;
    wire [0:0] notcmp194670_mux_s;
    reg [0:0] notcmp194670_mux_q;
    wire [0:0] notcmp198302_pop107675_mux_s;
    reg [0:0] notcmp198302_pop107675_mux_q;
    wire [0:0] notcmp198660_mux_s;
    reg [0:0] notcmp198660_mux_q;
    wire [0:0] notcmp202299_pop101669_mux_s;
    reg [0:0] notcmp202299_pop101669_mux_q;
    wire [0:0] notcmp202300_pop106674_mux_s;
    reg [0:0] notcmp202300_pop106674_mux_q;
    wire [0:0] notcmp202646_mux_s;
    reg [0:0] notcmp202646_mux_q;
    wire [0:0] notcmp206292_pop84656_mux_s;
    reg [0:0] notcmp206292_pop84656_mux_q;
    wire [0:0] notcmp206293_pop100666_mux_s;
    reg [0:0] notcmp206293_pop100666_mux_q;
    wire [0:0] notcmp206294_pop105673_mux_s;
    reg [0:0] notcmp206294_pop105673_mux_q;
    wire [0:0] notcmp206633_mux_s;
    reg [0:0] notcmp206633_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tcc_0_i483_pop103671_mux_s;
    reg [31:0] tcc_0_i483_pop103671_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked174_mux(MUX,2)
    assign forked174_mux_s = in_valid_in_0;
    always @(forked174_mux_s or in_forked174_1 or in_forked174_0)
    begin
        unique case (forked174_mux_s)
            1'b0 : forked174_mux_q = in_forked174_1;
            1'b1 : forked174_mux_q = in_forked174_0;
            default : forked174_mux_q = 1'b0;
        endcase
    end

    // out_forked174(GPOUT,55)
    assign out_forked174 = forked174_mux_q;

    // lnot281_pop74640_mux(MUX,40)
    assign lnot281_pop74640_mux_s = in_valid_in_0;
    always @(lnot281_pop74640_mux_s or in_lnot281_pop74640_1 or in_lnot281_pop74640_0)
    begin
        unique case (lnot281_pop74640_mux_s)
            1'b0 : lnot281_pop74640_mux_q = in_lnot281_pop74640_1;
            1'b1 : lnot281_pop74640_mux_q = in_lnot281_pop74640_0;
            default : lnot281_pop74640_mux_q = 1'b0;
        endcase
    end

    // out_lnot281_pop74640(GPOUT,56)
    assign out_lnot281_pop74640 = lnot281_pop74640_mux_q;

    // lnot282_pop83651_mux(MUX,41)
    assign lnot282_pop83651_mux_s = in_valid_in_0;
    always @(lnot282_pop83651_mux_s or in_lnot282_pop83651_1 or in_lnot282_pop83651_0)
    begin
        unique case (lnot282_pop83651_mux_s)
            1'b0 : lnot282_pop83651_mux_q = in_lnot282_pop83651_1;
            1'b1 : lnot282_pop83651_mux_q = in_lnot282_pop83651_0;
            default : lnot282_pop83651_mux_q = 1'b0;
        endcase
    end

    // out_lnot282_pop83651(GPOUT,57)
    assign out_lnot282_pop83651 = lnot282_pop83651_mux_q;

    // lnot283_pop99663_mux(MUX,42)
    assign lnot283_pop99663_mux_s = in_valid_in_0;
    always @(lnot283_pop99663_mux_s or in_lnot283_pop99663_1 or in_lnot283_pop99663_0)
    begin
        unique case (lnot283_pop99663_mux_s)
            1'b0 : lnot283_pop99663_mux_q = in_lnot283_pop99663_1;
            1'b1 : lnot283_pop99663_mux_q = in_lnot283_pop99663_0;
            default : lnot283_pop99663_mux_q = 1'b0;
        endcase
    end

    // out_lnot283_pop99663(GPOUT,58)
    assign out_lnot283_pop99663 = lnot283_pop99663_mux_q;

    // lnot284_pop104672_mux(MUX,43)
    assign lnot284_pop104672_mux_s = in_valid_in_0;
    always @(lnot284_pop104672_mux_s or in_lnot284_pop104672_1 or in_lnot284_pop104672_0)
    begin
        unique case (lnot284_pop104672_mux_s)
            1'b0 : lnot284_pop104672_mux_q = in_lnot284_pop104672_1;
            1'b1 : lnot284_pop104672_mux_q = in_lnot284_pop104672_0;
            default : lnot284_pop104672_mux_q = 1'b0;
        endcase
    end

    // out_lnot284_pop104672(GPOUT,59)
    assign out_lnot284_pop104672 = lnot284_pop104672_mux_q;

    // lnot625_mux(MUX,44)
    assign lnot625_mux_s = in_valid_in_0;
    always @(lnot625_mux_s or in_lnot625_1 or in_lnot625_0)
    begin
        unique case (lnot625_mux_s)
            1'b0 : lnot625_mux_q = in_lnot625_1;
            1'b1 : lnot625_mux_q = in_lnot625_0;
            default : lnot625_mux_q = 1'b0;
        endcase
    end

    // out_lnot625(GPOUT,60)
    assign out_lnot625 = lnot625_mux_q;

    // notcmp194670_mux(MUX,45)
    assign notcmp194670_mux_s = in_valid_in_0;
    always @(notcmp194670_mux_s or in_notcmp194670_1 or in_notcmp194670_0)
    begin
        unique case (notcmp194670_mux_s)
            1'b0 : notcmp194670_mux_q = in_notcmp194670_1;
            1'b1 : notcmp194670_mux_q = in_notcmp194670_0;
            default : notcmp194670_mux_q = 1'b0;
        endcase
    end

    // out_notcmp194670(GPOUT,61)
    assign out_notcmp194670 = notcmp194670_mux_q;

    // notcmp198302_pop107675_mux(MUX,46)
    assign notcmp198302_pop107675_mux_s = in_valid_in_0;
    always @(notcmp198302_pop107675_mux_s or in_notcmp198302_pop107675_1 or in_notcmp198302_pop107675_0)
    begin
        unique case (notcmp198302_pop107675_mux_s)
            1'b0 : notcmp198302_pop107675_mux_q = in_notcmp198302_pop107675_1;
            1'b1 : notcmp198302_pop107675_mux_q = in_notcmp198302_pop107675_0;
            default : notcmp198302_pop107675_mux_q = 1'b0;
        endcase
    end

    // out_notcmp198302_pop107675(GPOUT,62)
    assign out_notcmp198302_pop107675 = notcmp198302_pop107675_mux_q;

    // notcmp198660_mux(MUX,47)
    assign notcmp198660_mux_s = in_valid_in_0;
    always @(notcmp198660_mux_s or in_notcmp198660_1 or in_notcmp198660_0)
    begin
        unique case (notcmp198660_mux_s)
            1'b0 : notcmp198660_mux_q = in_notcmp198660_1;
            1'b1 : notcmp198660_mux_q = in_notcmp198660_0;
            default : notcmp198660_mux_q = 1'b0;
        endcase
    end

    // out_notcmp198660(GPOUT,63)
    assign out_notcmp198660 = notcmp198660_mux_q;

    // notcmp202299_pop101669_mux(MUX,48)
    assign notcmp202299_pop101669_mux_s = in_valid_in_0;
    always @(notcmp202299_pop101669_mux_s or in_notcmp202299_pop101669_1 or in_notcmp202299_pop101669_0)
    begin
        unique case (notcmp202299_pop101669_mux_s)
            1'b0 : notcmp202299_pop101669_mux_q = in_notcmp202299_pop101669_1;
            1'b1 : notcmp202299_pop101669_mux_q = in_notcmp202299_pop101669_0;
            default : notcmp202299_pop101669_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202299_pop101669(GPOUT,64)
    assign out_notcmp202299_pop101669 = notcmp202299_pop101669_mux_q;

    // notcmp202300_pop106674_mux(MUX,49)
    assign notcmp202300_pop106674_mux_s = in_valid_in_0;
    always @(notcmp202300_pop106674_mux_s or in_notcmp202300_pop106674_1 or in_notcmp202300_pop106674_0)
    begin
        unique case (notcmp202300_pop106674_mux_s)
            1'b0 : notcmp202300_pop106674_mux_q = in_notcmp202300_pop106674_1;
            1'b1 : notcmp202300_pop106674_mux_q = in_notcmp202300_pop106674_0;
            default : notcmp202300_pop106674_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202300_pop106674(GPOUT,65)
    assign out_notcmp202300_pop106674 = notcmp202300_pop106674_mux_q;

    // notcmp202646_mux(MUX,50)
    assign notcmp202646_mux_s = in_valid_in_0;
    always @(notcmp202646_mux_s or in_notcmp202646_1 or in_notcmp202646_0)
    begin
        unique case (notcmp202646_mux_s)
            1'b0 : notcmp202646_mux_q = in_notcmp202646_1;
            1'b1 : notcmp202646_mux_q = in_notcmp202646_0;
            default : notcmp202646_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202646(GPOUT,66)
    assign out_notcmp202646 = notcmp202646_mux_q;

    // notcmp206292_pop84656_mux(MUX,51)
    assign notcmp206292_pop84656_mux_s = in_valid_in_0;
    always @(notcmp206292_pop84656_mux_s or in_notcmp206292_pop84656_1 or in_notcmp206292_pop84656_0)
    begin
        unique case (notcmp206292_pop84656_mux_s)
            1'b0 : notcmp206292_pop84656_mux_q = in_notcmp206292_pop84656_1;
            1'b1 : notcmp206292_pop84656_mux_q = in_notcmp206292_pop84656_0;
            default : notcmp206292_pop84656_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206292_pop84656(GPOUT,67)
    assign out_notcmp206292_pop84656 = notcmp206292_pop84656_mux_q;

    // notcmp206293_pop100666_mux(MUX,52)
    assign notcmp206293_pop100666_mux_s = in_valid_in_0;
    always @(notcmp206293_pop100666_mux_s or in_notcmp206293_pop100666_1 or in_notcmp206293_pop100666_0)
    begin
        unique case (notcmp206293_pop100666_mux_s)
            1'b0 : notcmp206293_pop100666_mux_q = in_notcmp206293_pop100666_1;
            1'b1 : notcmp206293_pop100666_mux_q = in_notcmp206293_pop100666_0;
            default : notcmp206293_pop100666_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206293_pop100666(GPOUT,68)
    assign out_notcmp206293_pop100666 = notcmp206293_pop100666_mux_q;

    // notcmp206294_pop105673_mux(MUX,53)
    assign notcmp206294_pop105673_mux_s = in_valid_in_0;
    always @(notcmp206294_pop105673_mux_s or in_notcmp206294_pop105673_1 or in_notcmp206294_pop105673_0)
    begin
        unique case (notcmp206294_pop105673_mux_s)
            1'b0 : notcmp206294_pop105673_mux_q = in_notcmp206294_pop105673_1;
            1'b1 : notcmp206294_pop105673_mux_q = in_notcmp206294_pop105673_0;
            default : notcmp206294_pop105673_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206294_pop105673(GPOUT,69)
    assign out_notcmp206294_pop105673 = notcmp206294_pop105673_mux_q;

    // notcmp206633_mux(MUX,54)
    assign notcmp206633_mux_s = in_valid_in_0;
    always @(notcmp206633_mux_s or in_notcmp206633_1 or in_notcmp206633_0)
    begin
        unique case (notcmp206633_mux_s)
            1'b0 : notcmp206633_mux_q = in_notcmp206633_1;
            1'b1 : notcmp206633_mux_q = in_notcmp206633_0;
            default : notcmp206633_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206633(GPOUT,70)
    assign out_notcmp206633 = notcmp206633_mux_q;

    // valid_or(LOGICAL,78)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,75)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,71)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,76)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,72)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tcc_0_i483_pop103671_mux(MUX,77)
    assign tcc_0_i483_pop103671_mux_s = in_valid_in_0;
    always @(tcc_0_i483_pop103671_mux_s or in_tcc_0_i483_pop103671_1 or in_tcc_0_i483_pop103671_0)
    begin
        unique case (tcc_0_i483_pop103671_mux_s)
            1'b0 : tcc_0_i483_pop103671_mux_q = in_tcc_0_i483_pop103671_1;
            1'b1 : tcc_0_i483_pop103671_mux_q = in_tcc_0_i483_pop103671_0;
            default : tcc_0_i483_pop103671_mux_q = 32'b0;
        endcase
    end

    // out_tcc_0_i483_pop103671(GPOUT,73)
    assign out_tcc_0_i483_pop103671 = tcc_0_i483_pop103671_mux_q;

    // out_valid_out(GPOUT,74)
    assign out_valid_out = valid_or_q;

endmodule
