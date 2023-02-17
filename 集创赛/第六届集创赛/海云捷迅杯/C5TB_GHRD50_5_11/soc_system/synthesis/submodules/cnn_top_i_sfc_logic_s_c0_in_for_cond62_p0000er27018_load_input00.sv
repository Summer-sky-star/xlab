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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond62_p0000er27018_load_input00
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond62_p0000er27018_load_input00 (
    output wire [0:0] out_c0_exi21_0_tpl,
    output wire [31:0] out_c0_exi21_1_tpl,
    output wire [31:0] out_c0_exi21_2_tpl,
    output wire [0:0] out_c0_exi21_3_tpl,
    output wire [0:0] out_c0_exi21_4_tpl,
    output wire [31:0] out_c0_exi21_5_tpl,
    output wire [0:0] out_c0_exi21_6_tpl,
    output wire [0:0] out_c0_exi21_7_tpl,
    output wire [31:0] out_c0_exi21_8_tpl,
    output wire [0:0] out_c0_exi21_9_tpl,
    output wire [31:0] out_c0_exi21_10_tpl,
    output wire [0:0] out_c0_exi21_11_tpl,
    output wire [0:0] out_c0_exi21_12_tpl,
    output wire [31:0] out_c0_exi21_13_tpl,
    output wire [31:0] out_c0_exi21_14_tpl,
    output wire [0:0] out_c0_exi21_15_tpl,
    output wire [0:0] out_c0_exi21_16_tpl,
    output wire [31:0] out_c0_exi21_17_tpl,
    output wire [31:0] out_c0_exi21_18_tpl,
    output wire [0:0] out_c0_exi21_19_tpl,
    output wire [0:0] out_c0_exi21_20_tpl,
    output wire [31:0] out_c0_exi21_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input020,
    input wire [0:0] in_c0_eni13_0_tpl,
    input wire [0:0] in_c0_eni13_1_tpl,
    input wire [31:0] in_c0_eni13_2_tpl,
    input wire [31:0] in_c0_eni13_3_tpl,
    input wire [0:0] in_c0_eni13_4_tpl,
    input wire [0:0] in_c0_eni13_5_tpl,
    input wire [31:0] in_c0_eni13_6_tpl,
    input wire [0:0] in_c0_eni13_7_tpl,
    input wire [31:0] in_c0_eni13_8_tpl,
    input wire [0:0] in_c0_eni13_9_tpl,
    input wire [0:0] in_c0_eni13_10_tpl,
    input wire [31:0] in_c0_eni13_11_tpl,
    input wire [31:0] in_c0_eni13_12_tpl,
    input wire [0:0] in_c0_eni13_13_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input02_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input02_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add77_load_input010_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next7_load_input018_sel_x_b;
    wire [31:0] bgTrunc_i_inc93_load_input020_sel_x_b;
    wire [63:0] bgTrunc_i_mul76_load_input08_sel_x_in;
    wire [31:0] bgTrunc_i_mul76_load_input08_sel_x_b;
    wire [31:0] c_i32_056_q;
    wire [31:0] c_i32_159_q;
    wire [32:0] c_i33_158_q;
    wire [32:0] c_i33_undef55_q;
    wire [32:0] i_add77_load_input010_a;
    wire [32:0] i_add77_load_input010_b;
    logic [32:0] i_add77_load_input010_o;
    wire [32:0] i_add77_load_input010_q;
    wire [0:0] i_fpga_indvars_iv6_replace_phi_load_input05_s;
    reg [32:0] i_fpga_indvars_iv6_replace_phi_load_input05_q;
    wire [33:0] i_fpga_indvars_iv_next7_load_input018_a;
    wire [33:0] i_fpga_indvars_iv_next7_load_input018_b;
    logic [33:0] i_fpga_indvars_iv_next7_load_input018_o;
    wire [33:0] i_fpga_indvars_iv_next7_load_input018_q;
    wire [32:0] i_inc93_load_input020_a;
    wire [32:0] i_inc93_load_input020_b;
    logic [32:0] i_inc93_load_input020_o;
    wire [32:0] i_inc93_load_input020_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input050_load_input013_out_dest_data_out_21_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06_out_dest_data_out_4_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going82_load_input02_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_feedback_stall_out_42;
    wire [0:0] i_llvm_fpga_pop_i1_pop41_load_input024_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop41_load_input024_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_feedback_stall_out_39;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_feedback_stall_out_38;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_push41_load_input025_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_push41_load_input025_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_valid_out_39;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_valid_out_38;
    wire [0:0] i_notcmp81_load_input016_q;
    wire [0:0] i_unnamed_load_input014_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    wire [0:0] i_exitcond8_load_input011_cmp_nsign_q;
    wire [63:0] i_mul76_load_input08_sums_join_0_q;
    wire [50:0] i_mul76_load_input08_sums_align_1_q;
    wire [50:0] i_mul76_load_input08_sums_align_1_qint;
    wire [64:0] i_mul76_load_input08_sums_result_add_0_0_a;
    wire [64:0] i_mul76_load_input08_sums_result_add_0_0_b;
    logic [64:0] i_mul76_load_input08_sums_result_add_0_0_o;
    wire [64:0] i_mul76_load_input08_sums_result_add_0_0_q;
    wire i_mul76_load_input08_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul76_load_input08_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul76_load_input08_im0_cma_c0 [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_p [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_u [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_w [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_x [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_y [0:0];
    reg [35:0] i_mul76_load_input08_im0_cma_s [0:0];
    wire [35:0] i_mul76_load_input08_im0_cma_qq;
    wire [35:0] i_mul76_load_input08_im0_cma_q;
    wire i_mul76_load_input08_im0_cma_ena0;
    wire i_mul76_load_input08_im0_cma_ena1;
    wire i_mul76_load_input08_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul76_load_input08_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul76_load_input08_im8_cma_c0 [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_p [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_u [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_w [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_x [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_y [0:0];
    reg [27:0] i_mul76_load_input08_im8_cma_s [0:0];
    wire [27:0] i_mul76_load_input08_im8_cma_qq;
    wire [27:0] i_mul76_load_input08_im8_cma_q;
    wire i_mul76_load_input08_im8_cma_ena0;
    wire i_mul76_load_input08_im8_cma_ena1;
    wire i_mul76_load_input08_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul76_load_input08_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul76_load_input08_ma3_cma_c0 [0:1];
    wire [31:0] i_mul76_load_input08_ma3_cma_p [0:1];
    wire [32:0] i_mul76_load_input08_ma3_cma_u [0:1];
    wire [32:0] i_mul76_load_input08_ma3_cma_w [0:0];
    wire [32:0] i_mul76_load_input08_ma3_cma_x [0:0];
    wire [32:0] i_mul76_load_input08_ma3_cma_y [0:0];
    reg [32:0] i_mul76_load_input08_ma3_cma_s [0:0];
    wire [32:0] i_mul76_load_input08_ma3_cma_qq;
    wire [32:0] i_mul76_load_input08_ma3_cma_q;
    wire i_mul76_load_input08_ma3_cma_ena0;
    wire i_mul76_load_input08_ma3_cma_ena1;
    wire [17:0] i_mul76_load_input08_bs2_merged_bit_select_b;
    wire [13:0] i_mul76_load_input08_bs2_merged_bit_select_c;
    wire [17:0] i_mul76_load_input08_bs1_merged_bit_select_b;
    wire [13:0] i_mul76_load_input08_bs1_merged_bit_select_c;
    reg [0:0] redist0_i_unnamed_load_input014_q_1_q;
    reg [0:0] redist1_i_unnamed_load_input014_q_4_q;
    reg [0:0] redist1_i_unnamed_load_input014_q_4_delay_0;
    reg [0:0] redist1_i_unnamed_load_input014_q_4_delay_1;
    reg [0:0] redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q;
    reg [0:0] redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q;
    reg [0:0] redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
    reg [0:0] redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
    reg [0:0] redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_q;
    reg [0:0] redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_0;
    reg [0:0] redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_1;
    reg [0:0] redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_2;
    reg [0:0] redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_q;
    reg [0:0] redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_0;
    reg [0:0] redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_1;
    reg [0:0] redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_2;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_q;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_0;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_1;
    reg [0:0] redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_2;
    reg [0:0] redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_q;
    reg [0:0] redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_0;
    reg [0:0] redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_1;
    reg [0:0] redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_2;
    reg [0:0] redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_q;
    reg [0:0] redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_0;
    reg [0:0] redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_1;
    reg [0:0] redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_2;
    reg [0:0] redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_q;
    reg [0:0] redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_0;
    reg [0:0] redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_1;
    reg [0:0] redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_2;
    reg [0:0] redist16_sync_together84_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist16_sync_together84_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist16_sync_together84_aunroll_x_in_i_valid_3_delay_1;
    reg [31:0] redist17_bgTrunc_i_mul76_load_input08_sel_x_b_1_q;
    reg [31:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0_q;
    wire redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_reset0;
    wire [31:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ia;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_aa;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ab;
    wire [31:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_iq;
    wire [31:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_q;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_i;
    reg [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_cmpReg_q;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_notEnable_q;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena_q;
    wire [0:0] redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_enaAnd_q;
    reg [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0_q;
    wire redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_reset0;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ia;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_aa;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ab;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_iq;
    wire [31:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_i;
    reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_cmpReg_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_notEnable_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena_q;
    wire [0:0] redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_enaAnd_q;
    reg [31:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0_q;
    wire redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_reset0;
    wire [31:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ia;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_aa;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ab;
    wire [31:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_iq;
    wire [31:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_q;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_q;
    (* preserve *) reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_i;
    reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_cmpReg_q;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_notEnable_q;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena_q;
    wire [0:0] redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_enaAnd_q;
    wire redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_reset0;
    wire [31:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ia;
    wire [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_aa;
    wire [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ab;
    wire [31:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_iq;
    wire [31:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_q;
    wire [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i;
    (* preserve *) reg redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_eq;
    reg [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_wraddr_q;
    wire [1:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_last_q;
    wire [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmpReg_q;
    wire [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_notEnable_q;
    wire [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena_q;
    wire [0:0] redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_enaAnd_q;
    wire redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_reset0;
    wire [31:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ia;
    wire [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_aa;
    wire [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ab;
    wire [31:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_iq;
    wire [31:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_q;
    wire [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i;
    (* preserve *) reg redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_eq;
    reg [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_wraddr_q;
    wire [1:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_last_q;
    wire [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmpReg_q;
    wire [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_notEnable_q;
    wire [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena_q;
    wire [0:0] redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_enaAnd_q;
    wire redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_reset0;
    wire [31:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ia;
    wire [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_aa;
    wire [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ab;
    wire [31:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_iq;
    wire [31:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_q;
    wire [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_q;
    (* preserve *) reg [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i;
    (* preserve *) reg redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_eq;
    reg [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_wraddr_q;
    wire [1:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_last_q;
    wire [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmpReg_q;
    wire [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_notEnable_q;
    wire [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena_q;
    wire [0:0] redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist16_sync_together84_aunroll_x_in_i_valid_3(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together84_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist16_sync_together84_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist16_sync_together84_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist16_sync_together84_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist16_sync_together84_aunroll_x_in_i_valid_3_delay_1 <= redist16_sync_together84_aunroll_x_in_i_valid_3_delay_0;
            redist16_sync_together84_aunroll_x_in_i_valid_3_q <= redist16_sync_together84_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,78)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_notEnable(LOGICAL,161)
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_nor(LOGICAL,162)
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_nor_q = ~ (redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_notEnable_q | redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena_q);

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_cmpReg(REG,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena(REG,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_nor_q == 1'b1)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena_q <= $unsigned(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_cmpReg_q);
        end
    end

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_enaAnd(LOGICAL,164)
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_enaAnd_q = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_sticky_ena_q & VCC_q;

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt(COUNTER,158)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_i <= $unsigned(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_q = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_i[0:0];

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_wraddr(REG,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_wraddr_q <= $unsigned(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_q);
        end
    end

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem(DUALMEM,157)
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ia = $unsigned(in_c0_eni13_6_tpl);
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_aa = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_wraddr_q;
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ab = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_rdcnt_q;
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_dmem (
        .clocken1(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_aa),
        .data_a(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_ab),
        .q_b(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_q = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_iq[31:0];

    // redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0_q <= $unsigned(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_mem_q);
        end
    end

    // redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_0 <= '0;
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_1 <= '0;
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_2 <= '0;
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_0 <= $unsigned(in_c0_eni13_5_tpl);
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_1 <= redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_0;
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_2 <= redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_1;
            redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_q <= redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_delay_2;
        end
    end

    // redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_0 <= '0;
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_1 <= '0;
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_2 <= '0;
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_q <= '0;
        end
        else
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_0 <= $unsigned(in_c0_eni13_4_tpl);
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_1 <= redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_0;
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_2 <= redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_1;
            redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_q <= redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_delay_2;
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_notEnable(LOGICAL,152)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_nor(LOGICAL,153)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_nor_q = ~ (redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_notEnable_q | redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena_q);

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_cmpReg(REG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_nor_q == 1'b1)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_cmpReg_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_enaAnd(LOGICAL,155)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_enaAnd_q = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_sticky_ena_q & VCC_q;

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt(COUNTER,149)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_i <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_q = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_i[0:0];

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_wraddr(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_wraddr_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_q);
        end
    end

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem(DUALMEM,148)
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ia = $unsigned(in_c0_eni13_3_tpl);
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_aa = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_wraddr_q;
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ab = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_rdcnt_q;
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_dmem (
        .clocken1(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_aa),
        .data_a(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_ab),
        .q_b(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_q = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_iq[31:0];

    // redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0_q <= $unsigned(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_mem_q);
        end
    end

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_notEnable(LOGICAL,143)
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_nor(LOGICAL,144)
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_nor_q = ~ (redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_notEnable_q | redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena_q);

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_cmpReg(REG,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena(REG,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_nor_q == 1'b1)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena_q <= $unsigned(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_cmpReg_q);
        end
    end

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_enaAnd(LOGICAL,146)
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_enaAnd_q = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_sticky_ena_q & VCC_q;

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt(COUNTER,140)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_i <= $unsigned(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_q = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_i[0:0];

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_wraddr(REG,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_wraddr_q <= $unsigned(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_q);
        end
    end

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem(DUALMEM,139)
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ia = $unsigned(in_c0_eni13_2_tpl);
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_aa = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_wraddr_q;
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ab = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_rdcnt_q;
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_dmem (
        .clocken1(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_aa),
        .data_a(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_ab),
        .q_b(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_q = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_iq[31:0];

    // redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0_q <= $unsigned(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_mem_q);
        end
    end

    // redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_0 <= '0;
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_1 <= '0;
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_2 <= '0;
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_q <= '0;
        end
        else
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_0 <= $unsigned(in_c0_eni13_7_tpl);
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_1 <= redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_0;
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_2 <= redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_1;
            redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_q <= redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_delay_2;
        end
    end

    // redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_0 <= '0;
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_1 <= '0;
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_2 <= '0;
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_q <= '0;
        end
        else
        begin
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_0 <= $unsigned(in_c0_eni13_13_tpl);
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_1 <= redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_0;
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_2 <= redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_1;
            redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_q <= redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_delay_2;
        end
    end

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_notEnable(LOGICAL,191)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_nor(LOGICAL,192)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_nor_q = ~ (redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_notEnable_q | redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena_q);

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_last(CONSTANT,188)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmp(LOGICAL,189)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmp_q = $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_last_q == redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmpReg(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmpReg_q <= $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmp_q);
        end
    end

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_nor_q == 1'b1)
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena_q <= $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_cmpReg_q);
        end
    end

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_enaAnd(LOGICAL,194)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_enaAnd_q = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_sticky_ena_q & VCC_q;

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt(COUNTER,186)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i <= 2'd0;
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i == 2'd1)
            begin
                redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i <= $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i <= $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_q = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_i[1:0];

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_wraddr(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_wraddr_q <= $unsigned(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_q);
        end
    end

    // redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem(DUALMEM,185)
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ia = $unsigned(in_c0_eni13_12_tpl);
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_aa = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_wraddr_q;
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ab = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_rdcnt_q;
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_dmem (
        .clocken1(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_aa),
        .data_a(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_ab),
        .q_b(redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_q = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_iq[31:0];

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_notEnable(LOGICAL,181)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_nor(LOGICAL,182)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_nor_q = ~ (redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_notEnable_q | redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena_q);

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_last(CONSTANT,178)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmp(LOGICAL,179)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmp_q = $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_last_q == redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmpReg(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmpReg_q <= $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmp_q);
        end
    end

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_nor_q == 1'b1)
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena_q <= $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_cmpReg_q);
        end
    end

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_enaAnd(LOGICAL,184)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_enaAnd_q = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_sticky_ena_q & VCC_q;

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt(COUNTER,176)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i <= 2'd0;
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i == 2'd1)
            begin
                redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i <= $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i <= $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_q = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_i[1:0];

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_wraddr(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_wraddr_q <= $unsigned(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_q);
        end
    end

    // redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem(DUALMEM,175)
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ia = $unsigned(in_c0_eni13_11_tpl);
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_aa = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_wraddr_q;
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ab = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_rdcnt_q;
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_dmem (
        .clocken1(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_aa),
        .data_a(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_ab),
        .q_b(redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_q = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_iq[31:0];

    // redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_0 <= '0;
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_1 <= '0;
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_2 <= '0;
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_q <= '0;
        end
        else
        begin
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_0 <= $unsigned(in_c0_eni13_10_tpl);
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_1 <= redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_0;
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_2 <= redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_1;
            redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_q <= redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_delay_2;
        end
    end

    // redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_0 <= '0;
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_1 <= '0;
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_2 <= '0;
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_q <= '0;
        end
        else
        begin
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_0 <= $unsigned(in_c0_eni13_9_tpl);
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_1 <= redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_0;
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_2 <= redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_1;
            redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_q <= redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_delay_2;
        end
    end

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_notEnable(LOGICAL,171)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_nor(LOGICAL,172)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_nor_q = ~ (redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_notEnable_q | redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena_q);

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_last(CONSTANT,168)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_last_q = $unsigned(2'b01);

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmp(LOGICAL,169)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmp_q = $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_last_q == redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_q ? 1'b1 : 1'b0);

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmpReg(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmpReg_q <= $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmp_q);
        end
    end

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_nor_q == 1'b1)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena_q <= $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_cmpReg_q);
        end
    end

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_enaAnd(LOGICAL,174)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_enaAnd_q = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_sticky_ena_q & VCC_q;

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt(COUNTER,166)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i <= 2'd0;
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i == 2'd1)
            begin
                redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_eq <= 1'b0;
            end
            if (redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_eq == 1'b1)
            begin
                redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i <= $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i <= $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_q = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_i[1:0];

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_wraddr(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_wraddr_q <= $unsigned(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_q);
        end
    end

    // redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem(DUALMEM,165)
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ia = $unsigned(in_c0_eni13_8_tpl);
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_aa = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_wraddr_q;
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ab = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_rdcnt_q;
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_dmem (
        .clocken1(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_reset0),
        .clock1(clock),
        .address_a(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_aa),
        .data_a(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_ab),
        .q_b(redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_q = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_iq[31:0];

    // valid_fanout_reg14(REG,92)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg15(REG,93)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp85110_push44_load_input031(BLACKBOX,59)@5
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp85110_push44_load_input00 thei_llvm_fpga_push_i1_notcmp85110_push44_load_input031 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q <= $unsigned(in_c0_eni13_1_tpl);
        end
    end

    // redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= '0;
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= '0;
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_0 <= $unsigned(redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q);
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_1 <= redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_0;
            redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q <= redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030(BLACKBOX,51)@5
    // out out_feedback_stall_out_44@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input00 thei_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030 (
        .in_data_in(redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp85110_push44_load_input031_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,90)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg13(REG,91)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029(BLACKBOX,63)@5
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    cnn_top_i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input00 thei_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029 (
        .in_data_in(i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028(BLACKBOX,54)@5
    // out out_feedback_stall_out_43@20000000
    cnn_top_i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input00 thei_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028 (
        .in_data_in(redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_kh_071_pop21108_push43_load_input029_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,88)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg11(REG,89)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp89105_push42_load_input027(BLACKBOX,60)@5
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp89105_push42_load_input00 thei_llvm_fpga_push_i1_notcmp89105_push42_load_input027 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026(BLACKBOX,52)@5
    // out out_feedback_stall_out_42@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input00 thei_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026 (
        .in_data_in(redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_notcmp89105_push42_load_input027_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,86)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg9(REG,87)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i1_push41_load_input025(BLACKBOX,62)@5
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    cnn_top_i_llvm_fpga_push_i1_push41_load_input00 thei_llvm_fpga_push_i1_push41_load_input025 (
        .in_data_in(i_llvm_fpga_pop_i1_pop41_load_input024_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_pop41_load_input024_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_push41_load_input025_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_push41_load_input025_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop41_load_input024(BLACKBOX,53)@5
    // out out_feedback_stall_out_41@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop41_load_input00 thei_llvm_fpga_pop_i1_pop41_load_input024 (
        .in_data_in(redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_push41_load_input025_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_push41_load_input025_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop41_load_input024_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_pop41_load_input024_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,84)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg7(REG,85)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_li_073100_push40_load_input023(BLACKBOX,65)@5
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    cnn_top_i_llvm_fpga_push_i32_li_073100_push40_load_input00 thei_llvm_fpga_push_i32_li_073100_push40_load_input023 (
        .in_data_in(i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_073100_pop40_load_input022(BLACKBOX,56)@5
    // out out_feedback_stall_out_40@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_073100_pop40_load_input00 thei_llvm_fpga_pop_i32_li_073100_pop40_load_input022 (
        .in_data_in(redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_li_073100_push40_load_input023_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp81_load_input016(LOGICAL,69)@5
    assign i_notcmp81_load_input016_q = redist1_i_unnamed_load_input014_q_4_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03(BLACKBOX,49)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000nput049_load_input00 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_158(CONSTANT,39)
    assign c_i33_158_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next7_load_input018(ADD,45)@1
    assign i_fpga_indvars_iv_next7_load_input018_a = {1'b0, i_fpga_indvars_iv6_replace_phi_load_input05_q};
    assign i_fpga_indvars_iv_next7_load_input018_b = {1'b0, c_i33_158_q};
    assign i_fpga_indvars_iv_next7_load_input018_o = $unsigned(i_fpga_indvars_iv_next7_load_input018_a) + $unsigned(i_fpga_indvars_iv_next7_load_input018_b);
    assign i_fpga_indvars_iv_next7_load_input018_q = i_fpga_indvars_iv_next7_load_input018_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next7_load_input018_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next7_load_input018_sel_x_b = i_fpga_indvars_iv_next7_load_input018_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019(BLACKBOX,67)@1
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000_push38_load_input00 thei_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next7_load_input018_sel_x_b),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(i_unnamed_load_input014_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef55(CONSTANT,40)
    assign c_i33_undef55_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04(BLACKBOX,58)@1
    // out out_feedback_stall_out_38@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input00 thei_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04 (
        .in_data_in(c_i33_undef55_q),
        .in_dir(in_c0_eni13_1_tpl),
        .in_feedback_in_38(i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i33_fpga_indvars_iv6_push38_load_input019_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv6_replace_phi_load_input05(MUX,44)@1
    assign i_fpga_indvars_iv6_replace_phi_load_input05_s = in_c0_eni13_1_tpl;
    always @(i_fpga_indvars_iv6_replace_phi_load_input05_s or i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03_out_dest_data_out_14_0)
    begin
        unique case (i_fpga_indvars_iv6_replace_phi_load_input05_s)
            1'b0 : i_fpga_indvars_iv6_replace_phi_load_input05_q = i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop38_load_input04_out_data_out;
            1'b1 : i_fpga_indvars_iv6_replace_phi_load_input05_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_input049_load_input03_out_dest_data_out_14_0;
            default : i_fpga_indvars_iv6_replace_phi_load_input05_q = 33'b0;
        endcase
    end

    // i_exitcond8_load_input011_cmp_nsign(LOGICAL,99)@1
    assign i_exitcond8_load_input011_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv6_replace_phi_load_input05_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input050_load_input013(BLACKBOX,47)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput050_load_input00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input050_load_input013 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input050_load_input013_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input014(LOGICAL,70)@1
    assign i_unnamed_load_input014_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input050_load_input013_out_dest_data_out_21_0 & i_exitcond8_load_input011_cmp_nsign_q;

    // redist0_i_unnamed_load_input014_q_1(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input014_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input014_q_1_q <= $unsigned(i_unnamed_load_input014_q);
        end
    end

    // redist1_i_unnamed_load_input014_q_4(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_load_input014_q_4_delay_0 <= '0;
            redist1_i_unnamed_load_input014_q_4_delay_1 <= '0;
            redist1_i_unnamed_load_input014_q_4_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_load_input014_q_4_delay_0 <= $unsigned(redist0_i_unnamed_load_input014_q_1_q);
            redist1_i_unnamed_load_input014_q_4_delay_1 <= redist1_i_unnamed_load_input014_q_4_delay_0;
            redist1_i_unnamed_load_input014_q_4_q <= redist1_i_unnamed_load_input014_q_4_delay_1;
        end
    end

    // valid_fanout_reg1(REG,79)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06(BLACKBOX,48)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000tract34_load_input00 thei_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul76_load_input08_bs2_merged_bit_select(BITSELECT,118)@2
    assign i_mul76_load_input08_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06_out_dest_data_out_4_0[17:0];
    assign i_mul76_load_input08_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract34_load_input06_out_dest_data_out_4_0[31:18];

    // valid_fanout_reg2(REG,80)@1 + 1
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

    // valid_fanout_reg5(REG,83)@1 + 1
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

    // c_i32_159(CONSTANT,38)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc93_load_input020(ADD,46)@2
    assign i_inc93_load_input020_a = {1'b0, i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_data_out};
    assign i_inc93_load_input020_b = {1'b0, c_i32_159_q};
    assign i_inc93_load_input020_o = $unsigned(i_inc93_load_input020_a) + $unsigned(i_inc93_load_input020_b);
    assign i_inc93_load_input020_q = i_inc93_load_input020_o[32:0];

    // bgTrunc_i_inc93_load_input020_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc93_load_input020_sel_x_b = i_inc93_load_input020_q[31:0];

    // i_llvm_fpga_push_i32_tcc_066_push39_load_input021(BLACKBOX,66)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    cnn_top_i_llvm_fpga_push_i32_tcc_066_push39_load_input00 thei_llvm_fpga_push_i32_tcc_066_push39_load_input021 (
        .in_data_in(bgTrunc_i_inc93_load_input020_sel_x_b),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist0_i_unnamed_load_input014_q_1_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_056(CONSTANT,37)
    assign c_i32_056_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07(BLACKBOX,57)@2
    // out out_feedback_stall_out_39@20000000
    cnn_top_i_llvm_fpga_pop_i32_tcc_066_pop39_load_input00 thei_llvm_fpga_pop_i32_tcc_066_pop39_load_input07 (
        .in_data_in(c_i32_056_q),
        .in_dir(redist2_sync_together84_aunroll_x_in_c0_eni13_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_tcc_066_push39_load_input021_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul76_load_input08_bs1_merged_bit_select(BITSELECT,119)@2
    assign i_mul76_load_input08_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_data_out[17:0];
    assign i_mul76_load_input08_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_tcc_066_pop39_load_input07_out_data_out[31:18];

    // i_mul76_load_input08_ma3_cma(CHAINMULTADD,117)@2 + 2
    assign i_mul76_load_input08_ma3_cma_reset = ~ (resetn);
    assign i_mul76_load_input08_ma3_cma_ena0 = 1'b1;
    assign i_mul76_load_input08_ma3_cma_ena1 = i_mul76_load_input08_ma3_cma_ena0;
    assign i_mul76_load_input08_ma3_cma_p[0] = i_mul76_load_input08_ma3_cma_a0[0] * i_mul76_load_input08_ma3_cma_c0[0];
    assign i_mul76_load_input08_ma3_cma_p[1] = i_mul76_load_input08_ma3_cma_a0[1] * i_mul76_load_input08_ma3_cma_c0[1];
    assign i_mul76_load_input08_ma3_cma_u[0] = {1'b0, i_mul76_load_input08_ma3_cma_p[0][31:0]};
    assign i_mul76_load_input08_ma3_cma_u[1] = {1'b0, i_mul76_load_input08_ma3_cma_p[1][31:0]};
    assign i_mul76_load_input08_ma3_cma_w[0] = i_mul76_load_input08_ma3_cma_u[0] + i_mul76_load_input08_ma3_cma_u[1];
    assign i_mul76_load_input08_ma3_cma_x[0] = i_mul76_load_input08_ma3_cma_w[0];
    assign i_mul76_load_input08_ma3_cma_y[0] = i_mul76_load_input08_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_ma3_cma_a0 <= '{default: '0};
            i_mul76_load_input08_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_ma3_cma_ena0 == 1'b1)
            begin
                i_mul76_load_input08_ma3_cma_a0[0] <= i_mul76_load_input08_bs1_merged_bit_select_c;
                i_mul76_load_input08_ma3_cma_a0[1] <= i_mul76_load_input08_bs2_merged_bit_select_c;
                i_mul76_load_input08_ma3_cma_c0[0] <= i_mul76_load_input08_bs2_merged_bit_select_b;
                i_mul76_load_input08_ma3_cma_c0[1] <= i_mul76_load_input08_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_ma3_cma_ena1 == 1'b1)
            begin
                i_mul76_load_input08_ma3_cma_s[0] <= i_mul76_load_input08_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul76_load_input08_ma3_cma_delay ( .xin(i_mul76_load_input08_ma3_cma_s[0]), .xout(i_mul76_load_input08_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul76_load_input08_ma3_cma_q = $unsigned(i_mul76_load_input08_ma3_cma_qq[32:0]);

    // i_mul76_load_input08_sums_align_1(BITSHIFT,112)@4
    assign i_mul76_load_input08_sums_align_1_qint = { i_mul76_load_input08_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul76_load_input08_sums_align_1_q = i_mul76_load_input08_sums_align_1_qint[50:0];

    // i_mul76_load_input08_im8_cma(CHAINMULTADD,116)@2 + 2
    assign i_mul76_load_input08_im8_cma_reset = ~ (resetn);
    assign i_mul76_load_input08_im8_cma_ena0 = 1'b1;
    assign i_mul76_load_input08_im8_cma_ena1 = i_mul76_load_input08_im8_cma_ena0;
    assign i_mul76_load_input08_im8_cma_p[0] = i_mul76_load_input08_im8_cma_a0[0] * i_mul76_load_input08_im8_cma_c0[0];
    assign i_mul76_load_input08_im8_cma_u[0] = i_mul76_load_input08_im8_cma_p[0][27:0];
    assign i_mul76_load_input08_im8_cma_w[0] = i_mul76_load_input08_im8_cma_u[0];
    assign i_mul76_load_input08_im8_cma_x[0] = i_mul76_load_input08_im8_cma_w[0];
    assign i_mul76_load_input08_im8_cma_y[0] = i_mul76_load_input08_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_im8_cma_a0 <= '{default: '0};
            i_mul76_load_input08_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_im8_cma_ena0 == 1'b1)
            begin
                i_mul76_load_input08_im8_cma_a0[0] <= i_mul76_load_input08_bs1_merged_bit_select_c;
                i_mul76_load_input08_im8_cma_c0[0] <= i_mul76_load_input08_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_im8_cma_ena1 == 1'b1)
            begin
                i_mul76_load_input08_im8_cma_s[0] <= i_mul76_load_input08_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul76_load_input08_im8_cma_delay ( .xin(i_mul76_load_input08_im8_cma_s[0]), .xout(i_mul76_load_input08_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul76_load_input08_im8_cma_q = $unsigned(i_mul76_load_input08_im8_cma_qq[27:0]);

    // i_mul76_load_input08_im0_cma(CHAINMULTADD,115)@2 + 2
    assign i_mul76_load_input08_im0_cma_reset = ~ (resetn);
    assign i_mul76_load_input08_im0_cma_ena0 = 1'b1;
    assign i_mul76_load_input08_im0_cma_ena1 = i_mul76_load_input08_im0_cma_ena0;
    assign i_mul76_load_input08_im0_cma_p[0] = i_mul76_load_input08_im0_cma_a0[0] * i_mul76_load_input08_im0_cma_c0[0];
    assign i_mul76_load_input08_im0_cma_u[0] = i_mul76_load_input08_im0_cma_p[0][35:0];
    assign i_mul76_load_input08_im0_cma_w[0] = i_mul76_load_input08_im0_cma_u[0];
    assign i_mul76_load_input08_im0_cma_x[0] = i_mul76_load_input08_im0_cma_w[0];
    assign i_mul76_load_input08_im0_cma_y[0] = i_mul76_load_input08_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_im0_cma_a0 <= '{default: '0};
            i_mul76_load_input08_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_im0_cma_ena0 == 1'b1)
            begin
                i_mul76_load_input08_im0_cma_a0[0] <= i_mul76_load_input08_bs1_merged_bit_select_b;
                i_mul76_load_input08_im0_cma_c0[0] <= i_mul76_load_input08_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul76_load_input08_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul76_load_input08_im0_cma_ena1 == 1'b1)
            begin
                i_mul76_load_input08_im0_cma_s[0] <= i_mul76_load_input08_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul76_load_input08_im0_cma_delay ( .xin(i_mul76_load_input08_im0_cma_s[0]), .xout(i_mul76_load_input08_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul76_load_input08_im0_cma_q = $unsigned(i_mul76_load_input08_im0_cma_qq[35:0]);

    // i_mul76_load_input08_sums_join_0(BITJOIN,111)@4
    assign i_mul76_load_input08_sums_join_0_q = {i_mul76_load_input08_im8_cma_q, i_mul76_load_input08_im0_cma_q};

    // i_mul76_load_input08_sums_result_add_0_0(ADD,114)@4
    assign i_mul76_load_input08_sums_result_add_0_0_a = {1'b0, i_mul76_load_input08_sums_join_0_q};
    assign i_mul76_load_input08_sums_result_add_0_0_b = {14'b00000000000000, i_mul76_load_input08_sums_align_1_q};
    assign i_mul76_load_input08_sums_result_add_0_0_o = $unsigned(i_mul76_load_input08_sums_result_add_0_0_a) + $unsigned(i_mul76_load_input08_sums_result_add_0_0_b);
    assign i_mul76_load_input08_sums_result_add_0_0_q = i_mul76_load_input08_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul76_load_input08_sel_x(BITSELECT,5)@4
    assign bgTrunc_i_mul76_load_input08_sel_x_in = i_mul76_load_input08_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul76_load_input08_sel_x_b = bgTrunc_i_mul76_load_input08_sel_x_in[31:0];

    // redist17_bgTrunc_i_mul76_load_input08_sel_x_b_1(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_mul76_load_input08_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_mul76_load_input08_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul76_load_input08_sel_x_b);
        end
    end

    // i_add77_load_input010(ADD,42)@5
    assign i_add77_load_input010_a = {1'b0, redist17_bgTrunc_i_mul76_load_input08_sel_x_b_1_q};
    assign i_add77_load_input010_b = {1'b0, i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_data_out};
    assign i_add77_load_input010_o = $unsigned(i_add77_load_input010_a) + $unsigned(i_add77_load_input010_b);
    assign i_add77_load_input010_q = i_add77_load_input010_o[32:0];

    // bgTrunc_i_add77_load_input010_sel_x(BITSELECT,2)@5
    assign bgTrunc_i_add77_load_input010_sel_x_b = i_add77_load_input010_q[31:0];

    // valid_fanout_reg3(REG,81)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg4(REG,82)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist16_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015(BLACKBOX,64)@5
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    cnn_top_i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input00 thei_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015 (
        .in_data_in(i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_unnamed_load_input063(redist1_i_unnamed_load_input014_q_4_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09(BLACKBOX,55)@5
    // out out_feedback_stall_out_45@20000000
    cnn_top_i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input00 thei_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09 (
        .in_data_in(redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0_q),
        .in_dir(redist3_sync_together84_aunroll_x_in_c0_eni13_1_tpl_4_q),
        .in_feedback_in_45(i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i32_kw_068_pop33112_push45_load_input015_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,7)@5
    assign out_c0_exi21_0_tpl = GND_q;
    assign out_c0_exi21_1_tpl = i_llvm_fpga_pop_i32_kw_068_pop33112_pop45_load_input09_out_data_out;
    assign out_c0_exi21_2_tpl = bgTrunc_i_add77_load_input010_sel_x_b;
    assign out_c0_exi21_3_tpl = redist1_i_unnamed_load_input014_q_4_q;
    assign out_c0_exi21_4_tpl = i_notcmp81_load_input016_q;
    assign out_c0_exi21_5_tpl = i_llvm_fpga_pop_i32_li_073100_pop40_load_input022_out_data_out;
    assign out_c0_exi21_6_tpl = i_llvm_fpga_pop_i1_pop41_load_input024_out_data_out;
    assign out_c0_exi21_7_tpl = i_llvm_fpga_pop_i1_notcmp89105_pop42_load_input026_out_data_out;
    assign out_c0_exi21_8_tpl = i_llvm_fpga_pop_i32_kh_071_pop21108_pop43_load_input028_out_data_out;
    assign out_c0_exi21_9_tpl = i_llvm_fpga_pop_i1_notcmp85110_pop44_load_input030_out_data_out;
    assign out_c0_exi21_10_tpl = redist10_sync_together84_aunroll_x_in_c0_eni13_8_tpl_4_mem_q;
    assign out_c0_exi21_11_tpl = redist11_sync_together84_aunroll_x_in_c0_eni13_9_tpl_4_q;
    assign out_c0_exi21_12_tpl = redist12_sync_together84_aunroll_x_in_c0_eni13_10_tpl_4_q;
    assign out_c0_exi21_13_tpl = redist13_sync_together84_aunroll_x_in_c0_eni13_11_tpl_4_mem_q;
    assign out_c0_exi21_14_tpl = redist14_sync_together84_aunroll_x_in_c0_eni13_12_tpl_4_mem_q;
    assign out_c0_exi21_15_tpl = redist15_sync_together84_aunroll_x_in_c0_eni13_13_tpl_4_q;
    assign out_c0_exi21_16_tpl = redist9_sync_together84_aunroll_x_in_c0_eni13_7_tpl_4_q;
    assign out_c0_exi21_17_tpl = redist4_sync_together84_aunroll_x_in_c0_eni13_2_tpl_4_outputreg0_q;
    assign out_c0_exi21_18_tpl = redist5_sync_together84_aunroll_x_in_c0_eni13_3_tpl_4_outputreg0_q;
    assign out_c0_exi21_19_tpl = redist6_sync_together84_aunroll_x_in_c0_eni13_4_tpl_4_q;
    assign out_c0_exi21_20_tpl = redist7_sync_together84_aunroll_x_in_c0_eni13_5_tpl_4_q;
    assign out_c0_exi21_21_tpl = redist8_sync_together84_aunroll_x_in_c0_eni13_6_tpl_4_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input020 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond83_load_input017(BLACKBOX,61)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond83_load_input00 thei_llvm_fpga_push_i1_notexitcond83_load_input017 (
        .in_data_in(i_unnamed_load_input014_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going82_load_input02_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going82_load_input02(BLACKBOX,50)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going82_load_input00 thei_llvm_fpga_pipeline_keep_going82_load_input02 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond83_load_input017_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going82_load_input02_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going82_load_input02_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,41)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input02_exiting_valid_out = i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going82_load_input02_exiting_stall_out = i_llvm_fpga_pipeline_keep_going82_load_input02_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,73)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going82_load_input02_out_pipeline_valid_out;

endmodule
