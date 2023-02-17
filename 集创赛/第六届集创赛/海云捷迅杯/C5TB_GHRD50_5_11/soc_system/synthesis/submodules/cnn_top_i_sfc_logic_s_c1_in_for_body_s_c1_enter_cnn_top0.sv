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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body_s_c1_enter_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body_s_c1_enter_cnn_top0 (
    output wire [31:0] out_intel_reserved_ffwd_11_0,
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
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn_top1,
    output wire [0:0] out_unnamed_cnn_top26_0_tpl,
    input wire [0:0] in_c1_eni20_0_tpl,
    input wire [0:0] in_c1_eni20_1_tpl,
    input wire [0:0] in_c1_eni20_2_tpl,
    input wire [31:0] in_c1_eni20_3_tpl,
    input wire [0:0] in_c1_eni20_4_tpl,
    input wire [0:0] in_c1_eni20_5_tpl,
    input wire [0:0] in_c1_eni20_6_tpl,
    input wire [0:0] in_c1_eni20_7_tpl,
    input wire [0:0] in_c1_eni20_8_tpl,
    input wire [0:0] in_c1_eni20_9_tpl,
    input wire [0:0] in_c1_eni20_10_tpl,
    input wire [0:0] in_c1_eni20_11_tpl,
    input wire [0:0] in_c1_eni20_12_tpl,
    input wire [0:0] in_c1_eni20_13_tpl,
    input wire [0:0] in_c1_eni20_14_tpl,
    input wire [0:0] in_c1_eni20_15_tpl,
    input wire [0:0] in_c1_eni20_16_tpl,
    input wire [0:0] in_c1_eni20_17_tpl,
    input wire [0:0] in_c1_eni20_18_tpl,
    input wire [0:0] in_c1_eni20_19_tpl,
    input wire [0:0] in_c1_eni20_20_tpl,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_undef115_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top10_cnn_top50_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top11_cnn_top51_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top12_cnn_top52_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top13_cnn_top53_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top14_cnn_top54_out_intel_reserved_ffwd_9_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top15_cnn_top55_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top16_cnn_top56_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top17_cnn_top57_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top18_cnn_top58_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top19_cnn_top59_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top20_cnn_top60_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top21_cnn_top61_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top22_cnn_top62_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top23_cnn_top63_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top24_cnn_top64_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top25_cnn_top65_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_feedback_stall_out_10;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_valid_out_10;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_valid_out_22;
    wire [31:0] i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_valid_out_21;
    wire [0:0] i_spec_select81_cnn_top9_s;
    reg [31:0] i_spec_select81_cnn_top9_q;
    wire [0:0] i_spec_select82_cnn_top12_s;
    reg [31:0] i_spec_select82_cnn_top12_q;
    wire [0:0] i_spec_select83_cnn_top15_s;
    reg [31:0] i_spec_select83_cnn_top15_q;
    wire [0:0] i_spec_select84_cnn_top18_s;
    reg [31:0] i_spec_select84_cnn_top18_q;
    wire [0:0] i_spec_select85_cnn_top21_s;
    reg [31:0] i_spec_select85_cnn_top21_q;
    wire [0:0] i_spec_select86_cnn_top24_s;
    reg [31:0] i_spec_select86_cnn_top24_q;
    wire [0:0] i_spec_select87_cnn_top27_s;
    reg [31:0] i_spec_select87_cnn_top27_q;
    wire [0:0] i_spec_select88_cnn_top30_s;
    reg [31:0] i_spec_select88_cnn_top30_q;
    wire [0:0] i_spec_select89_cnn_top33_s;
    reg [31:0] i_spec_select89_cnn_top33_q;
    wire [0:0] i_spec_select90_cnn_top36_s;
    reg [31:0] i_spec_select90_cnn_top36_q;
    wire [0:0] i_spec_select91_cnn_top39_s;
    reg [31:0] i_spec_select91_cnn_top39_q;
    wire [0:0] i_spec_select92_cnn_top42_s;
    reg [31:0] i_spec_select92_cnn_top42_q;
    wire [0:0] i_spec_select93_cnn_top45_s;
    reg [31:0] i_spec_select93_cnn_top45_q;
    wire [0:0] i_spec_select94_cnn_top48_s;
    reg [31:0] i_spec_select94_cnn_top48_q;
    wire [0:0] i_spec_select_cnn_top3_s;
    reg [31:0] i_spec_select_cnn_top3_q;
    wire [0:0] i_unnamed_cnn_top6_s;
    reg [31:0] i_unnamed_cnn_top6_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    reg [0:0] redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q;
    reg [0:0] redist1_sync_together148_aunroll_x_in_c1_eni20_2_tpl_1_q;
    reg [31:0] redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
    reg [0:0] redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q;
    reg [0:0] redist4_sync_together148_aunroll_x_in_c1_eni20_5_tpl_1_q;
    reg [0:0] redist5_sync_together148_aunroll_x_in_c1_eni20_6_tpl_1_q;
    reg [0:0] redist6_sync_together148_aunroll_x_in_c1_eni20_7_tpl_1_q;
    reg [0:0] redist7_sync_together148_aunroll_x_in_c1_eni20_8_tpl_1_q;
    reg [0:0] redist8_sync_together148_aunroll_x_in_c1_eni20_9_tpl_1_q;
    reg [0:0] redist9_sync_together148_aunroll_x_in_c1_eni20_10_tpl_1_q;
    reg [0:0] redist10_sync_together148_aunroll_x_in_c1_eni20_11_tpl_1_q;
    reg [0:0] redist11_sync_together148_aunroll_x_in_c1_eni20_12_tpl_1_q;
    reg [0:0] redist12_sync_together148_aunroll_x_in_c1_eni20_13_tpl_1_q;
    reg [0:0] redist13_sync_together148_aunroll_x_in_c1_eni20_14_tpl_1_q;
    reg [0:0] redist14_sync_together148_aunroll_x_in_c1_eni20_15_tpl_1_q;
    reg [0:0] redist15_sync_together148_aunroll_x_in_c1_eni20_16_tpl_1_q;
    reg [0:0] redist16_sync_together148_aunroll_x_in_c1_eni20_17_tpl_1_q;
    reg [0:0] redist17_sync_together148_aunroll_x_in_c1_eni20_18_tpl_1_q;
    reg [0:0] redist18_sync_together148_aunroll_x_in_c1_eni20_19_tpl_1_q;
    reg [0:0] redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg39(REG,173)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q <= $unsigned(in_c1_eni20_3_tpl);
        end
    end

    // valid_fanout_reg13(REG,147)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,148)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q <= $unsigned(in_c1_eni20_4_tpl);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22(BLACKBOX,103)@78
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_0 thei_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select85_cnn_top21_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q <= $unsigned(in_c1_eni20_1_tpl);
        end
    end

    // c_i32_undef115(CONSTANT,67)
    assign c_i32_undef115_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20(BLACKBOX,87)@78
    // out out_feedback_stall_out_18@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_0 thei_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_param_temp_sroa_14_0_push18_cnn_top22_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together148_aunroll_x_in_c1_eni20_10_tpl_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together148_aunroll_x_in_c1_eni20_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together148_aunroll_x_in_c1_eni20_10_tpl_1_q <= $unsigned(in_c1_eni20_10_tpl);
        end
    end

    // i_spec_select85_cnn_top21(MUX,120)@78
    assign i_spec_select85_cnn_top21_s = redist9_sync_together148_aunroll_x_in_c1_eni20_10_tpl_1_q;
    always @(i_spec_select85_cnn_top21_s or i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select85_cnn_top21_s)
            1'b0 : i_spec_select85_cnn_top21_q = i_llvm_fpga_pop_i32_param_temp_sroa_14_0_pop18_cnn_top20_out_data_out;
            1'b1 : i_spec_select85_cnn_top21_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select85_cnn_top21_q = 32'b0;
        endcase
    end

    // redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q <= $unsigned(in_c1_eni20_20_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top16_cnn_top56(BLACKBOX,74)@78
    // out out_intel_reserved_ffwd_11_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_16_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top16_cnn_top56 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_11_0(i_spec_select85_cnn_top21_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top16_cnn_top56_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top16_cnn_top56_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg40(REG,174)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,149)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,150)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25(BLACKBOX,104)@78
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_0 thei_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select86_cnn_top24_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23(BLACKBOX,88)@78
    // out out_feedback_stall_out_17@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_0 thei_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_param_temp_sroa_16_0_push17_cnn_top25_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together148_aunroll_x_in_c1_eni20_11_tpl_1(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together148_aunroll_x_in_c1_eni20_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together148_aunroll_x_in_c1_eni20_11_tpl_1_q <= $unsigned(in_c1_eni20_11_tpl);
        end
    end

    // i_spec_select86_cnn_top24(MUX,121)@78
    assign i_spec_select86_cnn_top24_s = redist10_sync_together148_aunroll_x_in_c1_eni20_11_tpl_1_q;
    always @(i_spec_select86_cnn_top24_s or i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select86_cnn_top24_s)
            1'b0 : i_spec_select86_cnn_top24_q = i_llvm_fpga_pop_i32_param_temp_sroa_16_0_pop17_cnn_top23_out_data_out;
            1'b1 : i_spec_select86_cnn_top24_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select86_cnn_top24_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top17_cnn_top57(BLACKBOX,75)@78
    // out out_intel_reserved_ffwd_12_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_17_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top17_cnn_top57 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_12_0(i_spec_select86_cnn_top24_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top17_cnn_top57_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top17_cnn_top57_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg41(REG,175)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,151)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,152)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28(BLACKBOX,105)@78
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_0 thei_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select87_cnn_top27_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26(BLACKBOX,89)@78
    // out out_feedback_stall_out_16@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_0 thei_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_param_temp_sroa_18_0_push16_cnn_top28_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together148_aunroll_x_in_c1_eni20_12_tpl_1(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together148_aunroll_x_in_c1_eni20_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together148_aunroll_x_in_c1_eni20_12_tpl_1_q <= $unsigned(in_c1_eni20_12_tpl);
        end
    end

    // i_spec_select87_cnn_top27(MUX,122)@78
    assign i_spec_select87_cnn_top27_s = redist11_sync_together148_aunroll_x_in_c1_eni20_12_tpl_1_q;
    always @(i_spec_select87_cnn_top27_s or i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select87_cnn_top27_s)
            1'b0 : i_spec_select87_cnn_top27_q = i_llvm_fpga_pop_i32_param_temp_sroa_18_0_pop16_cnn_top26_out_data_out;
            1'b1 : i_spec_select87_cnn_top27_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select87_cnn_top27_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top18_cnn_top58(BLACKBOX,76)@78
    // out out_intel_reserved_ffwd_13_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_18_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top18_cnn_top58 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_13_0(i_spec_select87_cnn_top27_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top18_cnn_top58_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,4)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top18_cnn_top58_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg42(REG,176)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,153)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,154)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31(BLACKBOX,106)@78
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_0 thei_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select88_cnn_top30_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29(BLACKBOX,90)@78
    // out out_feedback_stall_out_15@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_0 thei_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_param_temp_sroa_20_0_push15_cnn_top31_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together148_aunroll_x_in_c1_eni20_13_tpl_1(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together148_aunroll_x_in_c1_eni20_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together148_aunroll_x_in_c1_eni20_13_tpl_1_q <= $unsigned(in_c1_eni20_13_tpl);
        end
    end

    // i_spec_select88_cnn_top30(MUX,123)@78
    assign i_spec_select88_cnn_top30_s = redist12_sync_together148_aunroll_x_in_c1_eni20_13_tpl_1_q;
    always @(i_spec_select88_cnn_top30_s or i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select88_cnn_top30_s)
            1'b0 : i_spec_select88_cnn_top30_q = i_llvm_fpga_pop_i32_param_temp_sroa_20_0_pop15_cnn_top29_out_data_out;
            1'b1 : i_spec_select88_cnn_top30_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select88_cnn_top30_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top19_cnn_top59(BLACKBOX,77)@78
    // out out_intel_reserved_ffwd_14_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_19_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top19_cnn_top59 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_14_0(i_spec_select88_cnn_top30_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top19_cnn_top59_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top19_cnn_top59_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg43(REG,177)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,155)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,156)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34(BLACKBOX,107)@78
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_0 thei_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select89_cnn_top33_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32(BLACKBOX,91)@78
    // out out_feedback_stall_out_14@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_0 thei_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_param_temp_sroa_22_0_push14_cnn_top34_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together148_aunroll_x_in_c1_eni20_14_tpl_1(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together148_aunroll_x_in_c1_eni20_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together148_aunroll_x_in_c1_eni20_14_tpl_1_q <= $unsigned(in_c1_eni20_14_tpl);
        end
    end

    // i_spec_select89_cnn_top33(MUX,124)@78
    assign i_spec_select89_cnn_top33_s = redist13_sync_together148_aunroll_x_in_c1_eni20_14_tpl_1_q;
    always @(i_spec_select89_cnn_top33_s or i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select89_cnn_top33_s)
            1'b0 : i_spec_select89_cnn_top33_q = i_llvm_fpga_pop_i32_param_temp_sroa_22_0_pop14_cnn_top32_out_data_out;
            1'b1 : i_spec_select89_cnn_top33_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select89_cnn_top33_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top20_cnn_top60(BLACKBOX,78)@78
    // out out_intel_reserved_ffwd_15_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_20_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top20_cnn_top60 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_15_0(i_spec_select89_cnn_top33_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top20_cnn_top60_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,6)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top20_cnn_top60_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg44(REG,178)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,157)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,158)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37(BLACKBOX,108)@78
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_0 thei_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select90_cnn_top36_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35(BLACKBOX,92)@78
    // out out_feedback_stall_out_13@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_0 thei_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_param_temp_sroa_24_0_push13_cnn_top37_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together148_aunroll_x_in_c1_eni20_15_tpl_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together148_aunroll_x_in_c1_eni20_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together148_aunroll_x_in_c1_eni20_15_tpl_1_q <= $unsigned(in_c1_eni20_15_tpl);
        end
    end

    // i_spec_select90_cnn_top36(MUX,125)@78
    assign i_spec_select90_cnn_top36_s = redist14_sync_together148_aunroll_x_in_c1_eni20_15_tpl_1_q;
    always @(i_spec_select90_cnn_top36_s or i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select90_cnn_top36_s)
            1'b0 : i_spec_select90_cnn_top36_q = i_llvm_fpga_pop_i32_param_temp_sroa_24_0_pop13_cnn_top35_out_data_out;
            1'b1 : i_spec_select90_cnn_top36_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select90_cnn_top36_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top21_cnn_top61(BLACKBOX,79)@78
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_21_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top21_cnn_top61 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_16_0(i_spec_select90_cnn_top36_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top21_cnn_top61_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top21_cnn_top61_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg45(REG,179)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,159)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,160)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40(BLACKBOX,109)@78
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_0 thei_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select91_cnn_top39_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38(BLACKBOX,93)@78
    // out out_feedback_stall_out_12@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_0 thei_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_param_temp_sroa_26_0_push12_cnn_top40_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together148_aunroll_x_in_c1_eni20_16_tpl_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together148_aunroll_x_in_c1_eni20_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together148_aunroll_x_in_c1_eni20_16_tpl_1_q <= $unsigned(in_c1_eni20_16_tpl);
        end
    end

    // i_spec_select91_cnn_top39(MUX,126)@78
    assign i_spec_select91_cnn_top39_s = redist15_sync_together148_aunroll_x_in_c1_eni20_16_tpl_1_q;
    always @(i_spec_select91_cnn_top39_s or i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select91_cnn_top39_s)
            1'b0 : i_spec_select91_cnn_top39_q = i_llvm_fpga_pop_i32_param_temp_sroa_26_0_pop12_cnn_top38_out_data_out;
            1'b1 : i_spec_select91_cnn_top39_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select91_cnn_top39_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top22_cnn_top62(BLACKBOX,80)@78
    // out out_intel_reserved_ffwd_17_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_22_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top22_cnn_top62 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_17_0(i_spec_select91_cnn_top39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top22_cnn_top62_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,8)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top22_cnn_top62_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg46(REG,180)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,161)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,162)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43(BLACKBOX,110)@78
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_0 thei_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select92_cnn_top42_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41(BLACKBOX,94)@78
    // out out_feedback_stall_out_11@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_0 thei_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_param_temp_sroa_28_0_push11_cnn_top43_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together148_aunroll_x_in_c1_eni20_17_tpl_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together148_aunroll_x_in_c1_eni20_17_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together148_aunroll_x_in_c1_eni20_17_tpl_1_q <= $unsigned(in_c1_eni20_17_tpl);
        end
    end

    // i_spec_select92_cnn_top42(MUX,127)@78
    assign i_spec_select92_cnn_top42_s = redist16_sync_together148_aunroll_x_in_c1_eni20_17_tpl_1_q;
    always @(i_spec_select92_cnn_top42_s or i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select92_cnn_top42_s)
            1'b0 : i_spec_select92_cnn_top42_q = i_llvm_fpga_pop_i32_param_temp_sroa_28_0_pop11_cnn_top41_out_data_out;
            1'b1 : i_spec_select92_cnn_top42_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select92_cnn_top42_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top23_cnn_top63(BLACKBOX,81)@78
    // out out_intel_reserved_ffwd_18_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_23_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top23_cnn_top63 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_18_0(i_spec_select92_cnn_top42_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top23_cnn_top63_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top23_cnn_top63_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg47(REG,181)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,163)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,164)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46(BLACKBOX,111)@78
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_0 thei_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select93_cnn_top45_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44(BLACKBOX,95)@78
    // out out_feedback_stall_out_10@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_0 thei_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_param_temp_sroa_30_0_push10_cnn_top46_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together148_aunroll_x_in_c1_eni20_18_tpl_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together148_aunroll_x_in_c1_eni20_18_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together148_aunroll_x_in_c1_eni20_18_tpl_1_q <= $unsigned(in_c1_eni20_18_tpl);
        end
    end

    // i_spec_select93_cnn_top45(MUX,128)@78
    assign i_spec_select93_cnn_top45_s = redist17_sync_together148_aunroll_x_in_c1_eni20_18_tpl_1_q;
    always @(i_spec_select93_cnn_top45_s or i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select93_cnn_top45_s)
            1'b0 : i_spec_select93_cnn_top45_q = i_llvm_fpga_pop_i32_param_temp_sroa_30_0_pop10_cnn_top44_out_data_out;
            1'b1 : i_spec_select93_cnn_top45_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select93_cnn_top45_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top24_cnn_top64(BLACKBOX,82)@78
    // out out_intel_reserved_ffwd_19_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_24_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top24_cnn_top64 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_19_0(i_spec_select93_cnn_top45_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top24_cnn_top64_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top24_cnn_top64_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg48(REG,182)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,165)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,166)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49(BLACKBOX,112)@78
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_0 thei_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select94_cnn_top48_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47(BLACKBOX,96)@78
    // out out_feedback_stall_out_9@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_0 thei_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_param_temp_sroa_32_0_push9_cnn_top49_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together148_aunroll_x_in_c1_eni20_19_tpl_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together148_aunroll_x_in_c1_eni20_19_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together148_aunroll_x_in_c1_eni20_19_tpl_1_q <= $unsigned(in_c1_eni20_19_tpl);
        end
    end

    // i_spec_select94_cnn_top48(MUX,129)@78
    assign i_spec_select94_cnn_top48_s = redist18_sync_together148_aunroll_x_in_c1_eni20_19_tpl_1_q;
    always @(i_spec_select94_cnn_top48_s or i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select94_cnn_top48_s)
            1'b0 : i_spec_select94_cnn_top48_q = i_llvm_fpga_pop_i32_param_temp_sroa_32_0_pop9_cnn_top47_out_data_out;
            1'b1 : i_spec_select94_cnn_top48_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select94_cnn_top48_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top25_cnn_top65(BLACKBOX,83)@78
    // out out_intel_reserved_ffwd_20_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_25_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top25_cnn_top65 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_20_0(i_spec_select94_cnn_top48_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top25_cnn_top65_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,11)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top25_cnn_top65_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg33(REG,167)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,135)@77 + 1
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

    // valid_fanout_reg2(REG,136)@77 + 1
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

    // i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4(BLACKBOX,100)@78
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_0 thei_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select_cnn_top3_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2(BLACKBOX,84)@78
    // out out_feedback_stall_out_24@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_0 thei_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_param_temp_sroa_0_0_push24_cnn_top4_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together148_aunroll_x_in_c1_eni20_2_tpl_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together148_aunroll_x_in_c1_eni20_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together148_aunroll_x_in_c1_eni20_2_tpl_1_q <= $unsigned(in_c1_eni20_2_tpl);
        end
    end

    // i_spec_select_cnn_top3(MUX,130)@78
    assign i_spec_select_cnn_top3_s = redist1_sync_together148_aunroll_x_in_c1_eni20_2_tpl_1_q;
    always @(i_spec_select_cnn_top3_s or i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select_cnn_top3_s)
            1'b0 : i_spec_select_cnn_top3_q = i_llvm_fpga_pop_i32_param_temp_sroa_0_0_pop24_cnn_top2_out_data_out;
            1'b1 : i_spec_select_cnn_top3_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select_cnn_top3_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top10_cnn_top50(BLACKBOX,68)@78
    // out out_intel_reserved_ffwd_5_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_10_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top10_cnn_top50 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_5_0(i_spec_select_cnn_top3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top10_cnn_top50_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top10_cnn_top50_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg34(REG,168)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,137)@77 + 1
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

    // valid_fanout_reg4(REG,138)@77 + 1
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

    // i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7(BLACKBOX,113)@78
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_0 thei_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_unnamed_cnn_top6_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5(BLACKBOX,97)@78
    // out out_feedback_stall_out_23@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_0 thei_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_param_temp_sroa_4_0_push23_cnn_top7_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together148_aunroll_x_in_c1_eni20_5_tpl_1(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together148_aunroll_x_in_c1_eni20_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together148_aunroll_x_in_c1_eni20_5_tpl_1_q <= $unsigned(in_c1_eni20_5_tpl);
        end
    end

    // i_unnamed_cnn_top6(MUX,131)@78
    assign i_unnamed_cnn_top6_s = redist4_sync_together148_aunroll_x_in_c1_eni20_5_tpl_1_q;
    always @(i_unnamed_cnn_top6_s or i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_unnamed_cnn_top6_s)
            1'b0 : i_unnamed_cnn_top6_q = i_llvm_fpga_pop_i32_param_temp_sroa_4_0_pop23_cnn_top5_out_data_out;
            1'b1 : i_unnamed_cnn_top6_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_unnamed_cnn_top6_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top11_cnn_top51(BLACKBOX,69)@78
    // out out_intel_reserved_ffwd_6_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_11_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top11_cnn_top51 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_6_0(i_unnamed_cnn_top6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top11_cnn_top51_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top11_cnn_top51_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg35(REG,169)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,139)@77 + 1
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

    // valid_fanout_reg6(REG,140)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10(BLACKBOX,114)@78
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_0 thei_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select81_cnn_top9_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8(BLACKBOX,98)@78
    // out out_feedback_stall_out_22@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_0 thei_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_param_temp_sroa_6_0_push22_cnn_top10_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together148_aunroll_x_in_c1_eni20_6_tpl_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together148_aunroll_x_in_c1_eni20_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together148_aunroll_x_in_c1_eni20_6_tpl_1_q <= $unsigned(in_c1_eni20_6_tpl);
        end
    end

    // i_spec_select81_cnn_top9(MUX,116)@78
    assign i_spec_select81_cnn_top9_s = redist5_sync_together148_aunroll_x_in_c1_eni20_6_tpl_1_q;
    always @(i_spec_select81_cnn_top9_s or i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select81_cnn_top9_s)
            1'b0 : i_spec_select81_cnn_top9_q = i_llvm_fpga_pop_i32_param_temp_sroa_6_0_pop22_cnn_top8_out_data_out;
            1'b1 : i_spec_select81_cnn_top9_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select81_cnn_top9_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top12_cnn_top52(BLACKBOX,70)@78
    // out out_intel_reserved_ffwd_7_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_12_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top12_cnn_top52 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_7_0(i_spec_select81_cnn_top9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top12_cnn_top52_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top12_cnn_top52_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg36(REG,170)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,141)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,142)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13(BLACKBOX,115)@78
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_0 thei_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select82_cnn_top12_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11(BLACKBOX,99)@78
    // out out_feedback_stall_out_21@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_0 thei_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_param_temp_sroa_8_0_push21_cnn_top13_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together148_aunroll_x_in_c1_eni20_7_tpl_1(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together148_aunroll_x_in_c1_eni20_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together148_aunroll_x_in_c1_eni20_7_tpl_1_q <= $unsigned(in_c1_eni20_7_tpl);
        end
    end

    // i_spec_select82_cnn_top12(MUX,117)@78
    assign i_spec_select82_cnn_top12_s = redist6_sync_together148_aunroll_x_in_c1_eni20_7_tpl_1_q;
    always @(i_spec_select82_cnn_top12_s or i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select82_cnn_top12_s)
            1'b0 : i_spec_select82_cnn_top12_q = i_llvm_fpga_pop_i32_param_temp_sroa_8_0_pop21_cnn_top11_out_data_out;
            1'b1 : i_spec_select82_cnn_top12_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select82_cnn_top12_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top13_cnn_top53(BLACKBOX,71)@78
    // out out_intel_reserved_ffwd_8_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_13_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top13_cnn_top53 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_8_0(i_spec_select82_cnn_top12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top13_cnn_top53_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top13_cnn_top53_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg37(REG,171)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,143)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,144)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16(BLACKBOX,101)@78
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_0 thei_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select83_cnn_top15_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14(BLACKBOX,85)@78
    // out out_feedback_stall_out_20@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_0 thei_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i32_param_temp_sroa_10_0_push20_cnn_top16_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together148_aunroll_x_in_c1_eni20_8_tpl_1(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together148_aunroll_x_in_c1_eni20_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together148_aunroll_x_in_c1_eni20_8_tpl_1_q <= $unsigned(in_c1_eni20_8_tpl);
        end
    end

    // i_spec_select83_cnn_top15(MUX,118)@78
    assign i_spec_select83_cnn_top15_s = redist7_sync_together148_aunroll_x_in_c1_eni20_8_tpl_1_q;
    always @(i_spec_select83_cnn_top15_s or i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select83_cnn_top15_s)
            1'b0 : i_spec_select83_cnn_top15_q = i_llvm_fpga_pop_i32_param_temp_sroa_10_0_pop20_cnn_top14_out_data_out;
            1'b1 : i_spec_select83_cnn_top15_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select83_cnn_top15_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top14_cnn_top54(BLACKBOX,72)@78
    // out out_intel_reserved_ffwd_9_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_14_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top14_cnn_top54 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_9_0(i_spec_select83_cnn_top15_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top14_cnn_top54_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top14_cnn_top54_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,134)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // sync_out_aunroll_x(GPOUT,17)@78
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn_top1 = GND_q;
    assign out_unnamed_cnn_top26_0_tpl = GND_q;

    // valid_fanout_reg38(REG,172)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,145)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,146)@77 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19(BLACKBOX,102)@78
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    cnn_top_i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_0 thei_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19 (
        .in_c1_ene4(redist3_sync_together148_aunroll_x_in_c1_eni20_4_tpl_1_q),
        .in_data_in(i_spec_select84_cnn_top18_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17(BLACKBOX,86)@78
    // out out_feedback_stall_out_19@20000000
    cnn_top_i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_0 thei_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17 (
        .in_data_in(c_i32_undef115_q),
        .in_dir(redist0_sync_together148_aunroll_x_in_c1_eni20_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_param_temp_sroa_12_0_push19_cnn_top19_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together148_aunroll_x_in_c1_eni20_9_tpl_1(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together148_aunroll_x_in_c1_eni20_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together148_aunroll_x_in_c1_eni20_9_tpl_1_q <= $unsigned(in_c1_eni20_9_tpl);
        end
    end

    // i_spec_select84_cnn_top18(MUX,119)@78
    assign i_spec_select84_cnn_top18_s = redist8_sync_together148_aunroll_x_in_c1_eni20_9_tpl_1_q;
    always @(i_spec_select84_cnn_top18_s or i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_data_out or redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q)
    begin
        unique case (i_spec_select84_cnn_top18_s)
            1'b0 : i_spec_select84_cnn_top18_q = i_llvm_fpga_pop_i32_param_temp_sroa_12_0_pop19_cnn_top17_out_data_out;
            1'b1 : i_spec_select84_cnn_top18_q = redist2_sync_together148_aunroll_x_in_c1_eni20_3_tpl_1_q;
            default : i_spec_select84_cnn_top18_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top15_cnn_top55(BLACKBOX,73)@78
    // out out_intel_reserved_ffwd_10_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unnamed_15_cnn_top0 thei_llvm_fpga_ffwd_source_i32_unnamed_cnn_top15_cnn_top55 (
        .in_predicate_in(redist19_sync_together148_aunroll_x_in_c1_eni20_20_tpl_1_q),
        .in_src_data_in_10_0(i_spec_select84_cnn_top18_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top15_cnn_top55_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,132)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_cnn_top15_cnn_top55_out_intel_reserved_ffwd_10_0;

endmodule
