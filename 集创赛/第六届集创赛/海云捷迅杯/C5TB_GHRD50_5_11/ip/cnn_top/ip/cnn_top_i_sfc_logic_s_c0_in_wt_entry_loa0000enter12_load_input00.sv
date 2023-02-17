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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000enter12_load_input00
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000enter12_load_input00 (
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [32:0] out_intel_reserved_ffwd_14_0,
    output wire [32:0] out_intel_reserved_ffwd_15_0,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    output wire [32:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input019_0_tpl,
    output wire [0:0] out_unnamed_load_input020,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [63:0] in_c0_eni1_1_tpl,
    input wire [31:0] in_c0_eni1_2_tpl,
    input wire [31:0] in_c0_eni1_3_tpl,
    input wire [31:0] in_c0_eni1_4_tpl,
    input wire [31:0] in_c0_eni1_5_tpl,
    input wire [31:0] in_c0_eni1_6_tpl,
    input wire [31:0] in_c0_eni1_7_tpl,
    input wire [31:0] in_c0_eni1_8_tpl,
    input wire [31:0] in_c0_eni1_9_tpl,
    input wire [31:0] in_c0_eni1_10_tpl,
    input wire [31:0] in_c0_eni1_11_tpl,
    input wire [31:0] in_c0_eni1_12_tpl,
    input wire [31:0] in_c0_eni1_13_tpl,
    input wire [31:0] in_c0_eni1_14_tpl,
    input wire [31:0] in_c0_eni1_15_tpl,
    input wire [31:0] in_c0_eni1_16_tpl,
    input wire [31:0] in_c0_eni1_17_tpl,
    input wire [31:0] in_c0_eni1_18_tpl,
    input wire [31:0] in_c0_eni1_19_tpl,
    input wire [31:0] in_c0_eni1_20_tpl,
    input wire [31:0] in_c0_eni1_21_tpl,
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add3_load_input06_sel_x_b;
    wire [31:0] bgTrunc_i_add5_load_input08_sel_x_b;
    wire [31:0] bgTrunc_i_add_load_input05_sel_x_b;
    wire [31:0] bgTrunc_i_mul10_add28_load_input016_sel_x_b;
    wire [63:0] bgTrunc_i_mul12_load_input017_sel_x_in;
    wire [31:0] bgTrunc_i_mul12_load_input017_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input026_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input028_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input032_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input034_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input038_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input040_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input044_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input046_sel_x_b;
    wire [31:0] c_i32_086_recast_x_q;
    wire [31:0] c_i32_184_recast_x_q;
    wire [32:0] i_unnamed_load_input027_sel_x_b;
    wire [32:0] i_unnamed_load_input033_sel_x_b;
    wire [32:0] i_unnamed_load_input039_sel_x_b;
    wire [32:0] i_unnamed_load_input045_sel_x_b;
    wire [31:0] c_i32_188_q;
    wire [32:0] c_i33_189_q;
    wire [32:0] i_add3_load_input06_a;
    wire [32:0] i_add3_load_input06_b;
    logic [32:0] i_add3_load_input06_o;
    wire [32:0] i_add3_load_input06_q;
    wire [32:0] i_add5_load_input08_a;
    wire [32:0] i_add5_load_input08_b;
    logic [32:0] i_add5_load_input08_o;
    wire [32:0] i_add5_load_input08_q;
    wire [32:0] i_add_load_input05_a;
    wire [32:0] i_add_load_input05_b;
    logic [32:0] i_add_load_input05_o;
    wire [32:0] i_add_load_input05_q;
    wire [33:0] i_cmp1779_load_input018_a;
    wire [33:0] i_cmp1779_load_input018_b;
    logic [33:0] i_cmp1779_load_input018_o;
    wire [0:0] i_cmp1779_load_input018_c;
    wire [33:0] i_cmp2176_load_input020_a;
    wire [33:0] i_cmp2176_load_input020_b;
    logic [33:0] i_cmp2176_load_input020_o;
    wire [0:0] i_cmp2176_load_input020_c;
    wire [33:0] i_cmp5070_load_input011_a;
    wire [33:0] i_cmp5070_load_input011_b;
    logic [33:0] i_cmp5070_load_input011_o;
    wire [0:0] i_cmp5070_load_input011_c;
    wire [33:0] i_cmp5965_load_input013_a;
    wire [33:0] i_cmp5965_load_input013_b;
    logic [33:0] i_cmp5965_load_input013_o;
    wire [0:0] i_cmp5965_load_input013_c;
    wire [33:0] i_cmp83_load_input09_a;
    wire [33:0] i_cmp83_load_input09_b;
    logic [33:0] i_cmp83_load_input09_o;
    wire [0:0] i_cmp83_load_input09_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input010_load_input056_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input012_load_input058_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input013_load_input059_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input014_load_input060_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input08_load_input054_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input09_load_input055_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input011_load_input057_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input02_load_input048_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input03_load_input049_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input04_load_input050_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input05_load_input051_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input06_load_input052_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input07_load_input053_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input015_load_input061_out_intel_reserved_ffwd_14_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input016_load_input062_out_intel_reserved_ffwd_15_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input017_load_input063_out_intel_reserved_ffwd_16_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input018_load_input064_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input01_load_input047_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_mul10_add28_load_input016_a;
    wire [32:0] i_mul10_add28_load_input016_b;
    logic [32:0] i_mul10_add28_load_input016_o;
    wire [32:0] i_mul10_add28_load_input016_q;
    wire [1:0] i_mul4_load_input07_vt_const_1_q;
    wire [31:0] i_mul4_load_input07_vt_join_q;
    wire [29:0] i_mul4_load_input07_vt_select_31_b;
    wire [31:0] i_mul_load_input04_vt_join_q;
    wire [30:0] i_mul_load_input04_vt_select_31_b;
    wire [0:0] i_smax19_load_input037_s;
    reg [31:0] i_smax19_load_input037_q;
    wire [31:0] i_smax19_load_input037_vt_join_q;
    wire [30:0] i_smax19_load_input037_vt_select_30_b;
    wire [0:0] i_smax23_load_input043_s;
    reg [31:0] i_smax23_load_input043_q;
    wire [31:0] i_smax23_load_input043_vt_join_q;
    wire [30:0] i_smax23_load_input043_vt_select_30_b;
    wire [0:0] i_smax9_load_input031_s;
    reg [31:0] i_smax9_load_input031_q;
    wire [31:0] i_smax9_load_input031_vt_join_q;
    wire [30:0] i_smax9_load_input031_vt_select_30_b;
    wire [0:0] i_smax_load_input025_s;
    reg [31:0] i_smax_load_input025_q;
    wire [31:0] i_smax_load_input025_vt_join_q;
    wire [30:0] i_smax_load_input025_vt_select_30_b;
    wire [31:0] i_unnamed_load_input015_vt_join_q;
    wire [29:0] i_unnamed_load_input015_vt_select_31_b;
    wire [0:0] i_unnamed_load_input022_q;
    wire [33:0] i_unnamed_load_input023_a;
    wire [33:0] i_unnamed_load_input023_b;
    logic [33:0] i_unnamed_load_input023_o;
    wire [0:0] i_unnamed_load_input023_c;
    wire [32:0] i_unnamed_load_input026_a;
    wire [32:0] i_unnamed_load_input026_b;
    logic [32:0] i_unnamed_load_input026_o;
    wire [32:0] i_unnamed_load_input026_q;
    wire [32:0] i_unnamed_load_input027_vt_join_q;
    wire [31:0] i_unnamed_load_input027_vt_select_31_b;
    wire [33:0] i_unnamed_load_input028_a;
    wire [33:0] i_unnamed_load_input028_b;
    logic [33:0] i_unnamed_load_input028_o;
    wire [33:0] i_unnamed_load_input028_q;
    wire [33:0] i_unnamed_load_input029_a;
    wire [33:0] i_unnamed_load_input029_b;
    logic [33:0] i_unnamed_load_input029_o;
    wire [0:0] i_unnamed_load_input029_c;
    wire [32:0] i_unnamed_load_input032_a;
    wire [32:0] i_unnamed_load_input032_b;
    logic [32:0] i_unnamed_load_input032_o;
    wire [32:0] i_unnamed_load_input032_q;
    wire [32:0] i_unnamed_load_input033_vt_join_q;
    wire [31:0] i_unnamed_load_input033_vt_select_31_b;
    wire [33:0] i_unnamed_load_input034_a;
    wire [33:0] i_unnamed_load_input034_b;
    logic [33:0] i_unnamed_load_input034_o;
    wire [33:0] i_unnamed_load_input034_q;
    wire [33:0] i_unnamed_load_input035_a;
    wire [33:0] i_unnamed_load_input035_b;
    logic [33:0] i_unnamed_load_input035_o;
    wire [0:0] i_unnamed_load_input035_c;
    wire [32:0] i_unnamed_load_input038_a;
    wire [32:0] i_unnamed_load_input038_b;
    logic [32:0] i_unnamed_load_input038_o;
    wire [32:0] i_unnamed_load_input038_q;
    wire [32:0] i_unnamed_load_input039_vt_join_q;
    wire [31:0] i_unnamed_load_input039_vt_select_31_b;
    wire [33:0] i_unnamed_load_input040_a;
    wire [33:0] i_unnamed_load_input040_b;
    logic [33:0] i_unnamed_load_input040_o;
    wire [33:0] i_unnamed_load_input040_q;
    wire [33:0] i_unnamed_load_input041_a;
    wire [33:0] i_unnamed_load_input041_b;
    logic [33:0] i_unnamed_load_input041_o;
    wire [0:0] i_unnamed_load_input041_c;
    wire [32:0] i_unnamed_load_input044_a;
    wire [32:0] i_unnamed_load_input044_b;
    logic [32:0] i_unnamed_load_input044_o;
    wire [32:0] i_unnamed_load_input044_q;
    wire [32:0] i_unnamed_load_input045_vt_join_q;
    wire [31:0] i_unnamed_load_input045_vt_select_31_b;
    wire [33:0] i_unnamed_load_input046_a;
    wire [33:0] i_unnamed_load_input046_b;
    logic [33:0] i_unnamed_load_input046_o;
    wire [33:0] i_unnamed_load_input046_q;
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
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid232_i_mul4_load_input00_shift_x_q;
    wire [0:0] leftShiftStage0_uid234_i_mul4_load_input00_shift_x_s;
    reg [31:0] leftShiftStage0_uid234_i_mul4_load_input00_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid240_i_mul_load_input00_shift_x_q;
    wire [0:0] leftShiftStage0_uid242_i_mul_load_input00_shift_x_s;
    reg [31:0] leftShiftStage0_uid242_i_mul_load_input00_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid248_i_unnamed_load_input00_shift_x_q;
    wire [0:0] leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_s;
    reg [31:0] leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_q;
    wire [17:0] i_mul12_load_input017_bs2_in;
    wire [17:0] i_mul12_load_input017_bs2_b;
    wire [13:0] i_mul12_load_input017_bs5_b;
    wire [63:0] i_mul12_load_input017_sums_join_0_q;
    wire [50:0] i_mul12_load_input017_sums_align_1_q;
    wire [50:0] i_mul12_load_input017_sums_align_1_qint;
    wire [64:0] i_mul12_load_input017_sums_result_add_0_0_a;
    wire [64:0] i_mul12_load_input017_sums_result_add_0_0_b;
    logic [64:0] i_mul12_load_input017_sums_result_add_0_0_o;
    wire [64:0] i_mul12_load_input017_sums_result_add_0_0_q;
    wire i_mul12_load_input017_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul12_load_input017_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul12_load_input017_im0_cma_c0 [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_p [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_u [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_w [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_x [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_y [0:0];
    reg [35:0] i_mul12_load_input017_im0_cma_s [0:0];
    wire [35:0] i_mul12_load_input017_im0_cma_qq;
    wire [35:0] i_mul12_load_input017_im0_cma_q;
    wire i_mul12_load_input017_im0_cma_ena0;
    wire i_mul12_load_input017_im0_cma_ena1;
    wire i_mul12_load_input017_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul12_load_input017_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul12_load_input017_im8_cma_c0 [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_p [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_u [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_w [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_x [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_y [0:0];
    reg [27:0] i_mul12_load_input017_im8_cma_s [0:0];
    wire [27:0] i_mul12_load_input017_im8_cma_qq;
    wire [27:0] i_mul12_load_input017_im8_cma_q;
    wire i_mul12_load_input017_im8_cma_ena0;
    wire i_mul12_load_input017_im8_cma_ena1;
    wire i_mul12_load_input017_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul12_load_input017_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul12_load_input017_ma3_cma_c0 [0:1];
    wire [31:0] i_mul12_load_input017_ma3_cma_p [0:1];
    wire [32:0] i_mul12_load_input017_ma3_cma_u [0:1];
    wire [32:0] i_mul12_load_input017_ma3_cma_w [0:0];
    wire [32:0] i_mul12_load_input017_ma3_cma_x [0:0];
    wire [32:0] i_mul12_load_input017_ma3_cma_y [0:0];
    reg [32:0] i_mul12_load_input017_ma3_cma_s [0:0];
    wire [32:0] i_mul12_load_input017_ma3_cma_qq;
    wire [32:0] i_mul12_load_input017_ma3_cma_q;
    wire i_mul12_load_input017_ma3_cma_ena0;
    wire i_mul12_load_input017_ma3_cma_ena1;
    wire [17:0] i_mul12_load_input017_bs1_merged_bit_select_b;
    wire [13:0] i_mul12_load_input017_bs1_merged_bit_select_c;
    reg [31:0] redist0_i_unnamed_load_input045_vt_select_31_b_1_q;
    reg [31:0] redist1_i_unnamed_load_input039_vt_select_31_b_1_q;
    reg [31:0] redist2_i_unnamed_load_input033_vt_select_31_b_1_q;
    reg [31:0] redist3_i_unnamed_load_input027_vt_select_31_b_1_q;
    reg [30:0] redist4_i_smax_load_input025_vt_select_30_b_1_q;
    reg [30:0] redist5_i_smax9_load_input031_vt_select_30_b_1_q;
    reg [30:0] redist6_i_smax23_load_input043_vt_select_30_b_1_q;
    reg [30:0] redist7_i_smax19_load_input037_vt_select_30_b_1_q;
    reg [63:0] redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [31:0] redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q;
    reg [31:0] redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q;
    reg [31:0] redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q;
    reg [31:0] redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q;
    reg [0:0] redist13_sync_together90_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together90_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist15_bgTrunc_i_add_load_input05_sel_x_b_1_q;
    reg [31:0] redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q;
    reg [31:0] redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together90_aunroll_x_in_i_valid_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together90_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together90_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,199)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_mul12_load_input017_bs5(BITSELECT,256)@2
    assign i_mul12_load_input017_bs5_b = in_c0_eni1_19_tpl[31:18];

    // i_mul12_load_input017_bs2(BITSELECT,253)@2
    assign i_mul12_load_input017_bs2_in = in_c0_eni1_19_tpl[17:0];
    assign i_mul12_load_input017_bs2_b = i_mul12_load_input017_bs2_in[17:0];

    // leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x(BITSELECT,246)@2
    assign leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_in = in_c0_eni1_5_tpl[29:0];
    assign leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_b = leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid248_i_unnamed_load_input00_shift_x(BITJOIN,247)@2
    assign leftShiftStage0Idx1_uid248_i_unnamed_load_input00_shift_x_q = {leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input00_shift_x_b, i_mul4_load_input07_vt_const_1_q};

    // leftShiftStage0_uid250_i_unnamed_load_input00_shift_x(MUX,249)@2
    assign leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_s or in_c0_eni1_5_tpl or leftShiftStage0Idx1_uid248_i_unnamed_load_input00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_s)
            1'b0 : leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_q = in_c0_eni1_5_tpl;
            1'b1 : leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_q = leftShiftStage0Idx1_uid248_i_unnamed_load_input00_shift_x_q;
            default : leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_input015_vt_select_31(BITSELECT,146)@2
    assign i_unnamed_load_input015_vt_select_31_b = leftShiftStage0_uid250_i_unnamed_load_input00_shift_x_q[31:2];

    // i_mul4_load_input07_vt_const_1(CONSTANT,122)
    assign i_mul4_load_input07_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_load_input015_vt_join(BITJOIN,145)@2
    assign i_unnamed_load_input015_vt_join_q = {i_unnamed_load_input015_vt_select_31_b, i_mul4_load_input07_vt_const_1_q};

    // i_mul10_add28_load_input016(ADD,120)@2
    assign i_mul10_add28_load_input016_a = {1'b0, in_c0_eni1_5_tpl};
    assign i_mul10_add28_load_input016_b = {1'b0, i_unnamed_load_input015_vt_join_q};
    assign i_mul10_add28_load_input016_o = $unsigned(i_mul10_add28_load_input016_a) + $unsigned(i_mul10_add28_load_input016_b);
    assign i_mul10_add28_load_input016_q = i_mul10_add28_load_input016_o[32:0];

    // bgTrunc_i_mul10_add28_load_input016_sel_x(BITSELECT,5)@2
    assign bgTrunc_i_mul10_add28_load_input016_sel_x_b = i_mul10_add28_load_input016_q[31:0];

    // i_mul12_load_input017_bs1_merged_bit_select(BITSELECT,269)@2
    assign i_mul12_load_input017_bs1_merged_bit_select_b = bgTrunc_i_mul10_add28_load_input016_sel_x_b[17:0];
    assign i_mul12_load_input017_bs1_merged_bit_select_c = bgTrunc_i_mul10_add28_load_input016_sel_x_b[31:18];

    // i_mul12_load_input017_ma3_cma(CHAINMULTADD,268)@2 + 2
    assign i_mul12_load_input017_ma3_cma_reset = ~ (resetn);
    assign i_mul12_load_input017_ma3_cma_ena0 = 1'b1;
    assign i_mul12_load_input017_ma3_cma_ena1 = i_mul12_load_input017_ma3_cma_ena0;
    assign i_mul12_load_input017_ma3_cma_p[0] = i_mul12_load_input017_ma3_cma_a0[0] * i_mul12_load_input017_ma3_cma_c0[0];
    assign i_mul12_load_input017_ma3_cma_p[1] = i_mul12_load_input017_ma3_cma_a0[1] * i_mul12_load_input017_ma3_cma_c0[1];
    assign i_mul12_load_input017_ma3_cma_u[0] = {1'b0, i_mul12_load_input017_ma3_cma_p[0][31:0]};
    assign i_mul12_load_input017_ma3_cma_u[1] = {1'b0, i_mul12_load_input017_ma3_cma_p[1][31:0]};
    assign i_mul12_load_input017_ma3_cma_w[0] = i_mul12_load_input017_ma3_cma_u[0] + i_mul12_load_input017_ma3_cma_u[1];
    assign i_mul12_load_input017_ma3_cma_x[0] = i_mul12_load_input017_ma3_cma_w[0];
    assign i_mul12_load_input017_ma3_cma_y[0] = i_mul12_load_input017_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_ma3_cma_a0 <= '{default: '0};
            i_mul12_load_input017_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_ma3_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input017_ma3_cma_a0[0] <= i_mul12_load_input017_bs1_merged_bit_select_c;
                i_mul12_load_input017_ma3_cma_a0[1] <= i_mul12_load_input017_bs5_b;
                i_mul12_load_input017_ma3_cma_c0[0] <= i_mul12_load_input017_bs2_b;
                i_mul12_load_input017_ma3_cma_c0[1] <= i_mul12_load_input017_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_ma3_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input017_ma3_cma_s[0] <= i_mul12_load_input017_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input017_ma3_cma_delay ( .xin(i_mul12_load_input017_ma3_cma_s[0]), .xout(i_mul12_load_input017_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input017_ma3_cma_q = $unsigned(i_mul12_load_input017_ma3_cma_qq[32:0]);

    // i_mul12_load_input017_sums_align_1(BITSHIFT,263)@4
    assign i_mul12_load_input017_sums_align_1_qint = { i_mul12_load_input017_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul12_load_input017_sums_align_1_q = i_mul12_load_input017_sums_align_1_qint[50:0];

    // i_mul12_load_input017_im8_cma(CHAINMULTADD,267)@2 + 2
    assign i_mul12_load_input017_im8_cma_reset = ~ (resetn);
    assign i_mul12_load_input017_im8_cma_ena0 = 1'b1;
    assign i_mul12_load_input017_im8_cma_ena1 = i_mul12_load_input017_im8_cma_ena0;
    assign i_mul12_load_input017_im8_cma_p[0] = i_mul12_load_input017_im8_cma_a0[0] * i_mul12_load_input017_im8_cma_c0[0];
    assign i_mul12_load_input017_im8_cma_u[0] = i_mul12_load_input017_im8_cma_p[0][27:0];
    assign i_mul12_load_input017_im8_cma_w[0] = i_mul12_load_input017_im8_cma_u[0];
    assign i_mul12_load_input017_im8_cma_x[0] = i_mul12_load_input017_im8_cma_w[0];
    assign i_mul12_load_input017_im8_cma_y[0] = i_mul12_load_input017_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_im8_cma_a0 <= '{default: '0};
            i_mul12_load_input017_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_im8_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input017_im8_cma_a0[0] <= i_mul12_load_input017_bs1_merged_bit_select_c;
                i_mul12_load_input017_im8_cma_c0[0] <= i_mul12_load_input017_bs5_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_im8_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input017_im8_cma_s[0] <= i_mul12_load_input017_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input017_im8_cma_delay ( .xin(i_mul12_load_input017_im8_cma_s[0]), .xout(i_mul12_load_input017_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input017_im8_cma_q = $unsigned(i_mul12_load_input017_im8_cma_qq[27:0]);

    // i_mul12_load_input017_im0_cma(CHAINMULTADD,266)@2 + 2
    assign i_mul12_load_input017_im0_cma_reset = ~ (resetn);
    assign i_mul12_load_input017_im0_cma_ena0 = 1'b1;
    assign i_mul12_load_input017_im0_cma_ena1 = i_mul12_load_input017_im0_cma_ena0;
    assign i_mul12_load_input017_im0_cma_p[0] = i_mul12_load_input017_im0_cma_a0[0] * i_mul12_load_input017_im0_cma_c0[0];
    assign i_mul12_load_input017_im0_cma_u[0] = i_mul12_load_input017_im0_cma_p[0][35:0];
    assign i_mul12_load_input017_im0_cma_w[0] = i_mul12_load_input017_im0_cma_u[0];
    assign i_mul12_load_input017_im0_cma_x[0] = i_mul12_load_input017_im0_cma_w[0];
    assign i_mul12_load_input017_im0_cma_y[0] = i_mul12_load_input017_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_im0_cma_a0 <= '{default: '0};
            i_mul12_load_input017_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_im0_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input017_im0_cma_a0[0] <= i_mul12_load_input017_bs1_merged_bit_select_b;
                i_mul12_load_input017_im0_cma_c0[0] <= i_mul12_load_input017_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input017_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input017_im0_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input017_im0_cma_s[0] <= i_mul12_load_input017_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input017_im0_cma_delay ( .xin(i_mul12_load_input017_im0_cma_s[0]), .xout(i_mul12_load_input017_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input017_im0_cma_q = $unsigned(i_mul12_load_input017_im0_cma_qq[35:0]);

    // i_mul12_load_input017_sums_join_0(BITJOIN,262)@4
    assign i_mul12_load_input017_sums_join_0_q = {i_mul12_load_input017_im8_cma_q, i_mul12_load_input017_im0_cma_q};

    // i_mul12_load_input017_sums_result_add_0_0(ADD,265)@4
    assign i_mul12_load_input017_sums_result_add_0_0_a = {1'b0, i_mul12_load_input017_sums_join_0_q};
    assign i_mul12_load_input017_sums_result_add_0_0_b = {14'b00000000000000, i_mul12_load_input017_sums_align_1_q};
    assign i_mul12_load_input017_sums_result_add_0_0_o = $unsigned(i_mul12_load_input017_sums_result_add_0_0_a) + $unsigned(i_mul12_load_input017_sums_result_add_0_0_b);
    assign i_mul12_load_input017_sums_result_add_0_0_q = i_mul12_load_input017_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul12_load_input017_sel_x(BITSELECT,6)@4
    assign bgTrunc_i_mul12_load_input017_sel_x_in = i_mul12_load_input017_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul12_load_input017_sel_x_b = bgTrunc_i_mul12_load_input017_sel_x_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input011_load_input057(BLACKBOX,108)@4
    // out out_intel_reserved_ffwd_10_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000nput011_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input011_load_input057 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bgTrunc_i_mul12_load_input017_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input011_load_input057_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input011_load_input057_out_intel_reserved_ffwd_10_0;

    // valid_fanout_reg12(REG,200)@2 + 1
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

    // leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x(BITSELECT,230)@2
    assign leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_in = in_c0_eni1_19_tpl[29:0];
    assign leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_b = leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid232_i_mul4_load_input00_shift_x(BITJOIN,231)@2
    assign leftShiftStage0Idx1_uid232_i_mul4_load_input00_shift_x_q = {leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input00_shift_x_b, i_mul4_load_input07_vt_const_1_q};

    // leftShiftStage0_uid234_i_mul4_load_input00_shift_x(MUX,233)@2
    assign leftShiftStage0_uid234_i_mul4_load_input00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid234_i_mul4_load_input00_shift_x_s or in_c0_eni1_19_tpl or leftShiftStage0Idx1_uid232_i_mul4_load_input00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid234_i_mul4_load_input00_shift_x_s)
            1'b0 : leftShiftStage0_uid234_i_mul4_load_input00_shift_x_q = in_c0_eni1_19_tpl;
            1'b1 : leftShiftStage0_uid234_i_mul4_load_input00_shift_x_q = leftShiftStage0Idx1_uid232_i_mul4_load_input00_shift_x_q;
            default : leftShiftStage0_uid234_i_mul4_load_input00_shift_x_q = 32'b0;
        endcase
    end

    // i_mul4_load_input07_vt_select_31(BITSELECT,124)@2
    assign i_mul4_load_input07_vt_select_31_b = leftShiftStage0_uid234_i_mul4_load_input00_shift_x_q[31:2];

    // i_mul4_load_input07_vt_join(BITJOIN,123)@2
    assign i_mul4_load_input07_vt_join_q = {i_mul4_load_input07_vt_select_31_b, i_mul4_load_input07_vt_const_1_q};

    // i_add5_load_input08(ADD,95)@2
    assign i_add5_load_input08_a = {1'b0, i_mul4_load_input07_vt_join_q};
    assign i_add5_load_input08_b = {1'b0, in_c0_eni1_16_tpl};
    assign i_add5_load_input08_o = $unsigned(i_add5_load_input08_a) + $unsigned(i_add5_load_input08_b);
    assign i_add5_load_input08_q = i_add5_load_input08_o[32:0];

    // bgTrunc_i_add5_load_input08_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_add5_load_input08_sel_x_b = i_add5_load_input08_q[31:0];

    // redist16_bgTrunc_i_add5_load_input08_sel_x_b_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q <= $unsigned(bgTrunc_i_add5_load_input08_sel_x_b);
        end
    end

    // c_i32_086_recast_x(CONSTANT,15)
    assign c_i32_086_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1779_load_input018(COMPARE,97)@3
    assign i_cmp1779_load_input018_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp1779_load_input018_b = $unsigned({{2{redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q[31]}}, redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q});
    assign i_cmp1779_load_input018_o = $unsigned($signed(i_cmp1779_load_input018_a) - $signed(i_cmp1779_load_input018_b));
    assign i_cmp1779_load_input018_c[0] = i_cmp1779_load_input018_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input012_load_input058(BLACKBOX,103)@3
    // out out_intel_reserved_ffwd_11_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput012_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input012_load_input058 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_cmp1779_load_input018_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input012_load_input058_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input012_load_input058_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg13(REG,201)@2 + 1
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

    // leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x(BITSELECT,238)@2
    assign leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_in = in_c0_eni1_17_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_b = leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid240_i_mul_load_input00_shift_x(BITJOIN,239)@2
    assign leftShiftStage0Idx1_uid240_i_mul_load_input00_shift_x_q = {leftShiftStage0Idx1Rng1_uid239_i_mul_load_input00_shift_x_b, GND_q};

    // leftShiftStage0_uid242_i_mul_load_input00_shift_x(MUX,241)@2
    assign leftShiftStage0_uid242_i_mul_load_input00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid242_i_mul_load_input00_shift_x_s or in_c0_eni1_17_tpl or leftShiftStage0Idx1_uid240_i_mul_load_input00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid242_i_mul_load_input00_shift_x_s)
            1'b0 : leftShiftStage0_uid242_i_mul_load_input00_shift_x_q = in_c0_eni1_17_tpl;
            1'b1 : leftShiftStage0_uid242_i_mul_load_input00_shift_x_q = leftShiftStage0Idx1_uid240_i_mul_load_input00_shift_x_q;
            default : leftShiftStage0_uid242_i_mul_load_input00_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_load_input04_vt_select_31(BITSELECT,127)@2
    assign i_mul_load_input04_vt_select_31_b = leftShiftStage0_uid242_i_mul_load_input00_shift_x_q[31:1];

    // i_mul_load_input04_vt_join(BITJOIN,126)@2
    assign i_mul_load_input04_vt_join_q = {i_mul_load_input04_vt_select_31_b, GND_q};

    // i_add3_load_input06(ADD,94)@2
    assign i_add3_load_input06_a = {1'b0, i_mul_load_input04_vt_join_q};
    assign i_add3_load_input06_b = {1'b0, in_c0_eni1_12_tpl};
    assign i_add3_load_input06_o = $unsigned(i_add3_load_input06_a) + $unsigned(i_add3_load_input06_b);
    assign i_add3_load_input06_q = i_add3_load_input06_o[32:0];

    // bgTrunc_i_add3_load_input06_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_add3_load_input06_sel_x_b = i_add3_load_input06_q[31:0];

    // redist17_bgTrunc_i_add3_load_input06_sel_x_b_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q <= $unsigned(bgTrunc_i_add3_load_input06_sel_x_b);
        end
    end

    // i_cmp2176_load_input020(COMPARE,98)@3
    assign i_cmp2176_load_input020_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp2176_load_input020_b = $unsigned({{2{redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q[31]}}, redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q});
    assign i_cmp2176_load_input020_o = $unsigned($signed(i_cmp2176_load_input020_a) - $signed(i_cmp2176_load_input020_b));
    assign i_cmp2176_load_input020_c[0] = i_cmp2176_load_input020_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input013_load_input059(BLACKBOX,104)@3
    // out out_intel_reserved_ffwd_12_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput013_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input013_load_input059 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_cmp2176_load_input020_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input013_load_input059_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input013_load_input059_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg14(REG,202)@2 + 1
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

    // redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q <= $unsigned(in_c0_eni1_3_tpl);
        end
    end

    // redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q <= $unsigned(in_c0_eni1_4_tpl);
        end
    end

    // i_cmp83_load_input09(COMPARE,101)@3
    assign i_cmp83_load_input09_a = $unsigned({{2{redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q[31]}}, redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q});
    assign i_cmp83_load_input09_b = $unsigned({{2{redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q[31]}}, redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q});
    assign i_cmp83_load_input09_o = $unsigned($signed(i_cmp83_load_input09_a) - $signed(i_cmp83_load_input09_b));
    assign i_cmp83_load_input09_c[0] = i_cmp83_load_input09_o[33];

    // i_unnamed_load_input022(LOGICAL,147)@3
    assign i_unnamed_load_input022_q = i_cmp83_load_input09_c ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input014_load_input060(BLACKBOX,105)@3
    // out out_intel_reserved_ffwd_13_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput014_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input014_load_input060 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_unnamed_load_input022_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input014_load_input060_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input014_load_input060_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg15(REG,203)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i33_189(CONSTANT,93)
    assign c_i33_189_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_188(CONSTANT,91)
    assign c_i32_188_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_184_recast_x(CONSTANT,16)
    assign c_i32_184_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_load_input023(COMPARE,148)@2
    assign i_unnamed_load_input023_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input023_b = $unsigned({{2{in_c0_eni1_15_tpl[31]}}, in_c0_eni1_15_tpl});
    assign i_unnamed_load_input023_o = $unsigned($signed(i_unnamed_load_input023_a) - $signed(i_unnamed_load_input023_b));
    assign i_unnamed_load_input023_c[0] = i_unnamed_load_input023_o[33];

    // i_smax_load_input025(MUX,140)@2
    assign i_smax_load_input025_s = i_unnamed_load_input023_c;
    always @(i_smax_load_input025_s or c_i32_184_recast_x_q or in_c0_eni1_15_tpl)
    begin
        unique case (i_smax_load_input025_s)
            1'b0 : i_smax_load_input025_q = c_i32_184_recast_x_q;
            1'b1 : i_smax_load_input025_q = in_c0_eni1_15_tpl;
            default : i_smax_load_input025_q = 32'b0;
        endcase
    end

    // i_smax_load_input025_vt_select_30(BITSELECT,143)@2
    assign i_smax_load_input025_vt_select_30_b = i_smax_load_input025_q[30:0];

    // redist4_i_smax_load_input025_vt_select_30_b_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_smax_load_input025_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist4_i_smax_load_input025_vt_select_30_b_1_q <= $unsigned(i_smax_load_input025_vt_select_30_b);
        end
    end

    // i_smax_load_input025_vt_join(BITJOIN,142)@3
    assign i_smax_load_input025_vt_join_q = {GND_q, redist4_i_smax_load_input025_vt_select_30_b_1_q};

    // i_unnamed_load_input026(ADD,149)@3
    assign i_unnamed_load_input026_a = {1'b0, i_smax_load_input025_vt_join_q};
    assign i_unnamed_load_input026_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input026_o = $unsigned(i_unnamed_load_input026_a) + $unsigned(i_unnamed_load_input026_b);
    assign i_unnamed_load_input026_q = i_unnamed_load_input026_o[32:0];

    // bgTrunc_i_unnamed_load_input026_sel_x(BITSELECT,7)@3
    assign bgTrunc_i_unnamed_load_input026_sel_x_b = i_unnamed_load_input026_q[31:0];

    // i_unnamed_load_input027_sel_x(BITSELECT,52)@3
    assign i_unnamed_load_input027_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input026_sel_x_b[31:0]};

    // i_unnamed_load_input027_vt_select_31(BITSELECT,153)@3
    assign i_unnamed_load_input027_vt_select_31_b = i_unnamed_load_input027_sel_x_b[31:0];

    // redist3_i_unnamed_load_input027_vt_select_31_b_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_load_input027_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist3_i_unnamed_load_input027_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input027_vt_select_31_b);
        end
    end

    // i_unnamed_load_input027_vt_join(BITJOIN,152)@4
    assign i_unnamed_load_input027_vt_join_q = {GND_q, redist3_i_unnamed_load_input027_vt_select_31_b_1_q};

    // i_unnamed_load_input028(ADD,154)@4
    assign i_unnamed_load_input028_a = {1'b0, i_unnamed_load_input027_vt_join_q};
    assign i_unnamed_load_input028_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input028_o = $unsigned(i_unnamed_load_input028_a) + $unsigned(i_unnamed_load_input028_b);
    assign i_unnamed_load_input028_q = i_unnamed_load_input028_o[33:0];

    // bgTrunc_i_unnamed_load_input028_sel_x(BITSELECT,8)@4
    assign bgTrunc_i_unnamed_load_input028_sel_x_b = i_unnamed_load_input028_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input015_load_input061(BLACKBOX,115)@4
    // out out_intel_reserved_ffwd_14_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput015_load_input00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input015_load_input061 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(bgTrunc_i_unnamed_load_input028_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input015_load_input061_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input015_load_input061_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg16(REG,204)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_unnamed_load_input029(COMPARE,155)@2
    assign i_unnamed_load_input029_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input029_b = $unsigned({{2{in_c0_eni1_16_tpl[31]}}, in_c0_eni1_16_tpl});
    assign i_unnamed_load_input029_o = $unsigned($signed(i_unnamed_load_input029_a) - $signed(i_unnamed_load_input029_b));
    assign i_unnamed_load_input029_c[0] = i_unnamed_load_input029_o[33];

    // i_smax9_load_input031(MUX,136)@2
    assign i_smax9_load_input031_s = i_unnamed_load_input029_c;
    always @(i_smax9_load_input031_s or c_i32_184_recast_x_q or in_c0_eni1_16_tpl)
    begin
        unique case (i_smax9_load_input031_s)
            1'b0 : i_smax9_load_input031_q = c_i32_184_recast_x_q;
            1'b1 : i_smax9_load_input031_q = in_c0_eni1_16_tpl;
            default : i_smax9_load_input031_q = 32'b0;
        endcase
    end

    // i_smax9_load_input031_vt_select_30(BITSELECT,139)@2
    assign i_smax9_load_input031_vt_select_30_b = i_smax9_load_input031_q[30:0];

    // redist5_i_smax9_load_input031_vt_select_30_b_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_smax9_load_input031_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist5_i_smax9_load_input031_vt_select_30_b_1_q <= $unsigned(i_smax9_load_input031_vt_select_30_b);
        end
    end

    // i_smax9_load_input031_vt_join(BITJOIN,138)@3
    assign i_smax9_load_input031_vt_join_q = {GND_q, redist5_i_smax9_load_input031_vt_select_30_b_1_q};

    // i_unnamed_load_input032(ADD,156)@3
    assign i_unnamed_load_input032_a = {1'b0, i_smax9_load_input031_vt_join_q};
    assign i_unnamed_load_input032_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input032_o = $unsigned(i_unnamed_load_input032_a) + $unsigned(i_unnamed_load_input032_b);
    assign i_unnamed_load_input032_q = i_unnamed_load_input032_o[32:0];

    // bgTrunc_i_unnamed_load_input032_sel_x(BITSELECT,9)@3
    assign bgTrunc_i_unnamed_load_input032_sel_x_b = i_unnamed_load_input032_q[31:0];

    // i_unnamed_load_input033_sel_x(BITSELECT,53)@3
    assign i_unnamed_load_input033_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input032_sel_x_b[31:0]};

    // i_unnamed_load_input033_vt_select_31(BITSELECT,160)@3
    assign i_unnamed_load_input033_vt_select_31_b = i_unnamed_load_input033_sel_x_b[31:0];

    // redist2_i_unnamed_load_input033_vt_select_31_b_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_load_input033_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_load_input033_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input033_vt_select_31_b);
        end
    end

    // i_unnamed_load_input033_vt_join(BITJOIN,159)@4
    assign i_unnamed_load_input033_vt_join_q = {GND_q, redist2_i_unnamed_load_input033_vt_select_31_b_1_q};

    // i_unnamed_load_input034(ADD,161)@4
    assign i_unnamed_load_input034_a = {1'b0, i_unnamed_load_input033_vt_join_q};
    assign i_unnamed_load_input034_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input034_o = $unsigned(i_unnamed_load_input034_a) + $unsigned(i_unnamed_load_input034_b);
    assign i_unnamed_load_input034_q = i_unnamed_load_input034_o[33:0];

    // bgTrunc_i_unnamed_load_input034_sel_x(BITSELECT,10)@4
    assign bgTrunc_i_unnamed_load_input034_sel_x_b = i_unnamed_load_input034_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input016_load_input062(BLACKBOX,116)@4
    // out out_intel_reserved_ffwd_15_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput016_load_input00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input016_load_input062 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bgTrunc_i_unnamed_load_input034_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input016_load_input062_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input016_load_input062_out_intel_reserved_ffwd_15_0;

    // redist14_sync_together90_aunroll_x_in_i_valid_2(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together90_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist14_sync_together90_aunroll_x_in_i_valid_2_q <= $unsigned(redist13_sync_together90_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg17(REG,205)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist14_sync_together90_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_unnamed_load_input035(COMPARE,162)@3
    assign i_unnamed_load_input035_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input035_b = $unsigned({{2{redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q[31]}}, redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q});
    assign i_unnamed_load_input035_o = $unsigned($signed(i_unnamed_load_input035_a) - $signed(i_unnamed_load_input035_b));
    assign i_unnamed_load_input035_c[0] = i_unnamed_load_input035_o[33];

    // i_smax19_load_input037(MUX,128)@3
    assign i_smax19_load_input037_s = i_unnamed_load_input035_c;
    always @(i_smax19_load_input037_s or c_i32_184_recast_x_q or redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q)
    begin
        unique case (i_smax19_load_input037_s)
            1'b0 : i_smax19_load_input037_q = c_i32_184_recast_x_q;
            1'b1 : i_smax19_load_input037_q = redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q;
            default : i_smax19_load_input037_q = 32'b0;
        endcase
    end

    // i_smax19_load_input037_vt_select_30(BITSELECT,131)@3
    assign i_smax19_load_input037_vt_select_30_b = i_smax19_load_input037_q[30:0];

    // redist7_i_smax19_load_input037_vt_select_30_b_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_smax19_load_input037_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist7_i_smax19_load_input037_vt_select_30_b_1_q <= $unsigned(i_smax19_load_input037_vt_select_30_b);
        end
    end

    // i_smax19_load_input037_vt_join(BITJOIN,130)@4
    assign i_smax19_load_input037_vt_join_q = {GND_q, redist7_i_smax19_load_input037_vt_select_30_b_1_q};

    // i_unnamed_load_input038(ADD,163)@4
    assign i_unnamed_load_input038_a = {1'b0, i_smax19_load_input037_vt_join_q};
    assign i_unnamed_load_input038_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input038_o = $unsigned(i_unnamed_load_input038_a) + $unsigned(i_unnamed_load_input038_b);
    assign i_unnamed_load_input038_q = i_unnamed_load_input038_o[32:0];

    // bgTrunc_i_unnamed_load_input038_sel_x(BITSELECT,11)@4
    assign bgTrunc_i_unnamed_load_input038_sel_x_b = i_unnamed_load_input038_q[31:0];

    // i_unnamed_load_input039_sel_x(BITSELECT,54)@4
    assign i_unnamed_load_input039_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input038_sel_x_b[31:0]};

    // i_unnamed_load_input039_vt_select_31(BITSELECT,167)@4
    assign i_unnamed_load_input039_vt_select_31_b = i_unnamed_load_input039_sel_x_b[31:0];

    // redist1_i_unnamed_load_input039_vt_select_31_b_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_load_input039_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_load_input039_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input039_vt_select_31_b);
        end
    end

    // i_unnamed_load_input039_vt_join(BITJOIN,166)@5
    assign i_unnamed_load_input039_vt_join_q = {GND_q, redist1_i_unnamed_load_input039_vt_select_31_b_1_q};

    // i_unnamed_load_input040(ADD,168)@5
    assign i_unnamed_load_input040_a = {1'b0, i_unnamed_load_input039_vt_join_q};
    assign i_unnamed_load_input040_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input040_o = $unsigned(i_unnamed_load_input040_a) + $unsigned(i_unnamed_load_input040_b);
    assign i_unnamed_load_input040_q = i_unnamed_load_input040_o[33:0];

    // bgTrunc_i_unnamed_load_input040_sel_x(BITSELECT,12)@5
    assign bgTrunc_i_unnamed_load_input040_sel_x_b = i_unnamed_load_input040_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input017_load_input063(BLACKBOX,117)@5
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput017_load_input00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input017_load_input063 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(bgTrunc_i_unnamed_load_input040_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input017_load_input063_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input017_load_input063_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg18(REG,206)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist14_sync_together90_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_unnamed_load_input041(COMPARE,169)@3
    assign i_unnamed_load_input041_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input041_b = $unsigned({{2{redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q[31]}}, redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q});
    assign i_unnamed_load_input041_o = $unsigned($signed(i_unnamed_load_input041_a) - $signed(i_unnamed_load_input041_b));
    assign i_unnamed_load_input041_c[0] = i_unnamed_load_input041_o[33];

    // i_smax23_load_input043(MUX,132)@3
    assign i_smax23_load_input043_s = i_unnamed_load_input041_c;
    always @(i_smax23_load_input043_s or c_i32_184_recast_x_q or redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q)
    begin
        unique case (i_smax23_load_input043_s)
            1'b0 : i_smax23_load_input043_q = c_i32_184_recast_x_q;
            1'b1 : i_smax23_load_input043_q = redist16_bgTrunc_i_add5_load_input08_sel_x_b_1_q;
            default : i_smax23_load_input043_q = 32'b0;
        endcase
    end

    // i_smax23_load_input043_vt_select_30(BITSELECT,135)@3
    assign i_smax23_load_input043_vt_select_30_b = i_smax23_load_input043_q[30:0];

    // redist6_i_smax23_load_input043_vt_select_30_b_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_smax23_load_input043_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist6_i_smax23_load_input043_vt_select_30_b_1_q <= $unsigned(i_smax23_load_input043_vt_select_30_b);
        end
    end

    // i_smax23_load_input043_vt_join(BITJOIN,134)@4
    assign i_smax23_load_input043_vt_join_q = {GND_q, redist6_i_smax23_load_input043_vt_select_30_b_1_q};

    // i_unnamed_load_input044(ADD,170)@4
    assign i_unnamed_load_input044_a = {1'b0, i_smax23_load_input043_vt_join_q};
    assign i_unnamed_load_input044_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input044_o = $unsigned(i_unnamed_load_input044_a) + $unsigned(i_unnamed_load_input044_b);
    assign i_unnamed_load_input044_q = i_unnamed_load_input044_o[32:0];

    // bgTrunc_i_unnamed_load_input044_sel_x(BITSELECT,13)@4
    assign bgTrunc_i_unnamed_load_input044_sel_x_b = i_unnamed_load_input044_q[31:0];

    // i_unnamed_load_input045_sel_x(BITSELECT,55)@4
    assign i_unnamed_load_input045_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input044_sel_x_b[31:0]};

    // i_unnamed_load_input045_vt_select_31(BITSELECT,174)@4
    assign i_unnamed_load_input045_vt_select_31_b = i_unnamed_load_input045_sel_x_b[31:0];

    // redist0_i_unnamed_load_input045_vt_select_31_b_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input045_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input045_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input045_vt_select_31_b);
        end
    end

    // i_unnamed_load_input045_vt_join(BITJOIN,173)@5
    assign i_unnamed_load_input045_vt_join_q = {GND_q, redist0_i_unnamed_load_input045_vt_select_31_b_1_q};

    // i_unnamed_load_input046(ADD,175)@5
    assign i_unnamed_load_input046_a = {1'b0, i_unnamed_load_input045_vt_join_q};
    assign i_unnamed_load_input046_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input046_o = $unsigned(i_unnamed_load_input046_a) + $unsigned(i_unnamed_load_input046_b);
    assign i_unnamed_load_input046_q = i_unnamed_load_input046_o[33:0];

    // bgTrunc_i_unnamed_load_input046_sel_x(BITSELECT,14)@5
    assign bgTrunc_i_unnamed_load_input046_sel_x_b = i_unnamed_load_input046_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input018_load_input064(BLACKBOX,118)@5
    // out out_intel_reserved_ffwd_17_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput018_load_input00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input018_load_input064 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(bgTrunc_i_unnamed_load_input046_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input018_load_input064_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input018_load_input064_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg2(REG,190)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input02_load_input048(BLACKBOX,109)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input02_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input02_load_input048 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input02_load_input048_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input02_load_input048_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,191)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input03_load_input049(BLACKBOX,110)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input03_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input03_load_input049 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input03_load_input049_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input03_load_input049_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg4(REG,192)@2 + 1
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

    // redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q <= $unsigned(in_c0_eni1_6_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input04_load_input050(BLACKBOX,111)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input04_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input04_load_input050 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input04_load_input050_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input04_load_input050_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg5(REG,193)@2 + 1
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

    // redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q <= $unsigned(in_c0_eni1_19_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input05_load_input051(BLACKBOX,112)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input05_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input05_load_input051 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input05_load_input051_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input05_load_input051_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg6(REG,194)@2 + 1
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

    // i_add_load_input05(ADD,96)@2
    assign i_add_load_input05_a = {1'b0, i_mul_load_input04_vt_join_q};
    assign i_add_load_input05_b = {1'b0, in_c0_eni1_11_tpl};
    assign i_add_load_input05_o = $unsigned(i_add_load_input05_a) + $unsigned(i_add_load_input05_b);
    assign i_add_load_input05_q = i_add_load_input05_o[32:0];

    // bgTrunc_i_add_load_input05_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_add_load_input05_sel_x_b = i_add_load_input05_q[31:0];

    // redist15_bgTrunc_i_add_load_input05_sel_x_b_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_add_load_input05_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_bgTrunc_i_add_load_input05_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_load_input05_sel_x_b);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input06_load_input052(BLACKBOX,113)@3
    // out out_intel_reserved_ffwd_5_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input06_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input06_load_input052 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist15_bgTrunc_i_add_load_input05_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input06_load_input052_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input06_load_input052_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg7(REG,195)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input07_load_input053(BLACKBOX,114)@3
    // out out_intel_reserved_ffwd_6_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input07_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input07_load_input053 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(redist17_bgTrunc_i_add3_load_input06_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input07_load_input053_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input07_load_input053_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg8(REG,196)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input08_load_input054(BLACKBOX,106)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000input08_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input08_load_input054 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_cmp83_load_input09_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input08_load_input054_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input08_load_input054_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg9(REG,197)@2 + 1
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

    // i_cmp5070_load_input011(COMPARE,99)@2 + 1
    assign i_cmp5070_load_input011_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp5070_load_input011_b = $unsigned({{2{in_c0_eni1_16_tpl[31]}}, in_c0_eni1_16_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp5070_load_input011_o <= 34'b0;
        end
        else
        begin
            i_cmp5070_load_input011_o <= $unsigned($signed(i_cmp5070_load_input011_a) - $signed(i_cmp5070_load_input011_b));
        end
    end
    assign i_cmp5070_load_input011_c[0] = i_cmp5070_load_input011_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input09_load_input055(BLACKBOX,107)@3
    // out out_intel_reserved_ffwd_8_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000input09_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input09_load_input055 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_cmp5070_load_input011_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input09_load_input055_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input09_load_input055_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg10(REG,198)@2 + 1
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

    // i_cmp5965_load_input013(COMPARE,100)@2 + 1
    assign i_cmp5965_load_input013_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp5965_load_input013_b = $unsigned({{2{in_c0_eni1_15_tpl[31]}}, in_c0_eni1_15_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp5965_load_input013_o <= 34'b0;
        end
        else
        begin
            i_cmp5965_load_input013_o <= $unsigned($signed(i_cmp5965_load_input013_a) - $signed(i_cmp5965_load_input013_b));
        end
    end
    assign i_cmp5965_load_input013_c[0] = i_cmp5965_load_input013_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input010_load_input056(BLACKBOX,102)@3
    // out out_intel_reserved_ffwd_9_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput010_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input010_load_input056 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_cmp5965_load_input013_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input010_load_input056_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input010_load_input056_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,188)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist14_sync_together90_aunroll_x_in_i_valid_2_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,56)@5
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input019_0_tpl = GND_q;
    assign out_unnamed_load_input020 = GND_q;

    // valid_fanout_reg1(REG,189)@2 + 1
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

    // redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input01_load_input047(BLACKBOX,119)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1025s_c0000input01_load_input00 thei_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input01_load_input047 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input01_load_input047_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,185)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input01_load_input047_out_intel_reserved_ffwd_0_0;

endmodule
