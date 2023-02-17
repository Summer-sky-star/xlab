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

// SystemVerilog created from cnn_top_B7_merge
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_B7_merge (
    input wire [31:0] in_pre2_0,
    input wire [31:0] in_pre2_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_tr_i_0115_0,
    input wire [31:0] in_tr_i_0115_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_pre2,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_tr_i_0115,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] pre2_mux_s;
    reg [31:0] pre2_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] tr_i_0115_mux_s;
    reg [31:0] tr_i_0115_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // pre2_mux(MUX,14)
    assign pre2_mux_s = in_valid_in_0;
    always @(pre2_mux_s or in_pre2_1 or in_pre2_0)
    begin
        unique case (pre2_mux_s)
            1'b0 : pre2_mux_q = in_pre2_1;
            1'b1 : pre2_mux_q = in_pre2_0;
            default : pre2_mux_q = 32'b0;
        endcase
    end

    // out_pre2(GPOUT,9)
    assign out_pre2 = pre2_mux_q;

    // valid_or(LOGICAL,18)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,15)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,16)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,11)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // tr_i_0115_mux(MUX,17)
    assign tr_i_0115_mux_s = in_valid_in_0;
    always @(tr_i_0115_mux_s or in_tr_i_0115_1 or in_tr_i_0115_0)
    begin
        unique case (tr_i_0115_mux_s)
            1'b0 : tr_i_0115_mux_q = in_tr_i_0115_1;
            1'b1 : tr_i_0115_mux_q = in_tr_i_0115_0;
            default : tr_i_0115_mux_q = 32'b0;
        endcase
    end

    // out_tr_i_0115(GPOUT,12)
    assign out_tr_i_0115 = tr_i_0115_mux_q;

    // out_valid_out(GPOUT,13)
    assign out_valid_out = valid_or_q;

endmodule
