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

// SystemVerilog created from cnn_top_bb_conv_process_B2_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B2_stall_region (
    input wire [31:0] in_unnamed_conv_process21_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_writeack,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process21_conv_process_avm_readdatavalid,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process20_conv_process_avm_writedata,
    output wire [3:0] out_unnamed_conv_process20_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process20_conv_process_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_address,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_enable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_read,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_write,
    output wire [31:0] out_unnamed_conv_process21_conv_process_avm_writedata,
    output wire [3:0] out_unnamed_conv_process21_conv_process_avm_byteenable,
    output wire [0:0] out_unnamed_conv_process21_conv_process_avm_burstcount,
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
    input wire [31:0] in_unnamed_conv_process20_conv_process_avm_readdata,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_writeack,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_waitrequest,
    input wire [0:0] in_unnamed_conv_process20_conv_process_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked76,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] conv_process_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv_process_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv_process_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_writedata;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in;
    wire redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in;
    wire redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out;
    wire redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out;
    wire redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_conv_process_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv_process_B2_merge_reg_aunroll_x_b;
    wire [131:0] bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_g;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_q;
    wire [0:0] bubble_select_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_conv_process_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv_process_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv_process_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V3;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_and0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_backStall;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // join_for_coalesced_delay_0(BITJOIN,76)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,79)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(74),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(3),
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

    // bubble_join_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4(BITJOIN,92)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_q = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4(BITSELECT,93)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,102)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,103)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,77)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // bubble_join_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3(BITJOIN,89)
    assign bubble_join_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_q = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3(BITSELECT,90)
    assign bubble_select_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x(BLACKBOX,39)@79
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@97
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_intel_reserved_ffwd_20_0@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_intel_reserved_ffwd_23_0@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_intel_reserved_ffwd_25_0@20000000
    // out out_intel_reserved_ffwd_26_0@20000000
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_intel_reserved_ffwd_45_0@20000000
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@97
    cnn_top_i_sfc_s_c1_in_for_body_conv_proc0000_enter_conv_process6 thei_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x (
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_b),
        .in_c1_eni5_2_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni5_4_tpl(bubble_select_i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_b),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_exe2(sel_for_coalesced_delay_0_c),
        .in_c0_exe6(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .out_c1_exit_0_tpl(),
        .out_intel_reserved_ffwd_16_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_20_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_o_stall(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_V0 = SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_backStall = in_stall_in | ~ (SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_and0 = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_wireValid = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_valid & SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_and0;

    // redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo(STALLFIFO,78)
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V2;
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in = SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_backStall;
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_f;
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in[0];
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in[0];
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out[0] = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out[0] = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(92),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo (
        .valid_in(redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_f),
        .valid_out(redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_conv_process21_conv_process4(BLACKBOX,46)@6
    // in in_i_stall@20000000
    // out out_o_readdata@79
    // out out_o_stall@20000000
    // out out_o_valid@79
    // out out_unnamed_conv_process21_conv_process_avm_address@20000000
    // out out_unnamed_conv_process21_conv_process_avm_burstcount@20000000
    // out out_unnamed_conv_process21_conv_process_avm_byteenable@20000000
    // out out_unnamed_conv_process21_conv_process_avm_enable@20000000
    // out out_unnamed_conv_process21_conv_process_avm_read@20000000
    // out out_unnamed_conv_process21_conv_process_avm_write@20000000
    // out out_unnamed_conv_process21_conv_process_avm_writedata@20000000
    cnn_top_i_llvm_fpga_mem_unnamed_conv_process21_conv_process0 thei_llvm_fpga_mem_unnamed_conv_process21_conv_process4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V1),
        .in_unnamed_conv_process21_conv_process_avm_readdata(in_unnamed_conv_process21_conv_process_avm_readdata),
        .in_unnamed_conv_process21_conv_process_avm_readdatavalid(in_unnamed_conv_process21_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process21_conv_process_avm_waitrequest(in_unnamed_conv_process21_conv_process_avm_waitrequest),
        .in_unnamed_conv_process21_conv_process_avm_writeack(in_unnamed_conv_process21_conv_process_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_valid),
        .out_unnamed_conv_process21_conv_process_avm_address(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_address),
        .out_unnamed_conv_process21_conv_process_avm_burstcount(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_burstcount),
        .out_unnamed_conv_process21_conv_process_avm_byteenable(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_byteenable),
        .out_unnamed_conv_process21_conv_process_avm_enable(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_enable),
        .out_unnamed_conv_process21_conv_process_avm_read(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_read),
        .out_unnamed_conv_process21_conv_process_avm_write(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_write),
        .out_unnamed_conv_process21_conv_process_avm_writedata(i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,114)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,95)
    assign bubble_join_stall_entry_q = in_forked76;

    // bubble_select_stall_entry(BITSELECT,96)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // conv_process_B2_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B2_merge_reg theconv_process_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_conv_process_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv_process_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(conv_process_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv_process_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B2_merge_reg_aunroll_x(STALLENABLE,105)
    // Valid signal propagation
    assign SE_out_conv_process_B2_merge_reg_aunroll_x_V0 = SE_out_conv_process_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv_process_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_conv_process_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B2_merge_reg_aunroll_x_wireValid = conv_process_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv_process_B2_merge_reg_aunroll_x(BITJOIN,81)
    assign bubble_join_conv_process_B2_merge_reg_aunroll_x_q = conv_process_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_conv_process_B2_merge_reg_aunroll_x(BITSELECT,82)
    assign bubble_select_conv_process_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv_process_B2_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x(BLACKBOX,38)@1
    // in in_i_stall@20000000
    // out out_c0_exit_0_tpl@6
    // out out_c0_exit_1_tpl@6
    // out out_c0_exit_2_tpl@6
    // out out_c0_exit_3_tpl@6
    // out out_c0_exit_4_tpl@6
    // out out_c0_exit_5_tpl@6
    // out out_c0_exit_6_tpl@6
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_body_conv_proc0000nter26_conv_process1 thei_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_conv_process_B2_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_backStall),
        .in_i_valid(SE_out_conv_process_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_2_tpl),
        .out_c0_exit_3_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_3_tpl),
        .out_c0_exit_4_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_4_tpl),
        .out_c0_exit_5_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl),
        .out_c0_exit_6_tpl(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_6_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x(STALLENABLE,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed2 = (~ (redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,121)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x(BITJOIN,85)
    assign bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q = {i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_6_tpl, i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl, i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_4_tpl, i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_3_tpl, i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x(BITSELECT,86)
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[129:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_q[131:131]);

    // i_llvm_fpga_mem_unnamed_conv_process20_conv_process3(BLACKBOX,45)@6
    // in in_i_stall@20000000
    // out out_o_readdata@79
    // out out_o_stall@20000000
    // out out_o_valid@79
    // out out_unnamed_conv_process20_conv_process_avm_address@20000000
    // out out_unnamed_conv_process20_conv_process_avm_burstcount@20000000
    // out out_unnamed_conv_process20_conv_process_avm_byteenable@20000000
    // out out_unnamed_conv_process20_conv_process_avm_enable@20000000
    // out out_unnamed_conv_process20_conv_process_avm_read@20000000
    // out out_unnamed_conv_process20_conv_process_avm_write@20000000
    // out out_unnamed_conv_process20_conv_process_avm_writedata@20000000
    cnn_top_i_llvm_fpga_mem_unnamed_conv_process20_conv_process0 thei_llvm_fpga_mem_unnamed_conv_process20_conv_process3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_V0),
        .in_unnamed_conv_process20_conv_process_avm_readdata(in_unnamed_conv_process20_conv_process_avm_readdata),
        .in_unnamed_conv_process20_conv_process_avm_readdatavalid(in_unnamed_conv_process20_conv_process_avm_readdatavalid),
        .in_unnamed_conv_process20_conv_process_avm_waitrequest(in_unnamed_conv_process20_conv_process_avm_waitrequest),
        .in_unnamed_conv_process20_conv_process_avm_writeack(in_unnamed_conv_process20_conv_process_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_o_valid),
        .out_unnamed_conv_process20_conv_process_avm_address(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_address),
        .out_unnamed_conv_process20_conv_process_avm_burstcount(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_burstcount),
        .out_unnamed_conv_process20_conv_process_avm_byteenable(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_byteenable),
        .out_unnamed_conv_process20_conv_process_avm_enable(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_enable),
        .out_unnamed_conv_process20_conv_process_avm_read(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_read),
        .out_unnamed_conv_process20_conv_process_avm_write(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_write),
        .out_unnamed_conv_process20_conv_process_avm_writedata(i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_unnamed_conv_process20_conv_process_avm_address = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_address;
    assign out_unnamed_conv_process20_conv_process_avm_enable = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_enable;
    assign out_unnamed_conv_process20_conv_process_avm_read = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_read;
    assign out_unnamed_conv_process20_conv_process_avm_write = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_write;
    assign out_unnamed_conv_process20_conv_process_avm_writedata = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_writedata;
    assign out_unnamed_conv_process20_conv_process_avm_byteenable = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_byteenable;
    assign out_unnamed_conv_process20_conv_process_avm_burstcount = i_llvm_fpga_mem_unnamed_conv_process20_conv_process3_out_unnamed_conv_process20_conv_process_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_17_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_17_0;

    // bubble_join_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo(BITJOIN,99)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_q = redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo(BITSELECT,100)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,6)@97
    assign out_c0_exe5 = bubble_select_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_b;
    assign out_valid_out = SE_out_redist2_i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_c0_exit_5_tpl_91_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,7)
    assign out_unnamed_conv_process21_conv_process_avm_address = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_address;
    assign out_unnamed_conv_process21_conv_process_avm_enable = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_enable;
    assign out_unnamed_conv_process21_conv_process_avm_read = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_read;
    assign out_unnamed_conv_process21_conv_process_avm_write = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_write;
    assign out_unnamed_conv_process21_conv_process_avm_writedata = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_writedata;
    assign out_unnamed_conv_process21_conv_process_avm_byteenable = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_byteenable;
    assign out_unnamed_conv_process21_conv_process_avm_burstcount = i_llvm_fpga_mem_unnamed_conv_process21_conv_process4_out_unnamed_conv_process21_conv_process_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_18_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_18_0;

    // dupName_2_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_19_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_19_0;

    // dupName_3_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_20_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_20_0;

    // dupName_4_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_21_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_21_0;

    // dupName_5_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_22_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_22_0;

    // dupName_6_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_23_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_23_0;

    // dupName_7_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_24_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_24_0;

    // dupName_8_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_25_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_25_0;

    // dupName_9_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_26_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_26_0;

    // dupName_10_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_27_0;

    // dupName_11_regfree_osync_x(GPOUT,18)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_12_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_13_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_14_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_15_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_16_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_17_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_18_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_19_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_20_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_21_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_22_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_23_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_24_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_25_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_26_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_27_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_44_0;

    // dupName_28_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_45_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_45_0;

    // dupName_29_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_46_0;

    // dupName_30_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_47_0;

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out = i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out = i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,58)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_conv_processs_c0_enter26_conv_process1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,65)
    assign out_intel_reserved_ffwd_16_0 = i_sfc_s_c1_in_for_body_conv_processs_c1_enter_conv_process6_aunroll_x_out_intel_reserved_ffwd_16_0;

    // sync_out(GPOUT,69)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
