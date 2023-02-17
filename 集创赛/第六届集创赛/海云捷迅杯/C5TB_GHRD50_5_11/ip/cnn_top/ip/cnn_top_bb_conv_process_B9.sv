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

// SystemVerilog created from cnn_top_bb_conv_process_B9
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B9 (
    input wire [31:0] in_feedback_in_66,
    output wire [0:0] out_feedback_stall_out_66,
    input wire [0:0] in_feedback_valid_in_66,
    input wire [0:0] in_forked130_0,
    input wire [0:0] in_forked130_1,
    input wire [0:0] in_intel_reserved_ffwd_60_0,
    input wire [31:0] in_intel_reserved_ffwd_61_0,
    input wire [32:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe1721,
    output wire [0:0] out_c0_exe2722,
    output wire [31:0] out_c0_exe3723,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_offset_0_i475_replace_phi,
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

    wire [0:0] bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out;
    wire [0:0] bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out;
    wire [0:0] bb_conv_process_B9_stall_region_out_c0_exe1721;
    wire [0:0] bb_conv_process_B9_stall_region_out_c0_exe2722;
    wire [31:0] bb_conv_process_B9_stall_region_out_c0_exe3723;
    wire [0:0] bb_conv_process_B9_stall_region_out_feedback_stall_out_66;
    wire [31:0] bb_conv_process_B9_stall_region_out_offset_0_i475_replace_phi;
    wire [0:0] bb_conv_process_B9_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B9_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B9_stall_region_out_valid_out;
    wire [0:0] conv_process_B9_branch_out_c0_exe1721;
    wire [0:0] conv_process_B9_branch_out_c0_exe2722;
    wire [31:0] conv_process_B9_branch_out_c0_exe3723;
    wire [31:0] conv_process_B9_branch_out_offset_0_i475_replace_phi;
    wire [0:0] conv_process_B9_branch_out_stall_out;
    wire [0:0] conv_process_B9_branch_out_valid_out_0;
    wire [0:0] conv_process_B9_merge_out_forked130;
    wire [0:0] conv_process_B9_merge_out_stall_out_0;
    wire [0:0] conv_process_B9_merge_out_stall_out_1;
    wire [0:0] conv_process_B9_merge_out_valid_out;


    // conv_process_B9_branch(BLACKBOX,3)
    cnn_top_conv_process_B9_branch theconv_process_B9_branch (
        .in_c0_exe1721(bb_conv_process_B9_stall_region_out_c0_exe1721),
        .in_c0_exe2722(bb_conv_process_B9_stall_region_out_c0_exe2722),
        .in_c0_exe3723(bb_conv_process_B9_stall_region_out_c0_exe3723),
        .in_offset_0_i475_replace_phi(bb_conv_process_B9_stall_region_out_offset_0_i475_replace_phi),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B9_stall_region_out_valid_out),
        .out_c0_exe1721(conv_process_B9_branch_out_c0_exe1721),
        .out_c0_exe2722(conv_process_B9_branch_out_c0_exe2722),
        .out_c0_exe3723(conv_process_B9_branch_out_c0_exe3723),
        .out_offset_0_i475_replace_phi(conv_process_B9_branch_out_offset_0_i475_replace_phi),
        .out_stall_out(conv_process_B9_branch_out_stall_out),
        .out_valid_out_0(conv_process_B9_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B9_merge(BLACKBOX,4)
    cnn_top_conv_process_B9_merge theconv_process_B9_merge (
        .in_forked130_0(in_forked130_0),
        .in_forked130_1(in_forked130_1),
        .in_stall_in(bb_conv_process_B9_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked130(conv_process_B9_merge_out_forked130),
        .out_stall_out_0(conv_process_B9_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B9_merge_out_stall_out_1),
        .out_valid_out(conv_process_B9_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B9_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B9_stall_region thebb_conv_process_B9_stall_region (
        .in_feedback_in_66(in_feedback_in_66),
        .in_feedback_valid_in_66(in_feedback_valid_in_66),
        .in_forked130(conv_process_B9_merge_out_forked130),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B9_branch_out_stall_out),
        .in_valid_in(conv_process_B9_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out(bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out(bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out),
        .out_c0_exe1721(bb_conv_process_B9_stall_region_out_c0_exe1721),
        .out_c0_exe2722(bb_conv_process_B9_stall_region_out_c0_exe2722),
        .out_c0_exe3723(bb_conv_process_B9_stall_region_out_c0_exe3723),
        .out_feedback_stall_out_66(bb_conv_process_B9_stall_region_out_feedback_stall_out_66),
        .out_offset_0_i475_replace_phi(bb_conv_process_B9_stall_region_out_offset_0_i475_replace_phi),
        .out_pipeline_valid_out(bb_conv_process_B9_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B9_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B9_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_66_sync(GPOUT,6)
    assign out_feedback_stall_out_66 = bb_conv_process_B9_stall_region_out_feedback_stall_out_66;

    // out_c0_exe1721(GPOUT,16)
    assign out_c0_exe1721 = conv_process_B9_branch_out_c0_exe1721;

    // out_c0_exe2722(GPOUT,17)
    assign out_c0_exe2722 = conv_process_B9_branch_out_c0_exe2722;

    // out_c0_exe3723(GPOUT,18)
    assign out_c0_exe3723 = conv_process_B9_branch_out_c0_exe3723;

    // out_exiting_stall_out(GPOUT,19)
    assign out_exiting_stall_out = bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,20)
    assign out_exiting_valid_out = bb_conv_process_B9_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out;

    // out_offset_0_i475_replace_phi(GPOUT,21)
    assign out_offset_0_i475_replace_phi = conv_process_B9_branch_out_offset_0_i475_replace_phi;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = conv_process_B9_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,23)
    assign out_stall_out_1 = conv_process_B9_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,24)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,25)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,26)
    assign out_valid_out_0 = conv_process_B9_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = bb_conv_process_B9_stall_region_out_pipeline_valid_out;

endmodule
