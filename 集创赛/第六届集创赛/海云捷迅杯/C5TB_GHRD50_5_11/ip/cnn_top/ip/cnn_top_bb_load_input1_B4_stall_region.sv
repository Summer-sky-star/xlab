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

// SystemVerilog created from cnn_top_bb_load_input1_B4_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B4_stall_region (
    output wire [0:0] out_intel_reserved_ffwd_21_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_22_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_valid_out;
    wire [0:0] i_unnamed_load_input12_q;
    wire [0:0] i_unnamed_load_input14_q;
    wire [0:0] i_unnamed_load_input16_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_V0;
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


    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10(BITJOIN,43)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_q = i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10(BITSELECT,44)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11(BITJOIN,49)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11(BITSELECT,50)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_q[0:0]);

    // i_unnamed_load_input12(LOGICAL,16)@1
    assign i_unnamed_load_input12_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_b & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_b;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17(BLACKBOX,13)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput130_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(i_unnamed_load_input12_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V1),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_intel_reserved_ffwd_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15(BITJOIN,52)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15(BITSELECT,53)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_q[0:0]);

    // i_unnamed_load_input16(LOGICAL,18)@1
    assign i_unnamed_load_input16_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput132_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(i_unnamed_load_input16_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_V0),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_intel_reserved_ffwd_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_19_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput129_load_input10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,78)
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
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_input129_load_input15_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
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

    // i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10 thei_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_19_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput128_load_input10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11(STALLENABLE,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp517941_load_input10_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_and0;

    // i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input10 thei_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_and0 = i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input128_load_input11_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and1 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13(BITJOIN,46)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_q = i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13(BITSELECT,47)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_q[0:0]);

    // i_unnamed_load_input14(LOGICAL,17)@1
    assign i_unnamed_load_input14_q = i_unnamed_load_input12_q & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_b;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput131_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(i_unnamed_load_input14_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp607442_load_input13_V0),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input131_load_input18_out_intel_reserved_ffwd_21_0;

    // dupName_0_sync_out_x(GPOUT,3)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_V0;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input132_load_input19_out_intel_reserved_ffwd_22_0;

    // regfree_osync(GPOUT,36)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input130_load_input17_out_intel_reserved_ffwd_20_0;

    // sync_out(GPOUT,40)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
