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

// SystemVerilog created from cnn_top_conv_process_B5_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B5_merge (
    input wire [0:0] in_forked115_0,
    input wire [0:0] in_forked115_1,
    input wire [0:0] in_notcmp226591_0,
    input wire [0:0] in_notcmp226591_1,
    input wire [31:0] in_r_0_i496_pop63592_0,
    input wire [31:0] in_r_0_i496_pop63592_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked115,
    output wire [0:0] out_notcmp226591,
    output wire [31:0] out_r_0_i496_pop63592,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked115_mux_s;
    reg [0:0] forked115_mux_q;
    wire [0:0] notcmp226591_mux_s;
    reg [0:0] notcmp226591_mux_q;
    wire [0:0] r_0_i496_pop63592_mux_s;
    reg [31:0] r_0_i496_pop63592_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked115_mux(MUX,2)
    assign forked115_mux_s = in_valid_in_0;
    always @(forked115_mux_s or in_forked115_1 or in_forked115_0)
    begin
        unique case (forked115_mux_s)
            1'b0 : forked115_mux_q = in_forked115_1;
            1'b1 : forked115_mux_q = in_forked115_0;
            default : forked115_mux_q = 1'b0;
        endcase
    end

    // out_forked115(GPOUT,13)
    assign out_forked115 = forked115_mux_q;

    // notcmp226591_mux(MUX,12)
    assign notcmp226591_mux_s = in_valid_in_0;
    always @(notcmp226591_mux_s or in_notcmp226591_1 or in_notcmp226591_0)
    begin
        unique case (notcmp226591_mux_s)
            1'b0 : notcmp226591_mux_q = in_notcmp226591_1;
            1'b1 : notcmp226591_mux_q = in_notcmp226591_0;
            default : notcmp226591_mux_q = 1'b0;
        endcase
    end

    // out_notcmp226591(GPOUT,14)
    assign out_notcmp226591 = notcmp226591_mux_q;

    // r_0_i496_pop63592_mux(MUX,19)
    assign r_0_i496_pop63592_mux_s = in_valid_in_0;
    always @(r_0_i496_pop63592_mux_s or in_r_0_i496_pop63592_1 or in_r_0_i496_pop63592_0)
    begin
        unique case (r_0_i496_pop63592_mux_s)
            1'b0 : r_0_i496_pop63592_mux_q = in_r_0_i496_pop63592_1;
            1'b1 : r_0_i496_pop63592_mux_q = in_r_0_i496_pop63592_0;
            default : r_0_i496_pop63592_mux_q = 32'b0;
        endcase
    end

    // out_r_0_i496_pop63592(GPOUT,15)
    assign out_r_0_i496_pop63592 = r_0_i496_pop63592_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,17)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,18)
    assign out_valid_out = valid_or_q;

endmodule
