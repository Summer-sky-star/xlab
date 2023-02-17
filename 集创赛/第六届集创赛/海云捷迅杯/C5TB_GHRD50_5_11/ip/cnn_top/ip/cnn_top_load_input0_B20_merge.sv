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

// SystemVerilog created from cnn_top_load_input0_B20_merge
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_load_input0_B20_merge (
    input wire [0:0] in_cmp1779_phi_decision35_replace_phi_dir_0,
    input wire [0:0] in_cmp1779_phi_decision35_replace_phi_dir_1,
    input wire [0:0] in_cmp83_phi_decision29_replace_phi_dir_0,
    input wire [0:0] in_cmp83_phi_decision29_replace_phi_dir_1,
    input wire [0:0] in_phi_decision47_replace_phi_dir_0,
    input wire [0:0] in_phi_decision47_replace_phi_dir_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_cmp1779_phi_decision35_replace_phi_dir,
    output wire [0:0] out_cmp83_phi_decision29_replace_phi_dir,
    output wire [0:0] out_phi_decision47_replace_phi_dir,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] cmp1779_phi_decision35_replace_phi_dir_mux_s;
    reg [0:0] cmp1779_phi_decision35_replace_phi_dir_mux_q;
    wire [0:0] cmp83_phi_decision29_replace_phi_dir_mux_s;
    reg [0:0] cmp83_phi_decision29_replace_phi_dir_mux_q;
    wire [0:0] phi_decision47_replace_phi_dir_mux_s;
    reg [0:0] phi_decision47_replace_phi_dir_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // cmp1779_phi_decision35_replace_phi_dir_mux(MUX,2)
    assign cmp1779_phi_decision35_replace_phi_dir_mux_s = in_valid_in_0;
    always @(cmp1779_phi_decision35_replace_phi_dir_mux_s or in_cmp1779_phi_decision35_replace_phi_dir_1 or in_cmp1779_phi_decision35_replace_phi_dir_0)
    begin
        unique case (cmp1779_phi_decision35_replace_phi_dir_mux_s)
            1'b0 : cmp1779_phi_decision35_replace_phi_dir_mux_q = in_cmp1779_phi_decision35_replace_phi_dir_1;
            1'b1 : cmp1779_phi_decision35_replace_phi_dir_mux_q = in_cmp1779_phi_decision35_replace_phi_dir_0;
            default : cmp1779_phi_decision35_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_cmp1779_phi_decision35_replace_phi_dir(GPOUT,13)
    assign out_cmp1779_phi_decision35_replace_phi_dir = cmp1779_phi_decision35_replace_phi_dir_mux_q;

    // cmp83_phi_decision29_replace_phi_dir_mux(MUX,3)
    assign cmp83_phi_decision29_replace_phi_dir_mux_s = in_valid_in_0;
    always @(cmp83_phi_decision29_replace_phi_dir_mux_s or in_cmp83_phi_decision29_replace_phi_dir_1 or in_cmp83_phi_decision29_replace_phi_dir_0)
    begin
        unique case (cmp83_phi_decision29_replace_phi_dir_mux_s)
            1'b0 : cmp83_phi_decision29_replace_phi_dir_mux_q = in_cmp83_phi_decision29_replace_phi_dir_1;
            1'b1 : cmp83_phi_decision29_replace_phi_dir_mux_q = in_cmp83_phi_decision29_replace_phi_dir_0;
            default : cmp83_phi_decision29_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_cmp83_phi_decision29_replace_phi_dir(GPOUT,14)
    assign out_cmp83_phi_decision29_replace_phi_dir = cmp83_phi_decision29_replace_phi_dir_mux_q;

    // phi_decision47_replace_phi_dir_mux(MUX,19)
    assign phi_decision47_replace_phi_dir_mux_s = in_valid_in_0;
    always @(phi_decision47_replace_phi_dir_mux_s or in_phi_decision47_replace_phi_dir_1 or in_phi_decision47_replace_phi_dir_0)
    begin
        unique case (phi_decision47_replace_phi_dir_mux_s)
            1'b0 : phi_decision47_replace_phi_dir_mux_q = in_phi_decision47_replace_phi_dir_1;
            1'b1 : phi_decision47_replace_phi_dir_mux_q = in_phi_decision47_replace_phi_dir_0;
            default : phi_decision47_replace_phi_dir_mux_q = 1'b0;
        endcase
    end

    // out_phi_decision47_replace_phi_dir(GPOUT,15)
    assign out_phi_decision47_replace_phi_dir = phi_decision47_replace_phi_dir_mux_q;

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
