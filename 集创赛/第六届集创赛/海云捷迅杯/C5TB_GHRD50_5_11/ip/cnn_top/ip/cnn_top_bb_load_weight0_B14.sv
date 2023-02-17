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

// SystemVerilog created from cnn_top_bb_load_weight0_B14
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B14 (
    input wire [31:0] in_add79142_0,
    input wire [31:0] in_add79142_1,
    input wire [0:0] in_forked43_0,
    input wire [0:0] in_forked43_1,
    input wire [32:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_li_075117_0,
    input wire [31:0] in_li_075117_1,
    input wire [31:0] in_li_07591_pop22133_0,
    input wire [31:0] in_li_07591_pop22133_1,
    input wire [31:0] in_li_07592_pop33148_0,
    input wire [31:0] in_li_07592_pop33148_1,
    input wire [31:0] in_mul78123_0,
    input wire [31:0] in_mul78123_1,
    input wire [31:0] in_mul7897_pop35139_0,
    input wire [31:0] in_mul7897_pop35139_1,
    input wire [0:0] in_notcmp78145_0,
    input wire [0:0] in_notcmp78145_1,
    input wire [0:0] in_notcmp82100_pop36154_0,
    input wire [0:0] in_notcmp82100_pop36154_1,
    input wire [0:0] in_notcmp82128_0,
    input wire [0:0] in_notcmp82128_1,
    input wire [0:0] in_pop23138_0,
    input wire [0:0] in_pop23138_1,
    input wire [0:0] in_pop34151_0,
    input wire [0:0] in_pop34151_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_weight044_0,
    input wire [0:0] in_unnamed_load_weight044_1,
    input wire [0:0] in_unnamed_load_weight045_0,
    input wire [0:0] in_unnamed_load_weight045_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10289,
    output wire [0:0] out_c0_exe11290,
    output wire [31:0] out_c0_exe12291,
    output wire [0:0] out_c0_exe1280,
    output wire [0:0] out_c0_exe13292,
    output wire [31:0] out_c0_exe14293,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [0:0] out_c0_exe22,
    output wire [0:0] out_c0_exe3282,
    output wire [31:0] out_c0_exe4283,
    output wire [0:0] out_c0_exe5284,
    output wire [31:0] out_c0_exe6285,
    output wire [0:0] out_c0_exe7286,
    output wire [31:0] out_c0_exe8287,
    output wire [0:0] out_c0_exe9288,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out;
    wire [0:0] bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe10289;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe11290;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe12291;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe1280;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe13292;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe14293;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe15;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe16;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe17;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe18;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe19;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe20;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe21;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe22;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe3282;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe4283;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe5284;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe6285;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe7286;
    wire [31:0] bb_load_weight0_B14_stall_region_out_c0_exe8287;
    wire [0:0] bb_load_weight0_B14_stall_region_out_c0_exe9288;
    wire [0:0] bb_load_weight0_B14_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B14_stall_region_out_stall_out;
    wire [0:0] bb_load_weight0_B14_stall_region_out_valid_out;
    wire [31:0] load_weight0_B14_branch_out_c0_exe10289;
    wire [0:0] load_weight0_B14_branch_out_c0_exe11290;
    wire [31:0] load_weight0_B14_branch_out_c0_exe12291;
    wire [0:0] load_weight0_B14_branch_out_c0_exe1280;
    wire [0:0] load_weight0_B14_branch_out_c0_exe13292;
    wire [31:0] load_weight0_B14_branch_out_c0_exe14293;
    wire [0:0] load_weight0_B14_branch_out_c0_exe15;
    wire [0:0] load_weight0_B14_branch_out_c0_exe16;
    wire [31:0] load_weight0_B14_branch_out_c0_exe17;
    wire [31:0] load_weight0_B14_branch_out_c0_exe18;
    wire [0:0] load_weight0_B14_branch_out_c0_exe19;
    wire [31:0] load_weight0_B14_branch_out_c0_exe20;
    wire [0:0] load_weight0_B14_branch_out_c0_exe21;
    wire [0:0] load_weight0_B14_branch_out_c0_exe22;
    wire [0:0] load_weight0_B14_branch_out_c0_exe3282;
    wire [31:0] load_weight0_B14_branch_out_c0_exe4283;
    wire [0:0] load_weight0_B14_branch_out_c0_exe5284;
    wire [31:0] load_weight0_B14_branch_out_c0_exe6285;
    wire [0:0] load_weight0_B14_branch_out_c0_exe7286;
    wire [31:0] load_weight0_B14_branch_out_c0_exe8287;
    wire [0:0] load_weight0_B14_branch_out_c0_exe9288;
    wire [0:0] load_weight0_B14_branch_out_stall_out;
    wire [0:0] load_weight0_B14_branch_out_valid_out_0;
    wire [31:0] load_weight0_B14_merge_out_add79142;
    wire [0:0] load_weight0_B14_merge_out_forked43;
    wire [31:0] load_weight0_B14_merge_out_li_075117;
    wire [31:0] load_weight0_B14_merge_out_li_07591_pop22133;
    wire [31:0] load_weight0_B14_merge_out_li_07592_pop33148;
    wire [31:0] load_weight0_B14_merge_out_mul78123;
    wire [31:0] load_weight0_B14_merge_out_mul7897_pop35139;
    wire [0:0] load_weight0_B14_merge_out_notcmp78145;
    wire [0:0] load_weight0_B14_merge_out_notcmp82100_pop36154;
    wire [0:0] load_weight0_B14_merge_out_notcmp82128;
    wire [0:0] load_weight0_B14_merge_out_pop23138;
    wire [0:0] load_weight0_B14_merge_out_pop34151;
    wire [0:0] load_weight0_B14_merge_out_stall_out_0;
    wire [0:0] load_weight0_B14_merge_out_stall_out_1;
    wire [0:0] load_weight0_B14_merge_out_unnamed_load_weight044;
    wire [0:0] load_weight0_B14_merge_out_unnamed_load_weight045;
    wire [0:0] load_weight0_B14_merge_out_valid_out;


    // load_weight0_B14_merge(BLACKBOX,36)
    cnn_top_load_weight0_B14_merge theload_weight0_B14_merge (
        .in_add79142_0(in_add79142_0),
        .in_add79142_1(in_add79142_1),
        .in_forked43_0(in_forked43_0),
        .in_forked43_1(in_forked43_1),
        .in_li_075117_0(in_li_075117_0),
        .in_li_075117_1(in_li_075117_1),
        .in_li_07591_pop22133_0(in_li_07591_pop22133_0),
        .in_li_07591_pop22133_1(in_li_07591_pop22133_1),
        .in_li_07592_pop33148_0(in_li_07592_pop33148_0),
        .in_li_07592_pop33148_1(in_li_07592_pop33148_1),
        .in_mul78123_0(in_mul78123_0),
        .in_mul78123_1(in_mul78123_1),
        .in_mul7897_pop35139_0(in_mul7897_pop35139_0),
        .in_mul7897_pop35139_1(in_mul7897_pop35139_1),
        .in_notcmp78145_0(in_notcmp78145_0),
        .in_notcmp78145_1(in_notcmp78145_1),
        .in_notcmp82100_pop36154_0(in_notcmp82100_pop36154_0),
        .in_notcmp82100_pop36154_1(in_notcmp82100_pop36154_1),
        .in_notcmp82128_0(in_notcmp82128_0),
        .in_notcmp82128_1(in_notcmp82128_1),
        .in_pop23138_0(in_pop23138_0),
        .in_pop23138_1(in_pop23138_1),
        .in_pop34151_0(in_pop34151_0),
        .in_pop34151_1(in_pop34151_1),
        .in_stall_in(bb_load_weight0_B14_stall_region_out_stall_out),
        .in_unnamed_load_weight044_0(in_unnamed_load_weight044_0),
        .in_unnamed_load_weight044_1(in_unnamed_load_weight044_1),
        .in_unnamed_load_weight045_0(in_unnamed_load_weight045_0),
        .in_unnamed_load_weight045_1(in_unnamed_load_weight045_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add79142(load_weight0_B14_merge_out_add79142),
        .out_forked43(load_weight0_B14_merge_out_forked43),
        .out_li_075117(load_weight0_B14_merge_out_li_075117),
        .out_li_07591_pop22133(load_weight0_B14_merge_out_li_07591_pop22133),
        .out_li_07592_pop33148(load_weight0_B14_merge_out_li_07592_pop33148),
        .out_mul78123(load_weight0_B14_merge_out_mul78123),
        .out_mul7897_pop35139(load_weight0_B14_merge_out_mul7897_pop35139),
        .out_notcmp78145(load_weight0_B14_merge_out_notcmp78145),
        .out_notcmp82100_pop36154(load_weight0_B14_merge_out_notcmp82100_pop36154),
        .out_notcmp82128(load_weight0_B14_merge_out_notcmp82128),
        .out_pop23138(load_weight0_B14_merge_out_pop23138),
        .out_pop34151(load_weight0_B14_merge_out_pop34151),
        .out_stall_out_0(load_weight0_B14_merge_out_stall_out_0),
        .out_stall_out_1(load_weight0_B14_merge_out_stall_out_1),
        .out_unnamed_load_weight044(load_weight0_B14_merge_out_unnamed_load_weight044),
        .out_unnamed_load_weight045(load_weight0_B14_merge_out_unnamed_load_weight045),
        .out_valid_out(load_weight0_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B14_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight0_B14_stall_region thebb_load_weight0_B14_stall_region (
        .in_add79142(load_weight0_B14_merge_out_add79142),
        .in_forked43(load_weight0_B14_merge_out_forked43),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_li_075117(load_weight0_B14_merge_out_li_075117),
        .in_li_07591_pop22133(load_weight0_B14_merge_out_li_07591_pop22133),
        .in_li_07592_pop33148(load_weight0_B14_merge_out_li_07592_pop33148),
        .in_mul78123(load_weight0_B14_merge_out_mul78123),
        .in_mul7897_pop35139(load_weight0_B14_merge_out_mul7897_pop35139),
        .in_notcmp78145(load_weight0_B14_merge_out_notcmp78145),
        .in_notcmp82100_pop36154(load_weight0_B14_merge_out_notcmp82100_pop36154),
        .in_notcmp82128(load_weight0_B14_merge_out_notcmp82128),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23138(load_weight0_B14_merge_out_pop23138),
        .in_pop34151(load_weight0_B14_merge_out_pop34151),
        .in_stall_in(load_weight0_B14_branch_out_stall_out),
        .in_unnamed_load_weight044(load_weight0_B14_merge_out_unnamed_load_weight044),
        .in_unnamed_load_weight045(load_weight0_B14_merge_out_unnamed_load_weight045),
        .in_valid_in(load_weight0_B14_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out(bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out(bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out),
        .out_c0_exe10289(bb_load_weight0_B14_stall_region_out_c0_exe10289),
        .out_c0_exe11290(bb_load_weight0_B14_stall_region_out_c0_exe11290),
        .out_c0_exe12291(bb_load_weight0_B14_stall_region_out_c0_exe12291),
        .out_c0_exe1280(bb_load_weight0_B14_stall_region_out_c0_exe1280),
        .out_c0_exe13292(bb_load_weight0_B14_stall_region_out_c0_exe13292),
        .out_c0_exe14293(bb_load_weight0_B14_stall_region_out_c0_exe14293),
        .out_c0_exe15(bb_load_weight0_B14_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_load_weight0_B14_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_load_weight0_B14_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_load_weight0_B14_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_load_weight0_B14_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_load_weight0_B14_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_load_weight0_B14_stall_region_out_c0_exe21),
        .out_c0_exe22(bb_load_weight0_B14_stall_region_out_c0_exe22),
        .out_c0_exe3282(bb_load_weight0_B14_stall_region_out_c0_exe3282),
        .out_c0_exe4283(bb_load_weight0_B14_stall_region_out_c0_exe4283),
        .out_c0_exe5284(bb_load_weight0_B14_stall_region_out_c0_exe5284),
        .out_c0_exe6285(bb_load_weight0_B14_stall_region_out_c0_exe6285),
        .out_c0_exe7286(bb_load_weight0_B14_stall_region_out_c0_exe7286),
        .out_c0_exe8287(bb_load_weight0_B14_stall_region_out_c0_exe8287),
        .out_c0_exe9288(bb_load_weight0_B14_stall_region_out_c0_exe9288),
        .out_pipeline_valid_out(bb_load_weight0_B14_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight0_B14_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight0_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B14_branch(BLACKBOX,35)
    cnn_top_load_weight0_B14_branch theload_weight0_B14_branch (
        .in_c0_exe10289(bb_load_weight0_B14_stall_region_out_c0_exe10289),
        .in_c0_exe11290(bb_load_weight0_B14_stall_region_out_c0_exe11290),
        .in_c0_exe12291(bb_load_weight0_B14_stall_region_out_c0_exe12291),
        .in_c0_exe1280(bb_load_weight0_B14_stall_region_out_c0_exe1280),
        .in_c0_exe13292(bb_load_weight0_B14_stall_region_out_c0_exe13292),
        .in_c0_exe14293(bb_load_weight0_B14_stall_region_out_c0_exe14293),
        .in_c0_exe15(bb_load_weight0_B14_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_load_weight0_B14_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_load_weight0_B14_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_load_weight0_B14_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_load_weight0_B14_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_load_weight0_B14_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_load_weight0_B14_stall_region_out_c0_exe21),
        .in_c0_exe22(bb_load_weight0_B14_stall_region_out_c0_exe22),
        .in_c0_exe3282(bb_load_weight0_B14_stall_region_out_c0_exe3282),
        .in_c0_exe4283(bb_load_weight0_B14_stall_region_out_c0_exe4283),
        .in_c0_exe5284(bb_load_weight0_B14_stall_region_out_c0_exe5284),
        .in_c0_exe6285(bb_load_weight0_B14_stall_region_out_c0_exe6285),
        .in_c0_exe7286(bb_load_weight0_B14_stall_region_out_c0_exe7286),
        .in_c0_exe8287(bb_load_weight0_B14_stall_region_out_c0_exe8287),
        .in_c0_exe9288(bb_load_weight0_B14_stall_region_out_c0_exe9288),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight0_B14_stall_region_out_valid_out),
        .out_c0_exe10289(load_weight0_B14_branch_out_c0_exe10289),
        .out_c0_exe11290(load_weight0_B14_branch_out_c0_exe11290),
        .out_c0_exe12291(load_weight0_B14_branch_out_c0_exe12291),
        .out_c0_exe1280(load_weight0_B14_branch_out_c0_exe1280),
        .out_c0_exe13292(load_weight0_B14_branch_out_c0_exe13292),
        .out_c0_exe14293(load_weight0_B14_branch_out_c0_exe14293),
        .out_c0_exe15(load_weight0_B14_branch_out_c0_exe15),
        .out_c0_exe16(load_weight0_B14_branch_out_c0_exe16),
        .out_c0_exe17(load_weight0_B14_branch_out_c0_exe17),
        .out_c0_exe18(load_weight0_B14_branch_out_c0_exe18),
        .out_c0_exe19(load_weight0_B14_branch_out_c0_exe19),
        .out_c0_exe20(load_weight0_B14_branch_out_c0_exe20),
        .out_c0_exe21(load_weight0_B14_branch_out_c0_exe21),
        .out_c0_exe22(load_weight0_B14_branch_out_c0_exe22),
        .out_c0_exe3282(load_weight0_B14_branch_out_c0_exe3282),
        .out_c0_exe4283(load_weight0_B14_branch_out_c0_exe4283),
        .out_c0_exe5284(load_weight0_B14_branch_out_c0_exe5284),
        .out_c0_exe6285(load_weight0_B14_branch_out_c0_exe6285),
        .out_c0_exe7286(load_weight0_B14_branch_out_c0_exe7286),
        .out_c0_exe8287(load_weight0_B14_branch_out_c0_exe8287),
        .out_c0_exe9288(load_weight0_B14_branch_out_c0_exe9288),
        .out_stall_out(load_weight0_B14_branch_out_stall_out),
        .out_valid_out_0(load_weight0_B14_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10289(GPOUT,37)
    assign out_c0_exe10289 = load_weight0_B14_branch_out_c0_exe10289;

    // out_c0_exe11290(GPOUT,38)
    assign out_c0_exe11290 = load_weight0_B14_branch_out_c0_exe11290;

    // out_c0_exe12291(GPOUT,39)
    assign out_c0_exe12291 = load_weight0_B14_branch_out_c0_exe12291;

    // out_c0_exe1280(GPOUT,40)
    assign out_c0_exe1280 = load_weight0_B14_branch_out_c0_exe1280;

    // out_c0_exe13292(GPOUT,41)
    assign out_c0_exe13292 = load_weight0_B14_branch_out_c0_exe13292;

    // out_c0_exe14293(GPOUT,42)
    assign out_c0_exe14293 = load_weight0_B14_branch_out_c0_exe14293;

    // out_c0_exe15(GPOUT,43)
    assign out_c0_exe15 = load_weight0_B14_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,44)
    assign out_c0_exe16 = load_weight0_B14_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,45)
    assign out_c0_exe17 = load_weight0_B14_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,46)
    assign out_c0_exe18 = load_weight0_B14_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,47)
    assign out_c0_exe19 = load_weight0_B14_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,48)
    assign out_c0_exe20 = load_weight0_B14_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,49)
    assign out_c0_exe21 = load_weight0_B14_branch_out_c0_exe21;

    // out_c0_exe22(GPOUT,50)
    assign out_c0_exe22 = load_weight0_B14_branch_out_c0_exe22;

    // out_c0_exe3282(GPOUT,51)
    assign out_c0_exe3282 = load_weight0_B14_branch_out_c0_exe3282;

    // out_c0_exe4283(GPOUT,52)
    assign out_c0_exe4283 = load_weight0_B14_branch_out_c0_exe4283;

    // out_c0_exe5284(GPOUT,53)
    assign out_c0_exe5284 = load_weight0_B14_branch_out_c0_exe5284;

    // out_c0_exe6285(GPOUT,54)
    assign out_c0_exe6285 = load_weight0_B14_branch_out_c0_exe6285;

    // out_c0_exe7286(GPOUT,55)
    assign out_c0_exe7286 = load_weight0_B14_branch_out_c0_exe7286;

    // out_c0_exe8287(GPOUT,56)
    assign out_c0_exe8287 = load_weight0_B14_branch_out_c0_exe8287;

    // out_c0_exe9288(GPOUT,57)
    assign out_c0_exe9288 = load_weight0_B14_branch_out_c0_exe9288;

    // out_exiting_stall_out(GPOUT,58)
    assign out_exiting_stall_out = bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,59)
    assign out_exiting_valid_out = bb_load_weight0_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = load_weight0_B14_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,61)
    assign out_stall_out_1 = load_weight0_B14_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,62)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,63)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,64)
    assign out_valid_out_0 = load_weight0_B14_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,66)
    assign out_pipeline_valid_out = bb_load_weight0_B14_stall_region_out_pipeline_valid_out;

endmodule
