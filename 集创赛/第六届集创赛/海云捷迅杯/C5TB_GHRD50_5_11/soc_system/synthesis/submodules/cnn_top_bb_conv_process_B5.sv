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

// SystemVerilog created from cnn_top_bb_conv_process_B5
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B5 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked115_0,
    input wire [0:0] in_forked115_1,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [32:0] in_intel_reserved_ffwd_51_0,
    input wire [511:0] in_memdep_5_conv_process_avm_readdata,
    input wire [0:0] in_memdep_5_conv_process_avm_readdatavalid,
    input wire [0:0] in_memdep_5_conv_process_avm_waitrequest,
    input wire [0:0] in_memdep_5_conv_process_avm_writeack,
    input wire [0:0] in_notcmp226591_0,
    input wire [0:0] in_notcmp226591_1,
    input wire [31:0] in_r_0_i496_pop63592_0,
    input wire [31:0] in_r_0_i496_pop63592_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe3710,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memdep_5_conv_process_avm_address,
    output wire [0:0] out_memdep_5_conv_process_avm_burstcount,
    output wire [63:0] out_memdep_5_conv_process_avm_byteenable,
    output wire [0:0] out_memdep_5_conv_process_avm_enable,
    output wire [0:0] out_memdep_5_conv_process_avm_read,
    output wire [0:0] out_memdep_5_conv_process_avm_write,
    output wire [511:0] out_memdep_5_conv_process_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out;
    wire [0:0] bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out;
    wire [0:0] bb_conv_process_B5_stall_region_out_c0_exe2709;
    wire [0:0] bb_conv_process_B5_stall_region_out_c0_exe3710;
    wire [31:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_address;
    wire [0:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_read;
    wire [0:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_write;
    wire [511:0] bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B5_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B5_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B5_stall_region_out_valid_out;
    wire [0:0] conv_process_B5_branch_out_c0_exe3710;
    wire [0:0] conv_process_B5_branch_out_stall_out;
    wire [0:0] conv_process_B5_branch_out_valid_out_0;
    wire [0:0] conv_process_B5_branch_out_valid_out_1;
    wire [0:0] conv_process_B5_merge_out_forked115;
    wire [0:0] conv_process_B5_merge_out_notcmp226591;
    wire [31:0] conv_process_B5_merge_out_r_0_i496_pop63592;
    wire [0:0] conv_process_B5_merge_out_stall_out_0;
    wire [0:0] conv_process_B5_merge_out_stall_out_1;
    wire [0:0] conv_process_B5_merge_out_valid_out;


    // conv_process_B5_merge(BLACKBOX,4)
    cnn_top_conv_process_B5_merge theconv_process_B5_merge (
        .in_forked115_0(in_forked115_0),
        .in_forked115_1(in_forked115_1),
        .in_notcmp226591_0(in_notcmp226591_0),
        .in_notcmp226591_1(in_notcmp226591_1),
        .in_r_0_i496_pop63592_0(in_r_0_i496_pop63592_0),
        .in_r_0_i496_pop63592_1(in_r_0_i496_pop63592_1),
        .in_stall_in(bb_conv_process_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked115(conv_process_B5_merge_out_forked115),
        .out_notcmp226591(conv_process_B5_merge_out_notcmp226591),
        .out_r_0_i496_pop63592(conv_process_B5_merge_out_r_0_i496_pop63592),
        .out_stall_out_0(conv_process_B5_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B5_merge_out_stall_out_1),
        .out_valid_out(conv_process_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B5_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B5_stall_region thebb_conv_process_B5_stall_region (
        .in_flush(in_flush),
        .in_forked115(conv_process_B5_merge_out_forked115),
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_memdep_5_conv_process_avm_readdata(in_memdep_5_conv_process_avm_readdata),
        .in_memdep_5_conv_process_avm_readdatavalid(in_memdep_5_conv_process_avm_readdatavalid),
        .in_memdep_5_conv_process_avm_waitrequest(in_memdep_5_conv_process_avm_waitrequest),
        .in_memdep_5_conv_process_avm_writeack(in_memdep_5_conv_process_avm_writeack),
        .in_notcmp226591(conv_process_B5_merge_out_notcmp226591),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_r_0_i496_pop63592(conv_process_B5_merge_out_r_0_i496_pop63592),
        .in_stall_in(conv_process_B5_branch_out_stall_out),
        .in_valid_in(conv_process_B5_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out(bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out(bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out),
        .out_c0_exe2709(bb_conv_process_B5_stall_region_out_c0_exe2709),
        .out_c0_exe3710(bb_conv_process_B5_stall_region_out_c0_exe3710),
        .out_memdep_5_conv_process_avm_address(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_address),
        .out_memdep_5_conv_process_avm_burstcount(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_burstcount),
        .out_memdep_5_conv_process_avm_byteenable(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_byteenable),
        .out_memdep_5_conv_process_avm_enable(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_enable),
        .out_memdep_5_conv_process_avm_read(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_read),
        .out_memdep_5_conv_process_avm_write(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_write),
        .out_memdep_5_conv_process_avm_writedata(bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B5_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B5_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B5_branch(BLACKBOX,3)
    cnn_top_conv_process_B5_branch theconv_process_B5_branch (
        .in_c0_exe2709(bb_conv_process_B5_stall_region_out_c0_exe2709),
        .in_c0_exe3710(bb_conv_process_B5_stall_region_out_c0_exe3710),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B5_stall_region_out_valid_out),
        .out_c0_exe3710(conv_process_B5_branch_out_c0_exe3710),
        .out_stall_out(conv_process_B5_branch_out_stall_out),
        .out_valid_out_0(conv_process_B5_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B5_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe3710(GPOUT,22)
    assign out_c0_exe3710 = conv_process_B5_branch_out_c0_exe3710;

    // out_exiting_stall_out(GPOUT,23)
    assign out_exiting_stall_out = bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,24)
    assign out_exiting_valid_out = bb_conv_process_B5_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out;

    // out_memdep_5_conv_process_avm_address(GPOUT,25)
    assign out_memdep_5_conv_process_avm_address = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_address;

    // out_memdep_5_conv_process_avm_burstcount(GPOUT,26)
    assign out_memdep_5_conv_process_avm_burstcount = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_burstcount;

    // out_memdep_5_conv_process_avm_byteenable(GPOUT,27)
    assign out_memdep_5_conv_process_avm_byteenable = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_byteenable;

    // out_memdep_5_conv_process_avm_enable(GPOUT,28)
    assign out_memdep_5_conv_process_avm_enable = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_enable;

    // out_memdep_5_conv_process_avm_read(GPOUT,29)
    assign out_memdep_5_conv_process_avm_read = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_read;

    // out_memdep_5_conv_process_avm_write(GPOUT,30)
    assign out_memdep_5_conv_process_avm_write = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_write;

    // out_memdep_5_conv_process_avm_writedata(GPOUT,31)
    assign out_memdep_5_conv_process_avm_writedata = bb_conv_process_B5_stall_region_out_memdep_5_conv_process_avm_writedata;

    // out_stall_in_0(GPOUT,32)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = conv_process_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = conv_process_B5_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,35)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,36)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = conv_process_B5_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,38)
    assign out_valid_out_1 = conv_process_B5_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = bb_conv_process_B5_stall_region_out_pipeline_valid_out;

endmodule
