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

// SystemVerilog created from cnn_top_bb_conv_process_B12_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B12_stall_region (
    input wire [31:0] in_unnamed_conv_process101_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_writeack,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process101_conv_process_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount,
    output wire [31:0] out_c0_exe10780,
    output wire [0:0] out_c0_exe5775,
    output wire [31:0] out_c0_exe6776,
    output wire [0:0] out_c0_exe7777,
    output wire [0:0] out_c0_exe8778,
    output wire [0:0] out_c0_exe9779,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process101_conv_process_avm_writedata,
    output wire [3:0] out_unnamed_conv_process101_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process101_conv_process_avm_burstcount,
    output wire [0:0] out_lsu_unnamed_conv_process101_o_active,
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
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
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
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_0_i110470_pop76603,
    input wire [0:0] in_forked163,
    input wire [0:0] in_notcmp165605,
    input wire [0:0] in_notcmp169288_pop80609,
    input wire [0:0] in_notcmp169599,
    input wire [31:0] in_offset_0_i475_replace_phi286_pop78607,
    input wire [31:0] in_offset_0_i475_replace_phi596,
    input wire [31:0] in_offset_1_i469_pop77606,
    input wire [0:0] in_or_cond189604,
    input wire [0:0] in_pop79608,
    input wire [31:0] in_r_0_i106476_pop65290_pop81610,
    input wire [31:0] in_r_0_i106476_pop65602,
    input wire [0:0] in_unnamed_conv_process94,
    input wire [31:0] in_unnamed_conv_process95,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] conv_process_B12_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv_process_B12_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;
    wire [63:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    wire [511:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_lsu_unnamed_conv_process101_o_active;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_writedata;
    wire [67:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [67:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [67:0] coalesced_delay_0_fifo_data_out;
    wire [230:0] bubble_join_conv_process_B12_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_conv_process_B12_merge_reg_aunroll_x_o;
    wire [164:0] bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_j;
    wire [230:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [31:0] bubble_select_stall_entry_o;
    wire [67:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [67:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_conv_process_B12_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv_process_B12_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv_process_B12_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // SE_stall_entry(STALLENABLE,81)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B12_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,69)
    assign bubble_join_stall_entry_q = {in_unnamed_conv_process95, in_unnamed_conv_process94, in_r_0_i106476_pop65602, in_r_0_i106476_pop65290_pop81610, in_pop79608, in_or_cond189604, in_offset_1_i469_pop77606, in_offset_0_i475_replace_phi596, in_offset_0_i475_replace_phi286_pop78607, in_notcmp169599, in_notcmp169288_pop80609, in_notcmp165605, in_forked163, in_c_0_i110470_pop76603};

    // bubble_select_stall_entry(BITSELECT,70)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[67:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:68]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[131:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[132:132]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[133:133]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[165:134]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[197:166]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[198:198]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[230:199]);

    // conv_process_B12_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B12_merge_reg theconv_process_B12_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_h),
        .in_data_in_2_tpl(bubble_select_stall_entry_n),
        .in_data_in_3_tpl(bubble_select_stall_entry_f),
        .in_data_in_4_tpl(bubble_select_stall_entry_m),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_d),
        .in_data_in_8_tpl(bubble_select_stall_entry_i),
        .in_data_in_9_tpl(bubble_select_stall_entry_o),
        .in_data_in_10_tpl(bubble_select_stall_entry_g),
        .in_data_in_11_tpl(bubble_select_stall_entry_k),
        .in_data_in_12_tpl(bubble_select_stall_entry_e),
        .in_data_in_13_tpl(bubble_select_stall_entry_l),
        .in_stall_in(SE_out_conv_process_B12_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(conv_process_B12_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_stall_out(conv_process_B12_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv_process_B12_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B12_merge_reg_aunroll_x(STALLENABLE,76)
    // Valid signal propagation
    assign SE_out_conv_process_B12_merge_reg_aunroll_x_V0 = SE_out_conv_process_B12_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv_process_B12_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_conv_process_B12_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B12_merge_reg_aunroll_x_wireValid = conv_process_B12_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x(BITJOIN,65)
    assign bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q = {i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_10_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_9_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_8_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_7_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_6_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_5_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_4_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_3_tpl, i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x(BITSELECT,66)
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[96:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_q[164:133]);

    // join_for_coalesced_delay_0(BITJOIN,57)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_f};

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,86)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // coalesced_delay_0_fifo(STALLFIFO,59)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(12),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(68),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_conv_process101_conv_process3(BLACKBOX,22)@56
    // in in_i_stall@20000000
    // out out_lsu_unnamed_conv_process101_o_active@20000000
    // out out_o_stall@20000000
    // out out_o_valid@67
    // out out_unnamed_conv_process101_conv_process_avm_address@20000000
    // out out_unnamed_conv_process101_conv_process_avm_burstcount@20000000
    // out out_unnamed_conv_process101_conv_process_avm_byteenable@20000000
    // out out_unnamed_conv_process101_conv_process_avm_enable@20000000
    // out out_unnamed_conv_process101_conv_process_avm_read@20000000
    // out out_unnamed_conv_process101_conv_process_avm_write@20000000
    // out out_unnamed_conv_process101_conv_process_avm_writedata@20000000
    cnn_top_i_llvm_fpga_mem_unnamed_conv_process101_conv_process0 thei_llvm_fpga_mem_unnamed_conv_process101_conv_process3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_c),
        .in_unnamed_conv_process101_conv_process_avm_readdata(in_unnamed_conv_process101_conv_process_avm_readdata),
        .in_unnamed_conv_process101_conv_process_avm_readdatavalid(in_unnamed_conv_process101_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process101_conv_process_avm_waitrequest(in_unnamed_conv_process101_conv_process_avm_waitrequest),
        .in_unnamed_conv_process101_conv_process_avm_writeack(in_unnamed_conv_process101_conv_process_avm_writeack),
        .out_lsu_unnamed_conv_process101_o_active(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_lsu_unnamed_conv_process101_o_active),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_valid),
        .out_unnamed_conv_process101_conv_process_avm_address(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_address),
        .out_unnamed_conv_process101_conv_process_avm_burstcount(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_burstcount),
        .out_unnamed_conv_process101_conv_process_avm_byteenable(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_byteenable),
        .out_unnamed_conv_process101_conv_process_avm_enable(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_enable),
        .out_unnamed_conv_process101_conv_process_avm_read(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_read),
        .out_unnamed_conv_process101_conv_process_avm_write(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_write),
        .out_unnamed_conv_process101_conv_process_avm_writedata(i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x(STALLENABLE,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_valid;

    // bubble_join_conv_process_B12_merge_reg_aunroll_x(BITJOIN,61)
    assign bubble_join_conv_process_B12_merge_reg_aunroll_x_q = {conv_process_B12_merge_reg_aunroll_x_out_data_out_13_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_12_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_11_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_10_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_9_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_8_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_7_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_6_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_5_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_4_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_3_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_2_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_1_tpl, conv_process_B12_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv_process_B12_merge_reg_aunroll_x(BITSELECT,62)
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_d = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_e = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_f = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[66:35]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_g = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_h = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[99:99]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_i = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[100:100]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_j = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_k = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_l = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[196:165]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_m = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[197:197]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_n = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[198:198]);
    assign bubble_select_conv_process_B12_merge_reg_aunroll_x_o = $unsigned(bubble_join_conv_process_B12_merge_reg_aunroll_x_q[230:199]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x(BLACKBOX,8)@1
    // in in_i_stall@20000000
    // out out_c0_exit770_0_tpl@56
    // out out_c0_exit770_1_tpl@56
    // out out_c0_exit770_2_tpl@56
    // out out_c0_exit770_3_tpl@56
    // out out_c0_exit770_4_tpl@56
    // out out_c0_exit770_5_tpl@56
    // out out_c0_exit770_6_tpl@56
    // out out_c0_exit770_7_tpl@56
    // out out_c0_exit770_8_tpl@56
    // out out_c0_exit770_9_tpl@56
    // out out_c0_exit770_10_tpl@56
    // out out_c0_exit770_11_tpl@56
    // out out_c0_exit770_12_tpl@56
    // out out_c0_exit770_13_tpl@56
    // out out_c0_exit770_14_tpl@56
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@56
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond24_i_prehe0000r75033_conv_process1 thei_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x (
        .in_c0_eni14_0_tpl(GND_q),
        .in_c0_eni14_1_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_b),
        .in_c0_eni14_2_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_g),
        .in_c0_eni14_3_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_o),
        .in_c0_eni14_4_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_h),
        .in_c0_eni14_5_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_j),
        .in_c0_eni14_6_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_l),
        .in_c0_eni14_7_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_m),
        .in_c0_eni14_8_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_n),
        .in_c0_eni14_9_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_i),
        .in_c0_eni14_10_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_k),
        .in_c0_eni14_11_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_c),
        .in_c0_eni14_12_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_d),
        .in_c0_eni14_13_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_e),
        .in_c0_eni14_14_tpl(bubble_select_conv_process_B12_merge_reg_aunroll_x_f),
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
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_backStall),
        .in_i_valid(SE_out_conv_process_B12_merge_reg_aunroll_x_V0),
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
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit770_0_tpl(),
        .out_c0_exit770_1_tpl(),
        .out_c0_exit770_2_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_2_tpl),
        .out_c0_exit770_3_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_3_tpl),
        .out_c0_exit770_4_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_4_tpl),
        .out_c0_exit770_5_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_5_tpl),
        .out_c0_exit770_6_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_6_tpl),
        .out_c0_exit770_7_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_7_tpl),
        .out_c0_exit770_8_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_8_tpl),
        .out_c0_exit770_9_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_9_tpl),
        .out_c0_exit770_10_tpl(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_c0_exit770_10_tpl),
        .out_c0_exit770_11_tpl(),
        .out_c0_exit770_12_tpl(),
        .out_c0_exit770_13_tpl(),
        .out_c0_exit770_14_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,73)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,74)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[67:0]);

    // sel_for_coalesced_delay_0(BITSELECT,58)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[65:65]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[66:66]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[67:67]);

    // dupName_0_sync_out_x(GPOUT,5)@67
    assign out_c0_exe10780 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe5775 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe6776 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe7777 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe8778 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe9779 = sel_for_coalesced_delay_0_g;
    assign out_valid_out = SE_out_coalesced_delay_0_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_conv_process101_conv_process_avm_address = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_address;
    assign out_unnamed_conv_process101_conv_process_avm_enable = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_enable;
    assign out_unnamed_conv_process101_conv_process_avm_read = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_read;
    assign out_unnamed_conv_process101_conv_process_avm_write = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_write;
    assign out_unnamed_conv_process101_conv_process_avm_writedata = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_writedata;
    assign out_unnamed_conv_process101_conv_process_avm_byteenable = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_byteenable;
    assign out_unnamed_conv_process101_conv_process_avm_burstcount = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_unnamed_conv_process101_conv_process_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,7)
    assign out_lsu_unnamed_conv_process101_o_active = i_llvm_fpga_mem_unnamed_conv_process101_conv_process3_out_lsu_unnamed_conv_process101_o_active;

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond24_i_preheader_conv_processs_c0_enter75033_conv_process1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,48)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
