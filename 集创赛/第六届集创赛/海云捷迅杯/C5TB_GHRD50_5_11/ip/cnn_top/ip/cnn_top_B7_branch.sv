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

// SystemVerilog created from cnn_top_B7_branch
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_B7_branch (
    input wire [31:0] in_inc_i,
    input wire [31:0] in_pre2,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_cnn_top56,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_inc_i,
    output wire [31:0] out_pre2,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] cnn_top_B7_branch_enable_q;
    wire [0:0] cnn_top_B7_branch_enable_not_q;
    reg [31:0] inc_i_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [31:0] pre2_reg_q;
    wire [0:0] unnamed_cnn_top56_cmp_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,12)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // unnamed_cnn_top56_cmp(LOGICAL,23)
    assign unnamed_cnn_top56_cmp_q = ~ (in_unnamed_cnn_top56);

    // valid_out_1_and(LOGICAL,27)
    assign valid_out_1_and_q = in_valid_in & unnamed_cnn_top56_cmp_q;

    // valid_1_reg(REG,25)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (cnn_top_B7_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,14)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,16)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,11)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,26)
    assign valid_out_0_and_q = in_valid_in & in_unnamed_cnn_top56;

    // valid_0_reg(REG,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (cnn_top_B7_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,13)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,15)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // cnn_top_B7_branch_enable(LOGICAL,2)
    assign cnn_top_B7_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // inc_i_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            inc_i_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (cnn_top_B7_branch_enable_q == 1'b1)
        begin
            inc_i_reg_q <= in_inc_i;
        end
    end

    // out_inc_i(GPOUT,17)
    assign out_inc_i = inc_i_reg_q;

    // pre2_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            pre2_reg_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (cnn_top_B7_branch_enable_q == 1'b1)
        begin
            pre2_reg_q <= in_pre2;
        end
    end

    // out_pre2(GPOUT,18)
    assign out_pre2 = pre2_reg_q;

    // cnn_top_B7_branch_enable_not(LOGICAL,3)
    assign cnn_top_B7_branch_enable_not_q = ~ (cnn_top_B7_branch_enable_q);

    // out_stall_out(GPOUT,19)
    assign out_stall_out = cnn_top_B7_branch_enable_not_q;

    // out_valid_out_0(GPOUT,20)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,21)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
