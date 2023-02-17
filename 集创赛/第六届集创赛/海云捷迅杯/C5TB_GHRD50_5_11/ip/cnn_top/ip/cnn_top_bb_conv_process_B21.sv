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

// SystemVerilog created from cnn_top_bb_conv_process_B21
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B21 (
    input wire [0:0] in_forked126_0,
    input wire [0:0] in_forked126_1,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [32:0] in_intel_reserved_ffwd_57_0,
    input wire [0:0] in_lnot281_pop74641_0,
    input wire [0:0] in_lnot281_pop74641_1,
    input wire [0:0] in_lnot282_pop83652_0,
    input wire [0:0] in_lnot282_pop83652_1,
    input wire [0:0] in_lnot283_pop99661_0,
    input wire [0:0] in_lnot283_pop99661_1,
    input wire [0:0] in_lnot626_0,
    input wire [0:0] in_lnot626_1,
    input wire [0:0] in_notcmp198658_0,
    input wire [0:0] in_notcmp198658_1,
    input wire [0:0] in_notcmp202299_pop101667_0,
    input wire [0:0] in_notcmp202299_pop101667_1,
    input wire [0:0] in_notcmp202647_0,
    input wire [0:0] in_notcmp202647_1,
    input wire [0:0] in_notcmp206292_pop84657_0,
    input wire [0:0] in_notcmp206292_pop84657_1,
    input wire [0:0] in_notcmp206293_pop100664_0,
    input wire [0:0] in_notcmp206293_pop100664_1,
    input wire [0:0] in_notcmp206634_0,
    input wire [0:0] in_notcmp206634_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10908,
    output wire [0:0] out_c0_exe11909,
    output wire [0:0] out_c0_exe12910,
    output wire [0:0] out_c0_exe13911,
    output wire [0:0] out_c0_exe14912,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2900,
    output wire [31:0] out_c0_exe3901,
    output wire [0:0] out_c0_exe4902,
    output wire [0:0] out_c0_exe5903,
    output wire [0:0] out_c0_exe6904,
    output wire [0:0] out_c0_exe7905,
    output wire [0:0] out_c0_exe8906,
    output wire [0:0] out_c0_exe9907,
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

    wire [0:0] bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out;
    wire [0:0] bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe10908;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe11909;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe12910;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe13911;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe14912;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe15;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe16;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe17;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe2900;
    wire [31:0] bb_conv_process_B21_stall_region_out_c0_exe3901;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe4902;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe5903;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe6904;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe7905;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe8906;
    wire [0:0] bb_conv_process_B21_stall_region_out_c0_exe9907;
    wire [0:0] bb_conv_process_B21_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B21_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B21_stall_region_out_valid_out;
    wire [0:0] conv_process_B21_branch_out_c0_exe10908;
    wire [0:0] conv_process_B21_branch_out_c0_exe11909;
    wire [0:0] conv_process_B21_branch_out_c0_exe12910;
    wire [0:0] conv_process_B21_branch_out_c0_exe13911;
    wire [0:0] conv_process_B21_branch_out_c0_exe14912;
    wire [0:0] conv_process_B21_branch_out_c0_exe15;
    wire [0:0] conv_process_B21_branch_out_c0_exe16;
    wire [0:0] conv_process_B21_branch_out_c0_exe17;
    wire [0:0] conv_process_B21_branch_out_c0_exe2900;
    wire [31:0] conv_process_B21_branch_out_c0_exe3901;
    wire [0:0] conv_process_B21_branch_out_c0_exe4902;
    wire [0:0] conv_process_B21_branch_out_c0_exe5903;
    wire [0:0] conv_process_B21_branch_out_c0_exe6904;
    wire [0:0] conv_process_B21_branch_out_c0_exe7905;
    wire [0:0] conv_process_B21_branch_out_c0_exe8906;
    wire [0:0] conv_process_B21_branch_out_c0_exe9907;
    wire [0:0] conv_process_B21_branch_out_stall_out;
    wire [0:0] conv_process_B21_branch_out_valid_out_0;
    wire [0:0] conv_process_B21_merge_out_forked126;
    wire [0:0] conv_process_B21_merge_out_lnot281_pop74641;
    wire [0:0] conv_process_B21_merge_out_lnot282_pop83652;
    wire [0:0] conv_process_B21_merge_out_lnot283_pop99661;
    wire [0:0] conv_process_B21_merge_out_lnot626;
    wire [0:0] conv_process_B21_merge_out_notcmp198658;
    wire [0:0] conv_process_B21_merge_out_notcmp202299_pop101667;
    wire [0:0] conv_process_B21_merge_out_notcmp202647;
    wire [0:0] conv_process_B21_merge_out_notcmp206292_pop84657;
    wire [0:0] conv_process_B21_merge_out_notcmp206293_pop100664;
    wire [0:0] conv_process_B21_merge_out_notcmp206634;
    wire [0:0] conv_process_B21_merge_out_stall_out_0;
    wire [0:0] conv_process_B21_merge_out_stall_out_1;
    wire [0:0] conv_process_B21_merge_out_valid_out;


    // conv_process_B21_merge(BLACKBOX,4)
    cnn_top_conv_process_B21_merge theconv_process_B21_merge (
        .in_forked126_0(in_forked126_0),
        .in_forked126_1(in_forked126_1),
        .in_lnot281_pop74641_0(in_lnot281_pop74641_0),
        .in_lnot281_pop74641_1(in_lnot281_pop74641_1),
        .in_lnot282_pop83652_0(in_lnot282_pop83652_0),
        .in_lnot282_pop83652_1(in_lnot282_pop83652_1),
        .in_lnot283_pop99661_0(in_lnot283_pop99661_0),
        .in_lnot283_pop99661_1(in_lnot283_pop99661_1),
        .in_lnot626_0(in_lnot626_0),
        .in_lnot626_1(in_lnot626_1),
        .in_notcmp198658_0(in_notcmp198658_0),
        .in_notcmp198658_1(in_notcmp198658_1),
        .in_notcmp202299_pop101667_0(in_notcmp202299_pop101667_0),
        .in_notcmp202299_pop101667_1(in_notcmp202299_pop101667_1),
        .in_notcmp202647_0(in_notcmp202647_0),
        .in_notcmp202647_1(in_notcmp202647_1),
        .in_notcmp206292_pop84657_0(in_notcmp206292_pop84657_0),
        .in_notcmp206292_pop84657_1(in_notcmp206292_pop84657_1),
        .in_notcmp206293_pop100664_0(in_notcmp206293_pop100664_0),
        .in_notcmp206293_pop100664_1(in_notcmp206293_pop100664_1),
        .in_notcmp206634_0(in_notcmp206634_0),
        .in_notcmp206634_1(in_notcmp206634_1),
        .in_stall_in(bb_conv_process_B21_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked126(conv_process_B21_merge_out_forked126),
        .out_lnot281_pop74641(conv_process_B21_merge_out_lnot281_pop74641),
        .out_lnot282_pop83652(conv_process_B21_merge_out_lnot282_pop83652),
        .out_lnot283_pop99661(conv_process_B21_merge_out_lnot283_pop99661),
        .out_lnot626(conv_process_B21_merge_out_lnot626),
        .out_notcmp198658(conv_process_B21_merge_out_notcmp198658),
        .out_notcmp202299_pop101667(conv_process_B21_merge_out_notcmp202299_pop101667),
        .out_notcmp202647(conv_process_B21_merge_out_notcmp202647),
        .out_notcmp206292_pop84657(conv_process_B21_merge_out_notcmp206292_pop84657),
        .out_notcmp206293_pop100664(conv_process_B21_merge_out_notcmp206293_pop100664),
        .out_notcmp206634(conv_process_B21_merge_out_notcmp206634),
        .out_stall_out_0(conv_process_B21_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B21_merge_out_stall_out_1),
        .out_valid_out(conv_process_B21_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B21_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B21_stall_region thebb_conv_process_B21_stall_region (
        .in_forked126(conv_process_B21_merge_out_forked126),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_lnot281_pop74641(conv_process_B21_merge_out_lnot281_pop74641),
        .in_lnot282_pop83652(conv_process_B21_merge_out_lnot282_pop83652),
        .in_lnot283_pop99661(conv_process_B21_merge_out_lnot283_pop99661),
        .in_lnot626(conv_process_B21_merge_out_lnot626),
        .in_notcmp198658(conv_process_B21_merge_out_notcmp198658),
        .in_notcmp202299_pop101667(conv_process_B21_merge_out_notcmp202299_pop101667),
        .in_notcmp202647(conv_process_B21_merge_out_notcmp202647),
        .in_notcmp206292_pop84657(conv_process_B21_merge_out_notcmp206292_pop84657),
        .in_notcmp206293_pop100664(conv_process_B21_merge_out_notcmp206293_pop100664),
        .in_notcmp206634(conv_process_B21_merge_out_notcmp206634),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B21_branch_out_stall_out),
        .in_valid_in(conv_process_B21_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out(bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out(bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out),
        .out_c0_exe10908(bb_conv_process_B21_stall_region_out_c0_exe10908),
        .out_c0_exe11909(bb_conv_process_B21_stall_region_out_c0_exe11909),
        .out_c0_exe12910(bb_conv_process_B21_stall_region_out_c0_exe12910),
        .out_c0_exe13911(bb_conv_process_B21_stall_region_out_c0_exe13911),
        .out_c0_exe14912(bb_conv_process_B21_stall_region_out_c0_exe14912),
        .out_c0_exe15(bb_conv_process_B21_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_conv_process_B21_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_conv_process_B21_stall_region_out_c0_exe17),
        .out_c0_exe2900(bb_conv_process_B21_stall_region_out_c0_exe2900),
        .out_c0_exe3901(bb_conv_process_B21_stall_region_out_c0_exe3901),
        .out_c0_exe4902(bb_conv_process_B21_stall_region_out_c0_exe4902),
        .out_c0_exe5903(bb_conv_process_B21_stall_region_out_c0_exe5903),
        .out_c0_exe6904(bb_conv_process_B21_stall_region_out_c0_exe6904),
        .out_c0_exe7905(bb_conv_process_B21_stall_region_out_c0_exe7905),
        .out_c0_exe8906(bb_conv_process_B21_stall_region_out_c0_exe8906),
        .out_c0_exe9907(bb_conv_process_B21_stall_region_out_c0_exe9907),
        .out_pipeline_valid_out(bb_conv_process_B21_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B21_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B21_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B21_branch(BLACKBOX,3)
    cnn_top_conv_process_B21_branch theconv_process_B21_branch (
        .in_c0_exe10908(bb_conv_process_B21_stall_region_out_c0_exe10908),
        .in_c0_exe11909(bb_conv_process_B21_stall_region_out_c0_exe11909),
        .in_c0_exe12910(bb_conv_process_B21_stall_region_out_c0_exe12910),
        .in_c0_exe13911(bb_conv_process_B21_stall_region_out_c0_exe13911),
        .in_c0_exe14912(bb_conv_process_B21_stall_region_out_c0_exe14912),
        .in_c0_exe15(bb_conv_process_B21_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_conv_process_B21_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_conv_process_B21_stall_region_out_c0_exe17),
        .in_c0_exe2900(bb_conv_process_B21_stall_region_out_c0_exe2900),
        .in_c0_exe3901(bb_conv_process_B21_stall_region_out_c0_exe3901),
        .in_c0_exe4902(bb_conv_process_B21_stall_region_out_c0_exe4902),
        .in_c0_exe5903(bb_conv_process_B21_stall_region_out_c0_exe5903),
        .in_c0_exe6904(bb_conv_process_B21_stall_region_out_c0_exe6904),
        .in_c0_exe7905(bb_conv_process_B21_stall_region_out_c0_exe7905),
        .in_c0_exe8906(bb_conv_process_B21_stall_region_out_c0_exe8906),
        .in_c0_exe9907(bb_conv_process_B21_stall_region_out_c0_exe9907),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_conv_process_B21_stall_region_out_valid_out),
        .out_c0_exe10908(conv_process_B21_branch_out_c0_exe10908),
        .out_c0_exe11909(conv_process_B21_branch_out_c0_exe11909),
        .out_c0_exe12910(conv_process_B21_branch_out_c0_exe12910),
        .out_c0_exe13911(conv_process_B21_branch_out_c0_exe13911),
        .out_c0_exe14912(conv_process_B21_branch_out_c0_exe14912),
        .out_c0_exe15(conv_process_B21_branch_out_c0_exe15),
        .out_c0_exe16(conv_process_B21_branch_out_c0_exe16),
        .out_c0_exe17(conv_process_B21_branch_out_c0_exe17),
        .out_c0_exe2900(conv_process_B21_branch_out_c0_exe2900),
        .out_c0_exe3901(conv_process_B21_branch_out_c0_exe3901),
        .out_c0_exe4902(conv_process_B21_branch_out_c0_exe4902),
        .out_c0_exe5903(conv_process_B21_branch_out_c0_exe5903),
        .out_c0_exe6904(conv_process_B21_branch_out_c0_exe6904),
        .out_c0_exe7905(conv_process_B21_branch_out_c0_exe7905),
        .out_c0_exe8906(conv_process_B21_branch_out_c0_exe8906),
        .out_c0_exe9907(conv_process_B21_branch_out_c0_exe9907),
        .out_stall_out(conv_process_B21_branch_out_stall_out),
        .out_valid_out_0(conv_process_B21_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10908(GPOUT,32)
    assign out_c0_exe10908 = conv_process_B21_branch_out_c0_exe10908;

    // out_c0_exe11909(GPOUT,33)
    assign out_c0_exe11909 = conv_process_B21_branch_out_c0_exe11909;

    // out_c0_exe12910(GPOUT,34)
    assign out_c0_exe12910 = conv_process_B21_branch_out_c0_exe12910;

    // out_c0_exe13911(GPOUT,35)
    assign out_c0_exe13911 = conv_process_B21_branch_out_c0_exe13911;

    // out_c0_exe14912(GPOUT,36)
    assign out_c0_exe14912 = conv_process_B21_branch_out_c0_exe14912;

    // out_c0_exe15(GPOUT,37)
    assign out_c0_exe15 = conv_process_B21_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,38)
    assign out_c0_exe16 = conv_process_B21_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,39)
    assign out_c0_exe17 = conv_process_B21_branch_out_c0_exe17;

    // out_c0_exe2900(GPOUT,40)
    assign out_c0_exe2900 = conv_process_B21_branch_out_c0_exe2900;

    // out_c0_exe3901(GPOUT,41)
    assign out_c0_exe3901 = conv_process_B21_branch_out_c0_exe3901;

    // out_c0_exe4902(GPOUT,42)
    assign out_c0_exe4902 = conv_process_B21_branch_out_c0_exe4902;

    // out_c0_exe5903(GPOUT,43)
    assign out_c0_exe5903 = conv_process_B21_branch_out_c0_exe5903;

    // out_c0_exe6904(GPOUT,44)
    assign out_c0_exe6904 = conv_process_B21_branch_out_c0_exe6904;

    // out_c0_exe7905(GPOUT,45)
    assign out_c0_exe7905 = conv_process_B21_branch_out_c0_exe7905;

    // out_c0_exe8906(GPOUT,46)
    assign out_c0_exe8906 = conv_process_B21_branch_out_c0_exe8906;

    // out_c0_exe9907(GPOUT,47)
    assign out_c0_exe9907 = conv_process_B21_branch_out_c0_exe9907;

    // out_exiting_stall_out(GPOUT,48)
    assign out_exiting_stall_out = bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,49)
    assign out_exiting_valid_out = bb_conv_process_B21_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out;

    // out_stall_out_0(GPOUT,50)
    assign out_stall_out_0 = conv_process_B21_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,51)
    assign out_stall_out_1 = conv_process_B21_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,52)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,53)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,54)
    assign out_valid_out_0 = conv_process_B21_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,56)
    assign out_pipeline_valid_out = bb_conv_process_B21_stall_region_out_pipeline_valid_out;

endmodule
