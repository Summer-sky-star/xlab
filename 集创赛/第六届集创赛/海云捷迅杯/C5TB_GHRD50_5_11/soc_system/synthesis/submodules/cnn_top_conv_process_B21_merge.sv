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

// SystemVerilog created from cnn_top_conv_process_B21_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B21_merge (
    input wire [0:0] in_forked126_0,
    input wire [0:0] in_forked126_1,
    input wire [0:0] in_lnot281_pop74641_0,
    input wire [0:0] in_lnot281_pop74641_1,
    input wire [0:0] in_lnot282_pop83652_0,
    input wire [0:0] in_lnot282_pop83652_1,
    input wire [0:0] in_lnot283_pop99661_0,
    input wire [0:0] in_lnot283_pop99661_1,
    input wire [0:0] in_lnot626_0,
    input wire [0:0] in_lnot626_1,
    input wire [0:0] in_notcmp198658_0,
    input wire [0:0] in_notcmp198658_1,
    input wire [0:0] in_notcmp202299_pop101667_0,
    input wire [0:0] in_notcmp202299_pop101667_1,
    input wire [0:0] in_notcmp202647_0,
    input wire [0:0] in_notcmp202647_1,
    input wire [0:0] in_notcmp206292_pop84657_0,
    input wire [0:0] in_notcmp206292_pop84657_1,
    input wire [0:0] in_notcmp206293_pop100664_0,
    input wire [0:0] in_notcmp206293_pop100664_1,
    input wire [0:0] in_notcmp206634_0,
    input wire [0:0] in_notcmp206634_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked126,
    output wire [0:0] out_lnot281_pop74641,
    output wire [0:0] out_lnot282_pop83652,
    output wire [0:0] out_lnot283_pop99661,
    output wire [0:0] out_lnot626,
    output wire [0:0] out_notcmp198658,
    output wire [0:0] out_notcmp202299_pop101667,
    output wire [0:0] out_notcmp202647,
    output wire [0:0] out_notcmp206292_pop84657,
    output wire [0:0] out_notcmp206293_pop100664,
    output wire [0:0] out_notcmp206634,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked126_mux_s;
    reg [0:0] forked126_mux_q;
    wire [0:0] lnot281_pop74641_mux_s;
    reg [0:0] lnot281_pop74641_mux_q;
    wire [0:0] lnot282_pop83652_mux_s;
    reg [0:0] lnot282_pop83652_mux_q;
    wire [0:0] lnot283_pop99661_mux_s;
    reg [0:0] lnot283_pop99661_mux_q;
    wire [0:0] lnot626_mux_s;
    reg [0:0] lnot626_mux_q;
    wire [0:0] notcmp198658_mux_s;
    reg [0:0] notcmp198658_mux_q;
    wire [0:0] notcmp202299_pop101667_mux_s;
    reg [0:0] notcmp202299_pop101667_mux_q;
    wire [0:0] notcmp202647_mux_s;
    reg [0:0] notcmp202647_mux_q;
    wire [0:0] notcmp206292_pop84657_mux_s;
    reg [0:0] notcmp206292_pop84657_mux_q;
    wire [0:0] notcmp206293_pop100664_mux_s;
    reg [0:0] notcmp206293_pop100664_mux_q;
    wire [0:0] notcmp206634_mux_s;
    reg [0:0] notcmp206634_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked126_mux(MUX,2)
    assign forked126_mux_s = in_valid_in_0;
    always @(forked126_mux_s or in_forked126_1 or in_forked126_0)
    begin
        unique case (forked126_mux_s)
            1'b0 : forked126_mux_q = in_forked126_1;
            1'b1 : forked126_mux_q = in_forked126_0;
            default : forked126_mux_q = 1'b0;
        endcase
    end

    // out_forked126(GPOUT,38)
    assign out_forked126 = forked126_mux_q;

    // lnot281_pop74641_mux(MUX,28)
    assign lnot281_pop74641_mux_s = in_valid_in_0;
    always @(lnot281_pop74641_mux_s or in_lnot281_pop74641_1 or in_lnot281_pop74641_0)
    begin
        unique case (lnot281_pop74641_mux_s)
            1'b0 : lnot281_pop74641_mux_q = in_lnot281_pop74641_1;
            1'b1 : lnot281_pop74641_mux_q = in_lnot281_pop74641_0;
            default : lnot281_pop74641_mux_q = 1'b0;
        endcase
    end

    // out_lnot281_pop74641(GPOUT,39)
    assign out_lnot281_pop74641 = lnot281_pop74641_mux_q;

    // lnot282_pop83652_mux(MUX,29)
    assign lnot282_pop83652_mux_s = in_valid_in_0;
    always @(lnot282_pop83652_mux_s or in_lnot282_pop83652_1 or in_lnot282_pop83652_0)
    begin
        unique case (lnot282_pop83652_mux_s)
            1'b0 : lnot282_pop83652_mux_q = in_lnot282_pop83652_1;
            1'b1 : lnot282_pop83652_mux_q = in_lnot282_pop83652_0;
            default : lnot282_pop83652_mux_q = 1'b0;
        endcase
    end

    // out_lnot282_pop83652(GPOUT,40)
    assign out_lnot282_pop83652 = lnot282_pop83652_mux_q;

    // lnot283_pop99661_mux(MUX,30)
    assign lnot283_pop99661_mux_s = in_valid_in_0;
    always @(lnot283_pop99661_mux_s or in_lnot283_pop99661_1 or in_lnot283_pop99661_0)
    begin
        unique case (lnot283_pop99661_mux_s)
            1'b0 : lnot283_pop99661_mux_q = in_lnot283_pop99661_1;
            1'b1 : lnot283_pop99661_mux_q = in_lnot283_pop99661_0;
            default : lnot283_pop99661_mux_q = 1'b0;
        endcase
    end

    // out_lnot283_pop99661(GPOUT,41)
    assign out_lnot283_pop99661 = lnot283_pop99661_mux_q;

    // lnot626_mux(MUX,31)
    assign lnot626_mux_s = in_valid_in_0;
    always @(lnot626_mux_s or in_lnot626_1 or in_lnot626_0)
    begin
        unique case (lnot626_mux_s)
            1'b0 : lnot626_mux_q = in_lnot626_1;
            1'b1 : lnot626_mux_q = in_lnot626_0;
            default : lnot626_mux_q = 1'b0;
        endcase
    end

    // out_lnot626(GPOUT,42)
    assign out_lnot626 = lnot626_mux_q;

    // notcmp198658_mux(MUX,32)
    assign notcmp198658_mux_s = in_valid_in_0;
    always @(notcmp198658_mux_s or in_notcmp198658_1 or in_notcmp198658_0)
    begin
        unique case (notcmp198658_mux_s)
            1'b0 : notcmp198658_mux_q = in_notcmp198658_1;
            1'b1 : notcmp198658_mux_q = in_notcmp198658_0;
            default : notcmp198658_mux_q = 1'b0;
        endcase
    end

    // out_notcmp198658(GPOUT,43)
    assign out_notcmp198658 = notcmp198658_mux_q;

    // notcmp202299_pop101667_mux(MUX,33)
    assign notcmp202299_pop101667_mux_s = in_valid_in_0;
    always @(notcmp202299_pop101667_mux_s or in_notcmp202299_pop101667_1 or in_notcmp202299_pop101667_0)
    begin
        unique case (notcmp202299_pop101667_mux_s)
            1'b0 : notcmp202299_pop101667_mux_q = in_notcmp202299_pop101667_1;
            1'b1 : notcmp202299_pop101667_mux_q = in_notcmp202299_pop101667_0;
            default : notcmp202299_pop101667_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202299_pop101667(GPOUT,44)
    assign out_notcmp202299_pop101667 = notcmp202299_pop101667_mux_q;

    // notcmp202647_mux(MUX,34)
    assign notcmp202647_mux_s = in_valid_in_0;
    always @(notcmp202647_mux_s or in_notcmp202647_1 or in_notcmp202647_0)
    begin
        unique case (notcmp202647_mux_s)
            1'b0 : notcmp202647_mux_q = in_notcmp202647_1;
            1'b1 : notcmp202647_mux_q = in_notcmp202647_0;
            default : notcmp202647_mux_q = 1'b0;
        endcase
    end

    // out_notcmp202647(GPOUT,45)
    assign out_notcmp202647 = notcmp202647_mux_q;

    // notcmp206292_pop84657_mux(MUX,35)
    assign notcmp206292_pop84657_mux_s = in_valid_in_0;
    always @(notcmp206292_pop84657_mux_s or in_notcmp206292_pop84657_1 or in_notcmp206292_pop84657_0)
    begin
        unique case (notcmp206292_pop84657_mux_s)
            1'b0 : notcmp206292_pop84657_mux_q = in_notcmp206292_pop84657_1;
            1'b1 : notcmp206292_pop84657_mux_q = in_notcmp206292_pop84657_0;
            default : notcmp206292_pop84657_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206292_pop84657(GPOUT,46)
    assign out_notcmp206292_pop84657 = notcmp206292_pop84657_mux_q;

    // notcmp206293_pop100664_mux(MUX,36)
    assign notcmp206293_pop100664_mux_s = in_valid_in_0;
    always @(notcmp206293_pop100664_mux_s or in_notcmp206293_pop100664_1 or in_notcmp206293_pop100664_0)
    begin
        unique case (notcmp206293_pop100664_mux_s)
            1'b0 : notcmp206293_pop100664_mux_q = in_notcmp206293_pop100664_1;
            1'b1 : notcmp206293_pop100664_mux_q = in_notcmp206293_pop100664_0;
            default : notcmp206293_pop100664_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206293_pop100664(GPOUT,47)
    assign out_notcmp206293_pop100664 = notcmp206293_pop100664_mux_q;

    // notcmp206634_mux(MUX,37)
    assign notcmp206634_mux_s = in_valid_in_0;
    always @(notcmp206634_mux_s or in_notcmp206634_1 or in_notcmp206634_0)
    begin
        unique case (notcmp206634_mux_s)
            1'b0 : notcmp206634_mux_q = in_notcmp206634_1;
            1'b1 : notcmp206634_mux_q = in_notcmp206634_0;
            default : notcmp206634_mux_q = 1'b0;
        endcase
    end

    // out_notcmp206634(GPOUT,48)
    assign out_notcmp206634 = notcmp206634_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,52)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,49)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,53)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,50)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,51)
    assign out_valid_out = valid_or_q;

endmodule
