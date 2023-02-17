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

// SystemVerilog created from cnn_top_bb_conv_process_B8
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B8 (
    output wire [31:0] out_intel_reserved_ffwd_65_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_2_tpl,
    output wire [63:0] out_intel_reserved_ffwd_59_0,
    output wire [0:0] out_intel_reserved_ffwd_60_0,
    output wire [31:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [31:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [32:0] out_intel_reserved_ffwd_74_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    input wire [31:0] in_intel_reserved_ffwd_48_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_2_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_0_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_1_tpl;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_2_tpl;
    wire [63:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_59_0;
    wire [0:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_60_0;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_61_0;
    wire [0:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_62_0;
    wire [0:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_63_0;
    wire [31:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_64_0;
    wire [0:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_73_0;
    wire [32:0] bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_74_0;
    wire [0:0] bb_conv_process_B8_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B8_stall_region_out_valid_out;
    wire [0:0] conv_process_B8_branch_out_stall_out;
    wire [0:0] conv_process_B8_branch_out_valid_out_0;
    wire [0:0] conv_process_B8_merge_out_stall_out_0;
    wire [0:0] conv_process_B8_merge_out_valid_out;


    // conv_process_B8_merge(BLACKBOX,38)
    cnn_top_conv_process_B8_merge theconv_process_B8_merge (
        .in_stall_in(bb_conv_process_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(conv_process_B8_merge_out_stall_out_0),
        .out_valid_out(conv_process_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B8_branch(BLACKBOX,37)
    cnn_top_conv_process_B8_branch theconv_process_B8_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B8_stall_region_out_valid_out),
        .out_stall_out(conv_process_B8_branch_out_stall_out),
        .out_valid_out_0(conv_process_B8_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B8_stall_region(BLACKBOX,36)
    cnn_top_bb_conv_process_B8_stall_region thebb_conv_process_B8_stall_region (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(conv_process_B8_branch_out_stall_out),
        .in_valid_in(conv_process_B8_merge_out_valid_out),
        .out_intel_reserved_ffwd_65_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_intel_reserved_ffwd_66_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_intel_reserved_ffwd_67_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_intel_reserved_ffwd_68_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_intel_reserved_ffwd_69_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_0_tpl),
        .out_intel_reserved_ffwd_69_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_1_tpl),
        .out_intel_reserved_ffwd_69_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_2_tpl),
        .out_intel_reserved_ffwd_70_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_0_tpl),
        .out_intel_reserved_ffwd_70_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_1_tpl),
        .out_intel_reserved_ffwd_70_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_2_tpl),
        .out_intel_reserved_ffwd_71_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_0_tpl),
        .out_intel_reserved_ffwd_71_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_1_tpl),
        .out_intel_reserved_ffwd_71_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_2_tpl),
        .out_intel_reserved_ffwd_72_0_0_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_0_tpl),
        .out_intel_reserved_ffwd_72_0_1_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_1_tpl),
        .out_intel_reserved_ffwd_72_0_2_tpl(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_2_tpl),
        .out_intel_reserved_ffwd_59_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_73_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_74_0),
        .out_stall_out(bb_conv_process_B8_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_intel_reserved_ffwd_65_0_0_tpl(GPOUT,2)
    assign out_intel_reserved_ffwd_65_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_0_tpl;

    // out_intel_reserved_ffwd_65_0_1_tpl(GPOUT,3)
    assign out_intel_reserved_ffwd_65_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_1_tpl;

    // out_intel_reserved_ffwd_65_0_2_tpl(GPOUT,4)
    assign out_intel_reserved_ffwd_65_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_65_0_2_tpl;

    // out_intel_reserved_ffwd_66_0_0_tpl(GPOUT,5)
    assign out_intel_reserved_ffwd_66_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_0_tpl;

    // out_intel_reserved_ffwd_66_0_1_tpl(GPOUT,6)
    assign out_intel_reserved_ffwd_66_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_1_tpl;

    // out_intel_reserved_ffwd_66_0_2_tpl(GPOUT,7)
    assign out_intel_reserved_ffwd_66_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_66_0_2_tpl;

    // out_intel_reserved_ffwd_67_0_0_tpl(GPOUT,8)
    assign out_intel_reserved_ffwd_67_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_0_tpl;

    // out_intel_reserved_ffwd_67_0_1_tpl(GPOUT,9)
    assign out_intel_reserved_ffwd_67_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_1_tpl;

    // out_intel_reserved_ffwd_67_0_2_tpl(GPOUT,10)
    assign out_intel_reserved_ffwd_67_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_67_0_2_tpl;

    // out_intel_reserved_ffwd_68_0_0_tpl(GPOUT,11)
    assign out_intel_reserved_ffwd_68_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_0_tpl;

    // out_intel_reserved_ffwd_68_0_1_tpl(GPOUT,12)
    assign out_intel_reserved_ffwd_68_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_1_tpl;

    // out_intel_reserved_ffwd_68_0_2_tpl(GPOUT,13)
    assign out_intel_reserved_ffwd_68_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_68_0_2_tpl;

    // out_intel_reserved_ffwd_69_0_0_tpl(GPOUT,14)
    assign out_intel_reserved_ffwd_69_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_0_tpl;

    // out_intel_reserved_ffwd_69_0_1_tpl(GPOUT,15)
    assign out_intel_reserved_ffwd_69_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_1_tpl;

    // out_intel_reserved_ffwd_69_0_2_tpl(GPOUT,16)
    assign out_intel_reserved_ffwd_69_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_69_0_2_tpl;

    // out_intel_reserved_ffwd_70_0_0_tpl(GPOUT,17)
    assign out_intel_reserved_ffwd_70_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_0_tpl;

    // out_intel_reserved_ffwd_70_0_1_tpl(GPOUT,18)
    assign out_intel_reserved_ffwd_70_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_1_tpl;

    // out_intel_reserved_ffwd_70_0_2_tpl(GPOUT,19)
    assign out_intel_reserved_ffwd_70_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_70_0_2_tpl;

    // out_intel_reserved_ffwd_71_0_0_tpl(GPOUT,20)
    assign out_intel_reserved_ffwd_71_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_0_tpl;

    // out_intel_reserved_ffwd_71_0_1_tpl(GPOUT,21)
    assign out_intel_reserved_ffwd_71_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_1_tpl;

    // out_intel_reserved_ffwd_71_0_2_tpl(GPOUT,22)
    assign out_intel_reserved_ffwd_71_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_71_0_2_tpl;

    // out_intel_reserved_ffwd_72_0_0_tpl(GPOUT,23)
    assign out_intel_reserved_ffwd_72_0_0_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_0_tpl;

    // out_intel_reserved_ffwd_72_0_1_tpl(GPOUT,24)
    assign out_intel_reserved_ffwd_72_0_1_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_1_tpl;

    // out_intel_reserved_ffwd_72_0_2_tpl(GPOUT,25)
    assign out_intel_reserved_ffwd_72_0_2_tpl = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_72_0_2_tpl;

    // out_intel_reserved_ffwd_59_0(GPOUT,26)
    assign out_intel_reserved_ffwd_59_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_59_0;

    // out_intel_reserved_ffwd_60_0(GPOUT,27)
    assign out_intel_reserved_ffwd_60_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_60_0;

    // out_intel_reserved_ffwd_61_0(GPOUT,28)
    assign out_intel_reserved_ffwd_61_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_61_0;

    // out_intel_reserved_ffwd_62_0(GPOUT,29)
    assign out_intel_reserved_ffwd_62_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_62_0;

    // out_intel_reserved_ffwd_63_0(GPOUT,30)
    assign out_intel_reserved_ffwd_63_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_63_0;

    // out_intel_reserved_ffwd_64_0(GPOUT,31)
    assign out_intel_reserved_ffwd_64_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_64_0;

    // out_intel_reserved_ffwd_73_0(GPOUT,32)
    assign out_intel_reserved_ffwd_73_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_73_0;

    // out_intel_reserved_ffwd_74_0(GPOUT,33)
    assign out_intel_reserved_ffwd_74_0 = bb_conv_process_B8_stall_region_out_intel_reserved_ffwd_74_0;

    // out_stall_out_0(GPOUT,34)
    assign out_stall_out_0 = conv_process_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = conv_process_B8_branch_out_valid_out_0;

endmodule
