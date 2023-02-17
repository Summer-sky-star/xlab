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

// SystemVerilog created from cnn_top_bb_load_weight1_B10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B10 (
    input wire [0:0] in_forked44_0,
    input wire [0:0] in_forked44_1,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_li_075112_0,
    input wire [31:0] in_li_075112_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_weight137_0,
    input wire [0:0] in_unnamed_load_weight137_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe1218,
    output wire [0:0] out_c0_exe3220,
    output wire [31:0] out_c0_exe4221,
    output wire [0:0] out_c0_exe5222,
    output wire [31:0] out_c0_exe6223,
    output wire [0:0] out_c0_exe7224,
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

    wire [0:0] bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_stall_out;
    wire [0:0] bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_valid_out;
    wire [31:0] bb_load_weight1_B10_stall_region_out_c0_exe1218;
    wire [0:0] bb_load_weight1_B10_stall_region_out_c0_exe3220;
    wire [31:0] bb_load_weight1_B10_stall_region_out_c0_exe4221;
    wire [0:0] bb_load_weight1_B10_stall_region_out_c0_exe5222;
    wire [31:0] bb_load_weight1_B10_stall_region_out_c0_exe6223;
    wire [0:0] bb_load_weight1_B10_stall_region_out_c0_exe7224;
    wire [0:0] bb_load_weight1_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight1_B10_stall_region_out_stall_out;
    wire [0:0] bb_load_weight1_B10_stall_region_out_valid_out;
    wire [31:0] load_weight1_B10_branch_out_c0_exe1218;
    wire [0:0] load_weight1_B10_branch_out_c0_exe3220;
    wire [31:0] load_weight1_B10_branch_out_c0_exe4221;
    wire [0:0] load_weight1_B10_branch_out_c0_exe5222;
    wire [31:0] load_weight1_B10_branch_out_c0_exe6223;
    wire [0:0] load_weight1_B10_branch_out_c0_exe7224;
    wire [0:0] load_weight1_B10_branch_out_stall_out;
    wire [0:0] load_weight1_B10_branch_out_valid_out_0;
    wire [0:0] load_weight1_B10_merge_out_forked44;
    wire [31:0] load_weight1_B10_merge_out_li_075112;
    wire [0:0] load_weight1_B10_merge_out_stall_out_0;
    wire [0:0] load_weight1_B10_merge_out_stall_out_1;
    wire [0:0] load_weight1_B10_merge_out_unnamed_load_weight137;
    wire [0:0] load_weight1_B10_merge_out_valid_out;


    // load_weight1_B10_merge(BLACKBOX,16)
    cnn_top_load_weight1_B10_merge theload_weight1_B10_merge (
        .in_forked44_0(in_forked44_0),
        .in_forked44_1(in_forked44_1),
        .in_li_075112_0(in_li_075112_0),
        .in_li_075112_1(in_li_075112_1),
        .in_stall_in(bb_load_weight1_B10_stall_region_out_stall_out),
        .in_unnamed_load_weight137_0(in_unnamed_load_weight137_0),
        .in_unnamed_load_weight137_1(in_unnamed_load_weight137_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked44(load_weight1_B10_merge_out_forked44),
        .out_li_075112(load_weight1_B10_merge_out_li_075112),
        .out_stall_out_0(load_weight1_B10_merge_out_stall_out_0),
        .out_stall_out_1(load_weight1_B10_merge_out_stall_out_1),
        .out_unnamed_load_weight137(load_weight1_B10_merge_out_unnamed_load_weight137),
        .out_valid_out(load_weight1_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight1_B10_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight1_B10_stall_region thebb_load_weight1_B10_stall_region (
        .in_forked44(load_weight1_B10_merge_out_forked44),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_li_075112(load_weight1_B10_merge_out_li_075112),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(load_weight1_B10_branch_out_stall_out),
        .in_unnamed_load_weight137(load_weight1_B10_merge_out_unnamed_load_weight137),
        .in_valid_in(load_weight1_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_stall_out(bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_valid_out(bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_valid_out),
        .out_c0_exe1218(bb_load_weight1_B10_stall_region_out_c0_exe1218),
        .out_c0_exe3220(bb_load_weight1_B10_stall_region_out_c0_exe3220),
        .out_c0_exe4221(bb_load_weight1_B10_stall_region_out_c0_exe4221),
        .out_c0_exe5222(bb_load_weight1_B10_stall_region_out_c0_exe5222),
        .out_c0_exe6223(bb_load_weight1_B10_stall_region_out_c0_exe6223),
        .out_c0_exe7224(bb_load_weight1_B10_stall_region_out_c0_exe7224),
        .out_pipeline_valid_out(bb_load_weight1_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight1_B10_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight1_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight1_B10_branch(BLACKBOX,15)
    cnn_top_load_weight1_B10_branch theload_weight1_B10_branch (
        .in_c0_exe1218(bb_load_weight1_B10_stall_region_out_c0_exe1218),
        .in_c0_exe3220(bb_load_weight1_B10_stall_region_out_c0_exe3220),
        .in_c0_exe4221(bb_load_weight1_B10_stall_region_out_c0_exe4221),
        .in_c0_exe5222(bb_load_weight1_B10_stall_region_out_c0_exe5222),
        .in_c0_exe6223(bb_load_weight1_B10_stall_region_out_c0_exe6223),
        .in_c0_exe7224(bb_load_weight1_B10_stall_region_out_c0_exe7224),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_weight1_B10_stall_region_out_valid_out),
        .out_c0_exe1218(load_weight1_B10_branch_out_c0_exe1218),
        .out_c0_exe3220(load_weight1_B10_branch_out_c0_exe3220),
        .out_c0_exe4221(load_weight1_B10_branch_out_c0_exe4221),
        .out_c0_exe5222(load_weight1_B10_branch_out_c0_exe5222),
        .out_c0_exe6223(load_weight1_B10_branch_out_c0_exe6223),
        .out_c0_exe7224(load_weight1_B10_branch_out_c0_exe7224),
        .out_stall_out(load_weight1_B10_branch_out_stall_out),
        .out_valid_out_0(load_weight1_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe1218(GPOUT,17)
    assign out_c0_exe1218 = load_weight1_B10_branch_out_c0_exe1218;

    // out_c0_exe3220(GPOUT,18)
    assign out_c0_exe3220 = load_weight1_B10_branch_out_c0_exe3220;

    // out_c0_exe4221(GPOUT,19)
    assign out_c0_exe4221 = load_weight1_B10_branch_out_c0_exe4221;

    // out_c0_exe5222(GPOUT,20)
    assign out_c0_exe5222 = load_weight1_B10_branch_out_c0_exe5222;

    // out_c0_exe6223(GPOUT,21)
    assign out_c0_exe6223 = load_weight1_B10_branch_out_c0_exe6223;

    // out_c0_exe7224(GPOUT,22)
    assign out_c0_exe7224 = load_weight1_B10_branch_out_c0_exe7224;

    // out_exiting_stall_out(GPOUT,23)
    assign out_exiting_stall_out = bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,24)
    assign out_exiting_valid_out = bb_load_weight1_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight12_exiting_valid_out;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = load_weight1_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = load_weight1_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,27)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,28)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = load_weight1_B10_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,31)
    assign out_pipeline_valid_out = bb_load_weight1_B10_stall_region_out_pipeline_valid_out;

endmodule
