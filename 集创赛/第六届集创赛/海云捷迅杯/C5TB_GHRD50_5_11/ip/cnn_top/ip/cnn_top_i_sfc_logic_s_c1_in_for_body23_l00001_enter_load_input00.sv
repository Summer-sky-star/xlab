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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body23_l00001_enter_load_input00
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body23_l00001_enter_load_input00 (
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input020,
    output wire [0:0] out_unnamed_load_input040_0_tpl,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [0:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [63:0] in_c1_eni5_4_tpl,
    input wire [63:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_c1_eni5_6_tpl,
    input wire [0:0] in_i_valid,
    input wire [127:0] in_memdep_3_load_input0_avm_readdata,
    input wire [0:0] in_memdep_3_load_input0_avm_writeack,
    input wire [0:0] in_memdep_3_load_input0_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_input0_avm_readdatavalid,
    output wire [31:0] out_memdep_3_load_input0_avm_address,
    output wire [0:0] out_memdep_3_load_input0_avm_enable,
    output wire [0:0] out_memdep_3_load_input0_avm_read,
    output wire [0:0] out_memdep_3_load_input0_avm_write,
    output wire [127:0] out_memdep_3_load_input0_avm_writedata,
    output wire [15:0] out_memdep_3_load_input0_avm_byteenable,
    output wire [0:0] out_memdep_3_load_input0_avm_burstcount,
    input wire [0:0] in_flush,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc36_load_input042_sel_x_b;
    wire [7:0] i_extract_t_10_load_input029_sel_x_b;
    wire [7:0] i_extract_t_11_load_input031_sel_x_b;
    wire [7:0] i_extract_t_12_load_input033_sel_x_b;
    wire [7:0] i_extract_t_13_load_input035_sel_x_b;
    wire [7:0] i_extract_t_14_load_input037_sel_x_b;
    wire [7:0] i_extract_t_15_load_input039_sel_x_b;
    wire [7:0] i_extract_t_1_load_input012_sel_x_b;
    wire [7:0] i_extract_t_2_load_input014_sel_x_b;
    wire [7:0] i_extract_t_3_load_input016_sel_x_b;
    wire [7:0] i_extract_t_4_load_input018_sel_x_b;
    wire [7:0] i_extract_t_5_load_input020_sel_x_b;
    wire [7:0] i_extract_t_6_load_input022_sel_x_b;
    wire [7:0] i_extract_t_7_load_input024_sel_x_b;
    wire [7:0] i_extract_t_8_load_input025_sel_x_b;
    wire [7:0] i_extract_t_9_load_input027_sel_x_b;
    wire [7:0] i_extract_t_load_input08_sel_x_b;
    wire [63:0] i_idxprom30_load_input07_sel_x_b;
    wire [63:0] i_idxprom_load_input04_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_write;
    wire [127:0] i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_writedata;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_3_trunc_sel_x_b;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_5_trunc_sel_x_b;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_a;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_b;
    logic [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_o;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_q;
    wire [31:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_extender_x_q;
    wire [2:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_multconst_x_q;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_a;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_b;
    logic [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_o;
    wire [16:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_q;
    wire [63:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_append_upper_bits_x_q;
    wire [3:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x_q;
    wire [11:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_narrow_x_b;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_shift_join_x_q;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_160_q;
    wire [63:0] c_load_input0_input_buff_pmem_q;
    wire [63:0] i_idxprom30_load_input07_vt_join_q;
    wire [31:0] i_idxprom30_load_input07_vt_select_31_b;
    wire [63:0] i_idxprom_load_input04_vt_join_q;
    wire [31:0] i_idxprom_load_input04_vt_select_31_b;
    wire [32:0] i_inc36_load_input042_a;
    wire [32:0] i_inc36_load_input042_b;
    logic [32:0] i_inc36_load_input042_o;
    wire [32:0] i_inc36_load_input042_q;
    wire [31:0] i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_valid_out_25;
    wire [63:0] i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_join_q;
    wire [59:0] i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_select_63_b;
    wire [63:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_join_q;
    wire [59:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_select_63_b;
    wire [7:0] i_unnamed_load_input011_vt_const_63_q;
    wire [63:0] i_unnamed_load_input011_vt_join_q;
    wire [55:0] i_unnamed_load_input011_vt_select_55_b;
    wire [15:0] i_unnamed_load_input013_vt_const_63_q;
    wire [63:0] i_unnamed_load_input013_vt_join_q;
    wire [47:0] i_unnamed_load_input013_vt_select_47_b;
    wire [23:0] i_unnamed_load_input015_vt_const_63_q;
    wire [63:0] i_unnamed_load_input015_vt_join_q;
    wire [39:0] i_unnamed_load_input015_vt_select_39_b;
    wire [63:0] i_unnamed_load_input017_vt_join_q;
    wire [31:0] i_unnamed_load_input017_vt_select_31_b;
    wire [39:0] i_unnamed_load_input019_vt_const_63_q;
    wire [63:0] i_unnamed_load_input019_vt_join_q;
    wire [23:0] i_unnamed_load_input019_vt_select_23_b;
    wire [47:0] i_unnamed_load_input021_vt_const_63_q;
    wire [63:0] i_unnamed_load_input021_vt_join_q;
    wire [15:0] i_unnamed_load_input021_vt_select_15_b;
    wire [55:0] i_unnamed_load_input023_vt_const_63_q;
    wire [63:0] i_unnamed_load_input023_vt_join_q;
    wire [7:0] i_unnamed_load_input023_vt_select_7_b;
    wire [63:0] i_unnamed_load_input026_vt_join_q;
    wire [55:0] i_unnamed_load_input026_vt_select_55_b;
    wire [63:0] i_unnamed_load_input028_vt_join_q;
    wire [47:0] i_unnamed_load_input028_vt_select_47_b;
    wire [63:0] i_unnamed_load_input030_vt_join_q;
    wire [39:0] i_unnamed_load_input030_vt_select_39_b;
    wire [63:0] i_unnamed_load_input032_vt_join_q;
    wire [31:0] i_unnamed_load_input032_vt_select_31_b;
    wire [63:0] i_unnamed_load_input034_vt_join_q;
    wire [23:0] i_unnamed_load_input034_vt_select_23_b;
    wire [63:0] i_unnamed_load_input036_vt_join_q;
    wire [15:0] i_unnamed_load_input036_vt_select_15_b;
    wire [63:0] i_unnamed_load_input038_vt_join_q;
    wire [7:0] i_unnamed_load_input038_vt_select_7_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [55:0] rightShiftStage0Idx1Rng8_uid243_dupName_0_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid245_dupName_0_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q;
    wire [47:0] rightShiftStage0Idx1Rng16_uid251_dupName_1_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid253_dupName_1_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid264_dupName_2_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid266_dupName_2_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid272_dupName_3_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid274_dupName_3_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid285_dupName_4_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid287_dupName_4_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid298_dupName_5_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid300_dupName_5_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid316_dupName_6_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid318_dupName_6_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_q;
    wire [55:0] rightShiftStage0Idx1Rng8_uid324_dupName_7_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid326_dupName_7_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q;
    wire [47:0] rightShiftStage0Idx1Rng16_uid332_dupName_8_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid334_dupName_8_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q;
    wire [47:0] rightShiftStage1Idx1Rng16_uid345_dupName_9_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid347_dupName_9_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid353_dupName_10_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid355_dupName_10_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid366_dupName_11_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid368_dupName_11_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid379_dupName_12_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid381_dupName_12_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_q;
    wire [31:0] rightShiftStage2Idx1Rng32_uid397_dupName_13_i_unnamed_load_input00_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid399_dupName_13_i_unnamed_load_input00_shift_x_q;
    wire [0:0] rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_s;
    reg [63:0] rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_q;
    wire [16:0] xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [2:0] lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in;
    wire [2:0] lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    wire [13:0] highABits_uid444_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    wire [17:0] addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a;
    wire [17:0] addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    logic [17:0] addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o;
    wire [17:0] addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [20:0] add_uid446_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [1:0] lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in;
    wire [1:0] lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    wire [14:0] highBBits_uid450_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    wire [17:0] addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a;
    wire [17:0] addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    logic [17:0] addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o;
    wire [17:0] addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [19:0] add_uid452_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [4:0] padACst_uid454_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [24:0] aPostPad_uid455_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [25:0] a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a;
    wire [25:0] a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    logic [25:0] a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o;
    wire [25:0] a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [23:0] sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in;
    wire [23:0] sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b;
    wire [28:0] sR_mergedSignalTM_uid461_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q;
    wire [15:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_b;
    wire [47:0] i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c;
    reg [47:0] redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c_1_q;
    reg [1:0] redist1_lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q;
    reg [2:0] redist2_lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q;
    reg [0:0] redist3_valid_fanout_reg0_q_1_q;
    reg [31:0] redist4_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q;
    reg [0:0] redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q;
    reg [0:0] redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_q;
    reg [0:0] redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_0;
    reg [0:0] redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_1;
    reg [0:0] redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q;
    reg [0:0] redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_q;
    reg [0:0] redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_0;
    reg [0:0] redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_1;
    reg [0:0] redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_q;
    reg [0:0] redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_0;
    reg [0:0] redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_1;
    reg [0:0] redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_2;
    reg [0:0] redist10_sync_together66_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist10_sync_together66_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist10_sync_together66_aunroll_x_in_i_valid_3_delay_1;
    reg [15:0] redist11_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b_1_q;
    reg [15:0] redist12_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b_1_q;
    reg [7:0] redist13_i_extract_t_load_input08_sel_x_b_4_q;
    reg [7:0] redist13_i_extract_t_load_input08_sel_x_b_4_delay_0;
    reg [7:0] redist13_i_extract_t_load_input08_sel_x_b_4_delay_1;
    reg [7:0] redist13_i_extract_t_load_input08_sel_x_b_4_delay_2;
    reg [7:0] redist14_i_extract_t_9_load_input027_sel_x_b_4_q;
    reg [7:0] redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_0;
    reg [7:0] redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_1;
    reg [7:0] redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_2;
    reg [7:0] redist15_i_extract_t_8_load_input025_sel_x_b_4_q;
    reg [7:0] redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_0;
    reg [7:0] redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_1;
    reg [7:0] redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_2;
    reg [7:0] redist16_i_extract_t_7_load_input024_sel_x_b_4_q;
    reg [7:0] redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_0;
    reg [7:0] redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_1;
    reg [7:0] redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_2;
    reg [7:0] redist17_i_extract_t_6_load_input022_sel_x_b_4_q;
    reg [7:0] redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_0;
    reg [7:0] redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_1;
    reg [7:0] redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_2;
    reg [7:0] redist18_i_extract_t_5_load_input020_sel_x_b_4_q;
    reg [7:0] redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_0;
    reg [7:0] redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_1;
    reg [7:0] redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_2;
    reg [7:0] redist19_i_extract_t_4_load_input018_sel_x_b_4_q;
    reg [7:0] redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_0;
    reg [7:0] redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_1;
    reg [7:0] redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_2;
    reg [7:0] redist20_i_extract_t_3_load_input016_sel_x_b_4_q;
    reg [7:0] redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_0;
    reg [7:0] redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_1;
    reg [7:0] redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_2;
    reg [7:0] redist21_i_extract_t_2_load_input014_sel_x_b_4_q;
    reg [7:0] redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_0;
    reg [7:0] redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_1;
    reg [7:0] redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_2;
    reg [7:0] redist22_i_extract_t_1_load_input012_sel_x_b_4_q;
    reg [7:0] redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_0;
    reg [7:0] redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_1;
    reg [7:0] redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_2;
    reg [7:0] redist23_i_extract_t_15_load_input039_sel_x_b_4_q;
    reg [7:0] redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_0;
    reg [7:0] redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_1;
    reg [7:0] redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_2;
    reg [7:0] redist24_i_extract_t_14_load_input037_sel_x_b_4_q;
    reg [7:0] redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_0;
    reg [7:0] redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_1;
    reg [7:0] redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_2;
    reg [7:0] redist25_i_extract_t_13_load_input035_sel_x_b_4_q;
    reg [7:0] redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_0;
    reg [7:0] redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_1;
    reg [7:0] redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_2;
    reg [7:0] redist26_i_extract_t_12_load_input033_sel_x_b_4_q;
    reg [7:0] redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_0;
    reg [7:0] redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_1;
    reg [7:0] redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_2;
    reg [7:0] redist27_i_extract_t_11_load_input031_sel_x_b_4_q;
    reg [7:0] redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_0;
    reg [7:0] redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_1;
    reg [7:0] redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_2;
    reg [7:0] redist28_i_extract_t_10_load_input029_sel_x_b_4_q;
    reg [7:0] redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_0;
    reg [7:0] redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_1;
    reg [7:0] redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_2;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together66_aunroll_x_in_i_valid_3(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together66_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist10_sync_together66_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist10_sync_together66_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist10_sync_together66_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist10_sync_together66_aunroll_x_in_i_valid_3_delay_1 <= redist10_sync_together66_aunroll_x_in_i_valid_3_delay_0;
            redist10_sync_together66_aunroll_x_in_i_valid_3_q <= redist10_sync_together66_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // valid_fanout_reg0(REG,201)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist3_valid_fanout_reg0_q_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_valid_fanout_reg0_q_1_q <= '0;
        end
        else
        begin
            redist3_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,102)@35
    assign out_o_valid = redist3_valid_fanout_reg0_q_1_q;
    assign out_unnamed_load_input020 = GND_q;
    assign out_unnamed_load_input040_0_tpl = GND_q;

    // valid_fanout_reg4(REG,205)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist10_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_0 <= '0;
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_1 <= '0;
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_2 <= '0;
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_q <= '0;
        end
        else
        begin
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_0 <= $unsigned(in_c1_eni5_6_tpl);
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_1 <= redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_0;
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_2 <= redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_1;
            redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_q <= redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_delay_2;
        end
    end

    // c_load_input0_input_buff_pmem(CONSTANT,119)
    assign c_load_input0_input_buff_pmem_q = $unsigned(64'b0100000001000100000000000000000000000000000000000000000000000000);

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select(BITSELECT,481)@33
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_b = c_load_input0_input_buff_pmem_q[15:0];
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c = c_load_input0_input_buff_pmem_q[63:16];

    // redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c_1(DELAY,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c);
        end
    end

    // c_i32_050(CONSTANT,110)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg3(REG,204)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg5(REG,206)@33 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together66_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_160(CONSTANT,111)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc36_load_input042(ADD,146)@34
    assign i_inc36_load_input042_a = {1'b0, i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_data_out};
    assign i_inc36_load_input042_b = {1'b0, c_i32_160_q};
    assign i_inc36_load_input042_o = $unsigned(i_inc36_load_input042_a) + $unsigned(i_inc36_load_input042_b);
    assign i_inc36_load_input042_q = i_inc36_load_input042_o[32:0];

    // bgTrunc_i_inc36_load_input042_sel_x(BITSELECT,58)@34
    assign bgTrunc_i_inc36_load_input042_sel_x_b = i_inc36_load_input042_q[31:0];

    // redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q <= $unsigned(in_c1_eni5_3_tpl);
        end
    end

    // redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_0 <= '0;
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_1 <= '0;
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_q <= '0;
        end
        else
        begin
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_0 <= $unsigned(redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q);
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_1 <= redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_0;
            redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_q <= redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_push_i32_w_078_push25_load_input043(BLACKBOX,150)@34
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    cnn_top_i_llvm_fpga_push_i32_w_078_push25_load_input00 thei_llvm_fpga_push_i32_w_078_push25_load_input043 (
        .in_c1_ene3(redist8_sync_together66_aunroll_x_in_c1_eni5_3_tpl_4_q),
        .in_data_in(bgTrunc_i_inc36_load_input042_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q <= $unsigned(in_c1_eni5_2_tpl);
        end
    end

    // redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_0 <= '0;
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_1 <= '0;
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_q <= '0;
        end
        else
        begin
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_0 <= $unsigned(redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q);
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_1 <= redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_0;
            redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_q <= redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_delay_1;
        end
    end

    // i_llvm_fpga_pop_i32_w_078_pop25_load_input06(BLACKBOX,148)@34
    // out out_feedback_stall_out_25@20000000
    cnn_top_i_llvm_fpga_pop_i32_w_078_pop25_load_input00 thei_llvm_fpga_pop_i32_w_078_pop25_load_input06 (
        .in_data_in(c_i32_050_q),
        .in_dir(redist6_sync_together66_aunroll_x_in_c1_eni5_2_tpl_4_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_w_078_push25_load_input043_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom30_load_input07_sel_x(BITSELECT,75)@34
    assign i_idxprom30_load_input07_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_w_078_pop25_load_input06_out_data_out[31:0]};

    // i_idxprom30_load_input07_vt_select_31(BITSELECT,141)@34
    assign i_idxprom30_load_input07_vt_select_31_b = i_idxprom30_load_input07_sel_x_b[31:0];

    // i_idxprom30_load_input07_vt_join(BITJOIN,140)@34
    assign i_idxprom30_load_input07_vt_join_q = {c_i32_050_q, i_idxprom30_load_input07_vt_select_31_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_3_trunc_sel_x(BITSELECT,81)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_3_trunc_sel_x_b = i_idxprom30_load_input07_vt_join_q[15:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_narrow_x(BITSELECT,98)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_narrow_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_3_trunc_sel_x_b[11:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_shift_join_x(BITJOIN,99)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_shift_join_x_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_narrow_x_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x_q};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_multconst_x(CONSTANT,91)
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_multconst_x_q = $unsigned(3'b000);

    // valid_fanout_reg1(REG,202)@30 + 1
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

    // valid_fanout_reg2(REG,203)@30 + 1
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

    // i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03(BLACKBOX,149)@31
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    cnn_top_i_llvm_fpga_push_i32_row_081_pop0000_push31_load_input00 thei_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03 (
        .in_c1_ene3(redist7_sync_together66_aunroll_x_in_c1_eni5_3_tpl_1_q),
        .in_data_in(i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q <= $unsigned(in_c1_eni5_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02(BLACKBOX,147)@31
    // out out_feedback_stall_out_31@20000000
    cnn_top_i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input00 thei_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02 (
        .in_data_in(redist4_sync_together66_aunroll_x_in_c1_eni5_1_tpl_1_q),
        .in_dir(redist5_sync_together66_aunroll_x_in_c1_eni5_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_row_081_pop18103_push31_load_input03_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_load_input04_sel_x(BITSELECT,76)@31
    assign i_idxprom_load_input04_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_row_081_pop18103_pop31_load_input02_out_data_out[31:0]};

    // i_idxprom_load_input04_vt_select_31(BITSELECT,145)@31
    assign i_idxprom_load_input04_vt_select_31_b = i_idxprom_load_input04_sel_x_b[31:0];

    // i_idxprom_load_input04_vt_join(BITJOIN,144)@31
    assign i_idxprom_load_input04_vt_join_q = {c_i32_050_q, i_idxprom_load_input04_vt_select_31_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_trunc_sel_x(BITSELECT,78)@31
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_trunc_sel_x_b = i_idxprom_load_input04_vt_join_q[15:0];

    // xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITJOIN,438)@31
    assign xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = {GND_q, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_trunc_sel_x_b};

    // highABits_uid444_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITSELECT,443)@31
    assign highABits_uid444_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned(xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[16:3]);

    // addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(ADD,444)@31 + 1
    assign addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a = $unsigned({{4{highABits_uid444_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b[13]}}, highABits_uid444_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b});
    assign addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned({{1{xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[16]}}, xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o <= 18'b0;
        end
        else
        begin
            addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o <= $unsigned($signed(addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a) + $signed(addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b));
        end
    end
    assign addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o[17:0];

    // lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITSELECT,442)@31
    assign lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in = xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[2:0];
    assign lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in[2:0];

    // redist2_lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q <= '0;
        end
        else
        begin
            redist2_lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q <= $unsigned(lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b);
        end
    end

    // add_uid446_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITJOIN,445)@32
    assign add_uid446_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = {addhigh_uid445_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q, redist2_lowRangeA_uid443_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q};

    // highBBits_uid450_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITSELECT,449)@31
    assign highBBits_uid450_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned(xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[16:2]);

    // addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(ADD,450)@31 + 1
    assign addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a = $unsigned({{1{xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[16]}}, xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q});
    assign addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned({{3{highBBits_uid450_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b[14]}}, highBBits_uid450_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o <= 18'b0;
        end
        else
        begin
            addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o <= $unsigned($signed(addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a) + $signed(addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b));
        end
    end
    assign addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o[17:0];

    // lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITSELECT,448)@31
    assign lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in = xIfSign_mergedSignalTM_uid439_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[1:0];
    assign lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in[1:0];

    // redist1_lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q <= '0;
        end
        else
        begin
            redist1_lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q <= $unsigned(lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b);
        end
    end

    // add_uid452_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITJOIN,451)@32
    assign add_uid452_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = {addsumAHighB_uid451_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q, redist1_lowRangeB_uid449_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b_1_q};

    // aPostPad_uid455_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITJOIN,454)@32
    assign aPostPad_uid455_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = {add_uid452_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q, padACst_uid454_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q};

    // a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(SUB,455)@32
    assign a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a = $unsigned({{1{aPostPad_uid455_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[24]}}, aPostPad_uid455_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q});
    assign a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned({{5{add_uid446_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[20]}}, add_uid446_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q});
    assign a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o = $unsigned($signed(a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_a) - $signed(a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b));
    assign a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_o[25:0];

    // sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITSELECT,459)@32
    assign sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in = $unsigned(a_subconst_151_uid456_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q[23:0]);
    assign sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b = $unsigned(sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_in[23:0]);

    // padACst_uid454_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(CONSTANT,453)
    assign padACst_uid454_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = $unsigned(5'b00000);

    // sR_mergedSignalTM_uid461_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x(BITJOIN,460)@32
    assign sR_mergedSignalTM_uid461_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q = {sR_bottomRange_uid460_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_b, padACst_uid454_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_extender_x(BITJOIN,90)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_extender_x_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_multconst_x_q, sR_mergedSignalTM_uid461_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_x_q};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x(BITSELECT,79)@32
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_mult_extender_x_q[15:0];

    // redist12_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b_1(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist12_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b);
        end
    end

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x(ADD,93)@33
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_a = {1'b0, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_b};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_b = {1'b0, redist12_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_1_trunc_sel_x_b_1_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_o = $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_a) + $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_b);
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_q = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_o[16:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x(BITSELECT,80)@33
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_add_x_q[15:0];

    // redist11_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b_1(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist11_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b);
        end
    end

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x(ADD,84)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_a = {1'b0, redist11_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_2_trunc_sel_x_b_1_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_b = {1'b0, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_shift_join_x_q};
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_o = $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_a) + $unsigned(i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_b);
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_q = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_o[16:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_5_trunc_sel_x(BITSELECT,82)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_5_trunc_sel_x_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_0_add_x_q[15:0];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_append_upper_bits_x(BITJOIN,94)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_append_upper_bits_x_q = {redist0_i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_trunc_sel_x_merged_bit_select_c_1_q, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_dupName_5_trunc_sel_x_b};

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_select_63(BITSELECT,156)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_select_63_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_append_upper_bits_x_q[63:4];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_join(BITJOIN,155)@34
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_join_q = {i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_select_63_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x_q};

    // i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_select_63(BITSELECT,153)@34
    assign i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_select_63_b = i_ref_tmp_sroa_0_0_sroa_idx1_load_input09_vt_join_q[63:4];

    // i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x(CONSTANT,96)
    assign i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x_q = $unsigned(4'b0000);

    // i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_join(BITJOIN,152)@34
    assign i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_join_q = {i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_select_63_b, i_ref_tmp_sroa_0_0_sroa_idx1_load_input00_c_i4_02_x_q};

    // i_unnamed_load_input023_vt_const_63(CONSTANT,175)
    assign i_unnamed_load_input023_vt_const_63_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid397_dupName_13_i_unnamed_load_input00_shift_x(BITSELECT,396)@30
    assign rightShiftStage2Idx1Rng32_uid397_dupName_13_i_unnamed_load_input00_shift_x_b = rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid399_dupName_13_i_unnamed_load_input00_shift_x(BITJOIN,398)@30
    assign rightShiftStage2Idx1_uid399_dupName_13_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage2Idx1Rng32_uid397_dupName_13_i_unnamed_load_input00_shift_x_b};

    // i_unnamed_load_input013_vt_const_63(CONSTANT,160)
    assign i_unnamed_load_input013_vt_const_63_q = $unsigned(16'b0000000000000000);

    // rightShiftStage1Idx1Rng16_uid345_dupName_9_i_unnamed_load_input00_shift_x(BITSELECT,344)@30
    assign rightShiftStage1Idx1Rng16_uid345_dupName_9_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid347_dupName_9_i_unnamed_load_input00_shift_x(BITJOIN,346)@30
    assign rightShiftStage1Idx1_uid347_dupName_9_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input013_vt_const_63_q, rightShiftStage1Idx1Rng16_uid345_dupName_9_i_unnamed_load_input00_shift_x_b};

    // i_unnamed_load_input011_vt_const_63(CONSTANT,157)
    assign i_unnamed_load_input011_vt_const_63_q = $unsigned(8'b00000000);

    // rightShiftStage0Idx1Rng8_uid324_dupName_7_i_unnamed_load_input00_shift_x(BITSELECT,323)@30
    assign rightShiftStage0Idx1Rng8_uid324_dupName_7_i_unnamed_load_input00_shift_x_b = in_c1_eni5_5_tpl[63:8];

    // rightShiftStage0Idx1_uid326_dupName_7_i_unnamed_load_input00_shift_x(BITJOIN,325)@30
    assign rightShiftStage0Idx1_uid326_dupName_7_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input011_vt_const_63_q, rightShiftStage0Idx1Rng8_uid324_dupName_7_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x(MUX,327)@30
    assign rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid326_dupName_7_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid326_dupName_7_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x(MUX,348)@30
    assign rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid347_dupName_9_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid347_dupName_9_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x(MUX,400)@30
    assign rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_s or rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q or rightShiftStage2Idx1_uid399_dupName_13_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_q = rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_q = rightShiftStage2Idx1_uid399_dupName_13_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input038_vt_select_7(BITSELECT,198)@30
    assign i_unnamed_load_input038_vt_select_7_b = rightShiftStage2_uid401_dupName_13_i_unnamed_load_input00_shift_x_q[7:0];

    // i_unnamed_load_input038_vt_join(BITJOIN,197)@30
    assign i_unnamed_load_input038_vt_join_q = {i_unnamed_load_input023_vt_const_63_q, i_unnamed_load_input038_vt_select_7_b};

    // i_extract_t_15_load_input039_sel_x(BITSELECT,64)@30
    assign i_extract_t_15_load_input039_sel_x_b = i_unnamed_load_input038_vt_join_q[7:0];

    // redist23_i_extract_t_15_load_input039_sel_x_b_4(DELAY,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_0 <= '0;
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_1 <= '0;
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_2 <= '0;
            redist23_i_extract_t_15_load_input039_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_15_load_input039_sel_x_b);
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_1 <= redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_0;
            redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_2 <= redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_1;
            redist23_i_extract_t_15_load_input039_sel_x_b_4_q <= redist23_i_extract_t_15_load_input039_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input021_vt_const_63(CONSTANT,172)
    assign i_unnamed_load_input021_vt_const_63_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid379_dupName_12_i_unnamed_load_input00_shift_x(BITSELECT,378)@30
    assign rightShiftStage1Idx1Rng32_uid379_dupName_12_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid381_dupName_12_i_unnamed_load_input00_shift_x(BITJOIN,380)@30
    assign rightShiftStage1Idx1_uid381_dupName_12_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid379_dupName_12_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0Idx1Rng16_uid332_dupName_8_i_unnamed_load_input00_shift_x(BITSELECT,331)@30
    assign rightShiftStage0Idx1Rng16_uid332_dupName_8_i_unnamed_load_input00_shift_x_b = in_c1_eni5_5_tpl[63:16];

    // rightShiftStage0Idx1_uid334_dupName_8_i_unnamed_load_input00_shift_x(BITJOIN,333)@30
    assign rightShiftStage0Idx1_uid334_dupName_8_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input013_vt_const_63_q, rightShiftStage0Idx1Rng16_uid332_dupName_8_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x(MUX,335)@30
    assign rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid334_dupName_8_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid334_dupName_8_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x(MUX,382)@30
    assign rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid381_dupName_12_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid381_dupName_12_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input036_vt_select_15(BITSELECT,195)@30
    assign i_unnamed_load_input036_vt_select_15_b = rightShiftStage1_uid383_dupName_12_i_unnamed_load_input00_shift_x_q[15:0];

    // i_unnamed_load_input036_vt_join(BITJOIN,194)@30
    assign i_unnamed_load_input036_vt_join_q = {i_unnamed_load_input021_vt_const_63_q, i_unnamed_load_input036_vt_select_15_b};

    // i_extract_t_14_load_input037_sel_x(BITSELECT,63)@30
    assign i_extract_t_14_load_input037_sel_x_b = i_unnamed_load_input036_vt_join_q[7:0];

    // redist24_i_extract_t_14_load_input037_sel_x_b_4(DELAY,506)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_0 <= '0;
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_1 <= '0;
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_2 <= '0;
            redist24_i_extract_t_14_load_input037_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_14_load_input037_sel_x_b);
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_1 <= redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_0;
            redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_2 <= redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_1;
            redist24_i_extract_t_14_load_input037_sel_x_b_4_q <= redist24_i_extract_t_14_load_input037_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input019_vt_const_63(CONSTANT,169)
    assign i_unnamed_load_input019_vt_const_63_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid366_dupName_11_i_unnamed_load_input00_shift_x(BITSELECT,365)@30
    assign rightShiftStage1Idx1Rng32_uid366_dupName_11_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid368_dupName_11_i_unnamed_load_input00_shift_x(BITJOIN,367)@30
    assign rightShiftStage1Idx1_uid368_dupName_11_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid366_dupName_11_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x(MUX,369)@30
    assign rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid368_dupName_11_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid368_dupName_11_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input034_vt_select_23(BITSELECT,192)@30
    assign i_unnamed_load_input034_vt_select_23_b = rightShiftStage1_uid370_dupName_11_i_unnamed_load_input00_shift_x_q[23:0];

    // i_unnamed_load_input034_vt_join(BITJOIN,191)@30
    assign i_unnamed_load_input034_vt_join_q = {i_unnamed_load_input019_vt_const_63_q, i_unnamed_load_input034_vt_select_23_b};

    // i_extract_t_13_load_input035_sel_x(BITSELECT,62)@30
    assign i_extract_t_13_load_input035_sel_x_b = i_unnamed_load_input034_vt_join_q[7:0];

    // redist25_i_extract_t_13_load_input035_sel_x_b_4(DELAY,507)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_0 <= '0;
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_1 <= '0;
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_2 <= '0;
            redist25_i_extract_t_13_load_input035_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_13_load_input035_sel_x_b);
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_1 <= redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_0;
            redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_2 <= redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_1;
            redist25_i_extract_t_13_load_input035_sel_x_b_4_q <= redist25_i_extract_t_13_load_input035_sel_x_b_4_delay_2;
        end
    end

    // rightShiftStage0Idx1Rng32_uid353_dupName_10_i_unnamed_load_input00_shift_x(BITSELECT,352)@30
    assign rightShiftStage0Idx1Rng32_uid353_dupName_10_i_unnamed_load_input00_shift_x_b = in_c1_eni5_5_tpl[63:32];

    // rightShiftStage0Idx1_uid355_dupName_10_i_unnamed_load_input00_shift_x(BITJOIN,354)@30
    assign rightShiftStage0Idx1_uid355_dupName_10_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage0Idx1Rng32_uid353_dupName_10_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x(MUX,356)@30
    assign rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_s or in_c1_eni5_5_tpl or rightShiftStage0Idx1_uid355_dupName_10_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_q = in_c1_eni5_5_tpl;
            1'b1 : rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid355_dupName_10_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input032_vt_select_31(BITSELECT,189)@30
    assign i_unnamed_load_input032_vt_select_31_b = rightShiftStage0_uid357_dupName_10_i_unnamed_load_input00_shift_x_q[31:0];

    // i_unnamed_load_input032_vt_join(BITJOIN,188)@30
    assign i_unnamed_load_input032_vt_join_q = {c_i32_050_q, i_unnamed_load_input032_vt_select_31_b};

    // i_extract_t_12_load_input033_sel_x(BITSELECT,61)@30
    assign i_extract_t_12_load_input033_sel_x_b = i_unnamed_load_input032_vt_join_q[7:0];

    // redist26_i_extract_t_12_load_input033_sel_x_b_4(DELAY,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_0 <= '0;
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_1 <= '0;
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_2 <= '0;
            redist26_i_extract_t_12_load_input033_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_12_load_input033_sel_x_b);
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_1 <= redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_0;
            redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_2 <= redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_1;
            redist26_i_extract_t_12_load_input033_sel_x_b_4_q <= redist26_i_extract_t_12_load_input033_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input015_vt_const_63(CONSTANT,163)
    assign i_unnamed_load_input015_vt_const_63_q = $unsigned(24'b000000000000000000000000);

    // i_unnamed_load_input030_vt_select_39(BITSELECT,186)@30
    assign i_unnamed_load_input030_vt_select_39_b = rightShiftStage1_uid349_dupName_9_i_unnamed_load_input00_shift_x_q[39:0];

    // i_unnamed_load_input030_vt_join(BITJOIN,185)@30
    assign i_unnamed_load_input030_vt_join_q = {i_unnamed_load_input015_vt_const_63_q, i_unnamed_load_input030_vt_select_39_b};

    // i_extract_t_11_load_input031_sel_x(BITSELECT,60)@30
    assign i_extract_t_11_load_input031_sel_x_b = i_unnamed_load_input030_vt_join_q[7:0];

    // redist27_i_extract_t_11_load_input031_sel_x_b_4(DELAY,509)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_0 <= '0;
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_1 <= '0;
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_2 <= '0;
            redist27_i_extract_t_11_load_input031_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_11_load_input031_sel_x_b);
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_1 <= redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_0;
            redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_2 <= redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_1;
            redist27_i_extract_t_11_load_input031_sel_x_b_4_q <= redist27_i_extract_t_11_load_input031_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input028_vt_select_47(BITSELECT,183)@30
    assign i_unnamed_load_input028_vt_select_47_b = rightShiftStage0_uid336_dupName_8_i_unnamed_load_input00_shift_x_q[47:0];

    // i_unnamed_load_input028_vt_join(BITJOIN,182)@30
    assign i_unnamed_load_input028_vt_join_q = {i_unnamed_load_input013_vt_const_63_q, i_unnamed_load_input028_vt_select_47_b};

    // i_extract_t_10_load_input029_sel_x(BITSELECT,59)@30
    assign i_extract_t_10_load_input029_sel_x_b = i_unnamed_load_input028_vt_join_q[7:0];

    // redist28_i_extract_t_10_load_input029_sel_x_b_4(DELAY,510)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_0 <= '0;
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_1 <= '0;
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_2 <= '0;
            redist28_i_extract_t_10_load_input029_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_10_load_input029_sel_x_b);
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_1 <= redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_0;
            redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_2 <= redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_1;
            redist28_i_extract_t_10_load_input029_sel_x_b_4_q <= redist28_i_extract_t_10_load_input029_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input026_vt_select_55(BITSELECT,180)@30
    assign i_unnamed_load_input026_vt_select_55_b = rightShiftStage0_uid328_dupName_7_i_unnamed_load_input00_shift_x_q[55:0];

    // i_unnamed_load_input026_vt_join(BITJOIN,179)@30
    assign i_unnamed_load_input026_vt_join_q = {i_unnamed_load_input011_vt_const_63_q, i_unnamed_load_input026_vt_select_55_b};

    // i_extract_t_9_load_input027_sel_x(BITSELECT,73)@30
    assign i_extract_t_9_load_input027_sel_x_b = i_unnamed_load_input026_vt_join_q[7:0];

    // redist14_i_extract_t_9_load_input027_sel_x_b_4(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_0 <= '0;
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_1 <= '0;
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_2 <= '0;
            redist14_i_extract_t_9_load_input027_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_9_load_input027_sel_x_b);
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_1 <= redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_0;
            redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_2 <= redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_1;
            redist14_i_extract_t_9_load_input027_sel_x_b_4_q <= redist14_i_extract_t_9_load_input027_sel_x_b_4_delay_2;
        end
    end

    // i_extract_t_8_load_input025_sel_x(BITSELECT,72)@30
    assign i_extract_t_8_load_input025_sel_x_b = in_c1_eni5_5_tpl[7:0];

    // redist15_i_extract_t_8_load_input025_sel_x_b_4(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_0 <= '0;
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_1 <= '0;
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_2 <= '0;
            redist15_i_extract_t_8_load_input025_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_8_load_input025_sel_x_b);
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_1 <= redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_0;
            redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_2 <= redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_1;
            redist15_i_extract_t_8_load_input025_sel_x_b_4_q <= redist15_i_extract_t_8_load_input025_sel_x_b_4_delay_2;
        end
    end

    // rightShiftStage2Idx1Rng32_uid316_dupName_6_i_unnamed_load_input00_shift_x(BITSELECT,315)@30
    assign rightShiftStage2Idx1Rng32_uid316_dupName_6_i_unnamed_load_input00_shift_x_b = rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage2Idx1_uid318_dupName_6_i_unnamed_load_input00_shift_x(BITJOIN,317)@30
    assign rightShiftStage2Idx1_uid318_dupName_6_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage2Idx1Rng32_uid316_dupName_6_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage1Idx1Rng16_uid264_dupName_2_i_unnamed_load_input00_shift_x(BITSELECT,263)@30
    assign rightShiftStage1Idx1Rng16_uid264_dupName_2_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q[63:16];

    // rightShiftStage1Idx1_uid266_dupName_2_i_unnamed_load_input00_shift_x(BITJOIN,265)@30
    assign rightShiftStage1Idx1_uid266_dupName_2_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input013_vt_const_63_q, rightShiftStage1Idx1Rng16_uid264_dupName_2_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0Idx1Rng8_uid243_dupName_0_i_unnamed_load_input00_shift_x(BITSELECT,242)@30
    assign rightShiftStage0Idx1Rng8_uid243_dupName_0_i_unnamed_load_input00_shift_x_b = in_c1_eni5_4_tpl[63:8];

    // rightShiftStage0Idx1_uid245_dupName_0_i_unnamed_load_input00_shift_x(BITJOIN,244)@30
    assign rightShiftStage0Idx1_uid245_dupName_0_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input011_vt_const_63_q, rightShiftStage0Idx1Rng8_uid243_dupName_0_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x(MUX,246)@30
    assign rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid245_dupName_0_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid245_dupName_0_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x(MUX,267)@30
    assign rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid266_dupName_2_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid266_dupName_2_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x(MUX,319)@30
    assign rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_s or rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q or rightShiftStage2Idx1_uid318_dupName_6_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_q = rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_q = rightShiftStage2Idx1_uid318_dupName_6_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input023_vt_select_7(BITSELECT,177)@30
    assign i_unnamed_load_input023_vt_select_7_b = rightShiftStage2_uid320_dupName_6_i_unnamed_load_input00_shift_x_q[7:0];

    // i_unnamed_load_input023_vt_join(BITJOIN,176)@30
    assign i_unnamed_load_input023_vt_join_q = {i_unnamed_load_input023_vt_const_63_q, i_unnamed_load_input023_vt_select_7_b};

    // i_extract_t_7_load_input024_sel_x(BITSELECT,71)@30
    assign i_extract_t_7_load_input024_sel_x_b = i_unnamed_load_input023_vt_join_q[7:0];

    // redist16_i_extract_t_7_load_input024_sel_x_b_4(DELAY,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_0 <= '0;
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_1 <= '0;
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_2 <= '0;
            redist16_i_extract_t_7_load_input024_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_7_load_input024_sel_x_b);
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_1 <= redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_0;
            redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_2 <= redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_1;
            redist16_i_extract_t_7_load_input024_sel_x_b_4_q <= redist16_i_extract_t_7_load_input024_sel_x_b_4_delay_2;
        end
    end

    // rightShiftStage1Idx1Rng32_uid298_dupName_5_i_unnamed_load_input00_shift_x(BITSELECT,297)@30
    assign rightShiftStage1Idx1Rng32_uid298_dupName_5_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid300_dupName_5_i_unnamed_load_input00_shift_x(BITJOIN,299)@30
    assign rightShiftStage1Idx1_uid300_dupName_5_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid298_dupName_5_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0Idx1Rng16_uid251_dupName_1_i_unnamed_load_input00_shift_x(BITSELECT,250)@30
    assign rightShiftStage0Idx1Rng16_uid251_dupName_1_i_unnamed_load_input00_shift_x_b = in_c1_eni5_4_tpl[63:16];

    // rightShiftStage0Idx1_uid253_dupName_1_i_unnamed_load_input00_shift_x(BITJOIN,252)@30
    assign rightShiftStage0Idx1_uid253_dupName_1_i_unnamed_load_input00_shift_x_q = {i_unnamed_load_input013_vt_const_63_q, rightShiftStage0Idx1Rng16_uid251_dupName_1_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x(MUX,254)@30
    assign rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid253_dupName_1_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid253_dupName_1_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x(MUX,301)@30
    assign rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid300_dupName_5_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid300_dupName_5_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input021_vt_select_15(BITSELECT,174)@30
    assign i_unnamed_load_input021_vt_select_15_b = rightShiftStage1_uid302_dupName_5_i_unnamed_load_input00_shift_x_q[15:0];

    // i_unnamed_load_input021_vt_join(BITJOIN,173)@30
    assign i_unnamed_load_input021_vt_join_q = {i_unnamed_load_input021_vt_const_63_q, i_unnamed_load_input021_vt_select_15_b};

    // i_extract_t_6_load_input022_sel_x(BITSELECT,70)@30
    assign i_extract_t_6_load_input022_sel_x_b = i_unnamed_load_input021_vt_join_q[7:0];

    // redist17_i_extract_t_6_load_input022_sel_x_b_4(DELAY,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_0 <= '0;
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_1 <= '0;
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_2 <= '0;
            redist17_i_extract_t_6_load_input022_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_6_load_input022_sel_x_b);
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_1 <= redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_0;
            redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_2 <= redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_1;
            redist17_i_extract_t_6_load_input022_sel_x_b_4_q <= redist17_i_extract_t_6_load_input022_sel_x_b_4_delay_2;
        end
    end

    // rightShiftStage1Idx1Rng32_uid285_dupName_4_i_unnamed_load_input00_shift_x(BITSELECT,284)@30
    assign rightShiftStage1Idx1Rng32_uid285_dupName_4_i_unnamed_load_input00_shift_x_b = rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid287_dupName_4_i_unnamed_load_input00_shift_x(BITJOIN,286)@30
    assign rightShiftStage1Idx1_uid287_dupName_4_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage1Idx1Rng32_uid285_dupName_4_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x(MUX,288)@30
    assign rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_s or rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q or rightShiftStage1Idx1_uid287_dupName_4_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_q = rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q;
            1'b1 : rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_q = rightShiftStage1Idx1_uid287_dupName_4_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input019_vt_select_23(BITSELECT,171)@30
    assign i_unnamed_load_input019_vt_select_23_b = rightShiftStage1_uid289_dupName_4_i_unnamed_load_input00_shift_x_q[23:0];

    // i_unnamed_load_input019_vt_join(BITJOIN,170)@30
    assign i_unnamed_load_input019_vt_join_q = {i_unnamed_load_input019_vt_const_63_q, i_unnamed_load_input019_vt_select_23_b};

    // i_extract_t_5_load_input020_sel_x(BITSELECT,69)@30
    assign i_extract_t_5_load_input020_sel_x_b = i_unnamed_load_input019_vt_join_q[7:0];

    // redist18_i_extract_t_5_load_input020_sel_x_b_4(DELAY,500)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_0 <= '0;
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_1 <= '0;
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_2 <= '0;
            redist18_i_extract_t_5_load_input020_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_5_load_input020_sel_x_b);
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_1 <= redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_0;
            redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_2 <= redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_1;
            redist18_i_extract_t_5_load_input020_sel_x_b_4_q <= redist18_i_extract_t_5_load_input020_sel_x_b_4_delay_2;
        end
    end

    // rightShiftStage0Idx1Rng32_uid272_dupName_3_i_unnamed_load_input00_shift_x(BITSELECT,271)@30
    assign rightShiftStage0Idx1Rng32_uid272_dupName_3_i_unnamed_load_input00_shift_x_b = in_c1_eni5_4_tpl[63:32];

    // rightShiftStage0Idx1_uid274_dupName_3_i_unnamed_load_input00_shift_x(BITJOIN,273)@30
    assign rightShiftStage0Idx1_uid274_dupName_3_i_unnamed_load_input00_shift_x_q = {c_i32_050_q, rightShiftStage0Idx1Rng32_uid272_dupName_3_i_unnamed_load_input00_shift_x_b};

    // rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x(MUX,275)@30
    assign rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_s or in_c1_eni5_4_tpl or rightShiftStage0Idx1_uid274_dupName_3_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_s)
            1'b0 : rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_q = in_c1_eni5_4_tpl;
            1'b1 : rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_q = rightShiftStage0Idx1_uid274_dupName_3_i_unnamed_load_input00_shift_x_q;
            default : rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_q = 64'b0;
        endcase
    end

    // i_unnamed_load_input017_vt_select_31(BITSELECT,168)@30
    assign i_unnamed_load_input017_vt_select_31_b = rightShiftStage0_uid276_dupName_3_i_unnamed_load_input00_shift_x_q[31:0];

    // i_unnamed_load_input017_vt_join(BITJOIN,167)@30
    assign i_unnamed_load_input017_vt_join_q = {c_i32_050_q, i_unnamed_load_input017_vt_select_31_b};

    // i_extract_t_4_load_input018_sel_x(BITSELECT,68)@30
    assign i_extract_t_4_load_input018_sel_x_b = i_unnamed_load_input017_vt_join_q[7:0];

    // redist19_i_extract_t_4_load_input018_sel_x_b_4(DELAY,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_0 <= '0;
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_1 <= '0;
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_2 <= '0;
            redist19_i_extract_t_4_load_input018_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_4_load_input018_sel_x_b);
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_1 <= redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_0;
            redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_2 <= redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_1;
            redist19_i_extract_t_4_load_input018_sel_x_b_4_q <= redist19_i_extract_t_4_load_input018_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input015_vt_select_39(BITSELECT,165)@30
    assign i_unnamed_load_input015_vt_select_39_b = rightShiftStage1_uid268_dupName_2_i_unnamed_load_input00_shift_x_q[39:0];

    // i_unnamed_load_input015_vt_join(BITJOIN,164)@30
    assign i_unnamed_load_input015_vt_join_q = {i_unnamed_load_input015_vt_const_63_q, i_unnamed_load_input015_vt_select_39_b};

    // i_extract_t_3_load_input016_sel_x(BITSELECT,67)@30
    assign i_extract_t_3_load_input016_sel_x_b = i_unnamed_load_input015_vt_join_q[7:0];

    // redist20_i_extract_t_3_load_input016_sel_x_b_4(DELAY,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_0 <= '0;
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_1 <= '0;
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_2 <= '0;
            redist20_i_extract_t_3_load_input016_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_3_load_input016_sel_x_b);
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_1 <= redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_0;
            redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_2 <= redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_1;
            redist20_i_extract_t_3_load_input016_sel_x_b_4_q <= redist20_i_extract_t_3_load_input016_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input013_vt_select_47(BITSELECT,162)@30
    assign i_unnamed_load_input013_vt_select_47_b = rightShiftStage0_uid255_dupName_1_i_unnamed_load_input00_shift_x_q[47:0];

    // i_unnamed_load_input013_vt_join(BITJOIN,161)@30
    assign i_unnamed_load_input013_vt_join_q = {i_unnamed_load_input013_vt_const_63_q, i_unnamed_load_input013_vt_select_47_b};

    // i_extract_t_2_load_input014_sel_x(BITSELECT,66)@30
    assign i_extract_t_2_load_input014_sel_x_b = i_unnamed_load_input013_vt_join_q[7:0];

    // redist21_i_extract_t_2_load_input014_sel_x_b_4(DELAY,503)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_0 <= '0;
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_1 <= '0;
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_2 <= '0;
            redist21_i_extract_t_2_load_input014_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_2_load_input014_sel_x_b);
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_1 <= redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_0;
            redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_2 <= redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_1;
            redist21_i_extract_t_2_load_input014_sel_x_b_4_q <= redist21_i_extract_t_2_load_input014_sel_x_b_4_delay_2;
        end
    end

    // i_unnamed_load_input011_vt_select_55(BITSELECT,159)@30
    assign i_unnamed_load_input011_vt_select_55_b = rightShiftStage0_uid247_dupName_0_i_unnamed_load_input00_shift_x_q[55:0];

    // i_unnamed_load_input011_vt_join(BITJOIN,158)@30
    assign i_unnamed_load_input011_vt_join_q = {i_unnamed_load_input011_vt_const_63_q, i_unnamed_load_input011_vt_select_55_b};

    // i_extract_t_1_load_input012_sel_x(BITSELECT,65)@30
    assign i_extract_t_1_load_input012_sel_x_b = i_unnamed_load_input011_vt_join_q[7:0];

    // redist22_i_extract_t_1_load_input012_sel_x_b_4(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_0 <= '0;
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_1 <= '0;
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_2 <= '0;
            redist22_i_extract_t_1_load_input012_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_1_load_input012_sel_x_b);
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_1 <= redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_0;
            redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_2 <= redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_1;
            redist22_i_extract_t_1_load_input012_sel_x_b_4_q <= redist22_i_extract_t_1_load_input012_sel_x_b_4_delay_2;
        end
    end

    // i_extract_t_load_input08_sel_x(BITSELECT,74)@30
    assign i_extract_t_load_input08_sel_x_b = in_c1_eni5_4_tpl[7:0];

    // redist13_i_extract_t_load_input08_sel_x_b_4(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_0 <= '0;
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_1 <= '0;
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_2 <= '0;
            redist13_i_extract_t_load_input08_sel_x_b_4_q <= '0;
        end
        else
        begin
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_0 <= $unsigned(i_extract_t_load_input08_sel_x_b);
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_1 <= redist13_i_extract_t_load_input08_sel_x_b_4_delay_0;
            redist13_i_extract_t_load_input08_sel_x_b_4_delay_2 <= redist13_i_extract_t_load_input08_sel_x_b_4_delay_1;
            redist13_i_extract_t_load_input08_sel_x_b_4_q <= redist13_i_extract_t_load_input08_sel_x_b_4_delay_2;
        end
    end

    // i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x(BLACKBOX,77)@34
    // out out_memdep_3_load_input0_avm_address@20000000
    // out out_memdep_3_load_input0_avm_burstcount@20000000
    // out out_memdep_3_load_input0_avm_byteenable@20000000
    // out out_memdep_3_load_input0_avm_enable@20000000
    // out out_memdep_3_load_input0_avm_read@20000000
    // out out_memdep_3_load_input0_avm_write@20000000
    // out out_memdep_3_load_input0_avm_writedata@20000000
    // out out_o_stall@35
    // out out_o_valid@35
    // out out_o_writeack@35
    cnn_top_i_llvm_fpga_mem_memdep_3_load_input00 thei_llvm_fpga_mem_memdep_3_load_input041_aunroll_x (
        .in_i_writedata_0_tpl(redist13_i_extract_t_load_input08_sel_x_b_4_q),
        .in_i_writedata_1_tpl(redist22_i_extract_t_1_load_input012_sel_x_b_4_q),
        .in_i_writedata_2_tpl(redist21_i_extract_t_2_load_input014_sel_x_b_4_q),
        .in_i_writedata_3_tpl(redist20_i_extract_t_3_load_input016_sel_x_b_4_q),
        .in_i_writedata_4_tpl(redist19_i_extract_t_4_load_input018_sel_x_b_4_q),
        .in_i_writedata_5_tpl(redist18_i_extract_t_5_load_input020_sel_x_b_4_q),
        .in_i_writedata_6_tpl(redist17_i_extract_t_6_load_input022_sel_x_b_4_q),
        .in_i_writedata_7_tpl(redist16_i_extract_t_7_load_input024_sel_x_b_4_q),
        .in_i_writedata_8_tpl(redist15_i_extract_t_8_load_input025_sel_x_b_4_q),
        .in_i_writedata_9_tpl(redist14_i_extract_t_9_load_input027_sel_x_b_4_q),
        .in_i_writedata_10_tpl(redist28_i_extract_t_10_load_input029_sel_x_b_4_q),
        .in_i_writedata_11_tpl(redist27_i_extract_t_11_load_input031_sel_x_b_4_q),
        .in_i_writedata_12_tpl(redist26_i_extract_t_12_load_input033_sel_x_b_4_q),
        .in_i_writedata_13_tpl(redist25_i_extract_t_13_load_input035_sel_x_b_4_q),
        .in_i_writedata_14_tpl(redist24_i_extract_t_14_load_input037_sel_x_b_4_q),
        .in_i_writedata_15_tpl(redist23_i_extract_t_15_load_input039_sel_x_b_4_q),
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_load_input0_fpgaunique_31_load_input040_vt_join_q),
        .in_i_predicate(redist9_sync_together66_aunroll_x_in_c1_eni5_6_tpl_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_memdep_3_load_input0_avm_readdata(in_memdep_3_load_input0_avm_readdata),
        .in_memdep_3_load_input0_avm_readdatavalid(in_memdep_3_load_input0_avm_readdatavalid),
        .in_memdep_3_load_input0_avm_waitrequest(in_memdep_3_load_input0_avm_waitrequest),
        .in_memdep_3_load_input0_avm_writeack(in_memdep_3_load_input0_avm_writeack),
        .out_memdep_3_load_input0_avm_address(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_address),
        .out_memdep_3_load_input0_avm_burstcount(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_burstcount),
        .out_memdep_3_load_input0_avm_byteenable(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_byteenable),
        .out_memdep_3_load_input0_avm_enable(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_enable),
        .out_memdep_3_load_input0_avm_read(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_read),
        .out_memdep_3_load_input0_avm_write(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_write),
        .out_memdep_3_load_input0_avm_writedata(i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,121)
    assign out_memdep_3_load_input0_avm_address = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_address;
    assign out_memdep_3_load_input0_avm_enable = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_enable;
    assign out_memdep_3_load_input0_avm_read = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_read;
    assign out_memdep_3_load_input0_avm_write = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_write;
    assign out_memdep_3_load_input0_avm_writedata = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_writedata;
    assign out_memdep_3_load_input0_avm_byteenable = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_byteenable;
    assign out_memdep_3_load_input0_avm_burstcount = i_llvm_fpga_mem_memdep_3_load_input041_aunroll_x_out_memdep_3_load_input0_avm_burstcount;

endmodule
