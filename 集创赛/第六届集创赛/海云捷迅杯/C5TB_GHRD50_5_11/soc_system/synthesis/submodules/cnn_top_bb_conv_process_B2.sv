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

// SystemVerilog created from cnn_top_bb_conv_process_B2
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B2 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked76_0,
    input wire [0:0] in_forked76_1,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv_process20_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_writeack,
    input wire [31:0] in_unnamed_conv_process21_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process20_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_writedata,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process21_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out;
    wire [0:0] bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out;
    wire [0:0] bb_conv_process_B2_stall_region_out_c0_exe5;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_16_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_17_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_18_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_19_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_20_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_21_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_22_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_23_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_24_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_25_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_26_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_27_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_28_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_29_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_30_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_31_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_32_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_33_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_34_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_35_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_36_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_37_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_38_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_39_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_40_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_41_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_42_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_43_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_44_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_45_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_46_0;
    wire [31:0] bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_47_0;
    wire [0:0] bb_conv_process_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B2_stall_region_out_stall_out;
    wire [31:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_address;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_read;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_write;
    wire [31:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_writedata;
    wire [31:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_address;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_read;
    wire [0:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_write;
    wire [31:0] bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B2_stall_region_out_valid_out;
    wire [0:0] conv_process_B2_branch_out_stall_out;
    wire [0:0] conv_process_B2_branch_out_valid_out_0;
    wire [0:0] conv_process_B2_branch_out_valid_out_1;
    wire [0:0] conv_process_B2_merge_out_forked76;
    wire [0:0] conv_process_B2_merge_out_stall_out_0;
    wire [0:0] conv_process_B2_merge_out_stall_out_1;
    wire [0:0] conv_process_B2_merge_out_valid_out;


    // conv_process_B2_branch(BLACKBOX,3)
    cnn_top_conv_process_B2_branch theconv_process_B2_branch (
        .in_c0_exe5(bb_conv_process_B2_stall_region_out_c0_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B2_stall_region_out_valid_out),
        .out_stall_out(conv_process_B2_branch_out_stall_out),
        .out_valid_out_0(conv_process_B2_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B2_merge(BLACKBOX,4)
    cnn_top_conv_process_B2_merge theconv_process_B2_merge (
        .in_forked76_0(in_forked76_0),
        .in_forked76_1(in_forked76_1),
        .in_stall_in(bb_conv_process_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked76(conv_process_B2_merge_out_forked76),
        .out_stall_out_0(conv_process_B2_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B2_merge_out_stall_out_1),
        .out_valid_out(conv_process_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B2_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B2_stall_region thebb_conv_process_B2_stall_region (
        .in_flush(in_flush),
        .in_forked76(conv_process_B2_merge_out_forked76),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B2_branch_out_stall_out),
        .in_unnamed_conv_process20_conv_process_avm_readdata(in_unnamed_conv_process20_conv_process_avm_readdata),
        .in_unnamed_conv_process20_conv_process_avm_readdatavalid(in_unnamed_conv_process20_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process20_conv_process_avm_waitrequest(in_unnamed_conv_process20_conv_process_avm_waitrequest),
        .in_unnamed_conv_process20_conv_process_avm_writeack(in_unnamed_conv_process20_conv_process_avm_writeack),
        .in_unnamed_conv_process21_conv_process_avm_readdata(in_unnamed_conv_process21_conv_process_avm_readdata),
        .in_unnamed_conv_process21_conv_process_avm_readdatavalid(in_unnamed_conv_process21_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process21_conv_process_avm_waitrequest(in_unnamed_conv_process21_conv_process_avm_waitrequest),
        .in_unnamed_conv_process21_conv_process_avm_writeack(in_unnamed_conv_process21_conv_process_avm_writeack),
        .in_valid_in(conv_process_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out(bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out(bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out),
        .out_c0_exe5(bb_conv_process_B2_stall_region_out_c0_exe5),
        .out_intel_reserved_ffwd_16_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_47_0),
        .out_pipeline_valid_out(bb_conv_process_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B2_stall_region_out_stall_out),
        .out_unnamed_conv_process20_conv_process_avm_address(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_address),
        .out_unnamed_conv_process20_conv_process_avm_burstcount(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_burstcount),
        .out_unnamed_conv_process20_conv_process_avm_byteenable(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_byteenable),
        .out_unnamed_conv_process20_conv_process_avm_enable(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_enable),
        .out_unnamed_conv_process20_conv_process_avm_read(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_read),
        .out_unnamed_conv_process20_conv_process_avm_write(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_write),
        .out_unnamed_conv_process20_conv_process_avm_writedata(bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_writedata),
        .out_unnamed_conv_process21_conv_process_avm_address(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_address),
        .out_unnamed_conv_process21_conv_process_avm_burstcount(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_burstcount),
        .out_unnamed_conv_process21_conv_process_avm_byteenable(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_byteenable),
        .out_unnamed_conv_process21_conv_process_avm_enable(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_enable),
        .out_unnamed_conv_process21_conv_process_avm_read(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_read),
        .out_unnamed_conv_process21_conv_process_avm_write(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_write),
        .out_unnamed_conv_process21_conv_process_avm_writedata(bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_writedata),
        .out_valid_out(bb_conv_process_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,25)
    assign out_exiting_stall_out = bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,26)
    assign out_exiting_valid_out = bb_conv_process_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out;

    // out_intel_reserved_ffwd_16_0(GPOUT,27)
    assign out_intel_reserved_ffwd_16_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_16_0;

    // out_intel_reserved_ffwd_17_0(GPOUT,28)
    assign out_intel_reserved_ffwd_17_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_17_0;

    // out_intel_reserved_ffwd_18_0(GPOUT,29)
    assign out_intel_reserved_ffwd_18_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_18_0;

    // out_intel_reserved_ffwd_19_0(GPOUT,30)
    assign out_intel_reserved_ffwd_19_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_19_0;

    // out_intel_reserved_ffwd_20_0(GPOUT,31)
    assign out_intel_reserved_ffwd_20_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_20_0;

    // out_intel_reserved_ffwd_21_0(GPOUT,32)
    assign out_intel_reserved_ffwd_21_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_21_0;

    // out_intel_reserved_ffwd_22_0(GPOUT,33)
    assign out_intel_reserved_ffwd_22_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_22_0;

    // out_intel_reserved_ffwd_23_0(GPOUT,34)
    assign out_intel_reserved_ffwd_23_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_23_0;

    // out_intel_reserved_ffwd_24_0(GPOUT,35)
    assign out_intel_reserved_ffwd_24_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_24_0;

    // out_intel_reserved_ffwd_25_0(GPOUT,36)
    assign out_intel_reserved_ffwd_25_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_25_0;

    // out_intel_reserved_ffwd_26_0(GPOUT,37)
    assign out_intel_reserved_ffwd_26_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_26_0;

    // out_intel_reserved_ffwd_27_0(GPOUT,38)
    assign out_intel_reserved_ffwd_27_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_27_0;

    // out_intel_reserved_ffwd_28_0(GPOUT,39)
    assign out_intel_reserved_ffwd_28_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_28_0;

    // out_intel_reserved_ffwd_29_0(GPOUT,40)
    assign out_intel_reserved_ffwd_29_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_29_0;

    // out_intel_reserved_ffwd_30_0(GPOUT,41)
    assign out_intel_reserved_ffwd_30_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_30_0;

    // out_intel_reserved_ffwd_31_0(GPOUT,42)
    assign out_intel_reserved_ffwd_31_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_31_0;

    // out_intel_reserved_ffwd_32_0(GPOUT,43)
    assign out_intel_reserved_ffwd_32_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_32_0;

    // out_intel_reserved_ffwd_33_0(GPOUT,44)
    assign out_intel_reserved_ffwd_33_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_33_0;

    // out_intel_reserved_ffwd_34_0(GPOUT,45)
    assign out_intel_reserved_ffwd_34_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_34_0;

    // out_intel_reserved_ffwd_35_0(GPOUT,46)
    assign out_intel_reserved_ffwd_35_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_35_0;

    // out_intel_reserved_ffwd_36_0(GPOUT,47)
    assign out_intel_reserved_ffwd_36_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_36_0;

    // out_intel_reserved_ffwd_37_0(GPOUT,48)
    assign out_intel_reserved_ffwd_37_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_37_0;

    // out_intel_reserved_ffwd_38_0(GPOUT,49)
    assign out_intel_reserved_ffwd_38_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_38_0;

    // out_intel_reserved_ffwd_39_0(GPOUT,50)
    assign out_intel_reserved_ffwd_39_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_39_0;

    // out_intel_reserved_ffwd_40_0(GPOUT,51)
    assign out_intel_reserved_ffwd_40_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_40_0;

    // out_intel_reserved_ffwd_41_0(GPOUT,52)
    assign out_intel_reserved_ffwd_41_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_41_0;

    // out_intel_reserved_ffwd_42_0(GPOUT,53)
    assign out_intel_reserved_ffwd_42_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_42_0;

    // out_intel_reserved_ffwd_43_0(GPOUT,54)
    assign out_intel_reserved_ffwd_43_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_43_0;

    // out_intel_reserved_ffwd_44_0(GPOUT,55)
    assign out_intel_reserved_ffwd_44_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_44_0;

    // out_intel_reserved_ffwd_45_0(GPOUT,56)
    assign out_intel_reserved_ffwd_45_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_45_0;

    // out_intel_reserved_ffwd_46_0(GPOUT,57)
    assign out_intel_reserved_ffwd_46_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_46_0;

    // out_intel_reserved_ffwd_47_0(GPOUT,58)
    assign out_intel_reserved_ffwd_47_0 = bb_conv_process_B2_stall_region_out_intel_reserved_ffwd_47_0;

    // out_stall_in_0(GPOUT,59)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,60)
    assign out_stall_out_0 = conv_process_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,61)
    assign out_stall_out_1 = conv_process_B2_merge_out_stall_out_1;

    // out_unnamed_conv_process20_conv_process_avm_address(GPOUT,62)
    assign out_unnamed_conv_process20_conv_process_avm_address = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_address;

    // out_unnamed_conv_process20_conv_process_avm_burstcount(GPOUT,63)
    assign out_unnamed_conv_process20_conv_process_avm_burstcount = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_burstcount;

    // out_unnamed_conv_process20_conv_process_avm_byteenable(GPOUT,64)
    assign out_unnamed_conv_process20_conv_process_avm_byteenable = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_byteenable;

    // out_unnamed_conv_process20_conv_process_avm_enable(GPOUT,65)
    assign out_unnamed_conv_process20_conv_process_avm_enable = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_enable;

    // out_unnamed_conv_process20_conv_process_avm_read(GPOUT,66)
    assign out_unnamed_conv_process20_conv_process_avm_read = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_read;

    // out_unnamed_conv_process20_conv_process_avm_write(GPOUT,67)
    assign out_unnamed_conv_process20_conv_process_avm_write = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_write;

    // out_unnamed_conv_process20_conv_process_avm_writedata(GPOUT,68)
    assign out_unnamed_conv_process20_conv_process_avm_writedata = bb_conv_process_B2_stall_region_out_unnamed_conv_process20_conv_process_avm_writedata;

    // out_unnamed_conv_process21_conv_process_avm_address(GPOUT,69)
    assign out_unnamed_conv_process21_conv_process_avm_address = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_address;

    // out_unnamed_conv_process21_conv_process_avm_burstcount(GPOUT,70)
    assign out_unnamed_conv_process21_conv_process_avm_burstcount = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_burstcount;

    // out_unnamed_conv_process21_conv_process_avm_byteenable(GPOUT,71)
    assign out_unnamed_conv_process21_conv_process_avm_byteenable = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_byteenable;

    // out_unnamed_conv_process21_conv_process_avm_enable(GPOUT,72)
    assign out_unnamed_conv_process21_conv_process_avm_enable = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_enable;

    // out_unnamed_conv_process21_conv_process_avm_read(GPOUT,73)
    assign out_unnamed_conv_process21_conv_process_avm_read = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_read;

    // out_unnamed_conv_process21_conv_process_avm_write(GPOUT,74)
    assign out_unnamed_conv_process21_conv_process_avm_write = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_write;

    // out_unnamed_conv_process21_conv_process_avm_writedata(GPOUT,75)
    assign out_unnamed_conv_process21_conv_process_avm_writedata = bb_conv_process_B2_stall_region_out_unnamed_conv_process21_conv_process_avm_writedata;

    // out_valid_in_0(GPOUT,76)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,77)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,78)
    assign out_valid_out_0 = conv_process_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,79)
    assign out_valid_out_1 = conv_process_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,81)
    assign out_pipeline_valid_out = bb_conv_process_B2_stall_region_out_pipeline_valid_out;

endmodule
