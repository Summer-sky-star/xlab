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

// SystemVerilog created from cnn_top_conv_process_B24_branch
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_conv_process_B24_branch (
    input wire [0:0] in_c1_exe10,
    input wire [0:0] in_c1_exe11,
    input wire [0:0] in_c1_exe6,
    input wire [0:0] in_c1_exe7,
    input wire [0:0] in_c1_exe8,
    input wire [0:0] in_c1_exe9,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c1_exe10,
    output wire [0:0] out_c1_exe11,
    output wire [0:0] out_c1_exe7,
    output wire [0:0] out_c1_exe8,
    output wire [0:0] out_c1_exe9,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c1_exe10_reg_q;
    reg [0:0] c1_exe11_reg_q;
    wire [0:0] c1_exe6_cmp_q;
    reg [0:0] c1_exe7_reg_q;
    reg [0:0] c1_exe8_reg_q;
    reg [0:0] c1_exe9_reg_q;
    wire [0:0] conv_process_B24_branch_enable_q;
    wire [0:0] conv_process_B24_branch_enable_not_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,20)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c1_exe6_cmp(LOGICAL,4)
    assign c1_exe6_cmp_q = ~ (in_c1_exe6);

    // valid_out_1_and(LOGICAL,36)
    assign valid_out_1_and_q = in_valid_in & c1_exe6_cmp_q;

    // valid_1_reg(REG,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,22)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,24)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,19)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,35)
    assign valid_out_0_and_q = in_valid_in & in_c1_exe6;

    // valid_0_reg(REG,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,21)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,23)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // conv_process_B24_branch_enable(LOGICAL,8)
    assign conv_process_B24_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c1_exe10_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe10_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            c1_exe10_reg_q <= in_c1_exe10;
        end
    end

    // out_c1_exe10(GPOUT,25)
    assign out_c1_exe10 = c1_exe10_reg_q;

    // c1_exe11_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe11_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            c1_exe11_reg_q <= in_c1_exe11;
        end
    end

    // out_c1_exe11(GPOUT,26)
    assign out_c1_exe11 = c1_exe11_reg_q;

    // c1_exe7_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe7_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            c1_exe7_reg_q <= in_c1_exe7;
        end
    end

    // out_c1_exe7(GPOUT,27)
    assign out_c1_exe7 = c1_exe7_reg_q;

    // c1_exe8_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe8_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            c1_exe8_reg_q <= in_c1_exe8;
        end
    end

    // out_c1_exe8(GPOUT,28)
    assign out_c1_exe8 = c1_exe8_reg_q;

    // c1_exe9_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c1_exe9_reg_q <= $unsigned(1'b0);
        end
        else if (conv_process_B24_branch_enable_q == 1'b1)
        begin
            c1_exe9_reg_q <= in_c1_exe9;
        end
    end

    // out_c1_exe9(GPOUT,29)
    assign out_c1_exe9 = c1_exe9_reg_q;

    // conv_process_B24_branch_enable_not(LOGICAL,9)
    assign conv_process_B24_branch_enable_not_q = ~ (conv_process_B24_branch_enable_q);

    // out_stall_out(GPOUT,30)
    assign out_stall_out = conv_process_B24_branch_enable_not_q;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,32)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
