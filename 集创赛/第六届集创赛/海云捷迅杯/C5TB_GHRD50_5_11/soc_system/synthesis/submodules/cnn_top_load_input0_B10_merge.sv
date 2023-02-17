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

// SystemVerilog created from cnn_top_load_input0_B10_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input0_B10_merge (
    input wire [0:0] in_forked49_0,
    input wire [0:0] in_forked49_1,
    input wire [31:0] in_li_073120_0,
    input wire [31:0] in_li_073120_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_load_input042_0,
    input wire [0:0] in_unnamed_load_input042_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked49,
    output wire [31:0] out_li_073120,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_load_input042,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked49_mux_s;
    reg [0:0] forked49_mux_q;
    wire [0:0] li_073120_mux_s;
    reg [31:0] li_073120_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_load_input042_mux_s;
    reg [0:0] unnamed_load_input042_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked49_mux(MUX,2)
    assign forked49_mux_s = in_valid_in_0;
    always @(forked49_mux_s or in_forked49_1 or in_forked49_0)
    begin
        unique case (forked49_mux_s)
            1'b0 : forked49_mux_q = in_forked49_1;
            1'b1 : forked49_mux_q = in_forked49_0;
            default : forked49_mux_q = 1'b0;
        endcase
    end

    // out_forked49(GPOUT,13)
    assign out_forked49 = forked49_mux_q;

    // li_073120_mux(MUX,12)
    assign li_073120_mux_s = in_valid_in_0;
    always @(li_073120_mux_s or in_li_073120_1 or in_li_073120_0)
    begin
        unique case (li_073120_mux_s)
            1'b0 : li_073120_mux_q = in_li_073120_1;
            1'b1 : li_073120_mux_q = in_li_073120_0;
            default : li_073120_mux_q = 32'b0;
        endcase
    end

    // out_li_073120(GPOUT,14)
    assign out_li_073120 = li_073120_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,19)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,15)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,20)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,16)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_load_input042_mux(MUX,21)
    assign unnamed_load_input042_mux_s = in_valid_in_0;
    always @(unnamed_load_input042_mux_s or in_unnamed_load_input042_1 or in_unnamed_load_input042_0)
    begin
        unique case (unnamed_load_input042_mux_s)
            1'b0 : unnamed_load_input042_mux_q = in_unnamed_load_input042_1;
            1'b1 : unnamed_load_input042_mux_q = in_unnamed_load_input042_0;
            default : unnamed_load_input042_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_load_input042(GPOUT,17)
    assign out_unnamed_load_input042 = unnamed_load_input042_mux_q;

    // out_valid_out(GPOUT,18)
    assign out_valid_out = valid_or_q;

endmodule
