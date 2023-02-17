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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond5_i_0000r70229_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond5_i_0000r70229_conv_process0 (
    output wire [31:0] out_memdep_5_conv_process_avm_address,
    output wire [0:0] out_memdep_5_conv_process_avm_enable,
    output wire [0:0] out_memdep_5_conv_process_avm_read,
    output wire [0:0] out_memdep_5_conv_process_avm_write,
    output wire [511:0] out_memdep_5_conv_process_avm_writedata,
    output wire [63:0] out_memdep_5_conv_process_avm_byteenable,
    output wire [0:0] out_memdep_5_conv_process_avm_burstcount,
    output wire [0:0] out_c0_exi3706_0_tpl,
    output wire [0:0] out_c0_exi3706_1_tpl,
    output wire [0:0] out_c0_exi3706_2_tpl,
    output wire [0:0] out_c0_exi3706_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire [511:0] in_memdep_5_conv_process_avm_readdata,
    input wire [0:0] in_memdep_5_conv_process_avm_writeack,
    input wire [0:0] in_memdep_5_conv_process_avm_waitrequest,
    input wire [0:0] in_memdep_5_conv_process_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [32:0] in_intel_reserved_ffwd_51_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next12_conv_process30_sel_x_b;
    wire [31:0] bgTrunc_i_inc14_i_conv_process26_sel_x_b;
    wire [0:0] i_first_cleanup219_conv_process3_sel_x_b;
    wire [63:0] i_idxprom9_i_conv_process21_sel_x_b;
    wire [63:0] i_idxprom_i81_conv_process17_sel_x_b;
    wire [0:0] i_last_initeration215_conv_process10_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_writedata;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_5_trunc_sel_x_b;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_a;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_b;
    logic [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_o;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_q;
    wire [31:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_extender_x_q;
    wire [1:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_multconst_x_q;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_a;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_b;
    logic [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_o;
    wire [16:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_q;
    wire [63:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_append_upper_bits_x_q;
    wire [5:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x_q;
    wire [9:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_narrow_x_b;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_shift_join_x_q;
    wire [63:0] c_conv_process_output_buff_pmem_q;
    wire [1:0] c_i2_162_q;
    wire [31:0] c_i32_065_q;
    wire [31:0] c_i32_167_q;
    wire [32:0] c_i33_169_q;
    wire [32:0] c_i33_undef64_q;
    wire [1:0] i_cleanups_shl218_conv_process5_vt_join_q;
    wire [0:0] i_cleanups_shl218_conv_process5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor220_conv_process4_q;
    wire [0:0] i_first_cleanup_xor220_or_conv_process24_q;
    wire [0:0] i_fpga_indvars_iv11_replace_phi_conv_process14_s;
    reg [32:0] i_fpga_indvars_iv11_replace_phi_conv_process14_q;
    wire [33:0] i_fpga_indvars_iv_next12_conv_process30_a;
    wire [33:0] i_fpga_indvars_iv_next12_conv_process30_b;
    logic [33:0] i_fpga_indvars_iv_next12_conv_process30_o;
    wire [33:0] i_fpga_indvars_iv_next12_conv_process30_q;
    wire [63:0] i_idxprom9_i_conv_process21_vt_join_q;
    wire [31:0] i_idxprom9_i_conv_process21_vt_select_31_b;
    wire [63:0] i_idxprom_i81_conv_process17_vt_join_q;
    wire [31:0] i_idxprom_i81_conv_process17_vt_select_31_b;
    wire [32:0] i_inc14_i_conv_process26_a;
    wire [32:0] i_inc14_i_conv_process26_b;
    logic [32:0] i_inc14_i_conv_process26_o;
    wire [32:0] i_inc14_i_conv_process26_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process32_out_dest_data_out_50_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process18_out_dest_data_out_50_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12_out_dest_data_out_51_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going214_conv_process6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_feedback_stall_out_71;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_feedback_stall_out_70;
    wire [1:0] i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_feedback_stall_out_69;
    wire [31:0] i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_feedback_stall_out_68;
    wire [31:0] i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_feedback_stall_out_72;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_feedback_stall_out_67;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_out_71;
    wire [0:0] i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_valid_out_71;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_out_70;
    wire [0:0] i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_valid_out_70;
    wire [7:0] i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_out_69;
    wire [0:0] i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_valid_out_69;
    wire [31:0] i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_out_68;
    wire [0:0] i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_valid_out_68;
    wire [31:0] i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_valid_out_72;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_out_67;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_valid_out_67;
    wire [0:0] i_masked223_conv_process39_qi;
    reg [0:0] i_masked223_conv_process39_q;
    wire [63:0] i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_join_q;
    wire [57:0] i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_select_63_b;
    wire [0:0] i_next_cleanups222_conv_process37_s;
    reg [1:0] i_next_cleanups222_conv_process37_q;
    wire [1:0] i_next_initerations213_conv_process8_vt_join_q;
    wire [0:0] i_next_initerations213_conv_process8_vt_select_0_b;
    wire [0:0] i_notcmp211_conv_process34_q;
    wire [0:0] i_or221_conv_process36_q;
    wire [63:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_join_q;
    wire [57:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_select_63_b;
    wire [0:0] i_unnamed_conv_process19_q;
    wire [0:0] i_unnamed_conv_process33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid159_i_cleanups_shl218_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_s;
    reg [1:0] leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid165_i_next_initerations213_conv_process0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid167_i_next_initerations213_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_s;
    reg [1:0] rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_q;
    wire [2:0] lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in;
    wire [2:0] lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    wire [12:0] highBBits_uid180_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    wire [16:0] addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a;
    wire [16:0] addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    logic [16:0] addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o;
    wire [16:0] addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [19:0] add_uid182_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [0:0] lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in;
    wire [0:0] lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    wire [14:0] highBBits_uid185_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    wire [20:0] a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a;
    wire [20:0] a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    logic [20:0] a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o;
    wire [20:0] a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [21:0] a_subconst_19_uid187_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [8:0] sR_bottomExtension_uid190_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [20:0] sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in;
    wire [20:0] sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b;
    wire [29:0] sR_mergedSignalTM_uid192_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q;
    wire [0:0] i_exitcond13_conv_process28_cmp_nsign_qi;
    reg [0:0] i_exitcond13_conv_process28_cmp_nsign_q;
    wire [15:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_b;
    wire [47:0] i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c;
    reg [47:0] redist0_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_i_masked223_conv_process39_q_4_q;
    reg [0:0] redist1_i_masked223_conv_process39_q_4_delay_0;
    reg [0:0] redist1_i_masked223_conv_process39_q_4_delay_1;
    reg [0:0] redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1_q;
    reg [0:0] redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_0;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_1;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5_q;
    reg [0:0] redist6_i_first_cleanup_xor220_conv_process4_q_3_q;
    reg [0:0] redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_0;
    reg [0:0] redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_1;
    reg [0:0] redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_q;
    reg [0:0] redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
    reg [0:0] redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
    reg [31:0] redist9_sync_together90_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_q;
    reg [0:0] redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
    reg [0:0] redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
    reg [0:0] redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
    reg [0:0] redist11_sync_together90_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist12_sync_together90_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist12_sync_together90_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist13_sync_together90_aunroll_x_in_i_valid_4_q;
    reg [15:0] redist14_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b_1_q;
    reg [15:0] redist15_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b_1_q;
    reg [15:0] redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist11_sync_together90_aunroll_x_in_i_valid_1(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together90_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist11_sync_together90_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist12_sync_together90_aunroll_x_in_i_valid_3(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together90_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist12_sync_together90_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist12_sync_together90_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist11_sync_together90_aunroll_x_in_i_valid_1_q);
            redist12_sync_together90_aunroll_x_in_i_valid_3_q <= redist12_sync_together90_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg8(REG,142)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12(BLACKBOX,96)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000cess59_conv_process0 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12_out_dest_data_out_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_169(CONSTANT,71)
    assign c_i33_169_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next12_conv_process30(ADD,83)@1
    assign i_fpga_indvars_iv_next12_conv_process30_a = {1'b0, i_fpga_indvars_iv11_replace_phi_conv_process14_q};
    assign i_fpga_indvars_iv_next12_conv_process30_b = {1'b0, c_i33_169_q};
    assign i_fpga_indvars_iv_next12_conv_process30_o = $unsigned(i_fpga_indvars_iv_next12_conv_process30_a) + $unsigned(i_fpga_indvars_iv_next12_conv_process30_b);
    assign i_fpga_indvars_iv_next12_conv_process30_q = i_fpga_indvars_iv_next12_conv_process30_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next12_conv_process30_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next12_conv_process30_sel_x_b = i_fpga_indvars_iv_next12_conv_process30_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31(BLACKBOX,111)@1
    // out out_feedback_out_67@20000000
    // out out_feedback_valid_out_67@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push67_conv_process0 thei_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_conv_process30_sel_x_b),
        .in_feedback_stall_in_67(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_feedback_stall_out_67),
        .in_keep_going214(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_67(i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_out_67),
        .out_feedback_valid_out_67(i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_valid_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef64(CONSTANT,72)
    assign c_i33_undef64_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13(BLACKBOX,103)@1
    // out out_feedback_stall_out_67@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop67_conv_process0 thei_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13 (
        .in_data_in(c_i33_undef64_q),
        .in_dir(in_c0_eni3_1_tpl),
        .in_feedback_in_67(i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_out_67),
        .in_feedback_valid_in_67(i_llvm_fpga_push_i33_fpga_indvars_iv11_push67_conv_process31_out_feedback_valid_out_67),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_data_out),
        .out_feedback_stall_out_67(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_feedback_stall_out_67),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv11_replace_phi_conv_process14(MUX,82)@1
    assign i_fpga_indvars_iv11_replace_phi_conv_process14_s = in_c0_eni3_1_tpl;
    always @(i_fpga_indvars_iv11_replace_phi_conv_process14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12_out_dest_data_out_51_0)
    begin
        unique case (i_fpga_indvars_iv11_replace_phi_conv_process14_s)
            1'b0 : i_fpga_indvars_iv11_replace_phi_conv_process14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop67_conv_process13_out_data_out;
            1'b1 : i_fpga_indvars_iv11_replace_phi_conv_process14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process59_conv_process12_out_dest_data_out_51_0;
            default : i_fpga_indvars_iv11_replace_phi_conv_process14_q = 33'b0;
        endcase
    end

    // i_exitcond13_conv_process28_cmp_nsign(LOGICAL,234)@1 + 1
    assign i_exitcond13_conv_process28_cmp_nsign_qi = $unsigned(~ (i_fpga_indvars_iv11_replace_phi_conv_process14_q[32:32]));
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_exitcond13_conv_process28_cmp_nsign_delay ( .xin(i_exitcond13_conv_process28_cmp_nsign_qi), .xout(i_exitcond13_conv_process28_cmp_nsign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process32(BLACKBOX,94)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process32 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together90_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process32_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process33(LOGICAL,126)@2
    assign i_unnamed_conv_process33_q = i_llvm_fpga_ffwd_dest_i1_cmp2_i494112_conv_process32_out_dest_data_out_50_0 & i_exitcond13_conv_process28_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond224_conv_process35(BLACKBOX,106)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond224_conv_process0 thei_llvm_fpga_push_i1_notexitcond224_conv_process35 (
        .in_data_in(i_unnamed_conv_process33_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_not_exitcond_stall_out),
        .in_first_cleanup219(i_first_cleanup219_conv_process3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together90_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,137)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid165_i_next_initerations213_conv_process0_shift_x(BITSELECT,164)@2
    assign rightShiftStage0Idx1Rng1_uid165_i_next_initerations213_conv_process0_shift_x_b = i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid167_i_next_initerations213_conv_process0_shift_x(BITJOIN,166)@2
    assign rightShiftStage0Idx1_uid167_i_next_initerations213_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid165_i_next_initerations213_conv_process0_shift_x_b};

    // valid_fanout_reg1(REG,135)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,136)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations212_push69_conv_process9(BLACKBOX,108)@2
    // out out_feedback_out_69@20000000
    // out out_feedback_valid_out_69@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations212_push69_conv_process0 thei_llvm_fpga_push_i2_initerations212_push69_conv_process9 (
        .in_data_in(i_next_initerations213_conv_process8_vt_join_q),
        .in_feedback_stall_in_69(i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_feedback_stall_out_69),
        .in_keep_going214(redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_69(i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_out_69),
        .out_feedback_valid_out_69(i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_valid_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7(BLACKBOX,100)@2
    // out out_feedback_stall_out_69@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations212_pop69_conv_process0 thei_llvm_fpga_pop_i2_initerations212_pop69_conv_process7 (
        .in_data_in(c_i2_162_q),
        .in_dir(redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_69(i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_out_69),
        .in_feedback_valid_in_69(i_llvm_fpga_push_i2_initerations212_push69_conv_process9_out_feedback_valid_out_69),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_data_out),
        .out_feedback_stall_out_69(i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_feedback_stall_out_69),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x(MUX,168)@2
    assign rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_data_out or rightShiftStage0Idx1_uid167_i_next_initerations213_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_initerations212_pop69_conv_process7_out_data_out;
            1'b1 : rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_q = rightShiftStage0Idx1_uid167_i_next_initerations213_conv_process0_shift_x_q;
            default : rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations213_conv_process8_vt_select_0(BITSELECT,119)@2
    assign i_next_initerations213_conv_process8_vt_select_0_b = rightShiftStage0_uid169_i_next_initerations213_conv_process0_shift_x_q[0:0];

    // i_next_initerations213_conv_process8_vt_join(BITJOIN,118)@2
    assign i_next_initerations213_conv_process8_vt_join_q = {GND_q, i_next_initerations213_conv_process8_vt_select_0_b};

    // i_last_initeration215_conv_process10_sel_x(BITSELECT,13)@2
    assign i_last_initeration215_conv_process10_sel_x_b = i_next_initerations213_conv_process8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration216_conv_process11(BLACKBOX,104)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration216_conv_process0 thei_llvm_fpga_push_i1_lastiniteration216_conv_process11 (
        .in_data_in(i_last_initeration215_conv_process10_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_initeration_stall_out),
        .in_keep_going214(redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going214_conv_process6(BLACKBOX,97)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going214_conv_process0 thei_llvm_fpga_pipeline_keep_going214_conv_process6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_out_18),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration216_conv_process11_out_feedback_valid_out_18),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_out_19),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond224_conv_process35_out_feedback_valid_out_19),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x(BITSELECT,157)@2
    assign leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_in = i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid159_i_cleanups_shl218_conv_process0_shift_x(BITJOIN,158)@2
    assign leftShiftStage0Idx1_uid159_i_cleanups_shl218_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid158_i_cleanups_shl218_conv_process0_shift_x_b, GND_q};

    // leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x(MUX,160)@2
    assign leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out or leftShiftStage0Idx1_uid159_i_cleanups_shl218_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out;
            1'b1 : leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_q = leftShiftStage0Idx1_uid159_i_cleanups_shl218_conv_process0_shift_x_q;
            default : leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl218_conv_process5_vt_select_1(BITSELECT,77)@2
    assign i_cleanups_shl218_conv_process5_vt_select_1_b = leftShiftStage0_uid161_i_cleanups_shl218_conv_process0_shift_x_q[1:1];

    // i_cleanups_shl218_conv_process5_vt_join(BITJOIN,76)@2
    assign i_cleanups_shl218_conv_process5_vt_join_q = {i_cleanups_shl218_conv_process5_vt_select_1_b, GND_q};

    // i_notcmp211_conv_process34(LOGICAL,120)@2
    assign i_notcmp211_conv_process34_q = i_unnamed_conv_process33_q ^ VCC_q;

    // i_or221_conv_process36(LOGICAL,121)@2
    assign i_or221_conv_process36_q = i_notcmp211_conv_process34_q | i_first_cleanup_xor220_conv_process4_q;

    // i_next_cleanups222_conv_process37(MUX,116)@2
    assign i_next_cleanups222_conv_process37_s = i_or221_conv_process36_q;
    always @(i_next_cleanups222_conv_process37_s or i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out or i_cleanups_shl218_conv_process5_vt_join_q)
    begin
        unique case (i_next_cleanups222_conv_process37_s)
            1'b0 : i_next_cleanups222_conv_process37_q = i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out;
            1'b1 : i_next_cleanups222_conv_process37_q = i_cleanups_shl218_conv_process5_vt_join_q;
            default : i_next_cleanups222_conv_process37_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups217_push70_conv_process38(BLACKBOX,107)@2
    // out out_feedback_out_70@20000000
    // out out_feedback_valid_out_70@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups217_push70_conv_process0 thei_llvm_fpga_push_i2_cleanups217_push70_conv_process38 (
        .in_data_in(i_next_cleanups222_conv_process37_q),
        .in_feedback_stall_in_70(i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_feedback_stall_out_70),
        .in_keep_going214(redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together90_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_70(i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_out_70),
        .out_feedback_valid_out_70(i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_valid_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_162(CONSTANT,68)
    assign c_i2_162_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2(BLACKBOX,99)@2
    // out out_feedback_stall_out_70@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process0 thei_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2 (
        .in_data_in(c_i2_162_q),
        .in_dir(redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_70(i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_out_70),
        .in_feedback_valid_in_70(i_llvm_fpga_push_i2_cleanups217_push70_conv_process38_out_feedback_valid_out_70),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist11_sync_together90_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out),
        .out_feedback_stall_out_70(i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_feedback_stall_out_70),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup219_conv_process3_sel_x(BITSELECT,10)@2
    assign i_first_cleanup219_conv_process3_sel_x_b = i_llvm_fpga_pop_i2_cleanups217_pop70_conv_process2_out_data_out[0:0];

    // i_first_cleanup_xor220_conv_process4(LOGICAL,80)@2
    assign i_first_cleanup_xor220_conv_process4_q = i_first_cleanup219_conv_process3_sel_x_b ^ VCC_q;

    // redist6_i_first_cleanup_xor220_conv_process4_q_3(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_0 <= '0;
            redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_1 <= '0;
            redist6_i_first_cleanup_xor220_conv_process4_q_3_q <= '0;
        end
        else
        begin
            redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_0 <= $unsigned(i_first_cleanup_xor220_conv_process4_q);
            redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_1 <= redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_0;
            redist6_i_first_cleanup_xor220_conv_process4_q_3_q <= redist6_i_first_cleanup_xor220_conv_process4_q_3_delay_1;
        end
    end

    // valid_fanout_reg6(REG,140)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process18(BLACKBOX,95)@5
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process18 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process18_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process19(LOGICAL,125)@5
    assign i_unnamed_conv_process19_q = i_llvm_fpga_ffwd_dest_i1_cmp2_i494113_conv_process18_out_dest_data_out_50_0 ^ VCC_q;

    // i_first_cleanup_xor220_or_conv_process24(LOGICAL,81)@5
    assign i_first_cleanup_xor220_or_conv_process24_q = i_unnamed_conv_process19_q | redist6_i_first_cleanup_xor220_conv_process4_q_3_q;

    // c_conv_process_output_buff_pmem(CONSTANT,47)
    assign c_conv_process_output_buff_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select(BITSELECT,235)@4
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_b = c_conv_process_output_buff_pmem_q[15:0];
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c = c_conv_process_output_buff_pmem_q[63:16];

    // redist0_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c);
        end
    end

    // valid_fanout_reg7(REG,141)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,143)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_0 <= '0;
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_1 <= '0;
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_0 <= $unsigned(redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q);
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_1 <= redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_0;
            redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_q <= redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_delay_1;
        end
    end

    // c_i32_167(CONSTANT,70)
    assign c_i32_167_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc14_i_conv_process26(ADD,92)@5
    assign i_inc14_i_conv_process26_a = {1'b0, i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_data_out};
    assign i_inc14_i_conv_process26_b = {1'b0, c_i32_167_q};
    assign i_inc14_i_conv_process26_o = $unsigned(i_inc14_i_conv_process26_a) + $unsigned(i_inc14_i_conv_process26_b);
    assign i_inc14_i_conv_process26_q = i_inc14_i_conv_process26_o[32:0];

    // bgTrunc_i_inc14_i_conv_process26_sel_x(BITSELECT,3)@5
    assign bgTrunc_i_inc14_i_conv_process26_sel_x_b = i_inc14_i_conv_process26_q[31:0];

    // i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27(BLACKBOX,109)@5
    // out out_feedback_out_68@20000000
    // out out_feedback_valid_out_68@20000000
    cnn_top_i_llvm_fpga_push_i32_c_0_i495_push68_conv_process0 thei_llvm_fpga_push_i32_c_0_i495_push68_conv_process27 (
        .in_data_in(bgTrunc_i_inc14_i_conv_process26_sel_x_b),
        .in_feedback_stall_in_68(i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_feedback_stall_out_68),
        .in_keep_going214(redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_68(i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_out_68),
        .out_feedback_valid_out_68(i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_valid_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= '0;
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_1 <= '0;
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_q <= '0;
        end
        else
        begin
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_0 <= $unsigned(redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_1 <= redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_0;
            redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_q <= redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20(BLACKBOX,101)@5
    // out out_feedback_stall_out_68@20000000
    cnn_top_i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process0 thei_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20 (
        .in_data_in(c_i32_065_q),
        .in_dir(redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_68(i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_out_68),
        .in_feedback_valid_in_68(i_llvm_fpga_push_i32_c_0_i495_push68_conv_process27_out_feedback_valid_out_68),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_data_out),
        .out_feedback_stall_out_68(i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_feedback_stall_out_68),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom9_i_conv_process21_sel_x(BITSELECT,11)@5
    assign i_idxprom9_i_conv_process21_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_c_0_i495_pop68_conv_process20_out_data_out[31:0]};

    // i_idxprom9_i_conv_process21_vt_select_31(BITSELECT,87)@5
    assign i_idxprom9_i_conv_process21_vt_select_31_b = i_idxprom9_i_conv_process21_sel_x_b[31:0];

    // i_idxprom9_i_conv_process21_vt_join(BITJOIN,86)@5
    assign i_idxprom9_i_conv_process21_vt_join_q = {c_i32_065_q, i_idxprom9_i_conv_process21_vt_select_31_b};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_3_trunc_sel_x(BITSELECT,22)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_3_trunc_sel_x_b = i_idxprom9_i_conv_process21_vt_join_q[15:0];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_narrow_x(BITSELECT,39)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_narrow_x_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_3_trunc_sel_x_b[9:0];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_shift_join_x(BITJOIN,40)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_shift_join_x_q = {i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_narrow_x_b, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x_q};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_multconst_x(CONSTANT,32)
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_multconst_x_q = $unsigned(2'b00);

    // valid_fanout_reg4(REG,138)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,139)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16(BLACKBOX,110)@2
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    cnn_top_i_llvm_fpga_push_i32_r_0_i496_po0000push72_conv_process0 thei_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16 (
        .in_data_in(i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_data_out),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_feedback_stall_out_72),
        .in_keep_going214(redist3_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together90_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together90_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together90_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15(BLACKBOX,102)@2
    // out out_feedback_stall_out_72@20000000
    cnn_top_i_llvm_fpga_pop_i32_r_0_i496_pop0000_pop72_conv_process0 thei_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15 (
        .in_data_in(redist9_sync_together90_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist7_sync_together90_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_72(i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i32_r_0_i496_pop63279_push72_conv_process16_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_i81_conv_process17_sel_x(BITSELECT,12)@2
    assign i_idxprom_i81_conv_process17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_r_0_i496_pop63279_pop72_conv_process15_out_data_out[31:0]};

    // i_idxprom_i81_conv_process17_vt_select_31(BITSELECT,91)@2
    assign i_idxprom_i81_conv_process17_vt_select_31_b = i_idxprom_i81_conv_process17_sel_x_b[31:0];

    // i_idxprom_i81_conv_process17_vt_join(BITJOIN,90)@2
    assign i_idxprom_i81_conv_process17_vt_join_q = {c_i32_065_q, i_idxprom_i81_conv_process17_vt_select_31_b};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x(BITSELECT,19)@2
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b = i_idxprom_i81_conv_process17_vt_join_q[15:0];

    // redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b);
        end
    end

    // highBBits_uid185_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITSELECT,184)@3
    assign highBBits_uid185_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q[15:1];

    // highBBits_uid180_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITSELECT,179)@2
    assign highBBits_uid180_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b[15:3];

    // addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(ADD,180)@2 + 1
    assign addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a = {1'b0, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = {4'b0000, highBBits_uid180_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o <= 17'b0;
        end
        else
        begin
            addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o <= $unsigned(addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a) + $unsigned(addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b);
        end
    end
    assign addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o[16:0];

    // lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITSELECT,178)@3
    assign lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in = redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q[2:0];
    assign lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in[2:0];

    // add_uid182_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITJOIN,181)@3
    assign add_uid182_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = {addsumAHighB_uid181_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q, lowRangeB_uid179_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b};

    // a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(ADD,185)@3
    assign a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a = {1'b0, add_uid182_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q};
    assign a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = {6'b000000, highBBits_uid185_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b};
    assign a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o = $unsigned(a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_a) + $unsigned(a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b);
    assign a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_o[20:0];

    // lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITSELECT,183)@3
    assign lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in = redist16_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_trunc_sel_x_b_1_q[0:0];
    assign lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in[0:0];

    // a_subconst_19_uid187_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITJOIN,186)@3
    assign a_subconst_19_uid187_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = {a_subconst_19_sumAHighB_uid186_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q, lowRangeB_uid184_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b};

    // sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITSELECT,190)@3
    assign sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in = a_subconst_19_uid187_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q[20:0];
    assign sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b = sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_in[20:0];

    // sR_bottomExtension_uid190_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(CONSTANT,189)
    assign sR_bottomExtension_uid190_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = $unsigned(9'b000000000);

    // sR_mergedSignalTM_uid192_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x(BITJOIN,191)@3
    assign sR_mergedSignalTM_uid192_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q = {sR_bottomRange_uid191_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_b, sR_bottomExtension_uid190_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_extender_x(BITJOIN,31)@3
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_extender_x_q = {i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_multconst_x_q, sR_mergedSignalTM_uid192_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_x_q};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x(BITSELECT,20)@3
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_mult_extender_x_q[15:0];

    // redist15_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b_1(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x(ADD,34)@4
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_a = {1'b0, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_b};
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_b = {1'b0, redist15_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_1_trunc_sel_x_b_1_q};
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_o = $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_a) + $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_b);
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_q = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_o[16:0];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x(BITSELECT,21)@4
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_add_x_q[15:0];

    // redist14_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b_1(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x(ADD,25)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_a = {1'b0, redist14_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_2_trunc_sel_x_b_1_q};
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_b = {1'b0, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_shift_join_x_q};
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_o = $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_a) + $unsigned(i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_b);
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_q = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_o[16:0];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_5_trunc_sel_x(BITSELECT,23)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_5_trunc_sel_x_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_0_add_x_q[15:0];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_append_upper_bits_x(BITJOIN,35)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_append_upper_bits_x_q = {redist0_i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_trunc_sel_x_merged_bit_select_c_1_q, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_dupName_5_trunc_sel_x_b};

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_select_63(BITSELECT,124)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_select_63_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_append_upper_bits_x_q[63:6];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_join(BITJOIN,123)@5
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_join_q = {i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_select_63_b, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x_q};

    // i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_select_63(BITSELECT,115)@5
    assign i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_select_63_b = i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process22_vt_join_q[63:6];

    // i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x(CONSTANT,37)
    assign i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x_q = $unsigned(6'b000000);

    // i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_join(BITJOIN,114)@5
    assign i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_join_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_select_63_b, i_ref_tmp_i_sroa_0_0_sroa_idx21_conv_process0_c_i6_02_x_q};

    // c_i32_065(CONSTANT,69)
    assign c_i32_065_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x(BLACKBOX,14)@5
    // out out_memdep_5_conv_process_avm_address@20000000
    // out out_memdep_5_conv_process_avm_burstcount@20000000
    // out out_memdep_5_conv_process_avm_byteenable@20000000
    // out out_memdep_5_conv_process_avm_enable@20000000
    // out out_memdep_5_conv_process_avm_read@20000000
    // out out_memdep_5_conv_process_avm_write@20000000
    // out out_memdep_5_conv_process_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@6
    // out out_o_writeack@6
    cnn_top_i_llvm_fpga_mem_memdep_5_conv_process0 thei_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x (
        .in_i_writedata_0_tpl(c_i32_065_q),
        .in_i_writedata_1_tpl(c_i32_065_q),
        .in_i_writedata_2_tpl(c_i32_065_q),
        .in_i_writedata_3_tpl(c_i32_065_q),
        .in_i_writedata_4_tpl(c_i32_065_q),
        .in_i_writedata_5_tpl(c_i32_065_q),
        .in_i_writedata_6_tpl(c_i32_065_q),
        .in_i_writedata_7_tpl(c_i32_065_q),
        .in_i_writedata_8_tpl(c_i32_065_q),
        .in_i_writedata_9_tpl(c_i32_065_q),
        .in_i_writedata_10_tpl(c_i32_065_q),
        .in_i_writedata_11_tpl(c_i32_065_q),
        .in_i_writedata_12_tpl(c_i32_065_q),
        .in_i_writedata_13_tpl(c_i32_065_q),
        .in_i_writedata_14_tpl(c_i32_065_q),
        .in_i_writedata_15_tpl(c_i32_065_q),
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_conv_process_fpgaunique_54_conv_process23_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor220_or_conv_process24_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_memdep_5_conv_process_avm_readdata(in_memdep_5_conv_process_avm_readdata),
        .in_memdep_5_conv_process_avm_readdatavalid(in_memdep_5_conv_process_avm_readdatavalid),
        .in_memdep_5_conv_process_avm_waitrequest(in_memdep_5_conv_process_avm_waitrequest),
        .in_memdep_5_conv_process_avm_writeack(in_memdep_5_conv_process_avm_writeack),
        .out_memdep_5_conv_process_avm_address(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_address),
        .out_memdep_5_conv_process_avm_burstcount(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_burstcount),
        .out_memdep_5_conv_process_avm_byteenable(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_byteenable),
        .out_memdep_5_conv_process_avm_enable(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_enable),
        .out_memdep_5_conv_process_avm_read(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_read),
        .out_memdep_5_conv_process_avm_write(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_write),
        .out_memdep_5_conv_process_avm_writedata(i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,5)
    assign out_memdep_5_conv_process_avm_address = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_address;
    assign out_memdep_5_conv_process_avm_enable = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_enable;
    assign out_memdep_5_conv_process_avm_read = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_read;
    assign out_memdep_5_conv_process_avm_write = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_write;
    assign out_memdep_5_conv_process_avm_writedata = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_writedata;
    assign out_memdep_5_conv_process_avm_byteenable = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_byteenable;
    assign out_memdep_5_conv_process_avm_burstcount = i_llvm_fpga_mem_memdep_5_conv_process25_aunroll_x_out_memdep_5_conv_process_avm_burstcount;

    // redist13_sync_together90_aunroll_x_in_i_valid_4(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together90_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist13_sync_together90_aunroll_x_in_i_valid_4_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg0(REG,134)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg10(REG,144)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist12_sync_together90_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg11(REG,145)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41(BLACKBOX,105)@6
    // out out_feedback_out_71@20000000
    // out out_feedback_valid_out_71@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp226278_push71_conv_process0 thei_llvm_fpga_push_i1_notcmp226278_push71_conv_process41 (
        .in_data_in(redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1_q),
        .in_feedback_stall_in_71(i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_feedback_stall_out_71),
        .in_keep_going214(redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_71(i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_out_71),
        .out_feedback_valid_out_71(i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_valid_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= '0;
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= '0;
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= '0;
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_q <= '0;
        end
        else
        begin
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_1 <= redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_0;
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_2 <= redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_1;
            redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_q <= redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40(BLACKBOX,98)@5
    // out out_feedback_stall_out_71@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process0 thei_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40 (
        .in_data_in(redist10_sync_together90_aunroll_x_in_c0_eni3_3_tpl_4_q),
        .in_dir(redist8_sync_together90_aunroll_x_in_c0_eni3_1_tpl_4_q),
        .in_feedback_in_71(i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_out_71),
        .in_feedback_valid_in_71(i_llvm_fpga_push_i1_notcmp226278_push71_conv_process41_out_feedback_valid_out_71),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out),
        .out_feedback_stall_out_71(i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_feedback_stall_out_71),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out);
        end
    end

    // i_masked223_conv_process39(LOGICAL,112)@2 + 1
    assign i_masked223_conv_process39_qi = i_notcmp211_conv_process34_q & i_first_cleanup219_conv_process3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked223_conv_process39_delay ( .xin(i_masked223_conv_process39_qi), .xout(i_masked223_conv_process39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_i_masked223_conv_process39_q_4(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_masked223_conv_process39_q_4_delay_0 <= '0;
            redist1_i_masked223_conv_process39_q_4_delay_1 <= '0;
            redist1_i_masked223_conv_process39_q_4_q <= '0;
        end
        else
        begin
            redist1_i_masked223_conv_process39_q_4_delay_0 <= $unsigned(i_masked223_conv_process39_q);
            redist1_i_masked223_conv_process39_q_4_delay_1 <= redist1_i_masked223_conv_process39_q_4_delay_0;
            redist1_i_masked223_conv_process39_q_4_q <= redist1_i_masked223_conv_process39_q_4_delay_1;
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5_q <= $unsigned(redist4_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,43)@6
    assign out_c0_exi3706_0_tpl = GND_q;
    assign out_c0_exi3706_1_tpl = redist5_i_llvm_fpga_pipeline_keep_going214_conv_process6_out_data_out_5_q;
    assign out_c0_exi3706_2_tpl = redist1_i_masked223_conv_process39_q_4_q;
    assign out_c0_exi3706_3_tpl = redist2_i_llvm_fpga_pop_i1_notcmp226278_pop71_conv_process40_out_data_out_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // ext_sig_sync_out(GPOUT,74)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going214_conv_process6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going214_conv_process6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,129)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going214_conv_process6_out_pipeline_valid_out;

endmodule
