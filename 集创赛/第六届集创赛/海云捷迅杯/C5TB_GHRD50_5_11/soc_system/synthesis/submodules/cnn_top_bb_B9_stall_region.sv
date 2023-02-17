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

// SystemVerilog created from cnn_top_bb_B9_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_B9_stall_region (
    output wire [31:0] out_unnamed_cnn_top80_cnn_top_avm_address,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_enable,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_read,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_write,
    output wire [31:0] out_unnamed_cnn_top80_cnn_top_avm_writedata,
    output wire [3:0] out_unnamed_cnn_top80_cnn_top_avm_byteenable,
    output wire [0:0] out_unnamed_cnn_top80_cnn_top_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [0:0] out_c0_exe5117,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_cnn_top80_cnn_top_avm_readdata,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_writeack,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_waitrequest,
    input wire [0:0] in_unnamed_cnn_top80_cnn_top_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_i5_0119,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] cnn_top_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] cnn_top_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] cnn_top_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] cnn_top_B9_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_mptr_bitcast_index122_cnn_top0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index122_cnn_top0_add_x_a;
    wire [64:0] i_mptr_bitcast_index122_cnn_top0_add_x_b;
    logic [64:0] i_mptr_bitcast_index122_cnn_top0_add_x_o;
    wire [64:0] i_mptr_bitcast_index122_cnn_top0_add_x_q;
    wire [1:0] i_mptr_bitcast_index122_cnn_top0_c_i2_01_x_q;
    wire [61:0] i_mptr_bitcast_index122_cnn_top0_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index122_cnn_top0_shift_join_x_q;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_44_0;
    wire [0:0] i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_valid;
    wire [63:0] i_unnamed_cnn_top4_sel_x_b;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_writedata;
    wire [31:0] i_unnamed_cnn_top4_vt_const_63_q;
    wire [63:0] i_unnamed_cnn_top4_vt_join_q;
    wire [31:0] i_unnamed_cnn_top4_vt_select_31_b;
    wire [3:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [31:0] redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_q;
    reg [0:0] redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in;
    wire redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in;
    wire redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out;
    wire redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out;
    wire redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_data_out;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in;
    wire redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in;
    wire redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_data_in;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out;
    wire redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out;
    wire redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_0_fifo_data_out;
    wire [32:0] bubble_join_cnn_top_B9_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_cnn_top_B9_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_cnn_top_B9_merge_reg_aunroll_x_c;
    wire [37:0] bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_h;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_join_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_q;
    wire [0:0] bubble_select_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_b;
    wire [0:0] bubble_join_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_q;
    wire [0:0] bubble_select_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_b;
    wire [3:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_cnn_top_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_cnn_top_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_cnn_top_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_or0;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V0;
    wire [0:0] SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V1;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_and0;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_backStall;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo(STALLFIFO,60)
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V1;
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_data_in = redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q;
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in[0];
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in[0];
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out[0] = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out[0] = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(73),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo (
        .valid_in(redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_in_bitsignaltemp),
        .data_in(redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q),
        .valid_out(redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x(BITJOIN,68)
    assign bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q = {i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_7_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_6_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_4_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_3_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_2_tpl, i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x(BITSELECT,69)
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[3:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[4:4]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[36:5]);
    assign bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_q[37:37]);

    // join_for_coalesced_delay_0(BITJOIN,56)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_d, bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_c};

    // coalesced_delay_0_fifo(STALLFIFO,62)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V3;
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
        .DATA_WIDTH(4),
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

    // bubble_join_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo(BITJOIN,83)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_q = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo(BITSELECT,84)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_q = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_q[31:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,89)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,90)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[3:0]);

    // sel_for_coalesced_delay_0(BITSELECT,57)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x(BLACKBOX,13)@78
    // in in_i_stall@20000000
    // out out_c1_exit133_0_tpl@79
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_intel_reserved_ffwd_44_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@79
    cnn_top_i_sfc_s_c1_in_for_body9_s_c1_enter126_cnn_top9 thei_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x (
        .in_c1_eni6125_0_tpl(GND_q),
        .in_c1_eni6125_1_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni6125_2_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni6125_3_tpl(bubble_select_i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_b),
        .in_c1_eni6125_4_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni6125_5_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni6125_6_tpl(bubble_select_redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_b),
        .in_c0_exe2114(sel_for_coalesced_delay_0_b),
        .in_c0_exe7119(sel_for_coalesced_delay_0_e),
        .in_i_stall(SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit133_0_tpl(),
        .out_intel_reserved_ffwd_43_0(i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_44_0),
        .out_o_stall(i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo(STALLENABLE,117)
    // Valid signal propagation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_V0 = SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_backStall = in_stall_in | ~ (SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_and0 = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out;
    assign SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_wireValid = i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_valid & SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_and0;

    // redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo(STALLFIFO,61)
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V1;
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in = SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_backStall;
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_f;
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in[0];
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in[0];
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out[0] = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out_bitsignaltemp;
    assign redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out[0] = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(75),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo (
        .valid_in(redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_f),
        .valid_out(redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,108)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = cnn_top_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,79)
    assign bubble_join_stall_entry_q = {in_i5_0119, in_forked};

    // bubble_select_stall_entry(BITSELECT,80)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // cnn_top_B9_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_B9_merge_reg thecnn_top_B9_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_cnn_top_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(cnn_top_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(cnn_top_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(cnn_top_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(cnn_top_B9_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_cnn_top_B9_merge_reg_aunroll_x(STALLENABLE,92)
    // Valid signal propagation
    assign SE_out_cnn_top_B9_merge_reg_aunroll_x_V0 = SE_out_cnn_top_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_cnn_top_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_stall | ~ (SE_out_cnn_top_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_cnn_top_B9_merge_reg_aunroll_x_wireValid = cnn_top_B9_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_cnn_top_B9_merge_reg_aunroll_x(BITJOIN,64)
    assign bubble_join_cnn_top_B9_merge_reg_aunroll_x_q = {cnn_top_B9_merge_reg_aunroll_x_out_data_out_1_tpl, cnn_top_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_cnn_top_B9_merge_reg_aunroll_x(BITSELECT,65)
    assign bubble_select_cnn_top_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_cnn_top_B9_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_cnn_top_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_cnn_top_B9_merge_reg_aunroll_x_q[32:32]);

    // i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_c0_exit112_0_tpl@5
    // out out_c0_exit112_1_tpl@5
    // out out_c0_exit112_2_tpl@5
    // out out_c0_exit112_3_tpl@5
    // out out_c0_exit112_4_tpl@5
    // out out_c0_exit112_5_tpl@5
    // out out_c0_exit112_6_tpl@5
    // out out_c0_exit112_7_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_body9_s_c0_enter1035_cnn_top1 thei_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x (
        .in_c0_eni2_0_tpl(GND_q),
        .in_c0_eni2_1_tpl(bubble_select_cnn_top_B9_merge_reg_aunroll_x_c),
        .in_c0_eni2_2_tpl(bubble_select_cnn_top_B9_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_backStall),
        .in_i_valid(SE_out_cnn_top_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit112_0_tpl(),
        .out_c0_exit112_1_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl),
        .out_c0_exit112_2_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_2_tpl),
        .out_c0_exit112_3_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_3_tpl),
        .out_c0_exit112_4_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_4_tpl),
        .out_c0_exit112_5_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl),
        .out_c0_exit112_6_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_6_tpl),
        .out_c0_exit112_7_tpl(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x(STALLENABLE,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed1 = (~ (redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed2 = (~ (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backStall) & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_o_valid;

    // SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0(STALLENABLE,112)
    // Valid signal propagation
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V0 = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V1 = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_backStall & SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_1 = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_stall_out & SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_or0 = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_0;
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_1 | SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN & SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_v_s_0;
            end

            if (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1 & SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3(BLACKBOX,20)@5
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@6
    // out out_stall_out@20000000
    // out out_valid_out@6
    cnn_top_i_llvm_fpga_ffwd_dest_p1029s_cla000011s_ddr_scale12911_0 thei_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3(STALLENABLE,103)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_backStall = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_and0 = i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_wireValid = SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist2_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_73_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_b);
        end
    end

    // i_unnamed_cnn_top4_vt_const_63(CONSTANT,23)
    assign i_unnamed_cnn_top4_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_cnn_top4_sel_x(BITSELECT,14)@5
    assign i_unnamed_cnn_top4_sel_x_b = {32'b00000000000000000000000000000000, bubble_select_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_g[31:0]};

    // i_unnamed_cnn_top4_vt_select_31(BITSELECT,25)@5
    assign i_unnamed_cnn_top4_vt_select_31_b = i_unnamed_cnn_top4_sel_x_b[31:0];

    // redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_cnn_top4_vt_select_31_b);
        end
    end

    // i_unnamed_cnn_top4_vt_join(BITJOIN,24)@6
    assign i_unnamed_cnn_top4_vt_join_q = {i_unnamed_cnn_top4_vt_const_63_q, redist0_i_unnamed_cnn_top4_vt_select_31_b_1_0_q};

    // i_mptr_bitcast_index122_cnn_top0_narrow_x(BITSELECT,10)@6
    assign i_mptr_bitcast_index122_cnn_top0_narrow_x_b = i_unnamed_cnn_top4_vt_join_q[61:0];

    // i_mptr_bitcast_index122_cnn_top0_c_i2_01_x(CONSTANT,9)
    assign i_mptr_bitcast_index122_cnn_top0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index122_cnn_top0_shift_join_x(BITJOIN,11)@6
    assign i_mptr_bitcast_index122_cnn_top0_shift_join_x_q = {i_mptr_bitcast_index122_cnn_top0_narrow_x_b, i_mptr_bitcast_index122_cnn_top0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_q = i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_q[63:0]);

    // i_mptr_bitcast_index122_cnn_top0_add_x(ADD,8)@6
    assign i_mptr_bitcast_index122_cnn_top0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_b};
    assign i_mptr_bitcast_index122_cnn_top0_add_x_b = {1'b0, i_mptr_bitcast_index122_cnn_top0_shift_join_x_q};
    assign i_mptr_bitcast_index122_cnn_top0_add_x_o = $unsigned(i_mptr_bitcast_index122_cnn_top0_add_x_a) + $unsigned(i_mptr_bitcast_index122_cnn_top0_add_x_b);
    assign i_mptr_bitcast_index122_cnn_top0_add_x_q = i_mptr_bitcast_index122_cnn_top0_add_x_o[64:0];

    // i_mptr_bitcast_index122_cnn_top0_dupName_0_trunc_sel_x(BITSELECT,6)@6
    assign i_mptr_bitcast_index122_cnn_top0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index122_cnn_top0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7(BLACKBOX,21)@6
    // in in_i_stall@20000000
    // out out_o_readdata@78
    // out out_o_stall@20000000
    // out out_o_valid@78
    // out out_unnamed_cnn_top80_cnn_top_avm_address@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_burstcount@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_byteenable@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_enable@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_read@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_write@20000000
    // out out_unnamed_cnn_top80_cnn_top_avm_writedata@20000000
    cnn_top_i_llvm_fpga_mem_unnamed_80_cnn_top0 thei_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index122_cnn_top0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist1_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_1_tpl_1_0_q),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale12911_cnn_top3_V0),
        .in_unnamed_cnn_top80_cnn_top_avm_readdata(in_unnamed_cnn_top80_cnn_top_avm_readdata),
        .in_unnamed_cnn_top80_cnn_top_avm_readdatavalid(in_unnamed_cnn_top80_cnn_top_avm_readdatavalid),
        .in_unnamed_cnn_top80_cnn_top_avm_waitrequest(in_unnamed_cnn_top80_cnn_top_avm_waitrequest),
        .in_unnamed_cnn_top80_cnn_top_avm_writeack(in_unnamed_cnn_top80_cnn_top_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_o_valid),
        .out_unnamed_cnn_top80_cnn_top_avm_address(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_address),
        .out_unnamed_cnn_top80_cnn_top_avm_burstcount(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_burstcount),
        .out_unnamed_cnn_top80_cnn_top_avm_byteenable(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_byteenable),
        .out_unnamed_cnn_top80_cnn_top_avm_enable(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_enable),
        .out_unnamed_cnn_top80_cnn_top_avm_read(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_read),
        .out_unnamed_cnn_top80_cnn_top_avm_write(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_write),
        .out_unnamed_cnn_top80_cnn_top_avm_writedata(i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_cnn_top80_cnn_top_avm_address = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_address;
    assign out_unnamed_cnn_top80_cnn_top_avm_enable = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_enable;
    assign out_unnamed_cnn_top80_cnn_top_avm_read = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_read;
    assign out_unnamed_cnn_top80_cnn_top_avm_write = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_write;
    assign out_unnamed_cnn_top80_cnn_top_avm_writedata = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_writedata;
    assign out_unnamed_cnn_top80_cnn_top_avm_byteenable = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_byteenable;
    assign out_unnamed_cnn_top80_cnn_top_avm_burstcount = i_llvm_fpga_mem_unnamed_cnn_top80_cnn_top7_out_unnamed_cnn_top80_cnn_top_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_44_0 = i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_44_0;

    // bubble_join_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo(BITJOIN,86)
    assign bubble_join_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_q = redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_data_out;

    // bubble_select_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo(BITSELECT,87)
    assign bubble_select_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_b = $unsigned(bubble_join_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,5)@79
    assign out_c0_exe5117 = bubble_select_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_b;
    assign out_valid_out = SE_out_redist6_i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_c0_exit112_5_tpl_74_fifo_V0;

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out = i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out = i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,37)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body9_cnn_tops_c0_enter1035_cnn_top1_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,40)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_s_c1_in_for_body9_cnn_tops_c1_enter126_cnn_top9_aunroll_x_out_intel_reserved_ffwd_43_0;

    // sync_out(GPOUT,44)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
