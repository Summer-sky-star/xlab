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

// SystemVerilog created from cnn_top_bb_load_input0_B16_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B16_stall_region (
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    output wire [31:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata,
    output wire [15:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount,
    output wire [0:0] out_c0_exe4356,
    output wire [0:0] out_c0_exe5357,
    output wire [0:0] out_c0_exe6358,
    output wire [0:0] out_c0_exe7359,
    output wire [0:0] out_c0_exe8360,
    output wire [0:0] out_valid_out,
    output wire [63:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    input wire [127:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_add77166,
    input wire [0:0] in_forked65,
    input wire [31:0] in_kh_071_pop21107_pop37164,
    input wire [31:0] in_kh_071_pop21108_pop43171,
    input wire [31:0] in_kh_071_pop21135,
    input wire [31:0] in_kw_068_pop33112_pop45165,
    input wire [31:0] in_kw_068_pop33152,
    input wire [31:0] in_li_073100_pop40168,
    input wire [31:0] in_li_073124,
    input wire [31:0] in_li_07398_pop22140,
    input wire [31:0] in_li_07399_pop34155,
    input wire [0:0] in_notcmp81167,
    input wire [0:0] in_notcmp85110_pop44172,
    input wire [0:0] in_notcmp85149,
    input wire [0:0] in_notcmp89104_pop36161,
    input wire [0:0] in_notcmp89105_pop42170,
    input wire [0:0] in_notcmp89130,
    input wire [0:0] in_pop23145,
    input wire [0:0] in_pop35158,
    input wire [0:0] in_pop41169,
    input wire [0:0] in_unnamed_load_input051,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [0:0] i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_2_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_3_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_4_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_5_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_6_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_7_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_8_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_9_tpl;
    wire [7:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;
    wire [15:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    wire [127:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_pipeline_valid_out;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_input0_B16_merge_reg_aunroll_x_out_valid_out;
    wire [69:0] bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_b;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_c;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_d;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_e;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_g;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_h;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_i;
    wire [7:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_o;
    wire [330:0] bubble_join_load_input0_B16_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_i;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_m;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_n;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_r;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_s;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_load_input0_B16_merge_reg_aunroll_x_v;
    wire [330:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [0:0] bubble_select_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [0:0] bubble_select_stall_entry_v;
    wire [0:0] SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_and0;
    wire [0:0] SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V1;
    wire [0:0] SE_out_load_input0_B16_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_input0_B16_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_input0_B16_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,48)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_input0_B16_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,39)
    assign bubble_join_stall_entry_q = {in_unnamed_load_input051, in_pop41169, in_pop35158, in_pop23145, in_notcmp89130, in_notcmp89105_pop42170, in_notcmp89104_pop36161, in_notcmp85149, in_notcmp85110_pop44172, in_notcmp81167, in_li_07399_pop34155, in_li_07398_pop22140, in_li_073124, in_li_073100_pop40168, in_kw_068_pop33152, in_kw_068_pop33112_pop45165, in_kh_071_pop21135, in_kh_071_pop21108_pop43171, in_kh_071_pop21107_pop37164, in_forked65, in_add77166};

    // bubble_select_stall_entry(BITSELECT,40)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[256:225]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[288:257]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[320:289]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[321:321]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[322:322]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[323:323]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[324:324]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[325:325]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[326:326]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[327:327]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[328:328]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[329:329]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[330:330]);

    // load_input0_B16_merge_reg_aunroll_x(BLACKBOX,8)@0
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
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_input0_B16_merge_reg theload_input0_B16_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_j),
        .in_data_in_2_tpl(bubble_select_stall_entry_v),
        .in_data_in_3_tpl(bubble_select_stall_entry_r),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_k),
        .in_data_in_6_tpl(bubble_select_stall_entry_s),
        .in_data_in_7_tpl(bubble_select_stall_entry_o),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_l),
        .in_data_in_10_tpl(bubble_select_stall_entry_t),
        .in_data_in_11_tpl(bubble_select_stall_entry_p),
        .in_data_in_12_tpl(bubble_select_stall_entry_d),
        .in_data_in_13_tpl(bubble_select_stall_entry_g),
        .in_data_in_14_tpl(bubble_select_stall_entry_b),
        .in_data_in_15_tpl(bubble_select_stall_entry_m),
        .in_data_in_16_tpl(bubble_select_stall_entry_i),
        .in_data_in_17_tpl(bubble_select_stall_entry_u),
        .in_data_in_18_tpl(bubble_select_stall_entry_q),
        .in_data_in_19_tpl(bubble_select_stall_entry_e),
        .in_data_in_20_tpl(bubble_select_stall_entry_n),
        .in_stall_in(SE_out_load_input0_B16_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(load_input0_B16_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_stall_out(load_input0_B16_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_input0_B16_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_input0_B16_merge_reg_aunroll_x(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_load_input0_B16_merge_reg_aunroll_x_V0 = SE_out_load_input0_B16_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_load_input0_B16_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_stall | ~ (SE_out_load_input0_B16_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_load_input0_B16_merge_reg_aunroll_x_wireValid = load_input0_B16_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x(BITJOIN,32)
    assign bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q = {i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_15_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_14_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_13_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_12_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_11_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_10_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_9_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_8_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_7_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_6_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_5_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_4_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_3_tpl, i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x(BITSELECT,33)
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[8:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[16:9]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[24:17]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[32:25]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[40:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[48:41]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[56:49]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[64:57]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_q[69:69]);

    // i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x(BLACKBOX,6)@17
    // in in_i_stall@20000000
    // out out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata@20000000
    // out out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_acl_c_storage_pipe_v_p0000nput056_load_input00 thei_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_c),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_d),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_e),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_f),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_g),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_h),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_i),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_j),
        .in_c0_exe2354(bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V1),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x(STALLENABLE,43)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_V0 = SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_and0 = i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_valid;
    assign SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V0 & SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_and0;

    // SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x(STALLENABLE,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed0 = (~ (SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed1 = (~ (i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_valid;

    // bubble_join_load_input0_B16_merge_reg_aunroll_x(BITJOIN,35)
    assign bubble_join_load_input0_B16_merge_reg_aunroll_x_q = {load_input0_B16_merge_reg_aunroll_x_out_data_out_20_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_19_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_18_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_17_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_16_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_15_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_14_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_13_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_12_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_11_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_10_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_9_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_8_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_7_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_6_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_5_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_4_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_3_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_2_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_1_tpl, load_input0_B16_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_input0_B16_merge_reg_aunroll_x(BITSELECT,36)
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_d = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_e = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_f = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[66:35]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_g = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_h = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[99:99]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_i = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[100:100]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_j = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[132:101]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_k = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[164:133]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_l = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_m = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[166:166]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_n = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[198:167]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_o = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[230:199]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_p = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[262:231]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_q = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[263:263]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_r = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[295:264]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_s = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[296:296]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_t = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[297:297]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_u = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[329:298]);
    assign bubble_select_load_input0_B16_merge_reg_aunroll_x_v = $unsigned(bubble_join_load_input0_B16_merge_reg_aunroll_x_q[330:330]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_c0_exit352_0_tpl@17
    // out out_c0_exit352_1_tpl@17
    // out out_c0_exit352_2_tpl@17
    // out out_c0_exit352_3_tpl@17
    // out out_c0_exit352_4_tpl@17
    // out out_c0_exit352_5_tpl@17
    // out out_c0_exit352_6_tpl@17
    // out out_c0_exit352_7_tpl@17
    // out out_c0_exit352_8_tpl@17
    // out out_c0_exit352_9_tpl@17
    // out out_c0_exit352_10_tpl@17
    // out out_c0_exit352_11_tpl@17
    // out out_c0_exit352_12_tpl@17
    // out out_c0_exit352_13_tpl@17
    // out out_c0_exit352_14_tpl@17
    // out out_c0_exit352_15_tpl@17
    // out out_c0_exit352_16_tpl@17
    // out out_c0_exit352_17_tpl@17
    // out out_c0_exit352_18_tpl@17
    // out out_c0_exit352_19_tpl@17
    // out out_c0_exit352_20_tpl@17
    // out out_c0_exit352_21_tpl@17
    // out out_c0_exit352_22_tpl@17
    // out out_c0_exit352_23_tpl@17
    // out out_c0_exit352_24_tpl@17
    // out out_c0_exit352_25_tpl@17
    // out out_c0_exit352_26_tpl@17
    // out out_c0_exit352_27_tpl@17
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@17
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond66_prehead0000er31819_load_input01 thei_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x (
        .in_c0_eni21_0_tpl(GND_q),
        .in_c0_eni21_1_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_b),
        .in_c0_eni21_2_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_p),
        .in_c0_eni21_3_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_r),
        .in_c0_eni21_4_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_u),
        .in_c0_eni21_5_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_s),
        .in_c0_eni21_6_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_t),
        .in_c0_eni21_7_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_v),
        .in_c0_eni21_8_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_o),
        .in_c0_eni21_9_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_q),
        .in_c0_eni21_10_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_c),
        .in_c0_eni21_11_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_d),
        .in_c0_eni21_12_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_e),
        .in_c0_eni21_13_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_f),
        .in_c0_eni21_14_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_g),
        .in_c0_eni21_15_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_h),
        .in_c0_eni21_16_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_i),
        .in_c0_eni21_17_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_j),
        .in_c0_eni21_18_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_k),
        .in_c0_eni21_19_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_l),
        .in_c0_eni21_20_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_m),
        .in_c0_eni21_21_tpl(bubble_select_load_input0_B16_merge_reg_aunroll_x_n),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_backStall),
        .in_i_valid(SE_out_load_input0_B16_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit352_0_tpl(),
        .out_c0_exit352_1_tpl(),
        .out_c0_exit352_2_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_2_tpl),
        .out_c0_exit352_3_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_3_tpl),
        .out_c0_exit352_4_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_4_tpl),
        .out_c0_exit352_5_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_5_tpl),
        .out_c0_exit352_6_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_6_tpl),
        .out_c0_exit352_7_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_7_tpl),
        .out_c0_exit352_8_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_8_tpl),
        .out_c0_exit352_9_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_9_tpl),
        .out_c0_exit352_10_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_10_tpl),
        .out_c0_exit352_11_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_11_tpl),
        .out_c0_exit352_12_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_12_tpl),
        .out_c0_exit352_13_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_13_tpl),
        .out_c0_exit352_14_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_14_tpl),
        .out_c0_exit352_15_tpl(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_c0_exit352_15_tpl),
        .out_c0_exit352_16_tpl(),
        .out_c0_exit352_17_tpl(),
        .out_c0_exit352_18_tpl(),
        .out_c0_exit352_19_tpl(),
        .out_c0_exit352_20_tpl(),
        .out_c0_exit352_21_tpl(),
        .out_c0_exit352_22_tpl(),
        .out_c0_exit352_23_tpl(),
        .out_c0_exit352_24_tpl(),
        .out_c0_exit352_25_tpl(),
        .out_c0_exit352_26_tpl(),
        .out_c0_exit352_27_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;

    // dupName_0_sync_out_x(GPOUT,4)@17
    assign out_c0_exe4356 = bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_k;
    assign out_c0_exe5357 = bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_l;
    assign out_c0_exe6358 = bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_m;
    assign out_c0_exe7359 = bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_n;
    assign out_c0_exe8360 = bubble_select_i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_o;
    assign out_valid_out = SE_out_i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = i_iowr_bl_acl_c_storage_pipe_v_pipe0id_0bkc_uinput_packet_0ge_ihc_0uconstantpipestorage_internal_2_b_pipe_channel_unnamed_load_input056_load_input03_aunroll_x_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,21)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input01_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,28)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
