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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body24_l0000_enter_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body24_l0000_enter_load_weight00 (
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight019,
    output wire [0:0] out_unnamed_load_weight035_0_tpl,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [0:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [63:0] in_c1_eni5_4_tpl,
    input wire [63:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_c1_eni5_6_tpl,
    input wire [0:0] in_i_valid,
    input wire [1023:0] in_memdep_3_load_weight0_avm_readdata,
    input wire [0:0] in_memdep_3_load_weight0_avm_writeack,
    input wire [0:0] in_memdep_3_load_weight0_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_weight0_avm_readdatavalid,
    output wire [31:0] out_memdep_3_load_weight0_avm_address,
    output wire [0:0] out_memdep_3_load_weight0_avm_enable,
    output wire [0:0] out_memdep_3_load_weight0_avm_read,
    output wire [0:0] out_memdep_3_load_weight0_avm_write,
    output wire [1023:0] out_memdep_3_load_weight0_avm_writedata,
    output wire [127:0] out_memdep_3_load_weight0_avm_byteenable,
    output wire [0:0] out_memdep_3_load_weight0_avm_burstcount,
    input wire [0:0] in_flush,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc37_load_weight042_sel_x_b;
    wire [7:0] i_extract_t_10_load_weight029_sel_x_b;
    wire [7:0] i_extract_t_11_load_weight031_sel_x_b;
    wire [7:0] i_extract_t_12_load_weight033_sel_x_b;
    wire [7:0] i_extract_t_13_load_weight035_sel_x_b;
    wire [7:0] i_extract_t_14_load_weight037_sel_x_b;
    wire [7:0] i_extract_t_15_load_weight039_sel_x_b;
    wire [7:0] i_extract_t_1_load_weight012_sel_x_b;
    wire [7:0] i_extract_t_2_load_weight014_sel_x_b;
    wire [7:0] i_extract_t_3_load_weight016_sel_x_b;
    wire [7:0] i_extract_t_4_load_weight018_sel_x_b;
    wire [7:0] i_extract_t_5_load_weight020_sel_x_b;
    wire [7:0] i_extract_t_6_load_weight022_sel_x_b;
    wire [7:0] i_extract_t_7_load_weight024_sel_x_b;
    wire [7:0] i_extract_t_8_load_weight025_sel_x_b;
    wire [7:0] i_extract_t_9_load_weight027_sel_x_b;
    wire [7:0] i_extract_t_load_weight08_sel_x_b;
    wire [63:0] i_idxprom31_load_weight04_sel_x_b;
    wire [63:0] i_idxprom_load_weight07_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_burstcount;
    wire [127:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_write;
    wire [1023:0] i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_writedata;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_trunc_sel_x_b;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_3_trunc_sel_x_b;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_5_trunc_sel_x_b;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_a;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_b;
    logic [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_o;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_q;
    wire [7:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_shift_join_x_q;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_a;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_b;
    logic [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_o;
    wire [12:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_q;
    wire [63:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_append_upper_bits_x_q;
    wire [3:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x_q;
    wire [7:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q;
    wire [3:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_narrow_x_b;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_shift_join_x_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_160_q;
    wire [63:0] c_load_weight0_weight_buff_pmem_q;
    wire [63:0] i_idxprom31_load_weight04_vt_join_q;
    wire [31:0] i_idxprom31_load_weight04_vt_select_31_b;
    wire [63:0] i_idxprom_load_weight07_vt_join_q;
    wire [31:0] i_idxprom_load_weight07_vt_select_31_b;
    wire [32:0] i_inc37_load_weight042_a;
    wire [32:0] i_inc37_load_weight042_b;
    logic [32:0] i_inc37_load_weight042_o;
    wire [32:0] i_inc37_load_weight042_q;
    wire [31:0] i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_valid_out_30;
    wire [63:0] i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_join_q;
    wire [59:0] i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_select_63_b;
    wire [63:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_join_q;
    wire [59:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_select_63_b;
    wire [63:0] i_unnamed_load_weight011_vt_join_q;
    wire [55:0] i_unnamed_load_weight011_vt_select_55_b;
    wire [15:0] i_unnamed_load_weight013_vt_const_63_q;
    wire [63:0] i_unnamed_load_weight013_vt_join_q;
    wire [47:0] i_unnamed_load_weight013_vt_select_47_b;
    wire [23:0] i_unnamed_load_weight015_vt_const_63_q;
    wire [63:0] i_unnamed_load_weight015_vt_join_q;
    wire [39:0] i_unnamed_load_weight015_vt_select_39_b;
    wire [63:0] i_unnamed_load_weight017_vt_join_q;
    wire [31:0] i_unnamed_load_weight017_vt_select_31_b;
    wire [39:0] i_unnamed_load_weight019_vt_const_63_q;
    wire [63:0] i_unnamed_load_weight019_vt_join_q;
    wire [23:0] i_unnamed_load_weight019_vt_select_23_b;
    wire [47:0] i_unnamed_load_weight021_vt_const_63_q;
    wire [63:0] i_unnamed_load_weight021_vt_join_q;
    wire [15:0] i_unnamed_load_weight021_vt_select_15_b;
    wire [55:0] i_unnamed_load_weight023_vt_const_63_q;
    wire [63:0] i_unnamed_load_weight023_vt_join_q;
    wire [7:0] i_unnamed_load_weight023_vt_select_7_b;
    wire [63:0] i_unnamed_load_weight026_vt_join_q;
    wire [55:0] i_unnamed_load_weight026_vt_select_55_b;
    wire [63:0] i_unnamed_load_weight028_vt_join_q;
    wire [47:0] i_unnamed_load_weight028_vt_select_47_b;
    wire [63:0] i_unnamed_load_weight030_vt_join_q;
    wire [39:0] i_unnamed_load_weight030_vt_select_39_b;
    wire [63:0] i_unnamed_load_weight032_vt_join_q;
    wire [31:0] i_unnamed_load_weight032_vt_select_31_b;
    wire [63:0] i_unnamed_load_weight034_vt_join_q;
    wire [23:0] i_unnamed_load_weight034_vt_select_23_b;
    wire [63:0] i_unnamed_load_weight036_vt_join_q;
    wire [15:0] i_unnamed_load_weight036_vt_select_15_b;
    wire [63:0] i_unnamed_load_weight038_vt_join_q;
    wire [7:0] i_unnamed_load_weight038_vt_select_7_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [55:0] rightShiftStage0Idx1Rng8_uid239_dupName_5_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid241_dupName_5_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q;
    wire [47:0] rightShiftStage0Idx1Rng16_uid247_dupName_6_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid249_dupName_6_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid260_dupName_7_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid262_dupName_7_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid268_dupName_8_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid270_dupName_8_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid281_dupName_9_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid283_dupName_9_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid294_dupName_10_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid296_dupName_10_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid312_dupName_11_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid314_dupName_11_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_q;
    wire [55:0] rightShiftStage0Idx1Rng8_uid320_dupName_12_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid322_dupName_12_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q;
    wire [47:0] rightShiftStage0Idx1Rng16_uid328_dupName_13_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid330_dupName_13_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid341_dupName_14_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid343_dupName_14_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid349_dupName_15_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid351_dupName_15_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid362_dupName_16_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid364_dupName_16_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid375_dupName_17_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid377_dupName_17_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid393_dupName_18_i_unnamed_load_weight00_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid395_dupName_18_i_unnamed_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_s;
    reg [63:0] rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_q;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_b;
    wire [51:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c;
    reg [51:0] redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_valid_fanout_reg0_q_1_q;
    reg [31:0] redist2_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q;
    reg [0:0] redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q;
    reg [0:0] redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_delay_0;
    reg [0:0] redist6_sync_together66_aunroll_x_in_i_valid_1_q;
    reg [7:0] redist7_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b_1_q;
    reg [11:0] redist8_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b_1_q;
    reg [7:0] redist9_i_extract_t_load_weight08_sel_x_b_2_q;
    reg [7:0] redist9_i_extract_t_load_weight08_sel_x_b_2_delay_0;
    reg [7:0] redist10_i_extract_t_9_load_weight027_sel_x_b_2_q;
    reg [7:0] redist10_i_extract_t_9_load_weight027_sel_x_b_2_delay_0;
    reg [7:0] redist11_i_extract_t_8_load_weight025_sel_x_b_2_q;
    reg [7:0] redist11_i_extract_t_8_load_weight025_sel_x_b_2_delay_0;
    reg [7:0] redist12_i_extract_t_7_load_weight024_sel_x_b_2_q;
    reg [7:0] redist12_i_extract_t_7_load_weight024_sel_x_b_2_delay_0;
    reg [7:0] redist13_i_extract_t_6_load_weight022_sel_x_b_2_q;
    reg [7:0] redist13_i_extract_t_6_load_weight022_sel_x_b_2_delay_0;
    reg [7:0] redist14_i_extract_t_5_load_weight020_sel_x_b_2_q;
    reg [7:0] redist14_i_extract_t_5_load_weight020_sel_x_b_2_delay_0;
    reg [7:0] redist15_i_extract_t_4_load_weight018_sel_x_b_2_q;
    reg [7:0] redist15_i_extract_t_4_load_weight018_sel_x_b_2_delay_0;
    reg [7:0] redist16_i_extract_t_3_load_weight016_sel_x_b_2_q;
    reg [7:0] redist16_i_extract_t_3_load_weight016_sel_x_b_2_delay_0;
    reg [7:0] redist17_i_extract_t_2_load_weight014_sel_x_b_2_q;
    reg [7:0] redist17_i_extract_t_2_load_weight014_sel_x_b_2_delay_0;
    reg [7:0] redist18_i_extract_t_1_load_weight012_sel_x_b_2_q;
    reg [7:0] redist18_i_extract_t_1_load_weight012_sel_x_b_2_delay_0;
    reg [7:0] redist19_i_extract_t_15_load_weight039_sel_x_b_2_q;
    reg [7:0] redist19_i_extract_t_15_load_weight039_sel_x_b_2_delay_0;
    reg [7:0] redist20_i_extract_t_14_load_weight037_sel_x_b_2_q;
    reg [7:0] redist20_i_extract_t_14_load_weight037_sel_x_b_2_delay_0;
    reg [7:0] redist21_i_extract_t_13_load_weight035_sel_x_b_2_q;
    reg [7:0] redist21_i_extract_t_13_load_weight035_sel_x_b_2_delay_0;
    reg [7:0] redist22_i_extract_t_12_load_weight033_sel_x_b_2_q;
    reg [7:0] redist22_i_extract_t_12_load_weight033_sel_x_b_2_delay_0;
    reg [7:0] redist23_i_extract_t_11_load_weight031_sel_x_b_2_q;
    reg [7:0] redist23_i_extract_t_11_load_weight031_sel_x_b_2_delay_0;
    reg [7:0] redist24_i_extract_t_10_load_weight029_sel_x_b_2_q;
    reg [7:0] redist24_i_extract_t_10_load_weight029_sel_x_b_2_delay_0;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together66_aunroll_x_in_i_valid_1(DELAY,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together66_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together66_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,197)@31 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist1_valid_fanout_reg0_q_1(DELAY,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,98)@33
    assign out_o_valid = redist1_valid_fanout_reg0_q_1_q;
    assign out_unnamed_load_weight019 = GND_q;
    assign out_unnamed_load_weight035_0_tpl = GND_q;

    // valid_fanout_reg4(REG,201)@31 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together66_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2(DELAY,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_delay_0 <= '0;
            redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_delay_0 <= $unsigned(in_c1_eni5_6_tpl);
            redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_q <= redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_delay_0;
        end
    end

    // c_load_weight0_weight_buff_pmem(CONSTANT,115)
    assign c_load_weight0_weight_buff_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select(BITSELECT,398)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_b = c_load_weight0_weight_buff_pmem_q[11:0];
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c = c_load_weight0_weight_buff_pmem_q[63:12];

    // redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c_1(DELAY,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c);
        end
    end

    // c_i32_050(CONSTANT,106)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg1(REG,198)@30 + 1
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

    // valid_fanout_reg2(REG,199)@30 + 1
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

    // redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q <= $unsigned(in_c1_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03(BLACKBOX,146)@31
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    cnn_top_i_llvm_fpga_push_i32_tii_081_pop0000push30_load_weight00 thei_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03 (
        .in_c1_ene3(redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q <= $unsigned(in_c1_eni5_2_tpl);
        end
    end

    // redist2_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1(DELAY,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q <= $unsigned(in_c1_eni5_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02(BLACKBOX,144)@31
    // out out_feedback_stall_out_30@20000000
    cnn_top_i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight00 thei_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02 (
        .in_data_in(redist2_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q),
        .in_dir(redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_tii_081_pop1896_push30_load_weight03_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom31_load_weight04_sel_x(BITSELECT,75)@31
    assign i_idxprom31_load_weight04_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_tii_081_pop1896_pop30_load_weight02_out_data_out[31:0]};

    // i_idxprom31_load_weight04_vt_select_31(BITSELECT,137)@31
    assign i_idxprom31_load_weight04_vt_select_31_b = i_idxprom31_load_weight04_sel_x_b[31:0];

    // i_idxprom31_load_weight04_vt_join(BITJOIN,136)@31
    assign i_idxprom31_load_weight04_vt_join_q = {c_i32_050_q, i_idxprom31_load_weight04_vt_select_31_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_3_trunc_sel_x(BITSELECT,80)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_3_trunc_sel_x_b = i_idxprom31_load_weight04_vt_join_q[11:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x(BITSELECT,83)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_3_trunc_sel_x_b[7:0];

    // redist7_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b_1(DELAY,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b);
        end
    end

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_shift_join_x(BITJOIN,84)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_shift_join_x_q = {redist7_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_narrow_x_b_1_q, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x_q};

    // valid_fanout_reg3(REG,200)@30 + 1
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

    // valid_fanout_reg5(REG,202)@30 + 1
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

    // c_i32_160(CONSTANT,107)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc37_load_weight042(ADD,142)@31
    assign i_inc37_load_weight042_a = {1'b0, i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_data_out};
    assign i_inc37_load_weight042_b = {1'b0, c_i32_160_q};
    assign i_inc37_load_weight042_o = $unsigned(i_inc37_load_weight042_a) + $unsigned(i_inc37_load_weight042_b);
    assign i_inc37_load_weight042_q = i_inc37_load_weight042_o[32:0];

    // bgTrunc_i_inc37_load_weight042_sel_x(BITSELECT,58)@31
    assign bgTrunc_i_inc37_load_weight042_sel_x_b = i_inc37_load_weight042_q[31:0];

    // i_llvm_fpga_push_i32_i_079_push25_load_weight043(BLACKBOX,145)@31
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    cnn_top_i_llvm_fpga_push_i32_i_079_push25_load_weight00 thei_llvm_fpga_push_i32_i_079_push25_load_weight043 (
        .in_c1_ene3(redist4_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q),
        .in_data_in(bgTrunc_i_inc37_load_weight042_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_079_pop25_load_weight06(BLACKBOX,143)@31
    // out out_feedback_stall_out_25@20000000
    cnn_top_i_llvm_fpga_pop_i32_i_079_pop25_load_weight00 thei_llvm_fpga_pop_i32_i_079_pop25_load_weight06 (
        .in_data_in(c_i32_050_q),
        .in_dir(redist3_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_i_079_push25_load_weight043_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_load_weight07_sel_x(BITSELECT,76)@31
    assign i_idxprom_load_weight07_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_079_pop25_load_weight06_out_data_out[31:0]};

    // i_idxprom_load_weight07_vt_select_31(BITSELECT,141)@31
    assign i_idxprom_load_weight07_vt_select_31_b = i_idxprom_load_weight07_sel_x_b[31:0];

    // i_idxprom_load_weight07_vt_join(BITJOIN,140)@31
    assign i_idxprom_load_weight07_vt_join_q = {c_i32_050_q, i_idxprom_load_weight07_vt_select_31_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_trunc_sel_x(BITSELECT,78)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_trunc_sel_x_b = i_idxprom_load_weight07_vt_join_q[11:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_narrow_x(BITSELECT,94)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_narrow_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_trunc_sel_x_b[3:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x(CONSTANT,93)
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q = $unsigned(8'b00000000);

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_shift_join_x(BITJOIN,95)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_shift_join_x_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_narrow_x_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x(ADD,90)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_a = {1'b0, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_b};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_b = {1'b0, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_shift_join_x_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_o = $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_a) + $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_b);
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_q = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_o[12:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x(BITSELECT,79)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_add_x_q[11:0];

    // redist8_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b);
        end
    end

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x(ADD,82)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_a = {1'b0, redist8_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_2_trunc_sel_x_b_1_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_b = {1'b0, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_shift_join_x_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_o = $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_a) + $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_b);
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_q = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_o[12:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_5_trunc_sel_x(BITSELECT,81)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_5_trunc_sel_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_0_add_x_q[11:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_append_upper_bits_x(BITJOIN,91)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_append_upper_bits_x_q = {redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_trunc_sel_x_merged_bit_select_c_1_q, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_dupName_5_trunc_sel_x_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_select_63(BITSELECT,152)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_select_63_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_append_upper_bits_x_q[63:4];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_join(BITJOIN,151)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_join_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_select_63_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x_q};

    // i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_select_63(BITSELECT,149)@32
    assign i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_select_63_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_weight09_vt_join_q[63:4];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x(CONSTANT,92)
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x_q = $unsigned(4'b0000);

    // i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_join(BITJOIN,148)@32
    assign i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_join_q = {i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_select_63_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i4_02_x_q};

    // i_unnamed_load_weight023_vt_const_63(CONSTANT,171)
    assign i_unnamed_load_weight023_vt_const_63_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid393_dupName_18_i_unnamed_load_weight00_shift_x(BITSELECT,392)@30
    assign rightShiftStage2Idx1Rng32_uid393_dupName_18_i_unnamed_load_weight00_shift_x_b = rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid395_dupName_18_i_unnamed_load_weight00_shift_x(BITJOIN,394)@30
    assign rightShiftStage2Idx1_uid395_dupName_18_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage2Idx1Rng32_uid393_dupName_18_i_unnamed_load_weight00_shift_x_b};

    // i_unnamed_load_weight013_vt_const_63(CONSTANT,156)
    assign i_unnamed_load_weight013_vt_const_63_q = $unsigned(16'b0000000000000000);

    // rightShiftStage1Idx1Rng16_uid341_dupName_14_i_unnamed_load_weight00_shift_x(BITSELECT,340)@30
    assign rightShiftStage1Idx1Rng16_uid341_dupName_14_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid343_dupName_14_i_unnamed_load_weight00_shift_x(BITJOIN,342)@30
    assign rightShiftStage1Idx1_uid343_dupName_14_i_unnamed_load_weight00_shift_x_q = {i_unnamed_load_weight013_vt_const_63_q, rightShiftStage1Idx1Rng16_uid341_dupName_14_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0Idx1Rng8_uid320_dupName_12_i_unnamed_load_weight00_shift_x(BITSELECT,319)@30
    assign rightShiftStage0Idx1Rng8_uid320_dupName_12_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_5_tpl[63:8];

    // rightShiftStage0Idx1_uid322_dupName_12_i_unnamed_load_weight00_shift_x(BITJOIN,321)@30
    assign rightShiftStage0Idx1_uid322_dupName_12_i_unnamed_load_weight00_shift_x_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q, rightShiftStage0Idx1Rng8_uid320_dupName_12_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x(MUX,323)@30
    assign rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid322_dupName_12_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid322_dupName_12_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x(MUX,344)@30
    assign rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid343_dupName_14_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid343_dupName_14_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x(MUX,396)@30
    assign rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_s or rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q or rightShiftStage2Idx1_uid395_dupName_18_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_q = rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_q = rightShiftStage2Idx1_uid395_dupName_18_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight038_vt_select_7(BITSELECT,194)@30
    assign i_unnamed_load_weight038_vt_select_7_b = rightShiftStage2_uid397_dupName_18_i_unnamed_load_weight00_shift_x_q[7:0];

    // i_unnamed_load_weight038_vt_join(BITJOIN,193)@30
    assign i_unnamed_load_weight038_vt_join_q = {i_unnamed_load_weight023_vt_const_63_q, i_unnamed_load_weight038_vt_select_7_b};

    // i_extract_t_15_load_weight039_sel_x(BITSELECT,64)@30
    assign i_extract_t_15_load_weight039_sel_x_b = i_unnamed_load_weight038_vt_join_q[7:0];

    // redist19_i_extract_t_15_load_weight039_sel_x_b_2(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_extract_t_15_load_weight039_sel_x_b_2_delay_0 <= '0;
            redist19_i_extract_t_15_load_weight039_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist19_i_extract_t_15_load_weight039_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_15_load_weight039_sel_x_b);
            redist19_i_extract_t_15_load_weight039_sel_x_b_2_q <= redist19_i_extract_t_15_load_weight039_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight021_vt_const_63(CONSTANT,168)
    assign i_unnamed_load_weight021_vt_const_63_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid375_dupName_17_i_unnamed_load_weight00_shift_x(BITSELECT,374)@30
    assign rightShiftStage1Idx1Rng32_uid375_dupName_17_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid377_dupName_17_i_unnamed_load_weight00_shift_x(BITJOIN,376)@30
    assign rightShiftStage1Idx1_uid377_dupName_17_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid375_dupName_17_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0Idx1Rng16_uid328_dupName_13_i_unnamed_load_weight00_shift_x(BITSELECT,327)@30
    assign rightShiftStage0Idx1Rng16_uid328_dupName_13_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_5_tpl[63:16];

    // rightShiftStage0Idx1_uid330_dupName_13_i_unnamed_load_weight00_shift_x(BITJOIN,329)@30
    assign rightShiftStage0Idx1_uid330_dupName_13_i_unnamed_load_weight00_shift_x_q = {i_unnamed_load_weight013_vt_const_63_q, rightShiftStage0Idx1Rng16_uid328_dupName_13_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x(MUX,331)@30
    assign rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid330_dupName_13_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid330_dupName_13_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x(MUX,378)@30
    assign rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid377_dupName_17_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid377_dupName_17_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight036_vt_select_15(BITSELECT,191)@30
    assign i_unnamed_load_weight036_vt_select_15_b = rightShiftStage1_uid379_dupName_17_i_unnamed_load_weight00_shift_x_q[15:0];

    // i_unnamed_load_weight036_vt_join(BITJOIN,190)@30
    assign i_unnamed_load_weight036_vt_join_q = {i_unnamed_load_weight021_vt_const_63_q, i_unnamed_load_weight036_vt_select_15_b};

    // i_extract_t_14_load_weight037_sel_x(BITSELECT,63)@30
    assign i_extract_t_14_load_weight037_sel_x_b = i_unnamed_load_weight036_vt_join_q[7:0];

    // redist20_i_extract_t_14_load_weight037_sel_x_b_2(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_extract_t_14_load_weight037_sel_x_b_2_delay_0 <= '0;
            redist20_i_extract_t_14_load_weight037_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist20_i_extract_t_14_load_weight037_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_14_load_weight037_sel_x_b);
            redist20_i_extract_t_14_load_weight037_sel_x_b_2_q <= redist20_i_extract_t_14_load_weight037_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight019_vt_const_63(CONSTANT,165)
    assign i_unnamed_load_weight019_vt_const_63_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid362_dupName_16_i_unnamed_load_weight00_shift_x(BITSELECT,361)@30
    assign rightShiftStage1Idx1Rng32_uid362_dupName_16_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid364_dupName_16_i_unnamed_load_weight00_shift_x(BITJOIN,363)@30
    assign rightShiftStage1Idx1_uid364_dupName_16_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid362_dupName_16_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x(MUX,365)@30
    assign rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid364_dupName_16_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid364_dupName_16_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight034_vt_select_23(BITSELECT,188)@30
    assign i_unnamed_load_weight034_vt_select_23_b = rightShiftStage1_uid366_dupName_16_i_unnamed_load_weight00_shift_x_q[23:0];

    // i_unnamed_load_weight034_vt_join(BITJOIN,187)@30
    assign i_unnamed_load_weight034_vt_join_q = {i_unnamed_load_weight019_vt_const_63_q, i_unnamed_load_weight034_vt_select_23_b};

    // i_extract_t_13_load_weight035_sel_x(BITSELECT,62)@30
    assign i_extract_t_13_load_weight035_sel_x_b = i_unnamed_load_weight034_vt_join_q[7:0];

    // redist21_i_extract_t_13_load_weight035_sel_x_b_2(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_extract_t_13_load_weight035_sel_x_b_2_delay_0 <= '0;
            redist21_i_extract_t_13_load_weight035_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist21_i_extract_t_13_load_weight035_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_13_load_weight035_sel_x_b);
            redist21_i_extract_t_13_load_weight035_sel_x_b_2_q <= redist21_i_extract_t_13_load_weight035_sel_x_b_2_delay_0;
        end
    end

    // rightShiftStage0Idx1Rng32_uid349_dupName_15_i_unnamed_load_weight00_shift_x(BITSELECT,348)@30
    assign rightShiftStage0Idx1Rng32_uid349_dupName_15_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_5_tpl[63:32];

    // rightShiftStage0Idx1_uid351_dupName_15_i_unnamed_load_weight00_shift_x(BITJOIN,350)@30
    assign rightShiftStage0Idx1_uid351_dupName_15_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage0Idx1Rng32_uid349_dupName_15_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x(MUX,352)@30
    assign rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid351_dupName_15_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid351_dupName_15_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight032_vt_select_31(BITSELECT,185)@30
    assign i_unnamed_load_weight032_vt_select_31_b = rightShiftStage0_uid353_dupName_15_i_unnamed_load_weight00_shift_x_q[31:0];

    // i_unnamed_load_weight032_vt_join(BITJOIN,184)@30
    assign i_unnamed_load_weight032_vt_join_q = {c_i32_050_q, i_unnamed_load_weight032_vt_select_31_b};

    // i_extract_t_12_load_weight033_sel_x(BITSELECT,61)@30
    assign i_extract_t_12_load_weight033_sel_x_b = i_unnamed_load_weight032_vt_join_q[7:0];

    // redist22_i_extract_t_12_load_weight033_sel_x_b_2(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_extract_t_12_load_weight033_sel_x_b_2_delay_0 <= '0;
            redist22_i_extract_t_12_load_weight033_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist22_i_extract_t_12_load_weight033_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_12_load_weight033_sel_x_b);
            redist22_i_extract_t_12_load_weight033_sel_x_b_2_q <= redist22_i_extract_t_12_load_weight033_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight015_vt_const_63(CONSTANT,159)
    assign i_unnamed_load_weight015_vt_const_63_q = $unsigned(24'b000000000000000000000000);

    // i_unnamed_load_weight030_vt_select_39(BITSELECT,182)@30
    assign i_unnamed_load_weight030_vt_select_39_b = rightShiftStage1_uid345_dupName_14_i_unnamed_load_weight00_shift_x_q[39:0];

    // i_unnamed_load_weight030_vt_join(BITJOIN,181)@30
    assign i_unnamed_load_weight030_vt_join_q = {i_unnamed_load_weight015_vt_const_63_q, i_unnamed_load_weight030_vt_select_39_b};

    // i_extract_t_11_load_weight031_sel_x(BITSELECT,60)@30
    assign i_extract_t_11_load_weight031_sel_x_b = i_unnamed_load_weight030_vt_join_q[7:0];

    // redist23_i_extract_t_11_load_weight031_sel_x_b_2(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_extract_t_11_load_weight031_sel_x_b_2_delay_0 <= '0;
            redist23_i_extract_t_11_load_weight031_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist23_i_extract_t_11_load_weight031_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_11_load_weight031_sel_x_b);
            redist23_i_extract_t_11_load_weight031_sel_x_b_2_q <= redist23_i_extract_t_11_load_weight031_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight028_vt_select_47(BITSELECT,179)@30
    assign i_unnamed_load_weight028_vt_select_47_b = rightShiftStage0_uid332_dupName_13_i_unnamed_load_weight00_shift_x_q[47:0];

    // i_unnamed_load_weight028_vt_join(BITJOIN,178)@30
    assign i_unnamed_load_weight028_vt_join_q = {i_unnamed_load_weight013_vt_const_63_q, i_unnamed_load_weight028_vt_select_47_b};

    // i_extract_t_10_load_weight029_sel_x(BITSELECT,59)@30
    assign i_extract_t_10_load_weight029_sel_x_b = i_unnamed_load_weight028_vt_join_q[7:0];

    // redist24_i_extract_t_10_load_weight029_sel_x_b_2(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_extract_t_10_load_weight029_sel_x_b_2_delay_0 <= '0;
            redist24_i_extract_t_10_load_weight029_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist24_i_extract_t_10_load_weight029_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_10_load_weight029_sel_x_b);
            redist24_i_extract_t_10_load_weight029_sel_x_b_2_q <= redist24_i_extract_t_10_load_weight029_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight026_vt_select_55(BITSELECT,176)@30
    assign i_unnamed_load_weight026_vt_select_55_b = rightShiftStage0_uid324_dupName_12_i_unnamed_load_weight00_shift_x_q[55:0];

    // i_unnamed_load_weight026_vt_join(BITJOIN,175)@30
    assign i_unnamed_load_weight026_vt_join_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q, i_unnamed_load_weight026_vt_select_55_b};

    // i_extract_t_9_load_weight027_sel_x(BITSELECT,73)@30
    assign i_extract_t_9_load_weight027_sel_x_b = i_unnamed_load_weight026_vt_join_q[7:0];

    // redist10_i_extract_t_9_load_weight027_sel_x_b_2(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_extract_t_9_load_weight027_sel_x_b_2_delay_0 <= '0;
            redist10_i_extract_t_9_load_weight027_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist10_i_extract_t_9_load_weight027_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_9_load_weight027_sel_x_b);
            redist10_i_extract_t_9_load_weight027_sel_x_b_2_q <= redist10_i_extract_t_9_load_weight027_sel_x_b_2_delay_0;
        end
    end

    // i_extract_t_8_load_weight025_sel_x(BITSELECT,72)@30
    assign i_extract_t_8_load_weight025_sel_x_b = in_c1_eni5_5_tpl[7:0];

    // redist11_i_extract_t_8_load_weight025_sel_x_b_2(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_extract_t_8_load_weight025_sel_x_b_2_delay_0 <= '0;
            redist11_i_extract_t_8_load_weight025_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist11_i_extract_t_8_load_weight025_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_8_load_weight025_sel_x_b);
            redist11_i_extract_t_8_load_weight025_sel_x_b_2_q <= redist11_i_extract_t_8_load_weight025_sel_x_b_2_delay_0;
        end
    end

    // rightShiftStage2Idx1Rng32_uid312_dupName_11_i_unnamed_load_weight00_shift_x(BITSELECT,311)@30
    assign rightShiftStage2Idx1Rng32_uid312_dupName_11_i_unnamed_load_weight00_shift_x_b = rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid314_dupName_11_i_unnamed_load_weight00_shift_x(BITJOIN,313)@30
    assign rightShiftStage2Idx1_uid314_dupName_11_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage2Idx1Rng32_uid312_dupName_11_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage1Idx1Rng16_uid260_dupName_7_i_unnamed_load_weight00_shift_x(BITSELECT,259)@30
    assign rightShiftStage1Idx1Rng16_uid260_dupName_7_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid262_dupName_7_i_unnamed_load_weight00_shift_x(BITJOIN,261)@30
    assign rightShiftStage1Idx1_uid262_dupName_7_i_unnamed_load_weight00_shift_x_q = {i_unnamed_load_weight013_vt_const_63_q, rightShiftStage1Idx1Rng16_uid260_dupName_7_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0Idx1Rng8_uid239_dupName_5_i_unnamed_load_weight00_shift_x(BITSELECT,238)@30
    assign rightShiftStage0Idx1Rng8_uid239_dupName_5_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_4_tpl[63:8];

    // rightShiftStage0Idx1_uid241_dupName_5_i_unnamed_load_weight00_shift_x(BITJOIN,240)@30
    assign rightShiftStage0Idx1_uid241_dupName_5_i_unnamed_load_weight00_shift_x_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q, rightShiftStage0Idx1Rng8_uid239_dupName_5_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x(MUX,242)@30
    assign rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid241_dupName_5_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid241_dupName_5_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x(MUX,263)@30
    assign rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid262_dupName_7_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid262_dupName_7_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x(MUX,315)@30
    assign rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_s or rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q or rightShiftStage2Idx1_uid314_dupName_11_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_q = rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_q = rightShiftStage2Idx1_uid314_dupName_11_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight023_vt_select_7(BITSELECT,173)@30
    assign i_unnamed_load_weight023_vt_select_7_b = rightShiftStage2_uid316_dupName_11_i_unnamed_load_weight00_shift_x_q[7:0];

    // i_unnamed_load_weight023_vt_join(BITJOIN,172)@30
    assign i_unnamed_load_weight023_vt_join_q = {i_unnamed_load_weight023_vt_const_63_q, i_unnamed_load_weight023_vt_select_7_b};

    // i_extract_t_7_load_weight024_sel_x(BITSELECT,71)@30
    assign i_extract_t_7_load_weight024_sel_x_b = i_unnamed_load_weight023_vt_join_q[7:0];

    // redist12_i_extract_t_7_load_weight024_sel_x_b_2(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_extract_t_7_load_weight024_sel_x_b_2_delay_0 <= '0;
            redist12_i_extract_t_7_load_weight024_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist12_i_extract_t_7_load_weight024_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_7_load_weight024_sel_x_b);
            redist12_i_extract_t_7_load_weight024_sel_x_b_2_q <= redist12_i_extract_t_7_load_weight024_sel_x_b_2_delay_0;
        end
    end

    // rightShiftStage1Idx1Rng32_uid294_dupName_10_i_unnamed_load_weight00_shift_x(BITSELECT,293)@30
    assign rightShiftStage1Idx1Rng32_uid294_dupName_10_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid296_dupName_10_i_unnamed_load_weight00_shift_x(BITJOIN,295)@30
    assign rightShiftStage1Idx1_uid296_dupName_10_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid294_dupName_10_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0Idx1Rng16_uid247_dupName_6_i_unnamed_load_weight00_shift_x(BITSELECT,246)@30
    assign rightShiftStage0Idx1Rng16_uid247_dupName_6_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_4_tpl[63:16];

    // rightShiftStage0Idx1_uid249_dupName_6_i_unnamed_load_weight00_shift_x(BITJOIN,248)@30
    assign rightShiftStage0Idx1_uid249_dupName_6_i_unnamed_load_weight00_shift_x_q = {i_unnamed_load_weight013_vt_const_63_q, rightShiftStage0Idx1Rng16_uid247_dupName_6_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x(MUX,250)@30
    assign rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid249_dupName_6_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid249_dupName_6_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x(MUX,297)@30
    assign rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid296_dupName_10_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid296_dupName_10_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight021_vt_select_15(BITSELECT,170)@30
    assign i_unnamed_load_weight021_vt_select_15_b = rightShiftStage1_uid298_dupName_10_i_unnamed_load_weight00_shift_x_q[15:0];

    // i_unnamed_load_weight021_vt_join(BITJOIN,169)@30
    assign i_unnamed_load_weight021_vt_join_q = {i_unnamed_load_weight021_vt_const_63_q, i_unnamed_load_weight021_vt_select_15_b};

    // i_extract_t_6_load_weight022_sel_x(BITSELECT,70)@30
    assign i_extract_t_6_load_weight022_sel_x_b = i_unnamed_load_weight021_vt_join_q[7:0];

    // redist13_i_extract_t_6_load_weight022_sel_x_b_2(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_extract_t_6_load_weight022_sel_x_b_2_delay_0 <= '0;
            redist13_i_extract_t_6_load_weight022_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist13_i_extract_t_6_load_weight022_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_6_load_weight022_sel_x_b);
            redist13_i_extract_t_6_load_weight022_sel_x_b_2_q <= redist13_i_extract_t_6_load_weight022_sel_x_b_2_delay_0;
        end
    end

    // rightShiftStage1Idx1Rng32_uid281_dupName_9_i_unnamed_load_weight00_shift_x(BITSELECT,280)@30
    assign rightShiftStage1Idx1Rng32_uid281_dupName_9_i_unnamed_load_weight00_shift_x_b = rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid283_dupName_9_i_unnamed_load_weight00_shift_x(BITJOIN,282)@30
    assign rightShiftStage1Idx1_uid283_dupName_9_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid281_dupName_9_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x(MUX,284)@30
    assign rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_s or rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q or rightShiftStage1Idx1_uid283_dupName_9_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_q = rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_q = rightShiftStage1Idx1_uid283_dupName_9_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight019_vt_select_23(BITSELECT,167)@30
    assign i_unnamed_load_weight019_vt_select_23_b = rightShiftStage1_uid285_dupName_9_i_unnamed_load_weight00_shift_x_q[23:0];

    // i_unnamed_load_weight019_vt_join(BITJOIN,166)@30
    assign i_unnamed_load_weight019_vt_join_q = {i_unnamed_load_weight019_vt_const_63_q, i_unnamed_load_weight019_vt_select_23_b};

    // i_extract_t_5_load_weight020_sel_x(BITSELECT,69)@30
    assign i_extract_t_5_load_weight020_sel_x_b = i_unnamed_load_weight019_vt_join_q[7:0];

    // redist14_i_extract_t_5_load_weight020_sel_x_b_2(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_extract_t_5_load_weight020_sel_x_b_2_delay_0 <= '0;
            redist14_i_extract_t_5_load_weight020_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist14_i_extract_t_5_load_weight020_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_5_load_weight020_sel_x_b);
            redist14_i_extract_t_5_load_weight020_sel_x_b_2_q <= redist14_i_extract_t_5_load_weight020_sel_x_b_2_delay_0;
        end
    end

    // rightShiftStage0Idx1Rng32_uid268_dupName_8_i_unnamed_load_weight00_shift_x(BITSELECT,267)@30
    assign rightShiftStage0Idx1Rng32_uid268_dupName_8_i_unnamed_load_weight00_shift_x_b = in_c1_eni5_4_tpl[63:32];

    // rightShiftStage0Idx1_uid270_dupName_8_i_unnamed_load_weight00_shift_x(BITJOIN,269)@30
    assign rightShiftStage0Idx1_uid270_dupName_8_i_unnamed_load_weight00_shift_x_q = {c_i32_050_q, rightShiftStage0Idx1Rng32_uid268_dupName_8_i_unnamed_load_weight00_shift_x_b};

    // rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x(MUX,271)@30
    assign rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid270_dupName_8_i_unnamed_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_q = rightShiftStage0Idx1_uid270_dupName_8_i_unnamed_load_weight00_shift_x_q;
            default : rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_weight017_vt_select_31(BITSELECT,164)@30
    assign i_unnamed_load_weight017_vt_select_31_b = rightShiftStage0_uid272_dupName_8_i_unnamed_load_weight00_shift_x_q[31:0];

    // i_unnamed_load_weight017_vt_join(BITJOIN,163)@30
    assign i_unnamed_load_weight017_vt_join_q = {c_i32_050_q, i_unnamed_load_weight017_vt_select_31_b};

    // i_extract_t_4_load_weight018_sel_x(BITSELECT,68)@30
    assign i_extract_t_4_load_weight018_sel_x_b = i_unnamed_load_weight017_vt_join_q[7:0];

    // redist15_i_extract_t_4_load_weight018_sel_x_b_2(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_extract_t_4_load_weight018_sel_x_b_2_delay_0 <= '0;
            redist15_i_extract_t_4_load_weight018_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist15_i_extract_t_4_load_weight018_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_4_load_weight018_sel_x_b);
            redist15_i_extract_t_4_load_weight018_sel_x_b_2_q <= redist15_i_extract_t_4_load_weight018_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight015_vt_select_39(BITSELECT,161)@30
    assign i_unnamed_load_weight015_vt_select_39_b = rightShiftStage1_uid264_dupName_7_i_unnamed_load_weight00_shift_x_q[39:0];

    // i_unnamed_load_weight015_vt_join(BITJOIN,160)@30
    assign i_unnamed_load_weight015_vt_join_q = {i_unnamed_load_weight015_vt_const_63_q, i_unnamed_load_weight015_vt_select_39_b};

    // i_extract_t_3_load_weight016_sel_x(BITSELECT,67)@30
    assign i_extract_t_3_load_weight016_sel_x_b = i_unnamed_load_weight015_vt_join_q[7:0];

    // redist16_i_extract_t_3_load_weight016_sel_x_b_2(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_extract_t_3_load_weight016_sel_x_b_2_delay_0 <= '0;
            redist16_i_extract_t_3_load_weight016_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist16_i_extract_t_3_load_weight016_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_3_load_weight016_sel_x_b);
            redist16_i_extract_t_3_load_weight016_sel_x_b_2_q <= redist16_i_extract_t_3_load_weight016_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight013_vt_select_47(BITSELECT,158)@30
    assign i_unnamed_load_weight013_vt_select_47_b = rightShiftStage0_uid251_dupName_6_i_unnamed_load_weight00_shift_x_q[47:0];

    // i_unnamed_load_weight013_vt_join(BITJOIN,157)@30
    assign i_unnamed_load_weight013_vt_join_q = {i_unnamed_load_weight013_vt_const_63_q, i_unnamed_load_weight013_vt_select_47_b};

    // i_extract_t_2_load_weight014_sel_x(BITSELECT,66)@30
    assign i_extract_t_2_load_weight014_sel_x_b = i_unnamed_load_weight013_vt_join_q[7:0];

    // redist17_i_extract_t_2_load_weight014_sel_x_b_2(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_extract_t_2_load_weight014_sel_x_b_2_delay_0 <= '0;
            redist17_i_extract_t_2_load_weight014_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist17_i_extract_t_2_load_weight014_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_2_load_weight014_sel_x_b);
            redist17_i_extract_t_2_load_weight014_sel_x_b_2_q <= redist17_i_extract_t_2_load_weight014_sel_x_b_2_delay_0;
        end
    end

    // i_unnamed_load_weight011_vt_select_55(BITSELECT,155)@30
    assign i_unnamed_load_weight011_vt_select_55_b = rightShiftStage0_uid243_dupName_5_i_unnamed_load_weight00_shift_x_q[55:0];

    // i_unnamed_load_weight011_vt_join(BITJOIN,154)@30
    assign i_unnamed_load_weight011_vt_join_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_weight00_c_i8_01_x_q, i_unnamed_load_weight011_vt_select_55_b};

    // i_extract_t_1_load_weight012_sel_x(BITSELECT,65)@30
    assign i_extract_t_1_load_weight012_sel_x_b = i_unnamed_load_weight011_vt_join_q[7:0];

    // redist18_i_extract_t_1_load_weight012_sel_x_b_2(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_extract_t_1_load_weight012_sel_x_b_2_delay_0 <= '0;
            redist18_i_extract_t_1_load_weight012_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist18_i_extract_t_1_load_weight012_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_1_load_weight012_sel_x_b);
            redist18_i_extract_t_1_load_weight012_sel_x_b_2_q <= redist18_i_extract_t_1_load_weight012_sel_x_b_2_delay_0;
        end
    end

    // i_extract_t_load_weight08_sel_x(BITSELECT,74)@30
    assign i_extract_t_load_weight08_sel_x_b = in_c1_eni5_4_tpl[7:0];

    // redist9_i_extract_t_load_weight08_sel_x_b_2(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_extract_t_load_weight08_sel_x_b_2_delay_0 <= '0;
            redist9_i_extract_t_load_weight08_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist9_i_extract_t_load_weight08_sel_x_b_2_delay_0 <= $unsigned(i_extract_t_load_weight08_sel_x_b);
            redist9_i_extract_t_load_weight08_sel_x_b_2_q <= redist9_i_extract_t_load_weight08_sel_x_b_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x(BLACKBOX,77)@32
    // out out_memdep_3_load_weight0_avm_address@20000000
    // out out_memdep_3_load_weight0_avm_burstcount@20000000
    // out out_memdep_3_load_weight0_avm_byteenable@20000000
    // out out_memdep_3_load_weight0_avm_enable@20000000
    // out out_memdep_3_load_weight0_avm_read@20000000
    // out out_memdep_3_load_weight0_avm_write@20000000
    // out out_memdep_3_load_weight0_avm_writedata@20000000
    // out out_o_stall@33
    // out out_o_valid@33
    // out out_o_writeack@33
    cnn_top_i_llvm_fpga_mem_memdep_3_load_weight00 thei_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x (
        .in_i_writedata_0_tpl(redist9_i_extract_t_load_weight08_sel_x_b_2_q),
        .in_i_writedata_1_tpl(redist18_i_extract_t_1_load_weight012_sel_x_b_2_q),
        .in_i_writedata_2_tpl(redist17_i_extract_t_2_load_weight014_sel_x_b_2_q),
        .in_i_writedata_3_tpl(redist16_i_extract_t_3_load_weight016_sel_x_b_2_q),
        .in_i_writedata_4_tpl(redist15_i_extract_t_4_load_weight018_sel_x_b_2_q),
        .in_i_writedata_5_tpl(redist14_i_extract_t_5_load_weight020_sel_x_b_2_q),
        .in_i_writedata_6_tpl(redist13_i_extract_t_6_load_weight022_sel_x_b_2_q),
        .in_i_writedata_7_tpl(redist12_i_extract_t_7_load_weight024_sel_x_b_2_q),
        .in_i_writedata_8_tpl(redist11_i_extract_t_8_load_weight025_sel_x_b_2_q),
        .in_i_writedata_9_tpl(redist10_i_extract_t_9_load_weight027_sel_x_b_2_q),
        .in_i_writedata_10_tpl(redist24_i_extract_t_10_load_weight029_sel_x_b_2_q),
        .in_i_writedata_11_tpl(redist23_i_extract_t_11_load_weight031_sel_x_b_2_q),
        .in_i_writedata_12_tpl(redist22_i_extract_t_12_load_weight033_sel_x_b_2_q),
        .in_i_writedata_13_tpl(redist21_i_extract_t_13_load_weight035_sel_x_b_2_q),
        .in_i_writedata_14_tpl(redist20_i_extract_t_14_load_weight037_sel_x_b_2_q),
        .in_i_writedata_15_tpl(redist19_i_extract_t_15_load_weight039_sel_x_b_2_q),
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_load_weight0_fpgaunique_156_load_weight040_vt_join_q),
        .in_i_predicate(redist5_sync_together66_aunroll_x_in_c1_eni5_6_tpl_2_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_memdep_3_load_weight0_avm_readdata(in_memdep_3_load_weight0_avm_readdata),
        .in_memdep_3_load_weight0_avm_readdatavalid(in_memdep_3_load_weight0_avm_readdatavalid),
        .in_memdep_3_load_weight0_avm_waitrequest(in_memdep_3_load_weight0_avm_waitrequest),
        .in_memdep_3_load_weight0_avm_writeack(in_memdep_3_load_weight0_avm_writeack),
        .out_memdep_3_load_weight0_avm_address(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_address),
        .out_memdep_3_load_weight0_avm_burstcount(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_burstcount),
        .out_memdep_3_load_weight0_avm_byteenable(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_byteenable),
        .out_memdep_3_load_weight0_avm_enable(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_enable),
        .out_memdep_3_load_weight0_avm_read(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_read),
        .out_memdep_3_load_weight0_avm_write(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_write),
        .out_memdep_3_load_weight0_avm_writedata(i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,117)
    assign out_memdep_3_load_weight0_avm_address = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_address;
    assign out_memdep_3_load_weight0_avm_enable = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_enable;
    assign out_memdep_3_load_weight0_avm_read = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_read;
    assign out_memdep_3_load_weight0_avm_write = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_write;
    assign out_memdep_3_load_weight0_avm_writedata = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_writedata;
    assign out_memdep_3_load_weight0_avm_byteenable = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_byteenable;
    assign out_memdep_3_load_weight0_avm_burstcount = i_llvm_fpga_mem_memdep_3_load_weight041_aunroll_x_out_memdep_3_load_weight0_avm_burstcount;

endmodule
