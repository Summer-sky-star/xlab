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

// SystemVerilog created from cnn_top_bb_load_input0_B12
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B12 (
    input wire [0:0] in_forked50_0,
    input wire [0:0] in_forked50_1,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_kh_071_pop21132_0,
    input wire [31:0] in_kh_071_pop21132_1,
    input wire [31:0] in_li_073126_0,
    input wire [31:0] in_li_073126_1,
    input wire [31:0] in_li_07398_pop22137_0,
    input wire [31:0] in_li_07398_pop22137_1,
    input wire [0:0] in_notcmp89127_0,
    input wire [0:0] in_notcmp89127_1,
    input wire [0:0] in_pop23142_0,
    input wire [0:0] in_pop23142_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_input045_0,
    input wire [0:0] in_unnamed_load_input045_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe2257,
    output wire [31:0] out_c0_exe3258,
    output wire [31:0] out_c0_exe4259,
    output wire [0:0] out_c0_exe5260,
    output wire [0:0] out_c0_exe6261,
    output wire [31:0] out_c0_exe7262,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
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

    wire [0:0] bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_stall_out;
    wire [0:0] bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_valid_out;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe10;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe11;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe12;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe13;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe2257;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe3258;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe4259;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe5260;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe6261;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe7262;
    wire [31:0] bb_load_input0_B12_stall_region_out_c0_exe8;
    wire [0:0] bb_load_input0_B12_stall_region_out_c0_exe9;
    wire [0:0] bb_load_input0_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B12_stall_region_out_stall_out;
    wire [0:0] bb_load_input0_B12_stall_region_out_valid_out;
    wire [0:0] load_input0_B12_branch_out_c0_exe10;
    wire [31:0] load_input0_B12_branch_out_c0_exe11;
    wire [31:0] load_input0_B12_branch_out_c0_exe12;
    wire [0:0] load_input0_B12_branch_out_c0_exe13;
    wire [0:0] load_input0_B12_branch_out_c0_exe2257;
    wire [31:0] load_input0_B12_branch_out_c0_exe3258;
    wire [31:0] load_input0_B12_branch_out_c0_exe4259;
    wire [0:0] load_input0_B12_branch_out_c0_exe5260;
    wire [0:0] load_input0_B12_branch_out_c0_exe6261;
    wire [31:0] load_input0_B12_branch_out_c0_exe7262;
    wire [31:0] load_input0_B12_branch_out_c0_exe8;
    wire [0:0] load_input0_B12_branch_out_c0_exe9;
    wire [0:0] load_input0_B12_branch_out_stall_out;
    wire [0:0] load_input0_B12_branch_out_valid_out_0;
    wire [0:0] load_input0_B12_merge_out_forked50;
    wire [31:0] load_input0_B12_merge_out_kh_071_pop21132;
    wire [31:0] load_input0_B12_merge_out_li_073126;
    wire [31:0] load_input0_B12_merge_out_li_07398_pop22137;
    wire [0:0] load_input0_B12_merge_out_notcmp89127;
    wire [0:0] load_input0_B12_merge_out_pop23142;
    wire [0:0] load_input0_B12_merge_out_stall_out_0;
    wire [0:0] load_input0_B12_merge_out_stall_out_1;
    wire [0:0] load_input0_B12_merge_out_unnamed_load_input045;
    wire [0:0] load_input0_B12_merge_out_valid_out;


    // load_input0_B12_merge(BLACKBOX,23)
    cnn_top_load_input0_B12_merge theload_input0_B12_merge (
        .in_forked50_0(in_forked50_0),
        .in_forked50_1(in_forked50_1),
        .in_kh_071_pop21132_0(in_kh_071_pop21132_0),
        .in_kh_071_pop21132_1(in_kh_071_pop21132_1),
        .in_li_073126_0(in_li_073126_0),
        .in_li_073126_1(in_li_073126_1),
        .in_li_07398_pop22137_0(in_li_07398_pop22137_0),
        .in_li_07398_pop22137_1(in_li_07398_pop22137_1),
        .in_notcmp89127_0(in_notcmp89127_0),
        .in_notcmp89127_1(in_notcmp89127_1),
        .in_pop23142_0(in_pop23142_0),
        .in_pop23142_1(in_pop23142_1),
        .in_stall_in(bb_load_input0_B12_stall_region_out_stall_out),
        .in_unnamed_load_input045_0(in_unnamed_load_input045_0),
        .in_unnamed_load_input045_1(in_unnamed_load_input045_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked50(load_input0_B12_merge_out_forked50),
        .out_kh_071_pop21132(load_input0_B12_merge_out_kh_071_pop21132),
        .out_li_073126(load_input0_B12_merge_out_li_073126),
        .out_li_07398_pop22137(load_input0_B12_merge_out_li_07398_pop22137),
        .out_notcmp89127(load_input0_B12_merge_out_notcmp89127),
        .out_pop23142(load_input0_B12_merge_out_pop23142),
        .out_stall_out_0(load_input0_B12_merge_out_stall_out_0),
        .out_stall_out_1(load_input0_B12_merge_out_stall_out_1),
        .out_unnamed_load_input045(load_input0_B12_merge_out_unnamed_load_input045),
        .out_valid_out(load_input0_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B12_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input0_B12_stall_region thebb_load_input0_B12_stall_region (
        .in_forked50(load_input0_B12_merge_out_forked50),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_kh_071_pop21132(load_input0_B12_merge_out_kh_071_pop21132),
        .in_li_073126(load_input0_B12_merge_out_li_073126),
        .in_li_07398_pop22137(load_input0_B12_merge_out_li_07398_pop22137),
        .in_notcmp89127(load_input0_B12_merge_out_notcmp89127),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23142(load_input0_B12_merge_out_pop23142),
        .in_stall_in(load_input0_B12_branch_out_stall_out),
        .in_unnamed_load_input045(load_input0_B12_merge_out_unnamed_load_input045),
        .in_valid_in(load_input0_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_stall_out(bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_valid_out(bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_valid_out),
        .out_c0_exe10(bb_load_input0_B12_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_load_input0_B12_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_load_input0_B12_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_load_input0_B12_stall_region_out_c0_exe13),
        .out_c0_exe2257(bb_load_input0_B12_stall_region_out_c0_exe2257),
        .out_c0_exe3258(bb_load_input0_B12_stall_region_out_c0_exe3258),
        .out_c0_exe4259(bb_load_input0_B12_stall_region_out_c0_exe4259),
        .out_c0_exe5260(bb_load_input0_B12_stall_region_out_c0_exe5260),
        .out_c0_exe6261(bb_load_input0_B12_stall_region_out_c0_exe6261),
        .out_c0_exe7262(bb_load_input0_B12_stall_region_out_c0_exe7262),
        .out_c0_exe8(bb_load_input0_B12_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_load_input0_B12_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_load_input0_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_input0_B12_stall_region_out_stall_out),
        .out_valid_out(bb_load_input0_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B12_branch(BLACKBOX,22)
    cnn_top_load_input0_B12_branch theload_input0_B12_branch (
        .in_c0_exe10(bb_load_input0_B12_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_load_input0_B12_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_load_input0_B12_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_load_input0_B12_stall_region_out_c0_exe13),
        .in_c0_exe2257(bb_load_input0_B12_stall_region_out_c0_exe2257),
        .in_c0_exe3258(bb_load_input0_B12_stall_region_out_c0_exe3258),
        .in_c0_exe4259(bb_load_input0_B12_stall_region_out_c0_exe4259),
        .in_c0_exe5260(bb_load_input0_B12_stall_region_out_c0_exe5260),
        .in_c0_exe6261(bb_load_input0_B12_stall_region_out_c0_exe6261),
        .in_c0_exe7262(bb_load_input0_B12_stall_region_out_c0_exe7262),
        .in_c0_exe8(bb_load_input0_B12_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_load_input0_B12_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_input0_B12_stall_region_out_valid_out),
        .out_c0_exe10(load_input0_B12_branch_out_c0_exe10),
        .out_c0_exe11(load_input0_B12_branch_out_c0_exe11),
        .out_c0_exe12(load_input0_B12_branch_out_c0_exe12),
        .out_c0_exe13(load_input0_B12_branch_out_c0_exe13),
        .out_c0_exe2257(load_input0_B12_branch_out_c0_exe2257),
        .out_c0_exe3258(load_input0_B12_branch_out_c0_exe3258),
        .out_c0_exe4259(load_input0_B12_branch_out_c0_exe4259),
        .out_c0_exe5260(load_input0_B12_branch_out_c0_exe5260),
        .out_c0_exe6261(load_input0_B12_branch_out_c0_exe6261),
        .out_c0_exe7262(load_input0_B12_branch_out_c0_exe7262),
        .out_c0_exe8(load_input0_B12_branch_out_c0_exe8),
        .out_c0_exe9(load_input0_B12_branch_out_c0_exe9),
        .out_stall_out(load_input0_B12_branch_out_stall_out),
        .out_valid_out_0(load_input0_B12_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,24)
    assign out_c0_exe10 = load_input0_B12_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = load_input0_B12_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,26)
    assign out_c0_exe12 = load_input0_B12_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,27)
    assign out_c0_exe13 = load_input0_B12_branch_out_c0_exe13;

    // out_c0_exe2257(GPOUT,28)
    assign out_c0_exe2257 = load_input0_B12_branch_out_c0_exe2257;

    // out_c0_exe3258(GPOUT,29)
    assign out_c0_exe3258 = load_input0_B12_branch_out_c0_exe3258;

    // out_c0_exe4259(GPOUT,30)
    assign out_c0_exe4259 = load_input0_B12_branch_out_c0_exe4259;

    // out_c0_exe5260(GPOUT,31)
    assign out_c0_exe5260 = load_input0_B12_branch_out_c0_exe5260;

    // out_c0_exe6261(GPOUT,32)
    assign out_c0_exe6261 = load_input0_B12_branch_out_c0_exe6261;

    // out_c0_exe7262(GPOUT,33)
    assign out_c0_exe7262 = load_input0_B12_branch_out_c0_exe7262;

    // out_c0_exe8(GPOUT,34)
    assign out_c0_exe8 = load_input0_B12_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,35)
    assign out_c0_exe9 = load_input0_B12_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,36)
    assign out_exiting_stall_out = bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,37)
    assign out_exiting_valid_out = bb_load_input0_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input02_exiting_valid_out;

    // out_stall_out_0(GPOUT,38)
    assign out_stall_out_0 = load_input0_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,39)
    assign out_stall_out_1 = load_input0_B12_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,40)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,41)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,42)
    assign out_valid_out_0 = load_input0_B12_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,44)
    assign out_pipeline_valid_out = bb_load_input0_B12_stall_region_out_pipeline_valid_out;

endmodule
