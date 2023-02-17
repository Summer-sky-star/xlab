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

// SystemVerilog created from cnn_top_bb_load_weight0_B12
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B12 (
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [0:0] in_intel_reserved_ffwd_10_0,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_li_075118_0,
    input wire [31:0] in_li_075118_1,
    input wire [31:0] in_li_07591_pop22129_0,
    input wire [31:0] in_li_07591_pop22129_1,
    input wire [31:0] in_mul78119_0,
    input wire [31:0] in_mul78119_1,
    input wire [0:0] in_notcmp82124_0,
    input wire [0:0] in_notcmp82124_1,
    input wire [0:0] in_pop23134_0,
    input wire [0:0] in_pop23134_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_weight040_0,
    input wire [0:0] in_unnamed_load_weight040_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe1242,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe2243,
    output wire [31:0] out_c0_exe3244,
    output wire [0:0] out_c0_exe5246,
    output wire [31:0] out_c0_exe6247,
    output wire [0:0] out_c0_exe7248,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
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

    wire [0:0] bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_stall_out;
    wire [0:0] bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_valid_out;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe10;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe11;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe12;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe1242;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe13;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe14;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe2243;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe3244;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe5246;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe6247;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe7248;
    wire [0:0] bb_load_weight0_B12_stall_region_out_c0_exe8;
    wire [31:0] bb_load_weight0_B12_stall_region_out_c0_exe9;
    wire [0:0] bb_load_weight0_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight0_B12_stall_region_out_stall_out;
    wire [0:0] bb_load_weight0_B12_stall_region_out_valid_out;
    wire [0:0] load_weight0_B12_branch_out_c0_exe10;
    wire [31:0] load_weight0_B12_branch_out_c0_exe11;
    wire [0:0] load_weight0_B12_branch_out_c0_exe12;
    wire [0:0] load_weight0_B12_branch_out_c0_exe1242;
    wire [31:0] load_weight0_B12_branch_out_c0_exe13;
    wire [0:0] load_weight0_B12_branch_out_c0_exe14;
    wire [31:0] load_weight0_B12_branch_out_c0_exe2243;
    wire [31:0] load_weight0_B12_branch_out_c0_exe3244;
    wire [0:0] load_weight0_B12_branch_out_c0_exe5246;
    wire [31:0] load_weight0_B12_branch_out_c0_exe6247;
    wire [0:0] load_weight0_B12_branch_out_c0_exe7248;
    wire [0:0] load_weight0_B12_branch_out_c0_exe8;
    wire [31:0] load_weight0_B12_branch_out_c0_exe9;
    wire [0:0] load_weight0_B12_branch_out_stall_out;
    wire [0:0] load_weight0_B12_branch_out_valid_out_0;
    wire [0:0] load_weight0_B12_merge_out_forked45;
    wire [31:0] load_weight0_B12_merge_out_li_075118;
    wire [31:0] load_weight0_B12_merge_out_li_07591_pop22129;
    wire [31:0] load_weight0_B12_merge_out_mul78119;
    wire [0:0] load_weight0_B12_merge_out_notcmp82124;
    wire [0:0] load_weight0_B12_merge_out_pop23134;
    wire [0:0] load_weight0_B12_merge_out_stall_out_0;
    wire [0:0] load_weight0_B12_merge_out_stall_out_1;
    wire [0:0] load_weight0_B12_merge_out_unnamed_load_weight040;
    wire [0:0] load_weight0_B12_merge_out_valid_out;


    // load_weight0_B12_merge(BLACKBOX,24)
    cnn_top_load_weight0_B12_merge theload_weight0_B12_merge (
        .in_forked45_0(in_forked45_0),
        .in_forked45_1(in_forked45_1),
        .in_li_075118_0(in_li_075118_0),
        .in_li_075118_1(in_li_075118_1),
        .in_li_07591_pop22129_0(in_li_07591_pop22129_0),
        .in_li_07591_pop22129_1(in_li_07591_pop22129_1),
        .in_mul78119_0(in_mul78119_0),
        .in_mul78119_1(in_mul78119_1),
        .in_notcmp82124_0(in_notcmp82124_0),
        .in_notcmp82124_1(in_notcmp82124_1),
        .in_pop23134_0(in_pop23134_0),
        .in_pop23134_1(in_pop23134_1),
        .in_stall_in(bb_load_weight0_B12_stall_region_out_stall_out),
        .in_unnamed_load_weight040_0(in_unnamed_load_weight040_0),
        .in_unnamed_load_weight040_1(in_unnamed_load_weight040_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked45(load_weight0_B12_merge_out_forked45),
        .out_li_075118(load_weight0_B12_merge_out_li_075118),
        .out_li_07591_pop22129(load_weight0_B12_merge_out_li_07591_pop22129),
        .out_mul78119(load_weight0_B12_merge_out_mul78119),
        .out_notcmp82124(load_weight0_B12_merge_out_notcmp82124),
        .out_pop23134(load_weight0_B12_merge_out_pop23134),
        .out_stall_out_0(load_weight0_B12_merge_out_stall_out_0),
        .out_stall_out_1(load_weight0_B12_merge_out_stall_out_1),
        .out_unnamed_load_weight040(load_weight0_B12_merge_out_unnamed_load_weight040),
        .out_valid_out(load_weight0_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight0_B12_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight0_B12_stall_region thebb_load_weight0_B12_stall_region (
        .in_forked45(load_weight0_B12_merge_out_forked45),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_li_075118(load_weight0_B12_merge_out_li_075118),
        .in_li_07591_pop22129(load_weight0_B12_merge_out_li_07591_pop22129),
        .in_mul78119(load_weight0_B12_merge_out_mul78119),
        .in_notcmp82124(load_weight0_B12_merge_out_notcmp82124),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23134(load_weight0_B12_merge_out_pop23134),
        .in_stall_in(load_weight0_B12_branch_out_stall_out),
        .in_unnamed_load_weight040(load_weight0_B12_merge_out_unnamed_load_weight040),
        .in_valid_in(load_weight0_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_stall_out(bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_valid_out(bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_valid_out),
        .out_c0_exe10(bb_load_weight0_B12_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_load_weight0_B12_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_load_weight0_B12_stall_region_out_c0_exe12),
        .out_c0_exe1242(bb_load_weight0_B12_stall_region_out_c0_exe1242),
        .out_c0_exe13(bb_load_weight0_B12_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_load_weight0_B12_stall_region_out_c0_exe14),
        .out_c0_exe2243(bb_load_weight0_B12_stall_region_out_c0_exe2243),
        .out_c0_exe3244(bb_load_weight0_B12_stall_region_out_c0_exe3244),
        .out_c0_exe5246(bb_load_weight0_B12_stall_region_out_c0_exe5246),
        .out_c0_exe6247(bb_load_weight0_B12_stall_region_out_c0_exe6247),
        .out_c0_exe7248(bb_load_weight0_B12_stall_region_out_c0_exe7248),
        .out_c0_exe8(bb_load_weight0_B12_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_load_weight0_B12_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_load_weight0_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight0_B12_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight0_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight0_B12_branch(BLACKBOX,23)
    cnn_top_load_weight0_B12_branch theload_weight0_B12_branch (
        .in_c0_exe10(bb_load_weight0_B12_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_load_weight0_B12_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_load_weight0_B12_stall_region_out_c0_exe12),
        .in_c0_exe1242(bb_load_weight0_B12_stall_region_out_c0_exe1242),
        .in_c0_exe13(bb_load_weight0_B12_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_load_weight0_B12_stall_region_out_c0_exe14),
        .in_c0_exe2243(bb_load_weight0_B12_stall_region_out_c0_exe2243),
        .in_c0_exe3244(bb_load_weight0_B12_stall_region_out_c0_exe3244),
        .in_c0_exe5246(bb_load_weight0_B12_stall_region_out_c0_exe5246),
        .in_c0_exe6247(bb_load_weight0_B12_stall_region_out_c0_exe6247),
        .in_c0_exe7248(bb_load_weight0_B12_stall_region_out_c0_exe7248),
        .in_c0_exe8(bb_load_weight0_B12_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_load_weight0_B12_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight0_B12_stall_region_out_valid_out),
        .out_c0_exe10(load_weight0_B12_branch_out_c0_exe10),
        .out_c0_exe11(load_weight0_B12_branch_out_c0_exe11),
        .out_c0_exe12(load_weight0_B12_branch_out_c0_exe12),
        .out_c0_exe1242(load_weight0_B12_branch_out_c0_exe1242),
        .out_c0_exe13(load_weight0_B12_branch_out_c0_exe13),
        .out_c0_exe14(load_weight0_B12_branch_out_c0_exe14),
        .out_c0_exe2243(load_weight0_B12_branch_out_c0_exe2243),
        .out_c0_exe3244(load_weight0_B12_branch_out_c0_exe3244),
        .out_c0_exe5246(load_weight0_B12_branch_out_c0_exe5246),
        .out_c0_exe6247(load_weight0_B12_branch_out_c0_exe6247),
        .out_c0_exe7248(load_weight0_B12_branch_out_c0_exe7248),
        .out_c0_exe8(load_weight0_B12_branch_out_c0_exe8),
        .out_c0_exe9(load_weight0_B12_branch_out_c0_exe9),
        .out_stall_out(load_weight0_B12_branch_out_stall_out),
        .out_valid_out_0(load_weight0_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,25)
    assign out_c0_exe10 = load_weight0_B12_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,26)
    assign out_c0_exe11 = load_weight0_B12_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,27)
    assign out_c0_exe12 = load_weight0_B12_branch_out_c0_exe12;

    // out_c0_exe1242(GPOUT,28)
    assign out_c0_exe1242 = load_weight0_B12_branch_out_c0_exe1242;

    // out_c0_exe13(GPOUT,29)
    assign out_c0_exe13 = load_weight0_B12_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,30)
    assign out_c0_exe14 = load_weight0_B12_branch_out_c0_exe14;

    // out_c0_exe2243(GPOUT,31)
    assign out_c0_exe2243 = load_weight0_B12_branch_out_c0_exe2243;

    // out_c0_exe3244(GPOUT,32)
    assign out_c0_exe3244 = load_weight0_B12_branch_out_c0_exe3244;

    // out_c0_exe5246(GPOUT,33)
    assign out_c0_exe5246 = load_weight0_B12_branch_out_c0_exe5246;

    // out_c0_exe6247(GPOUT,34)
    assign out_c0_exe6247 = load_weight0_B12_branch_out_c0_exe6247;

    // out_c0_exe7248(GPOUT,35)
    assign out_c0_exe7248 = load_weight0_B12_branch_out_c0_exe7248;

    // out_c0_exe8(GPOUT,36)
    assign out_c0_exe8 = load_weight0_B12_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,37)
    assign out_c0_exe9 = load_weight0_B12_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,38)
    assign out_exiting_stall_out = bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,39)
    assign out_exiting_valid_out = bb_load_weight0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight02_exiting_valid_out;

    // out_stall_out_0(GPOUT,40)
    assign out_stall_out_0 = load_weight0_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,41)
    assign out_stall_out_1 = load_weight0_B12_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,42)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,43)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = load_weight0_B12_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_load_weight0_B12_stall_region_out_pipeline_valid_out;

endmodule
