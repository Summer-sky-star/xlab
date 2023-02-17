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

// SystemVerilog created from cnn_top_bb_B3_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B3_stall_region (
    output wire [31:0] out_unnamed_cnn_top9_cnn_top_avm_address,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_enable,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_read,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_write,
    output wire [31:0] out_unnamed_cnn_top9_cnn_top_avm_writedata,
    output wire [3:0] out_unnamed_cnn_top9_cnn_top_avm_byteenable,
    output wire [0:0] out_unnamed_cnn_top9_cnn_top_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire [31:0] in_unnamed_cnn_top9_cnn_top_avm_readdata,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_writeack,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn_top9_cnn_top_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked60,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] cnn_top_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] cnn_top_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_top_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_18_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_19_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_21_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_writedata;
    wire [18:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] sel_for_coalesced_delay_0_k;
    wire [0:0] sel_for_coalesced_delay_0_l;
    wire [0:0] sel_for_coalesced_delay_0_m;
    wire [0:0] sel_for_coalesced_delay_0_n;
    wire [0:0] sel_for_coalesced_delay_0_o;
    wire [0:0] sel_for_coalesced_delay_0_p;
    wire [0:0] sel_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_r;
    wire [0:0] sel_for_coalesced_delay_0_s;
    wire [0:0] sel_for_coalesced_delay_0_t;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in;
    wire redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in;
    wire redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_data_in;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out;
    wire redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out;
    wire redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [18:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [18:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_cnn_top_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_cnn_top_B3_merge_reg_aunroll_x_b;
    wire [83:0] bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_t;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_u;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_v;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_q;
    wire [0:0] bubble_select_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_b;
    wire [18:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [18:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_cnn_top_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_top_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_top_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V2;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_and0;
    wire [0:0] SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_backStall;
    wire [0:0] SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // join_for_coalesced_delay_0(BITJOIN,67)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_v, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_t, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_s, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_r, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,70)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(73),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(19),
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

    // bubble_join_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_q = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,90)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,91)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[18:0]);

    // sel_for_coalesced_delay_0(BITSELECT,68)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[4:4]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[5:5]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[6:6]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[7:7]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[8:8]);
    assign sel_for_coalesced_delay_0_k = $unsigned(bubble_select_coalesced_delay_0_fifo_b[9:9]);
    assign sel_for_coalesced_delay_0_l = $unsigned(bubble_select_coalesced_delay_0_fifo_b[10:10]);
    assign sel_for_coalesced_delay_0_m = $unsigned(bubble_select_coalesced_delay_0_fifo_b[11:11]);
    assign sel_for_coalesced_delay_0_n = $unsigned(bubble_select_coalesced_delay_0_fifo_b[12:12]);
    assign sel_for_coalesced_delay_0_o = $unsigned(bubble_select_coalesced_delay_0_fifo_b[13:13]);
    assign sel_for_coalesced_delay_0_p = $unsigned(bubble_select_coalesced_delay_0_fifo_b[14:14]);
    assign sel_for_coalesced_delay_0_q = $unsigned(bubble_select_coalesced_delay_0_fifo_b[15:15]);
    assign sel_for_coalesced_delay_0_r = $unsigned(bubble_select_coalesced_delay_0_fifo_b[16:16]);
    assign sel_for_coalesced_delay_0_s = $unsigned(bubble_select_coalesced_delay_0_fifo_b[17:17]);
    assign sel_for_coalesced_delay_0_t = $unsigned(bubble_select_coalesced_delay_0_fifo_b[18:18]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x(BLACKBOX,21)@77
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@81
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@81
    cnn_top_i_sfc_s_c1_in_for_body_s_c1_enter_cnn_top5 thei_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x (
        .in_c1_eni20_0_tpl(GND_q),
        .in_c1_eni20_1_tpl(sel_for_coalesced_delay_0_t),
        .in_c1_eni20_2_tpl(sel_for_coalesced_delay_0_s),
        .in_c1_eni20_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_b),
        .in_c1_eni20_4_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni20_5_tpl(sel_for_coalesced_delay_0_r),
        .in_c1_eni20_6_tpl(sel_for_coalesced_delay_0_q),
        .in_c1_eni20_7_tpl(sel_for_coalesced_delay_0_p),
        .in_c1_eni20_8_tpl(sel_for_coalesced_delay_0_o),
        .in_c1_eni20_9_tpl(sel_for_coalesced_delay_0_n),
        .in_c1_eni20_10_tpl(sel_for_coalesced_delay_0_m),
        .in_c1_eni20_11_tpl(sel_for_coalesced_delay_0_l),
        .in_c1_eni20_12_tpl(sel_for_coalesced_delay_0_k),
        .in_c1_eni20_13_tpl(sel_for_coalesced_delay_0_j),
        .in_c1_eni20_14_tpl(sel_for_coalesced_delay_0_i),
        .in_c1_eni20_15_tpl(sel_for_coalesced_delay_0_h),
        .in_c1_eni20_16_tpl(sel_for_coalesced_delay_0_g),
        .in_c1_eni20_17_tpl(sel_for_coalesced_delay_0_f),
        .in_c1_eni20_18_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni20_19_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni20_20_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_exe2(sel_for_coalesced_delay_0_c),
        .in_c0_exe21(sel_for_coalesced_delay_0_t),
        .in_i_stall(SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit_0_tpl(),
        .out_intel_reserved_ffwd_10_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_11_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_12_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_13_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_14_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_15_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_5_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_9_0(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_9_0),
        .out_o_stall(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_V0 = SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_backStall = in_stall_in | ~ (SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_and0 = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out;
    assign SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_wireValid = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_valid & SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_and0;

    // redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo(STALLFIFO,69)
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V1;
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in = SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_backStall;
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_u;
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in_bitsignaltemp = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in[0];
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in_bitsignaltemp = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in[0];
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out[0] = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out_bitsignaltemp;
    assign redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out[0] = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(77),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo (
        .valid_in(redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_u),
        .valid_out(redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,100)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_top_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,83)
    assign bubble_join_stall_entry_q = in_forked60;

    // bubble_select_stall_entry(BITSELECT,84)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // cnn_top_B3_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_B3_merge_reg thecnn_top_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_cnn_top_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(cnn_top_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(cnn_top_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_top_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_top_B3_merge_reg_aunroll_x(STALLENABLE,93)
    // Valid signal propagation
    assign SE_out_cnn_top_B3_merge_reg_aunroll_x_V0 = SE_out_cnn_top_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_cnn_top_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_stall | ~ (SE_out_cnn_top_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_cnn_top_B3_merge_reg_aunroll_x_wireValid = cnn_top_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_cnn_top_B3_merge_reg_aunroll_x(BITJOIN,72)
    assign bubble_join_cnn_top_B3_merge_reg_aunroll_x_q = cnn_top_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_cnn_top_B3_merge_reg_aunroll_x(BITSELECT,73)
    assign bubble_select_cnn_top_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_cnn_top_B3_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x(BLACKBOX,20)@1
    // in in_i_stall@20000000
    // out out_c0_exit98_0_tpl@5
    // out out_c0_exit98_1_tpl@5
    // out out_c0_exit98_2_tpl@5
    // out out_c0_exit98_3_tpl@5
    // out out_c0_exit98_4_tpl@5
    // out out_c0_exit98_5_tpl@5
    // out out_c0_exit98_6_tpl@5
    // out out_c0_exit98_7_tpl@5
    // out out_c0_exit98_8_tpl@5
    // out out_c0_exit98_9_tpl@5
    // out out_c0_exit98_10_tpl@5
    // out out_c0_exit98_11_tpl@5
    // out out_c0_exit98_12_tpl@5
    // out out_c0_exit98_13_tpl@5
    // out out_c0_exit98_14_tpl@5
    // out out_c0_exit98_15_tpl@5
    // out out_c0_exit98_16_tpl@5
    // out out_c0_exit98_17_tpl@5
    // out out_c0_exit98_18_tpl@5
    // out out_c0_exit98_19_tpl@5
    // out out_c0_exit98_20_tpl@5
    // out out_c0_exit98_21_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_body_s_c0_enter964_cnn_top1 thei_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_cnn_top_B3_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_backStall),
        .in_i_valid(SE_out_cnn_top_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit98_0_tpl(),
        .out_c0_exit98_1_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_1_tpl),
        .out_c0_exit98_2_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_2_tpl),
        .out_c0_exit98_3_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_3_tpl),
        .out_c0_exit98_4_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_4_tpl),
        .out_c0_exit98_5_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_5_tpl),
        .out_c0_exit98_6_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_6_tpl),
        .out_c0_exit98_7_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_7_tpl),
        .out_c0_exit98_8_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_8_tpl),
        .out_c0_exit98_9_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_9_tpl),
        .out_c0_exit98_10_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_10_tpl),
        .out_c0_exit98_11_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_11_tpl),
        .out_c0_exit98_12_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_12_tpl),
        .out_c0_exit98_13_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_13_tpl),
        .out_c0_exit98_14_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_14_tpl),
        .out_c0_exit98_15_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_15_tpl),
        .out_c0_exit98_16_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_16_tpl),
        .out_c0_exit98_17_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_17_tpl),
        .out_c0_exit98_18_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_18_tpl),
        .out_c0_exit98_19_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_19_tpl),
        .out_c0_exit98_20_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl),
        .out_c0_exit98_21_tpl(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_21_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x(STALLENABLE,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed1 = (~ (redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,107)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x(BITJOIN,76)
    assign bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q = {i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_21_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_19_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_18_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_17_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_16_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_15_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_14_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_13_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_12_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_11_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_10_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_9_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_8_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_7_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_6_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_5_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_4_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_3_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_2_tpl, i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x(BITSELECT,77)
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[70:70]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[71:71]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[72:72]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[73:73]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[74:74]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[75:75]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[76:76]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[77:77]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[78:78]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[79:79]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[80:80]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[81:81]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[82:82]);
    assign bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_q[83:83]);

    // i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3(BLACKBOX,27)@5
    // in in_i_stall@20000000
    // out out_o_readdata@77
    // out out_o_stall@20000000
    // out out_o_valid@77
    // out out_unnamed_cnn_top9_cnn_top_avm_address@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_burstcount@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_byteenable@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_enable@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_read@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_write@20000000
    // out out_unnamed_cnn_top9_cnn_top_avm_writedata@20000000
    cnn_top_i_llvm_fpga_mem_unnamed_9_cnn_top0 thei_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_V0),
        .in_unnamed_cnn_top9_cnn_top_avm_readdata(in_unnamed_cnn_top9_cnn_top_avm_readdata),
        .in_unnamed_cnn_top9_cnn_top_avm_readdatavalid(in_unnamed_cnn_top9_cnn_top_avm_readdatavalid),
        .in_unnamed_cnn_top9_cnn_top_avm_waitrequest(in_unnamed_cnn_top9_cnn_top_avm_waitrequest),
        .in_unnamed_cnn_top9_cnn_top_avm_writeack(in_unnamed_cnn_top9_cnn_top_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_o_valid),
        .out_unnamed_cnn_top9_cnn_top_avm_address(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_address),
        .out_unnamed_cnn_top9_cnn_top_avm_burstcount(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top9_cnn_top_avm_byteenable(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top9_cnn_top_avm_enable(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_enable),
        .out_unnamed_cnn_top9_cnn_top_avm_read(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_read),
        .out_unnamed_cnn_top9_cnn_top_avm_write(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_write),
        .out_unnamed_cnn_top9_cnn_top_avm_writedata(i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_cnn_top9_cnn_top_avm_address = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_address;
    assign out_unnamed_cnn_top9_cnn_top_avm_enable = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_enable;
    assign out_unnamed_cnn_top9_cnn_top_avm_read = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_read;
    assign out_unnamed_cnn_top9_cnn_top_avm_write = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_write;
    assign out_unnamed_cnn_top9_cnn_top_avm_writedata = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_writedata;
    assign out_unnamed_cnn_top9_cnn_top_avm_byteenable = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_byteenable;
    assign out_unnamed_cnn_top9_cnn_top_avm_burstcount = i_llvm_fpga_mem_unnamed_cnn_top9_cnn_top3_out_unnamed_cnn_top9_cnn_top_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_11_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_11_0;

    // bubble_join_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo(BITJOIN,87)
    assign bubble_join_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_q = redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_data_out;

    // bubble_select_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo(BITSELECT,88)
    assign bubble_select_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_b = $unsigned(bubble_join_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,5)@81
    assign out_c0_exe20 = bubble_select_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_b;
    assign out_valid_out = SE_out_redist18_i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_c0_exit98_20_tpl_76_fifo_V0;

    // dupName_1_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_12_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_12_0;

    // dupName_2_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_13_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_13_0;

    // dupName_3_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_14_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_14_0;

    // dupName_4_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_15_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_15_0;

    // dupName_5_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_16_0;

    // dupName_6_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_17_0;

    // dupName_7_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_8_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_9_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_10_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_5_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_5_0;

    // dupName_11_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_6_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_6_0;

    // dupName_12_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_13_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_8_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_8_0;

    // dupName_14_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_9_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_9_0;

    // ext_sig_sync_out(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out = i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out = i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_cnn_tops_c0_enter964_cnn_top1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,40)
    assign out_intel_reserved_ffwd_10_0 = i_sfc_s_c1_in_for_body_cnn_tops_c1_enter_cnn_top5_aunroll_x_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,44)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
