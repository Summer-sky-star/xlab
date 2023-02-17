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

// SystemVerilog created from cnn_top_bb_B6_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B6_stall_region (
    output wire [31:0] out_pre1,
    output wire [0:0] out_unnamed_cnn_top54,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_pre1,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [33:0] i_cmp_i_cnn_top2_a;
    wire [33:0] i_cmp_i_cnn_top2_b;
    logic [33:0] i_cmp_i_cnn_top2_o;
    wire [0:0] i_cmp_i_cnn_top2_c;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_dest_data_out_36_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_dest_data_out_37_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_valid_out;
    wire [0:0] i_unnamed_cnn_top5_q;
    reg [31:0] redist0_stall_entry_o4_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_b;
    wire [31:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    reg [0:0] SE_redist0_stall_entry_o4_1_0_R_v_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_v_s_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_s_tv_0;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backEN;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_backStall;
    wire [0:0] SE_redist0_stall_entry_o4_1_0_V0;


    // SE_stall_entry(STALLENABLE,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (SE_redist0_stall_entry_o4_1_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed3 & SE_stall_entry_or2);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist0_stall_entry_o4_1_0(STALLENABLE,56)
    // Valid signal propagation
    assign SE_redist0_stall_entry_o4_1_0_V0 = SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_stall_entry_o4_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall & SE_redist0_stall_entry_o4_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_stall_entry_o4_1_0_backEN = ~ (SE_redist0_stall_entry_o4_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_stall_entry_o4_1_0_v_s_0 = SE_redist0_stall_entry_o4_1_0_backEN & SE_stall_entry_V3;
    // Backward Stall generation
    assign SE_redist0_stall_entry_o4_1_0_backStall = ~ (SE_redist0_stall_entry_o4_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_stall_entry_o4_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b0)
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_R_v_0 & SE_redist0_stall_entry_o4_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_stall_entry_o4_1_0_R_v_0 <= SE_redist0_stall_entry_o4_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_36_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed_55_cnn_top0 thei_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_dest_data_out_36_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_21_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_0 thei_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_dest_data_out_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_37_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_too_i_011751_0 thei_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_dest_data_out_37_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and0 = i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and1 = i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and2 = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_wireValid = SE_redist0_stall_entry_o4_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_and2;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4(BITJOIN,29)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_q = i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_out_dest_data_out_36_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4(BITSELECT,30)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0(BITJOIN,33)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_q = i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_out_dest_data_out_21_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0(BITSELECT,34)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_q = i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_out_dest_data_out_37_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_q[31:0]);

    // i_cmp_i_cnn_top2(COMPARE,5)@1
    assign i_cmp_i_cnn_top2_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_b});
    assign i_cmp_i_cnn_top2_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_sdiv_sh35_cnn_top0_b});
    assign i_cmp_i_cnn_top2_o = $unsigned($signed(i_cmp_i_cnn_top2_a) - $signed(i_cmp_i_cnn_top2_b));
    assign i_cmp_i_cnn_top2_c[0] = i_cmp_i_cnn_top2_o[33];

    // i_unnamed_cnn_top5(LOGICAL,9)@1
    assign i_unnamed_cnn_top5_q = i_cmp_i_cnn_top2_c & bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_cnn_top55_cnn_top4_b;

    // bubble_join_stall_entry(BITJOIN,41)
    assign bubble_join_stall_entry_q = in_pre1;

    // bubble_select_stall_entry(BITSELECT,42)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);

    // redist0_stall_entry_o4_1_0(REG,27)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_stall_entry_o4_1_0_backEN == 1'b1)
        begin
            redist0_stall_entry_o4_1_0_q <= $unsigned(bubble_select_stall_entry_b);
        end
    end

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_pre1 = redist0_stall_entry_o4_1_0_q;
    assign out_unnamed_cnn_top54 = i_unnamed_cnn_top5_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i32_too_i_011751_cnn_top1_V0;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
