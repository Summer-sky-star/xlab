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

// SystemVerilog created from cnn_top_bb_conv_process_B16
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B16 (
    input wire [0:0] in_forked280_0,
    input wire [0:0] in_forked280_1,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire [0:0] in_lnot620_0,
    input wire [0:0] in_lnot620_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2796,
    output wire [0:0] out_c0_exe3797,
    output wire [0:0] out_c0_exe4798,
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

    wire [0:0] bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out;
    wire [0:0] bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out;
    wire [0:0] bb_conv_process_B16_stall_region_out_c0_exe2796;
    wire [0:0] bb_conv_process_B16_stall_region_out_c0_exe3797;
    wire [0:0] bb_conv_process_B16_stall_region_out_c0_exe4798;
    wire [0:0] bb_conv_process_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B16_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B16_stall_region_out_valid_out;
    wire [0:0] conv_process_B16_branch_out_c0_exe2796;
    wire [0:0] conv_process_B16_branch_out_c0_exe3797;
    wire [0:0] conv_process_B16_branch_out_c0_exe4798;
    wire [0:0] conv_process_B16_branch_out_stall_out;
    wire [0:0] conv_process_B16_branch_out_valid_out_0;
    wire [0:0] conv_process_B16_merge_out_forked280;
    wire [0:0] conv_process_B16_merge_out_lnot620;
    wire [0:0] conv_process_B16_merge_out_stall_out_0;
    wire [0:0] conv_process_B16_merge_out_stall_out_1;
    wire [0:0] conv_process_B16_merge_out_valid_out;


    // conv_process_B16_merge(BLACKBOX,4)
    cnn_top_conv_process_B16_merge theconv_process_B16_merge (
        .in_forked280_0(in_forked280_0),
        .in_forked280_1(in_forked280_1),
        .in_lnot620_0(in_lnot620_0),
        .in_lnot620_1(in_lnot620_1),
        .in_stall_in(bb_conv_process_B16_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked280(conv_process_B16_merge_out_forked280),
        .out_lnot620(conv_process_B16_merge_out_lnot620),
        .out_stall_out_0(conv_process_B16_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B16_merge_out_stall_out_1),
        .out_valid_out(conv_process_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B16_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B16_stall_region thebb_conv_process_B16_stall_region (
        .in_forked280(conv_process_B16_merge_out_forked280),
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_lnot620(conv_process_B16_merge_out_lnot620),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B16_branch_out_stall_out),
        .in_valid_in(conv_process_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out(bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out(bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out),
        .out_c0_exe2796(bb_conv_process_B16_stall_region_out_c0_exe2796),
        .out_c0_exe3797(bb_conv_process_B16_stall_region_out_c0_exe3797),
        .out_c0_exe4798(bb_conv_process_B16_stall_region_out_c0_exe4798),
        .out_pipeline_valid_out(bb_conv_process_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B16_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B16_branch(BLACKBOX,3)
    cnn_top_conv_process_B16_branch theconv_process_B16_branch (
        .in_c0_exe2796(bb_conv_process_B16_stall_region_out_c0_exe2796),
        .in_c0_exe3797(bb_conv_process_B16_stall_region_out_c0_exe3797),
        .in_c0_exe4798(bb_conv_process_B16_stall_region_out_c0_exe4798),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B16_stall_region_out_valid_out),
        .out_c0_exe2796(conv_process_B16_branch_out_c0_exe2796),
        .out_c0_exe3797(conv_process_B16_branch_out_c0_exe3797),
        .out_c0_exe4798(conv_process_B16_branch_out_c0_exe4798),
        .out_stall_out(conv_process_B16_branch_out_stall_out),
        .out_valid_out_0(conv_process_B16_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe2796(GPOUT,13)
    assign out_c0_exe2796 = conv_process_B16_branch_out_c0_exe2796;

    // out_c0_exe3797(GPOUT,14)
    assign out_c0_exe3797 = conv_process_B16_branch_out_c0_exe3797;

    // out_c0_exe4798(GPOUT,15)
    assign out_c0_exe4798 = conv_process_B16_branch_out_c0_exe4798;

    // out_exiting_stall_out(GPOUT,16)
    assign out_exiting_stall_out = bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,17)
    assign out_exiting_valid_out = bb_conv_process_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = conv_process_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,19)
    assign out_stall_out_1 = conv_process_B16_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,20)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,21)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,22)
    assign out_valid_out_0 = conv_process_B16_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = bb_conv_process_B16_stall_region_out_pipeline_valid_out;

endmodule
