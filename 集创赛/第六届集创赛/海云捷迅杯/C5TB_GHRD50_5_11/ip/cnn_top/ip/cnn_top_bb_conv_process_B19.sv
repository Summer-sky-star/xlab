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

// SystemVerilog created from cnn_top_bb_conv_process_B19
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B19 (
    input wire [0:0] in_forked128_0,
    input wire [0:0] in_forked128_1,
    input wire [0:0] in_intel_reserved_ffwd_54_0,
    input wire [32:0] in_intel_reserved_ffwd_58_0,
    input wire [0:0] in_lnot281_pop74642_0,
    input wire [0:0] in_lnot281_pop74642_1,
    input wire [0:0] in_lnot282_pop83648_0,
    input wire [0:0] in_lnot282_pop83648_1,
    input wire [0:0] in_lnot627_0,
    input wire [0:0] in_lnot627_1,
    input wire [0:0] in_notcmp202643_0,
    input wire [0:0] in_notcmp202643_1,
    input wire [0:0] in_notcmp206292_pop84653_0,
    input wire [0:0] in_notcmp206292_pop84653_1,
    input wire [0:0] in_notcmp206635_0,
    input wire [0:0] in_notcmp206635_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10859,
    output wire [0:0] out_c0_exe11860,
    output wire [0:0] out_c0_exe2851,
    output wire [0:0] out_c0_exe3852,
    output wire [0:0] out_c0_exe4853,
    output wire [0:0] out_c0_exe5854,
    output wire [0:0] out_c0_exe6855,
    output wire [0:0] out_c0_exe7856,
    output wire [0:0] out_c0_exe8857,
    output wire [0:0] out_c0_exe9858,
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

    wire [0:0] bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_stall_out;
    wire [0:0] bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_valid_out;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe10859;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe11860;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe2851;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe3852;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe4853;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe5854;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe6855;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe7856;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe8857;
    wire [0:0] bb_conv_process_B19_stall_region_out_c0_exe9858;
    wire [0:0] bb_conv_process_B19_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B19_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B19_stall_region_out_valid_out;
    wire [0:0] conv_process_B19_branch_out_c0_exe10859;
    wire [0:0] conv_process_B19_branch_out_c0_exe11860;
    wire [0:0] conv_process_B19_branch_out_c0_exe2851;
    wire [0:0] conv_process_B19_branch_out_c0_exe3852;
    wire [0:0] conv_process_B19_branch_out_c0_exe4853;
    wire [0:0] conv_process_B19_branch_out_c0_exe5854;
    wire [0:0] conv_process_B19_branch_out_c0_exe6855;
    wire [0:0] conv_process_B19_branch_out_c0_exe7856;
    wire [0:0] conv_process_B19_branch_out_c0_exe8857;
    wire [0:0] conv_process_B19_branch_out_c0_exe9858;
    wire [0:0] conv_process_B19_branch_out_stall_out;
    wire [0:0] conv_process_B19_branch_out_valid_out_0;
    wire [0:0] conv_process_B19_merge_out_forked128;
    wire [0:0] conv_process_B19_merge_out_lnot281_pop74642;
    wire [0:0] conv_process_B19_merge_out_lnot282_pop83648;
    wire [0:0] conv_process_B19_merge_out_lnot627;
    wire [0:0] conv_process_B19_merge_out_notcmp202643;
    wire [0:0] conv_process_B19_merge_out_notcmp206292_pop84653;
    wire [0:0] conv_process_B19_merge_out_notcmp206635;
    wire [0:0] conv_process_B19_merge_out_stall_out_0;
    wire [0:0] conv_process_B19_merge_out_stall_out_1;
    wire [0:0] conv_process_B19_merge_out_valid_out;


    // conv_process_B19_merge(BLACKBOX,4)
    cnn_top_conv_process_B19_merge theconv_process_B19_merge (
        .in_forked128_0(in_forked128_0),
        .in_forked128_1(in_forked128_1),
        .in_lnot281_pop74642_0(in_lnot281_pop74642_0),
        .in_lnot281_pop74642_1(in_lnot281_pop74642_1),
        .in_lnot282_pop83648_0(in_lnot282_pop83648_0),
        .in_lnot282_pop83648_1(in_lnot282_pop83648_1),
        .in_lnot627_0(in_lnot627_0),
        .in_lnot627_1(in_lnot627_1),
        .in_notcmp202643_0(in_notcmp202643_0),
        .in_notcmp202643_1(in_notcmp202643_1),
        .in_notcmp206292_pop84653_0(in_notcmp206292_pop84653_0),
        .in_notcmp206292_pop84653_1(in_notcmp206292_pop84653_1),
        .in_notcmp206635_0(in_notcmp206635_0),
        .in_notcmp206635_1(in_notcmp206635_1),
        .in_stall_in(bb_conv_process_B19_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked128(conv_process_B19_merge_out_forked128),
        .out_lnot281_pop74642(conv_process_B19_merge_out_lnot281_pop74642),
        .out_lnot282_pop83648(conv_process_B19_merge_out_lnot282_pop83648),
        .out_lnot627(conv_process_B19_merge_out_lnot627),
        .out_notcmp202643(conv_process_B19_merge_out_notcmp202643),
        .out_notcmp206292_pop84653(conv_process_B19_merge_out_notcmp206292_pop84653),
        .out_notcmp206635(conv_process_B19_merge_out_notcmp206635),
        .out_stall_out_0(conv_process_B19_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B19_merge_out_stall_out_1),
        .out_valid_out(conv_process_B19_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B19_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B19_stall_region thebb_conv_process_B19_stall_region (
        .in_forked128(conv_process_B19_merge_out_forked128),
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_lnot281_pop74642(conv_process_B19_merge_out_lnot281_pop74642),
        .in_lnot282_pop83648(conv_process_B19_merge_out_lnot282_pop83648),
        .in_lnot627(conv_process_B19_merge_out_lnot627),
        .in_notcmp202643(conv_process_B19_merge_out_notcmp202643),
        .in_notcmp206292_pop84653(conv_process_B19_merge_out_notcmp206292_pop84653),
        .in_notcmp206635(conv_process_B19_merge_out_notcmp206635),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B19_branch_out_stall_out),
        .in_valid_in(conv_process_B19_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_stall_out(bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_valid_out(bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_valid_out),
        .out_c0_exe10859(bb_conv_process_B19_stall_region_out_c0_exe10859),
        .out_c0_exe11860(bb_conv_process_B19_stall_region_out_c0_exe11860),
        .out_c0_exe2851(bb_conv_process_B19_stall_region_out_c0_exe2851),
        .out_c0_exe3852(bb_conv_process_B19_stall_region_out_c0_exe3852),
        .out_c0_exe4853(bb_conv_process_B19_stall_region_out_c0_exe4853),
        .out_c0_exe5854(bb_conv_process_B19_stall_region_out_c0_exe5854),
        .out_c0_exe6855(bb_conv_process_B19_stall_region_out_c0_exe6855),
        .out_c0_exe7856(bb_conv_process_B19_stall_region_out_c0_exe7856),
        .out_c0_exe8857(bb_conv_process_B19_stall_region_out_c0_exe8857),
        .out_c0_exe9858(bb_conv_process_B19_stall_region_out_c0_exe9858),
        .out_pipeline_valid_out(bb_conv_process_B19_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B19_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B19_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B19_branch(BLACKBOX,3)
    cnn_top_conv_process_B19_branch theconv_process_B19_branch (
        .in_c0_exe10859(bb_conv_process_B19_stall_region_out_c0_exe10859),
        .in_c0_exe11860(bb_conv_process_B19_stall_region_out_c0_exe11860),
        .in_c0_exe2851(bb_conv_process_B19_stall_region_out_c0_exe2851),
        .in_c0_exe3852(bb_conv_process_B19_stall_region_out_c0_exe3852),
        .in_c0_exe4853(bb_conv_process_B19_stall_region_out_c0_exe4853),
        .in_c0_exe5854(bb_conv_process_B19_stall_region_out_c0_exe5854),
        .in_c0_exe6855(bb_conv_process_B19_stall_region_out_c0_exe6855),
        .in_c0_exe7856(bb_conv_process_B19_stall_region_out_c0_exe7856),
        .in_c0_exe8857(bb_conv_process_B19_stall_region_out_c0_exe8857),
        .in_c0_exe9858(bb_conv_process_B19_stall_region_out_c0_exe9858),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B19_stall_region_out_valid_out),
        .out_c0_exe10859(conv_process_B19_branch_out_c0_exe10859),
        .out_c0_exe11860(conv_process_B19_branch_out_c0_exe11860),
        .out_c0_exe2851(conv_process_B19_branch_out_c0_exe2851),
        .out_c0_exe3852(conv_process_B19_branch_out_c0_exe3852),
        .out_c0_exe4853(conv_process_B19_branch_out_c0_exe4853),
        .out_c0_exe5854(conv_process_B19_branch_out_c0_exe5854),
        .out_c0_exe6855(conv_process_B19_branch_out_c0_exe6855),
        .out_c0_exe7856(conv_process_B19_branch_out_c0_exe7856),
        .out_c0_exe8857(conv_process_B19_branch_out_c0_exe8857),
        .out_c0_exe9858(conv_process_B19_branch_out_c0_exe9858),
        .out_stall_out(conv_process_B19_branch_out_stall_out),
        .out_valid_out_0(conv_process_B19_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10859(GPOUT,24)
    assign out_c0_exe10859 = conv_process_B19_branch_out_c0_exe10859;

    // out_c0_exe11860(GPOUT,25)
    assign out_c0_exe11860 = conv_process_B19_branch_out_c0_exe11860;

    // out_c0_exe2851(GPOUT,26)
    assign out_c0_exe2851 = conv_process_B19_branch_out_c0_exe2851;

    // out_c0_exe3852(GPOUT,27)
    assign out_c0_exe3852 = conv_process_B19_branch_out_c0_exe3852;

    // out_c0_exe4853(GPOUT,28)
    assign out_c0_exe4853 = conv_process_B19_branch_out_c0_exe4853;

    // out_c0_exe5854(GPOUT,29)
    assign out_c0_exe5854 = conv_process_B19_branch_out_c0_exe5854;

    // out_c0_exe6855(GPOUT,30)
    assign out_c0_exe6855 = conv_process_B19_branch_out_c0_exe6855;

    // out_c0_exe7856(GPOUT,31)
    assign out_c0_exe7856 = conv_process_B19_branch_out_c0_exe7856;

    // out_c0_exe8857(GPOUT,32)
    assign out_c0_exe8857 = conv_process_B19_branch_out_c0_exe8857;

    // out_c0_exe9858(GPOUT,33)
    assign out_c0_exe9858 = conv_process_B19_branch_out_c0_exe9858;

    // out_exiting_stall_out(GPOUT,34)
    assign out_exiting_stall_out = bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,35)
    assign out_exiting_valid_out = bb_conv_process_B19_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going199_conv_process2_exiting_valid_out;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = conv_process_B19_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,37)
    assign out_stall_out_1 = conv_process_B19_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,38)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,39)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = conv_process_B19_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = bb_conv_process_B19_stall_region_out_pipeline_valid_out;

endmodule
