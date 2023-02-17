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

// SystemVerilog created from cnn_top_bb_conv_process_B10
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B10 (
    input wire [0:0] in_forked114_0,
    input wire [0:0] in_forked114_1,
    input wire [32:0] in_intel_reserved_ffwd_51_0,
    input wire [31:0] in_intel_reserved_ffwd_64_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_notcmp169597_0,
    input wire [0:0] in_notcmp169597_1,
    input wire [31:0] in_offset_0_i475_replace_phi594_0,
    input wire [31:0] in_offset_0_i475_replace_phi594_1,
    input wire [31:0] in_r_0_i106476_pop65600_0,
    input wire [31:0] in_r_0_i106476_pop65600_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_conv_process90_0,
    input wire [0:0] in_unnamed_conv_process90_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe1739,
    output wire [0:0] out_c0_exe2740,
    output wire [0:0] out_c0_exe4742,
    output wire [31:0] out_c0_exe5743,
    output wire [31:0] out_c0_exe6744,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
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

    wire [0:0] bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out;
    wire [0:0] bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe10;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe11;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe12;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe13;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe14;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe1739;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe2740;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe4742;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe5743;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe6744;
    wire [31:0] bb_conv_process_B10_stall_region_out_c0_exe7;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe8;
    wire [0:0] bb_conv_process_B10_stall_region_out_c0_exe9;
    wire [0:0] bb_conv_process_B10_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B10_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B10_stall_region_out_valid_out;
    wire [31:0] conv_process_B10_branch_out_c0_exe10;
    wire [31:0] conv_process_B10_branch_out_c0_exe11;
    wire [0:0] conv_process_B10_branch_out_c0_exe12;
    wire [0:0] conv_process_B10_branch_out_c0_exe13;
    wire [31:0] conv_process_B10_branch_out_c0_exe14;
    wire [31:0] conv_process_B10_branch_out_c0_exe1739;
    wire [0:0] conv_process_B10_branch_out_c0_exe2740;
    wire [0:0] conv_process_B10_branch_out_c0_exe4742;
    wire [31:0] conv_process_B10_branch_out_c0_exe5743;
    wire [31:0] conv_process_B10_branch_out_c0_exe6744;
    wire [31:0] conv_process_B10_branch_out_c0_exe7;
    wire [0:0] conv_process_B10_branch_out_c0_exe8;
    wire [0:0] conv_process_B10_branch_out_c0_exe9;
    wire [0:0] conv_process_B10_branch_out_stall_out;
    wire [0:0] conv_process_B10_branch_out_valid_out_0;
    wire [0:0] conv_process_B10_merge_out_forked114;
    wire [0:0] conv_process_B10_merge_out_notcmp169597;
    wire [31:0] conv_process_B10_merge_out_offset_0_i475_replace_phi594;
    wire [31:0] conv_process_B10_merge_out_r_0_i106476_pop65600;
    wire [0:0] conv_process_B10_merge_out_stall_out_0;
    wire [0:0] conv_process_B10_merge_out_stall_out_1;
    wire [0:0] conv_process_B10_merge_out_unnamed_conv_process90;
    wire [0:0] conv_process_B10_merge_out_valid_out;


    // conv_process_B10_merge(BLACKBOX,4)
    cnn_top_conv_process_B10_merge theconv_process_B10_merge (
        .in_forked114_0(in_forked114_0),
        .in_forked114_1(in_forked114_1),
        .in_notcmp169597_0(in_notcmp169597_0),
        .in_notcmp169597_1(in_notcmp169597_1),
        .in_offset_0_i475_replace_phi594_0(in_offset_0_i475_replace_phi594_0),
        .in_offset_0_i475_replace_phi594_1(in_offset_0_i475_replace_phi594_1),
        .in_r_0_i106476_pop65600_0(in_r_0_i106476_pop65600_0),
        .in_r_0_i106476_pop65600_1(in_r_0_i106476_pop65600_1),
        .in_stall_in(bb_conv_process_B10_stall_region_out_stall_out),
        .in_unnamed_conv_process90_0(in_unnamed_conv_process90_0),
        .in_unnamed_conv_process90_1(in_unnamed_conv_process90_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked114(conv_process_B10_merge_out_forked114),
        .out_notcmp169597(conv_process_B10_merge_out_notcmp169597),
        .out_offset_0_i475_replace_phi594(conv_process_B10_merge_out_offset_0_i475_replace_phi594),
        .out_r_0_i106476_pop65600(conv_process_B10_merge_out_r_0_i106476_pop65600),
        .out_stall_out_0(conv_process_B10_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B10_merge_out_stall_out_1),
        .out_unnamed_conv_process90(conv_process_B10_merge_out_unnamed_conv_process90),
        .out_valid_out(conv_process_B10_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B10_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B10_stall_region thebb_conv_process_B10_stall_region (
        .in_forked114(conv_process_B10_merge_out_forked114),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_notcmp169597(conv_process_B10_merge_out_notcmp169597),
        .in_offset_0_i475_replace_phi594(conv_process_B10_merge_out_offset_0_i475_replace_phi594),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_0_i106476_pop65600(conv_process_B10_merge_out_r_0_i106476_pop65600),
        .in_stall_in(conv_process_B10_branch_out_stall_out),
        .in_unnamed_conv_process90(conv_process_B10_merge_out_unnamed_conv_process90),
        .in_valid_in(conv_process_B10_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out(bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out(bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out),
        .out_c0_exe10(bb_conv_process_B10_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_conv_process_B10_stall_region_out_c0_exe11),
        .out_c0_exe12(bb_conv_process_B10_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_conv_process_B10_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_conv_process_B10_stall_region_out_c0_exe14),
        .out_c0_exe1739(bb_conv_process_B10_stall_region_out_c0_exe1739),
        .out_c0_exe2740(bb_conv_process_B10_stall_region_out_c0_exe2740),
        .out_c0_exe4742(bb_conv_process_B10_stall_region_out_c0_exe4742),
        .out_c0_exe5743(bb_conv_process_B10_stall_region_out_c0_exe5743),
        .out_c0_exe6744(bb_conv_process_B10_stall_region_out_c0_exe6744),
        .out_c0_exe7(bb_conv_process_B10_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_conv_process_B10_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_conv_process_B10_stall_region_out_c0_exe9),
        .out_pipeline_valid_out(bb_conv_process_B10_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B10_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B10_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B10_branch(BLACKBOX,3)
    cnn_top_conv_process_B10_branch theconv_process_B10_branch (
        .in_c0_exe10(bb_conv_process_B10_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_conv_process_B10_stall_region_out_c0_exe11),
        .in_c0_exe12(bb_conv_process_B10_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_conv_process_B10_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_conv_process_B10_stall_region_out_c0_exe14),
        .in_c0_exe1739(bb_conv_process_B10_stall_region_out_c0_exe1739),
        .in_c0_exe2740(bb_conv_process_B10_stall_region_out_c0_exe2740),
        .in_c0_exe4742(bb_conv_process_B10_stall_region_out_c0_exe4742),
        .in_c0_exe5743(bb_conv_process_B10_stall_region_out_c0_exe5743),
        .in_c0_exe6744(bb_conv_process_B10_stall_region_out_c0_exe6744),
        .in_c0_exe7(bb_conv_process_B10_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_conv_process_B10_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_conv_process_B10_stall_region_out_c0_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B10_stall_region_out_valid_out),
        .out_c0_exe10(conv_process_B10_branch_out_c0_exe10),
        .out_c0_exe11(conv_process_B10_branch_out_c0_exe11),
        .out_c0_exe12(conv_process_B10_branch_out_c0_exe12),
        .out_c0_exe13(conv_process_B10_branch_out_c0_exe13),
        .out_c0_exe14(conv_process_B10_branch_out_c0_exe14),
        .out_c0_exe1739(conv_process_B10_branch_out_c0_exe1739),
        .out_c0_exe2740(conv_process_B10_branch_out_c0_exe2740),
        .out_c0_exe4742(conv_process_B10_branch_out_c0_exe4742),
        .out_c0_exe5743(conv_process_B10_branch_out_c0_exe5743),
        .out_c0_exe6744(conv_process_B10_branch_out_c0_exe6744),
        .out_c0_exe7(conv_process_B10_branch_out_c0_exe7),
        .out_c0_exe8(conv_process_B10_branch_out_c0_exe8),
        .out_c0_exe9(conv_process_B10_branch_out_c0_exe9),
        .out_stall_out(conv_process_B10_branch_out_stall_out),
        .out_valid_out_0(conv_process_B10_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,22)
    assign out_c0_exe10 = conv_process_B10_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,23)
    assign out_c0_exe11 = conv_process_B10_branch_out_c0_exe11;

    // out_c0_exe12(GPOUT,24)
    assign out_c0_exe12 = conv_process_B10_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,25)
    assign out_c0_exe13 = conv_process_B10_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,26)
    assign out_c0_exe14 = conv_process_B10_branch_out_c0_exe14;

    // out_c0_exe1739(GPOUT,27)
    assign out_c0_exe1739 = conv_process_B10_branch_out_c0_exe1739;

    // out_c0_exe2740(GPOUT,28)
    assign out_c0_exe2740 = conv_process_B10_branch_out_c0_exe2740;

    // out_c0_exe4742(GPOUT,29)
    assign out_c0_exe4742 = conv_process_B10_branch_out_c0_exe4742;

    // out_c0_exe5743(GPOUT,30)
    assign out_c0_exe5743 = conv_process_B10_branch_out_c0_exe5743;

    // out_c0_exe6744(GPOUT,31)
    assign out_c0_exe6744 = conv_process_B10_branch_out_c0_exe6744;

    // out_c0_exe7(GPOUT,32)
    assign out_c0_exe7 = conv_process_B10_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,33)
    assign out_c0_exe8 = conv_process_B10_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,34)
    assign out_c0_exe9 = conv_process_B10_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,35)
    assign out_exiting_stall_out = bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,36)
    assign out_exiting_valid_out = bb_conv_process_B10_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = conv_process_B10_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = conv_process_B10_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,39)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,40)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,41)
    assign out_valid_out_0 = conv_process_B10_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,43)
    assign out_pipeline_valid_out = bb_conv_process_B10_stall_region_out_pipeline_valid_out;

endmodule
