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

// SystemVerilog created from cnn_top_bb_load_input1_B14
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input1_B14 (
    input wire [0:0] in_forked48_0,
    input wire [0:0] in_forked48_1,
    input wire [32:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_kh_080_pop21107_pop37162_0,
    input wire [31:0] in_kh_080_pop21107_pop37162_1,
    input wire [31:0] in_kh_080_pop21136_0,
    input wire [31:0] in_kh_080_pop21136_1,
    input wire [31:0] in_kw_077_pop33150_0,
    input wire [31:0] in_kw_077_pop33150_1,
    input wire [31:0] in_li_082125_0,
    input wire [31:0] in_li_082125_1,
    input wire [31:0] in_li_08298_pop22141_0,
    input wire [31:0] in_li_08298_pop22141_1,
    input wire [31:0] in_li_08299_pop34153_0,
    input wire [31:0] in_li_08299_pop34153_1,
    input wire [0:0] in_notcmp85147_0,
    input wire [0:0] in_notcmp85147_1,
    input wire [0:0] in_notcmp89104_pop36159_0,
    input wire [0:0] in_notcmp89104_pop36159_1,
    input wire [0:0] in_notcmp89131_0,
    input wire [0:0] in_notcmp89131_1,
    input wire [0:0] in_pop23146_0,
    input wire [0:0] in_pop23146_1,
    input wire [0:0] in_pop35156_0,
    input wire [0:0] in_pop35156_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_load_input148_0,
    input wire [0:0] in_unnamed_load_input148_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10301,
    output wire [0:0] out_c0_exe11302,
    output wire [0:0] out_c0_exe12303,
    output wire [31:0] out_c0_exe1292,
    output wire [31:0] out_c0_exe13304,
    output wire [31:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [0:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [31:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [31:0] out_c0_exe2293,
    output wire [0:0] out_c0_exe4295,
    output wire [31:0] out_c0_exe5296,
    output wire [0:0] out_c0_exe6297,
    output wire [0:0] out_c0_exe7298,
    output wire [31:0] out_c0_exe8299,
    output wire [0:0] out_c0_exe9300,
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

    wire [0:0] bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_stall_out;
    wire [0:0] bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_valid_out;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe10301;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe11302;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe12303;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe1292;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe13304;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe14;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe15;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe16;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe17;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe18;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe19;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe20;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe21;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe2293;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe4295;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe5296;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe6297;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe7298;
    wire [31:0] bb_load_input1_B14_stall_region_out_c0_exe8299;
    wire [0:0] bb_load_input1_B14_stall_region_out_c0_exe9300;
    wire [0:0] bb_load_input1_B14_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_input1_B14_stall_region_out_stall_out;
    wire [0:0] bb_load_input1_B14_stall_region_out_valid_out;
    wire [31:0] load_input1_B14_branch_out_c0_exe10301;
    wire [0:0] load_input1_B14_branch_out_c0_exe11302;
    wire [0:0] load_input1_B14_branch_out_c0_exe12303;
    wire [31:0] load_input1_B14_branch_out_c0_exe1292;
    wire [31:0] load_input1_B14_branch_out_c0_exe13304;
    wire [31:0] load_input1_B14_branch_out_c0_exe14;
    wire [0:0] load_input1_B14_branch_out_c0_exe15;
    wire [0:0] load_input1_B14_branch_out_c0_exe16;
    wire [31:0] load_input1_B14_branch_out_c0_exe17;
    wire [31:0] load_input1_B14_branch_out_c0_exe18;
    wire [0:0] load_input1_B14_branch_out_c0_exe19;
    wire [0:0] load_input1_B14_branch_out_c0_exe20;
    wire [31:0] load_input1_B14_branch_out_c0_exe21;
    wire [31:0] load_input1_B14_branch_out_c0_exe2293;
    wire [0:0] load_input1_B14_branch_out_c0_exe4295;
    wire [31:0] load_input1_B14_branch_out_c0_exe5296;
    wire [0:0] load_input1_B14_branch_out_c0_exe6297;
    wire [0:0] load_input1_B14_branch_out_c0_exe7298;
    wire [31:0] load_input1_B14_branch_out_c0_exe8299;
    wire [0:0] load_input1_B14_branch_out_c0_exe9300;
    wire [0:0] load_input1_B14_branch_out_stall_out;
    wire [0:0] load_input1_B14_branch_out_valid_out_0;
    wire [0:0] load_input1_B14_merge_out_forked48;
    wire [31:0] load_input1_B14_merge_out_kh_080_pop21107_pop37162;
    wire [31:0] load_input1_B14_merge_out_kh_080_pop21136;
    wire [31:0] load_input1_B14_merge_out_kw_077_pop33150;
    wire [31:0] load_input1_B14_merge_out_li_082125;
    wire [31:0] load_input1_B14_merge_out_li_08298_pop22141;
    wire [31:0] load_input1_B14_merge_out_li_08299_pop34153;
    wire [0:0] load_input1_B14_merge_out_notcmp85147;
    wire [0:0] load_input1_B14_merge_out_notcmp89104_pop36159;
    wire [0:0] load_input1_B14_merge_out_notcmp89131;
    wire [0:0] load_input1_B14_merge_out_pop23146;
    wire [0:0] load_input1_B14_merge_out_pop35156;
    wire [0:0] load_input1_B14_merge_out_stall_out_0;
    wire [0:0] load_input1_B14_merge_out_stall_out_1;
    wire [0:0] load_input1_B14_merge_out_unnamed_load_input148;
    wire [0:0] load_input1_B14_merge_out_valid_out;


    // load_input1_B14_merge(BLACKBOX,36)
    cnn_top_load_input1_B14_merge theload_input1_B14_merge (
        .in_forked48_0(in_forked48_0),
        .in_forked48_1(in_forked48_1),
        .in_kh_080_pop21107_pop37162_0(in_kh_080_pop21107_pop37162_0),
        .in_kh_080_pop21107_pop37162_1(in_kh_080_pop21107_pop37162_1),
        .in_kh_080_pop21136_0(in_kh_080_pop21136_0),
        .in_kh_080_pop21136_1(in_kh_080_pop21136_1),
        .in_kw_077_pop33150_0(in_kw_077_pop33150_0),
        .in_kw_077_pop33150_1(in_kw_077_pop33150_1),
        .in_li_082125_0(in_li_082125_0),
        .in_li_082125_1(in_li_082125_1),
        .in_li_08298_pop22141_0(in_li_08298_pop22141_0),
        .in_li_08298_pop22141_1(in_li_08298_pop22141_1),
        .in_li_08299_pop34153_0(in_li_08299_pop34153_0),
        .in_li_08299_pop34153_1(in_li_08299_pop34153_1),
        .in_notcmp85147_0(in_notcmp85147_0),
        .in_notcmp85147_1(in_notcmp85147_1),
        .in_notcmp89104_pop36159_0(in_notcmp89104_pop36159_0),
        .in_notcmp89104_pop36159_1(in_notcmp89104_pop36159_1),
        .in_notcmp89131_0(in_notcmp89131_0),
        .in_notcmp89131_1(in_notcmp89131_1),
        .in_pop23146_0(in_pop23146_0),
        .in_pop23146_1(in_pop23146_1),
        .in_pop35156_0(in_pop35156_0),
        .in_pop35156_1(in_pop35156_1),
        .in_stall_in(bb_load_input1_B14_stall_region_out_stall_out),
        .in_unnamed_load_input148_0(in_unnamed_load_input148_0),
        .in_unnamed_load_input148_1(in_unnamed_load_input148_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked48(load_input1_B14_merge_out_forked48),
        .out_kh_080_pop21107_pop37162(load_input1_B14_merge_out_kh_080_pop21107_pop37162),
        .out_kh_080_pop21136(load_input1_B14_merge_out_kh_080_pop21136),
        .out_kw_077_pop33150(load_input1_B14_merge_out_kw_077_pop33150),
        .out_li_082125(load_input1_B14_merge_out_li_082125),
        .out_li_08298_pop22141(load_input1_B14_merge_out_li_08298_pop22141),
        .out_li_08299_pop34153(load_input1_B14_merge_out_li_08299_pop34153),
        .out_notcmp85147(load_input1_B14_merge_out_notcmp85147),
        .out_notcmp89104_pop36159(load_input1_B14_merge_out_notcmp89104_pop36159),
        .out_notcmp89131(load_input1_B14_merge_out_notcmp89131),
        .out_pop23146(load_input1_B14_merge_out_pop23146),
        .out_pop35156(load_input1_B14_merge_out_pop35156),
        .out_stall_out_0(load_input1_B14_merge_out_stall_out_0),
        .out_stall_out_1(load_input1_B14_merge_out_stall_out_1),
        .out_unnamed_load_input148(load_input1_B14_merge_out_unnamed_load_input148),
        .out_valid_out(load_input1_B14_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input1_B14_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input1_B14_stall_region thebb_load_input1_B14_stall_region (
        .in_forked48(load_input1_B14_merge_out_forked48),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_kh_080_pop21107_pop37162(load_input1_B14_merge_out_kh_080_pop21107_pop37162),
        .in_kh_080_pop21136(load_input1_B14_merge_out_kh_080_pop21136),
        .in_kw_077_pop33150(load_input1_B14_merge_out_kw_077_pop33150),
        .in_li_082125(load_input1_B14_merge_out_li_082125),
        .in_li_08298_pop22141(load_input1_B14_merge_out_li_08298_pop22141),
        .in_li_08299_pop34153(load_input1_B14_merge_out_li_08299_pop34153),
        .in_notcmp85147(load_input1_B14_merge_out_notcmp85147),
        .in_notcmp89104_pop36159(load_input1_B14_merge_out_notcmp89104_pop36159),
        .in_notcmp89131(load_input1_B14_merge_out_notcmp89131),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23146(load_input1_B14_merge_out_pop23146),
        .in_pop35156(load_input1_B14_merge_out_pop35156),
        .in_stall_in(load_input1_B14_branch_out_stall_out),
        .in_unnamed_load_input148(load_input1_B14_merge_out_unnamed_load_input148),
        .in_valid_in(load_input1_B14_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_stall_out(bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_valid_out(bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_valid_out),
        .out_c0_exe10301(bb_load_input1_B14_stall_region_out_c0_exe10301),
        .out_c0_exe11302(bb_load_input1_B14_stall_region_out_c0_exe11302),
        .out_c0_exe12303(bb_load_input1_B14_stall_region_out_c0_exe12303),
        .out_c0_exe1292(bb_load_input1_B14_stall_region_out_c0_exe1292),
        .out_c0_exe13304(bb_load_input1_B14_stall_region_out_c0_exe13304),
        .out_c0_exe14(bb_load_input1_B14_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_load_input1_B14_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_load_input1_B14_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_load_input1_B14_stall_region_out_c0_exe17),
        .out_c0_exe18(bb_load_input1_B14_stall_region_out_c0_exe18),
        .out_c0_exe19(bb_load_input1_B14_stall_region_out_c0_exe19),
        .out_c0_exe20(bb_load_input1_B14_stall_region_out_c0_exe20),
        .out_c0_exe21(bb_load_input1_B14_stall_region_out_c0_exe21),
        .out_c0_exe2293(bb_load_input1_B14_stall_region_out_c0_exe2293),
        .out_c0_exe4295(bb_load_input1_B14_stall_region_out_c0_exe4295),
        .out_c0_exe5296(bb_load_input1_B14_stall_region_out_c0_exe5296),
        .out_c0_exe6297(bb_load_input1_B14_stall_region_out_c0_exe6297),
        .out_c0_exe7298(bb_load_input1_B14_stall_region_out_c0_exe7298),
        .out_c0_exe8299(bb_load_input1_B14_stall_region_out_c0_exe8299),
        .out_c0_exe9300(bb_load_input1_B14_stall_region_out_c0_exe9300),
        .out_pipeline_valid_out(bb_load_input1_B14_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_input1_B14_stall_region_out_stall_out),
        .out_valid_out(bb_load_input1_B14_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input1_B14_branch(BLACKBOX,35)
    cnn_top_load_input1_B14_branch theload_input1_B14_branch (
        .in_c0_exe10301(bb_load_input1_B14_stall_region_out_c0_exe10301),
        .in_c0_exe11302(bb_load_input1_B14_stall_region_out_c0_exe11302),
        .in_c0_exe12303(bb_load_input1_B14_stall_region_out_c0_exe12303),
        .in_c0_exe1292(bb_load_input1_B14_stall_region_out_c0_exe1292),
        .in_c0_exe13304(bb_load_input1_B14_stall_region_out_c0_exe13304),
        .in_c0_exe14(bb_load_input1_B14_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_load_input1_B14_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_load_input1_B14_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_load_input1_B14_stall_region_out_c0_exe17),
        .in_c0_exe18(bb_load_input1_B14_stall_region_out_c0_exe18),
        .in_c0_exe19(bb_load_input1_B14_stall_region_out_c0_exe19),
        .in_c0_exe20(bb_load_input1_B14_stall_region_out_c0_exe20),
        .in_c0_exe21(bb_load_input1_B14_stall_region_out_c0_exe21),
        .in_c0_exe2293(bb_load_input1_B14_stall_region_out_c0_exe2293),
        .in_c0_exe4295(bb_load_input1_B14_stall_region_out_c0_exe4295),
        .in_c0_exe5296(bb_load_input1_B14_stall_region_out_c0_exe5296),
        .in_c0_exe6297(bb_load_input1_B14_stall_region_out_c0_exe6297),
        .in_c0_exe7298(bb_load_input1_B14_stall_region_out_c0_exe7298),
        .in_c0_exe8299(bb_load_input1_B14_stall_region_out_c0_exe8299),
        .in_c0_exe9300(bb_load_input1_B14_stall_region_out_c0_exe9300),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_load_input1_B14_stall_region_out_valid_out),
        .out_c0_exe10301(load_input1_B14_branch_out_c0_exe10301),
        .out_c0_exe11302(load_input1_B14_branch_out_c0_exe11302),
        .out_c0_exe12303(load_input1_B14_branch_out_c0_exe12303),
        .out_c0_exe1292(load_input1_B14_branch_out_c0_exe1292),
        .out_c0_exe13304(load_input1_B14_branch_out_c0_exe13304),
        .out_c0_exe14(load_input1_B14_branch_out_c0_exe14),
        .out_c0_exe15(load_input1_B14_branch_out_c0_exe15),
        .out_c0_exe16(load_input1_B14_branch_out_c0_exe16),
        .out_c0_exe17(load_input1_B14_branch_out_c0_exe17),
        .out_c0_exe18(load_input1_B14_branch_out_c0_exe18),
        .out_c0_exe19(load_input1_B14_branch_out_c0_exe19),
        .out_c0_exe20(load_input1_B14_branch_out_c0_exe20),
        .out_c0_exe21(load_input1_B14_branch_out_c0_exe21),
        .out_c0_exe2293(load_input1_B14_branch_out_c0_exe2293),
        .out_c0_exe4295(load_input1_B14_branch_out_c0_exe4295),
        .out_c0_exe5296(load_input1_B14_branch_out_c0_exe5296),
        .out_c0_exe6297(load_input1_B14_branch_out_c0_exe6297),
        .out_c0_exe7298(load_input1_B14_branch_out_c0_exe7298),
        .out_c0_exe8299(load_input1_B14_branch_out_c0_exe8299),
        .out_c0_exe9300(load_input1_B14_branch_out_c0_exe9300),
        .out_stall_out(load_input1_B14_branch_out_stall_out),
        .out_valid_out_0(load_input1_B14_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10301(GPOUT,37)
    assign out_c0_exe10301 = load_input1_B14_branch_out_c0_exe10301;

    // out_c0_exe11302(GPOUT,38)
    assign out_c0_exe11302 = load_input1_B14_branch_out_c0_exe11302;

    // out_c0_exe12303(GPOUT,39)
    assign out_c0_exe12303 = load_input1_B14_branch_out_c0_exe12303;

    // out_c0_exe1292(GPOUT,40)
    assign out_c0_exe1292 = load_input1_B14_branch_out_c0_exe1292;

    // out_c0_exe13304(GPOUT,41)
    assign out_c0_exe13304 = load_input1_B14_branch_out_c0_exe13304;

    // out_c0_exe14(GPOUT,42)
    assign out_c0_exe14 = load_input1_B14_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,43)
    assign out_c0_exe15 = load_input1_B14_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,44)
    assign out_c0_exe16 = load_input1_B14_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,45)
    assign out_c0_exe17 = load_input1_B14_branch_out_c0_exe17;

    // out_c0_exe18(GPOUT,46)
    assign out_c0_exe18 = load_input1_B14_branch_out_c0_exe18;

    // out_c0_exe19(GPOUT,47)
    assign out_c0_exe19 = load_input1_B14_branch_out_c0_exe19;

    // out_c0_exe20(GPOUT,48)
    assign out_c0_exe20 = load_input1_B14_branch_out_c0_exe20;

    // out_c0_exe21(GPOUT,49)
    assign out_c0_exe21 = load_input1_B14_branch_out_c0_exe21;

    // out_c0_exe2293(GPOUT,50)
    assign out_c0_exe2293 = load_input1_B14_branch_out_c0_exe2293;

    // out_c0_exe4295(GPOUT,51)
    assign out_c0_exe4295 = load_input1_B14_branch_out_c0_exe4295;

    // out_c0_exe5296(GPOUT,52)
    assign out_c0_exe5296 = load_input1_B14_branch_out_c0_exe5296;

    // out_c0_exe6297(GPOUT,53)
    assign out_c0_exe6297 = load_input1_B14_branch_out_c0_exe6297;

    // out_c0_exe7298(GPOUT,54)
    assign out_c0_exe7298 = load_input1_B14_branch_out_c0_exe7298;

    // out_c0_exe8299(GPOUT,55)
    assign out_c0_exe8299 = load_input1_B14_branch_out_c0_exe8299;

    // out_c0_exe9300(GPOUT,56)
    assign out_c0_exe9300 = load_input1_B14_branch_out_c0_exe9300;

    // out_exiting_stall_out(GPOUT,57)
    assign out_exiting_stall_out = bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,58)
    assign out_exiting_valid_out = bb_load_input1_B14_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input12_exiting_valid_out;

    // out_stall_out_0(GPOUT,59)
    assign out_stall_out_0 = load_input1_B14_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,60)
    assign out_stall_out_1 = load_input1_B14_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,61)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,62)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,63)
    assign out_valid_out_0 = load_input1_B14_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,65)
    assign out_pipeline_valid_out = bb_load_input1_B14_stall_region_out_pipeline_valid_out;

endmodule
