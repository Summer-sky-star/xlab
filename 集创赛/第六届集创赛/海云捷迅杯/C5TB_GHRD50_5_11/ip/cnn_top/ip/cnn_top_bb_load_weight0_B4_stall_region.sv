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

// SystemVerilog created from cnn_top_bb_load_weight0_B4_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B4_stall_region (
    output wire [0:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_9_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_dest_data_out_9_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_intel_reserved_ffwd_20_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_valid_out;
    wire [0:0] i_unnamed_load_weight02_q;
    wire [0:0] i_unnamed_load_weight04_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_V0;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;


    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00(BITJOIN,34)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_q = i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_dest_data_out_9_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00(BITSELECT,35)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01(BITJOIN,37)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01(BITSELECT,38)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_q[0:0]);

    // i_unnamed_load_weight02(LOGICAL,13)@1
    assign i_unnamed_load_weight02_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_b & bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_b;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05(BLACKBOX,11)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght029_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(i_unnamed_load_weight02_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_V0),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01(STALLENABLE,50)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_and0;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght027_load_weight00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_9_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00 thei_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_dest_data_out_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp517239_load_weight00_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight027_load_weight01_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght028_load_weight00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03(STALLENABLE,52)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06(STALLENABLE,56)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_and0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_and0;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03(BITJOIN,40)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03(BITSELECT,41)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_q[0:0]);

    // i_unnamed_load_weight04(LOGICAL,14)@1
    assign i_unnamed_load_weight04_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06(BLACKBOX,12)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght030_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(i_unnamed_load_weight04_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight028_load_weight03_V0),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_intel_reserved_ffwd_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_out_intel_reserved_ffwd_20_0;

    // dupName_0_sync_out_x(GPOUT,3)@1
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_load_weight030_load_weight06_V0;

    // regfree_osync(GPOUT,27)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight029_load_weight05_out_intel_reserved_ffwd_19_0;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
