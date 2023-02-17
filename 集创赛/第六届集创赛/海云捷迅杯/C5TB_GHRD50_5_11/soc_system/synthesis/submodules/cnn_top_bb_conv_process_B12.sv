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

// SystemVerilog created from cnn_top_bb_conv_process_B12
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B12 (
    input wire [31:0] in_intel_reserved_ffwd_65_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_65_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_65_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_2_tpl,
    input wire [31:0] in_c_0_i110470_pop76603_0,
    input wire [31:0] in_c_0_i110470_pop76603_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked163_0,
    input wire [0:0] in_forked163_1,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [63:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack,
    input wire [0:0] in_notcmp165605_0,
    input wire [0:0] in_notcmp165605_1,
    input wire [0:0] in_notcmp169288_pop80609_0,
    input wire [0:0] in_notcmp169288_pop80609_1,
    input wire [0:0] in_notcmp169599_0,
    input wire [0:0] in_notcmp169599_1,
    input wire [31:0] in_offset_0_i475_replace_phi286_pop78607_0,
    input wire [31:0] in_offset_0_i475_replace_phi286_pop78607_1,
    input wire [31:0] in_offset_0_i475_replace_phi596_0,
    input wire [31:0] in_offset_0_i475_replace_phi596_1,
    input wire [31:0] in_offset_1_i469_pop77606_0,
    input wire [31:0] in_offset_1_i469_pop77606_1,
    input wire [0:0] in_or_cond189604_0,
    input wire [0:0] in_or_cond189604_1,
    input wire [0:0] in_pop79608_0,
    input wire [0:0] in_pop79608_1,
    input wire [31:0] in_r_0_i106476_pop65290_pop81610_0,
    input wire [31:0] in_r_0_i106476_pop65290_pop81610_1,
    input wire [31:0] in_r_0_i106476_pop65602_0,
    input wire [31:0] in_r_0_i106476_pop65602_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_unnamed_conv_process101_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_readdatavalid,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_writeack,
    input wire [0:0] in_unnamed_conv_process94_0,
    input wire [0:0] in_unnamed_conv_process94_1,
    input wire [31:0] in_unnamed_conv_process95_0,
    input wire [31:0] in_unnamed_conv_process95_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10780,
    output wire [31:0] out_c0_exe6776,
    output wire [0:0] out_c0_exe7777,
    output wire [0:0] out_c0_exe8778,
    output wire [0:0] out_c0_exe9779,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_lsu_unnamed_conv_process101_o_active,
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_burstcount,
    output wire [3:0] out_unnamed_conv_process101_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out;
    wire [0:0] bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out;
    wire [31:0] bb_conv_process_B12_stall_region_out_c0_exe10780;
    wire [0:0] bb_conv_process_B12_stall_region_out_c0_exe5775;
    wire [31:0] bb_conv_process_B12_stall_region_out_c0_exe6776;
    wire [0:0] bb_conv_process_B12_stall_region_out_c0_exe7777;
    wire [0:0] bb_conv_process_B12_stall_region_out_c0_exe8778;
    wire [0:0] bb_conv_process_B12_stall_region_out_c0_exe9779;
    wire [0:0] bb_conv_process_B12_stall_region_out_lsu_unnamed_conv_process101_o_active;
    wire [31:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    wire [0:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    wire [0:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    wire [511:0] bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B12_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B12_stall_region_out_stall_out;
    wire [31:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_address;
    wire [0:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_burstcount;
    wire [3:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_read;
    wire [0:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_write;
    wire [31:0] bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B12_stall_region_out_valid_out;
    wire [31:0] conv_process_B12_branch_out_c0_exe10780;
    wire [31:0] conv_process_B12_branch_out_c0_exe6776;
    wire [0:0] conv_process_B12_branch_out_c0_exe7777;
    wire [0:0] conv_process_B12_branch_out_c0_exe8778;
    wire [0:0] conv_process_B12_branch_out_c0_exe9779;
    wire [0:0] conv_process_B12_branch_out_stall_out;
    wire [0:0] conv_process_B12_branch_out_valid_out_0;
    wire [0:0] conv_process_B12_branch_out_valid_out_1;
    wire [31:0] conv_process_B12_merge_out_c_0_i110470_pop76603;
    wire [0:0] conv_process_B12_merge_out_forked163;
    wire [0:0] conv_process_B12_merge_out_notcmp165605;
    wire [0:0] conv_process_B12_merge_out_notcmp169288_pop80609;
    wire [0:0] conv_process_B12_merge_out_notcmp169599;
    wire [31:0] conv_process_B12_merge_out_offset_0_i475_replace_phi286_pop78607;
    wire [31:0] conv_process_B12_merge_out_offset_0_i475_replace_phi596;
    wire [31:0] conv_process_B12_merge_out_offset_1_i469_pop77606;
    wire [0:0] conv_process_B12_merge_out_or_cond189604;
    wire [0:0] conv_process_B12_merge_out_pop79608;
    wire [31:0] conv_process_B12_merge_out_r_0_i106476_pop65290_pop81610;
    wire [31:0] conv_process_B12_merge_out_r_0_i106476_pop65602;
    wire [0:0] conv_process_B12_merge_out_stall_out_0;
    wire [0:0] conv_process_B12_merge_out_stall_out_1;
    wire [0:0] conv_process_B12_merge_out_unnamed_conv_process94;
    wire [31:0] conv_process_B12_merge_out_unnamed_conv_process95;
    wire [0:0] conv_process_B12_merge_out_valid_out;


    // conv_process_B12_merge(BLACKBOX,82)
    cnn_top_conv_process_B12_merge theconv_process_B12_merge (
        .in_c_0_i110470_pop76603_0(in_c_0_i110470_pop76603_0),
        .in_c_0_i110470_pop76603_1(in_c_0_i110470_pop76603_1),
        .in_forked163_0(in_forked163_0),
        .in_forked163_1(in_forked163_1),
        .in_notcmp165605_0(in_notcmp165605_0),
        .in_notcmp165605_1(in_notcmp165605_1),
        .in_notcmp169288_pop80609_0(in_notcmp169288_pop80609_0),
        .in_notcmp169288_pop80609_1(in_notcmp169288_pop80609_1),
        .in_notcmp169599_0(in_notcmp169599_0),
        .in_notcmp169599_1(in_notcmp169599_1),
        .in_offset_0_i475_replace_phi286_pop78607_0(in_offset_0_i475_replace_phi286_pop78607_0),
        .in_offset_0_i475_replace_phi286_pop78607_1(in_offset_0_i475_replace_phi286_pop78607_1),
        .in_offset_0_i475_replace_phi596_0(in_offset_0_i475_replace_phi596_0),
        .in_offset_0_i475_replace_phi596_1(in_offset_0_i475_replace_phi596_1),
        .in_offset_1_i469_pop77606_0(in_offset_1_i469_pop77606_0),
        .in_offset_1_i469_pop77606_1(in_offset_1_i469_pop77606_1),
        .in_or_cond189604_0(in_or_cond189604_0),
        .in_or_cond189604_1(in_or_cond189604_1),
        .in_pop79608_0(in_pop79608_0),
        .in_pop79608_1(in_pop79608_1),
        .in_r_0_i106476_pop65290_pop81610_0(in_r_0_i106476_pop65290_pop81610_0),
        .in_r_0_i106476_pop65290_pop81610_1(in_r_0_i106476_pop65290_pop81610_1),
        .in_r_0_i106476_pop65602_0(in_r_0_i106476_pop65602_0),
        .in_r_0_i106476_pop65602_1(in_r_0_i106476_pop65602_1),
        .in_stall_in(bb_conv_process_B12_stall_region_out_stall_out),
        .in_unnamed_conv_process94_0(in_unnamed_conv_process94_0),
        .in_unnamed_conv_process94_1(in_unnamed_conv_process94_1),
        .in_unnamed_conv_process95_0(in_unnamed_conv_process95_0),
        .in_unnamed_conv_process95_1(in_unnamed_conv_process95_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_c_0_i110470_pop76603(conv_process_B12_merge_out_c_0_i110470_pop76603),
        .out_forked163(conv_process_B12_merge_out_forked163),
        .out_notcmp165605(conv_process_B12_merge_out_notcmp165605),
        .out_notcmp169288_pop80609(conv_process_B12_merge_out_notcmp169288_pop80609),
        .out_notcmp169599(conv_process_B12_merge_out_notcmp169599),
        .out_offset_0_i475_replace_phi286_pop78607(conv_process_B12_merge_out_offset_0_i475_replace_phi286_pop78607),
        .out_offset_0_i475_replace_phi596(conv_process_B12_merge_out_offset_0_i475_replace_phi596),
        .out_offset_1_i469_pop77606(conv_process_B12_merge_out_offset_1_i469_pop77606),
        .out_or_cond189604(conv_process_B12_merge_out_or_cond189604),
        .out_pop79608(conv_process_B12_merge_out_pop79608),
        .out_r_0_i106476_pop65290_pop81610(conv_process_B12_merge_out_r_0_i106476_pop65290_pop81610),
        .out_r_0_i106476_pop65602(conv_process_B12_merge_out_r_0_i106476_pop65602),
        .out_stall_out_0(conv_process_B12_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B12_merge_out_stall_out_1),
        .out_unnamed_conv_process94(conv_process_B12_merge_out_unnamed_conv_process94),
        .out_unnamed_conv_process95(conv_process_B12_merge_out_unnamed_conv_process95),
        .out_valid_out(conv_process_B12_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B12_stall_region(BLACKBOX,80)
    cnn_top_bb_conv_process_B12_stall_region thebb_conv_process_B12_stall_region (
        .in_intel_reserved_ffwd_65_0_0_tpl(in_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(in_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(in_intel_reserved_ffwd_65_0_2_tpl),
        .in_intel_reserved_ffwd_66_0_0_tpl(in_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(in_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(in_intel_reserved_ffwd_66_0_2_tpl),
        .in_intel_reserved_ffwd_67_0_0_tpl(in_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(in_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(in_intel_reserved_ffwd_67_0_2_tpl),
        .in_intel_reserved_ffwd_68_0_0_tpl(in_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(in_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(in_intel_reserved_ffwd_68_0_2_tpl),
        .in_intel_reserved_ffwd_69_0_0_tpl(in_intel_reserved_ffwd_69_0_0_tpl),
        .in_intel_reserved_ffwd_69_0_1_tpl(in_intel_reserved_ffwd_69_0_1_tpl),
        .in_intel_reserved_ffwd_69_0_2_tpl(in_intel_reserved_ffwd_69_0_2_tpl),
        .in_intel_reserved_ffwd_70_0_0_tpl(in_intel_reserved_ffwd_70_0_0_tpl),
        .in_intel_reserved_ffwd_70_0_1_tpl(in_intel_reserved_ffwd_70_0_1_tpl),
        .in_intel_reserved_ffwd_70_0_2_tpl(in_intel_reserved_ffwd_70_0_2_tpl),
        .in_intel_reserved_ffwd_71_0_0_tpl(in_intel_reserved_ffwd_71_0_0_tpl),
        .in_intel_reserved_ffwd_71_0_1_tpl(in_intel_reserved_ffwd_71_0_1_tpl),
        .in_intel_reserved_ffwd_71_0_2_tpl(in_intel_reserved_ffwd_71_0_2_tpl),
        .in_intel_reserved_ffwd_72_0_0_tpl(in_intel_reserved_ffwd_72_0_0_tpl),
        .in_intel_reserved_ffwd_72_0_1_tpl(in_intel_reserved_ffwd_72_0_1_tpl),
        .in_intel_reserved_ffwd_72_0_2_tpl(in_intel_reserved_ffwd_72_0_2_tpl),
        .in_c_0_i110470_pop76603(conv_process_B12_merge_out_c_0_i110470_pop76603),
        .in_flush(in_flush),
        .in_forked163(conv_process_B12_merge_out_forked163),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack),
        .in_notcmp165605(conv_process_B12_merge_out_notcmp165605),
        .in_notcmp169288_pop80609(conv_process_B12_merge_out_notcmp169288_pop80609),
        .in_notcmp169599(conv_process_B12_merge_out_notcmp169599),
        .in_offset_0_i475_replace_phi286_pop78607(conv_process_B12_merge_out_offset_0_i475_replace_phi286_pop78607),
        .in_offset_0_i475_replace_phi596(conv_process_B12_merge_out_offset_0_i475_replace_phi596),
        .in_offset_1_i469_pop77606(conv_process_B12_merge_out_offset_1_i469_pop77606),
        .in_or_cond189604(conv_process_B12_merge_out_or_cond189604),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop79608(conv_process_B12_merge_out_pop79608),
        .in_r_0_i106476_pop65290_pop81610(conv_process_B12_merge_out_r_0_i106476_pop65290_pop81610),
        .in_r_0_i106476_pop65602(conv_process_B12_merge_out_r_0_i106476_pop65602),
        .in_stall_in(conv_process_B12_branch_out_stall_out),
        .in_unnamed_conv_process101_conv_process_avm_readdata(in_unnamed_conv_process101_conv_process_avm_readdata),
        .in_unnamed_conv_process101_conv_process_avm_readdatavalid(in_unnamed_conv_process101_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process101_conv_process_avm_waitrequest(in_unnamed_conv_process101_conv_process_avm_waitrequest),
        .in_unnamed_conv_process101_conv_process_avm_writeack(in_unnamed_conv_process101_conv_process_avm_writeack),
        .in_unnamed_conv_process94(conv_process_B12_merge_out_unnamed_conv_process94),
        .in_unnamed_conv_process95(conv_process_B12_merge_out_unnamed_conv_process95),
        .in_valid_in(conv_process_B12_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out(bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out(bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out),
        .out_c0_exe10780(bb_conv_process_B12_stall_region_out_c0_exe10780),
        .out_c0_exe5775(bb_conv_process_B12_stall_region_out_c0_exe5775),
        .out_c0_exe6776(bb_conv_process_B12_stall_region_out_c0_exe6776),
        .out_c0_exe7777(bb_conv_process_B12_stall_region_out_c0_exe7777),
        .out_c0_exe8778(bb_conv_process_B12_stall_region_out_c0_exe8778),
        .out_c0_exe9779(bb_conv_process_B12_stall_region_out_c0_exe9779),
        .out_lsu_unnamed_conv_process101_o_active(bb_conv_process_B12_stall_region_out_lsu_unnamed_conv_process101_o_active),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B12_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B12_stall_region_out_stall_out),
        .out_unnamed_conv_process101_conv_process_avm_address(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_address),
        .out_unnamed_conv_process101_conv_process_avm_burstcount(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_burstcount),
        .out_unnamed_conv_process101_conv_process_avm_byteenable(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_byteenable),
        .out_unnamed_conv_process101_conv_process_avm_enable(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_enable),
        .out_unnamed_conv_process101_conv_process_avm_read(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_read),
        .out_unnamed_conv_process101_conv_process_avm_write(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_write),
        .out_unnamed_conv_process101_conv_process_avm_writedata(bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_writedata),
        .out_valid_out(bb_conv_process_B12_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B12_branch(BLACKBOX,81)
    cnn_top_conv_process_B12_branch theconv_process_B12_branch (
        .in_c0_exe10780(bb_conv_process_B12_stall_region_out_c0_exe10780),
        .in_c0_exe5775(bb_conv_process_B12_stall_region_out_c0_exe5775),
        .in_c0_exe6776(bb_conv_process_B12_stall_region_out_c0_exe6776),
        .in_c0_exe7777(bb_conv_process_B12_stall_region_out_c0_exe7777),
        .in_c0_exe8778(bb_conv_process_B12_stall_region_out_c0_exe8778),
        .in_c0_exe9779(bb_conv_process_B12_stall_region_out_c0_exe9779),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B12_stall_region_out_valid_out),
        .out_c0_exe10780(conv_process_B12_branch_out_c0_exe10780),
        .out_c0_exe6776(conv_process_B12_branch_out_c0_exe6776),
        .out_c0_exe7777(conv_process_B12_branch_out_c0_exe7777),
        .out_c0_exe8778(conv_process_B12_branch_out_c0_exe8778),
        .out_c0_exe9779(conv_process_B12_branch_out_c0_exe9779),
        .out_stall_out(conv_process_B12_branch_out_stall_out),
        .out_valid_out_0(conv_process_B12_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B12_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10780(GPOUT,83)
    assign out_c0_exe10780 = conv_process_B12_branch_out_c0_exe10780;

    // out_c0_exe6776(GPOUT,84)
    assign out_c0_exe6776 = conv_process_B12_branch_out_c0_exe6776;

    // out_c0_exe7777(GPOUT,85)
    assign out_c0_exe7777 = conv_process_B12_branch_out_c0_exe7777;

    // out_c0_exe8778(GPOUT,86)
    assign out_c0_exe8778 = conv_process_B12_branch_out_c0_exe8778;

    // out_c0_exe9779(GPOUT,87)
    assign out_c0_exe9779 = conv_process_B12_branch_out_c0_exe9779;

    // out_exiting_stall_out(GPOUT,88)
    assign out_exiting_stall_out = bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,89)
    assign out_exiting_valid_out = bb_conv_process_B12_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out;

    // out_lsu_unnamed_conv_process101_o_active(GPOUT,90)
    assign out_lsu_unnamed_conv_process101_o_active = bb_conv_process_B12_stall_region_out_lsu_unnamed_conv_process101_o_active;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(GPOUT,91)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(GPOUT,92)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(GPOUT,93)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(GPOUT,94)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(GPOUT,95)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(GPOUT,96)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;

    // out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(GPOUT,97)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata = bb_conv_process_B12_stall_region_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;

    // out_stall_in_0(GPOUT,98)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,99)
    assign out_stall_out_0 = conv_process_B12_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,100)
    assign out_stall_out_1 = conv_process_B12_merge_out_stall_out_1;

    // out_unnamed_conv_process101_conv_process_avm_address(GPOUT,101)
    assign out_unnamed_conv_process101_conv_process_avm_address = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_address;

    // out_unnamed_conv_process101_conv_process_avm_burstcount(GPOUT,102)
    assign out_unnamed_conv_process101_conv_process_avm_burstcount = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_burstcount;

    // out_unnamed_conv_process101_conv_process_avm_byteenable(GPOUT,103)
    assign out_unnamed_conv_process101_conv_process_avm_byteenable = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_byteenable;

    // out_unnamed_conv_process101_conv_process_avm_enable(GPOUT,104)
    assign out_unnamed_conv_process101_conv_process_avm_enable = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_enable;

    // out_unnamed_conv_process101_conv_process_avm_read(GPOUT,105)
    assign out_unnamed_conv_process101_conv_process_avm_read = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_read;

    // out_unnamed_conv_process101_conv_process_avm_write(GPOUT,106)
    assign out_unnamed_conv_process101_conv_process_avm_write = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_write;

    // out_unnamed_conv_process101_conv_process_avm_writedata(GPOUT,107)
    assign out_unnamed_conv_process101_conv_process_avm_writedata = bb_conv_process_B12_stall_region_out_unnamed_conv_process101_conv_process_avm_writedata;

    // out_valid_in_0(GPOUT,108)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,109)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,110)
    assign out_valid_out_0 = conv_process_B12_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,111)
    assign out_valid_out_1 = conv_process_B12_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,113)
    assign out_pipeline_valid_out = bb_conv_process_B12_stall_region_out_pipeline_valid_out;

endmodule
