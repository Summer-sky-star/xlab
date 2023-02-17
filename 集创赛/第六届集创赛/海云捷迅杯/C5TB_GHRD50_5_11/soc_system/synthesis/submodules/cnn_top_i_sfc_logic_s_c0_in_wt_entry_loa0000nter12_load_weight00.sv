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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000nter12_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000nter12_load_weight00 (
    output wire [0:0] out_intel_reserved_ffwd_10_0,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    output wire [0:0] out_intel_reserved_ffwd_13_0,
    output wire [32:0] out_intel_reserved_ffwd_14_0,
    output wire [32:0] out_intel_reserved_ffwd_15_0,
    output wire [32:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [0:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight018_0_tpl,
    output wire [0:0] out_unnamed_load_weight019,
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
    input wire [0:0] in_i_valid,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_i_load_weight019_sel_x_b;
    wire [63:0] bgTrunc_i_mul7_load_weight020_sel_x_in;
    wire [31:0] bgTrunc_i_mul7_load_weight020_sel_x_b;
    wire [31:0] bgTrunc_i_sdiv_add_load_weight017_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_load_weight014_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_weight027_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_weight029_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_weight033_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_weight035_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_weight036_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_weight038_sel_x_b;
    wire [31:0] c_i32_078_recast_x_q;
    wire [31:0] c_i32_175_recast_x_q;
    wire [31:0] c_i32_374_recast_x_q;
    wire [32:0] i_unnamed_load_weight028_sel_x_b;
    wire [32:0] i_unnamed_load_weight034_sel_x_b;
    wire [32:0] i_unnamed_load_weight037_sel_x_b;
    wire [31:0] c_i32_1581_q;
    wire [31:0] c_i32_179_q;
    wire [31:0] c_i32_976_q;
    wire [32:0] c_i33_183_q;
    wire [0:0] i_acl_load_weight06_s;
    reg [31:0] i_acl_load_weight06_q;
    wire [2:0] i_acl_load_weight06_vt_const_2_q;
    wire [27:0] i_acl_load_weight06_vt_const_31_q;
    wire [31:0] i_acl_load_weight06_vt_join_q;
    wire [0:0] i_acl_load_weight06_vt_select_3_b;
    wire [32:0] i_add_i_load_weight019_a;
    wire [32:0] i_add_i_load_weight019_b;
    logic [32:0] i_add_i_load_weight019_o;
    wire [32:0] i_add_i_load_weight019_q;
    wire [33:0] i_cmp5172_load_weight010_a;
    wire [33:0] i_cmp5172_load_weight010_b;
    logic [33:0] i_cmp5172_load_weight010_o;
    wire [0:0] i_cmp5172_load_weight010_c;
    wire [33:0] i_cmp6067_load_weight012_a;
    wire [33:0] i_cmp6067_load_weight012_b;
    logic [33:0] i_cmp6067_load_weight012_o;
    wire [0:0] i_cmp6067_load_weight012_c;
    wire [33:0] i_cmp82_load_weight08_a;
    wire [33:0] i_cmp82_load_weight08_b;
    logic [33:0] i_cmp82_load_weight08_o;
    wire [0:0] i_cmp82_load_weight08_c;
    wire [0:0] i_cond86_load_weight021_qi;
    reg [0:0] i_cond86_load_weight021_q;
    wire [0:0] i_cond_load_weight04_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight010_load_weight048_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight011_load_weight049_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight013_load_weight051_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight014_load_weight052_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_weight09_load_weight047_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight012_load_weight050_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight02_load_weight040_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight03_load_weight041_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight04_load_weight042_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight05_load_weight043_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight06_load_weight044_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight07_load_weight045_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight08_load_weight046_out_intel_reserved_ffwd_7_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_weight015_load_weight053_out_intel_reserved_ffwd_14_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_weight016_load_weight054_out_intel_reserved_ffwd_15_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_weight017_load_weight055_out_intel_reserved_ffwd_16_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_load_weight01_load_weight039_out_intel_reserved_ffwd_0_0;
    wire [23:0] i_mul_load_weight07_vt_const_31_q;
    wire [6:0] i_mul_load_weight07_vt_const_6_q;
    wire [31:0] i_mul_load_weight07_vt_join_q;
    wire [0:0] i_mul_load_weight07_vt_select_7_b;
    wire [32:0] i_sdiv_add_load_weight017_a;
    wire [32:0] i_sdiv_add_load_weight017_b;
    logic [32:0] i_sdiv_add_load_weight017_o;
    wire [32:0] i_sdiv_add_load_weight017_q;
    wire [31:0] i_sdiv_and_load_weight016_q;
    wire [31:0] i_sdiv_and_load_weight016_vt_join_q;
    wire [3:0] i_sdiv_and_load_weight016_vt_select_3_b;
    wire [0:0] i_smax9_load_weight032_s;
    reg [31:0] i_smax9_load_weight032_q;
    wire [31:0] i_smax9_load_weight032_vt_join_q;
    wire [30:0] i_smax9_load_weight032_vt_select_30_b;
    wire [0:0] i_smax_load_weight026_s;
    reg [31:0] i_smax_load_weight026_q;
    wire [31:0] i_smax_load_weight026_vt_join_q;
    wire [30:0] i_smax_load_weight026_vt_select_30_b;
    wire [32:0] i_sub_i_load_weight014_a;
    wire [32:0] i_sub_i_load_weight014_b;
    logic [32:0] i_sub_i_load_weight014_o;
    wire [32:0] i_sub_i_load_weight014_q;
    wire [0:0] i_unnamed_load_weight023_q;
    wire [33:0] i_unnamed_load_weight024_a;
    wire [33:0] i_unnamed_load_weight024_b;
    logic [33:0] i_unnamed_load_weight024_o;
    wire [0:0] i_unnamed_load_weight024_c;
    wire [32:0] i_unnamed_load_weight027_a;
    wire [32:0] i_unnamed_load_weight027_b;
    logic [32:0] i_unnamed_load_weight027_o;
    wire [32:0] i_unnamed_load_weight027_q;
    wire [32:0] i_unnamed_load_weight028_vt_join_q;
    wire [31:0] i_unnamed_load_weight028_vt_select_31_b;
    wire [33:0] i_unnamed_load_weight029_a;
    wire [33:0] i_unnamed_load_weight029_b;
    logic [33:0] i_unnamed_load_weight029_o;
    wire [33:0] i_unnamed_load_weight029_q;
    wire [33:0] i_unnamed_load_weight030_a;
    wire [33:0] i_unnamed_load_weight030_b;
    logic [33:0] i_unnamed_load_weight030_o;
    wire [0:0] i_unnamed_load_weight030_c;
    wire [32:0] i_unnamed_load_weight033_a;
    wire [32:0] i_unnamed_load_weight033_b;
    logic [32:0] i_unnamed_load_weight033_o;
    wire [32:0] i_unnamed_load_weight033_q;
    wire [32:0] i_unnamed_load_weight034_vt_join_q;
    wire [31:0] i_unnamed_load_weight034_vt_select_31_b;
    wire [33:0] i_unnamed_load_weight035_a;
    wire [33:0] i_unnamed_load_weight035_b;
    logic [33:0] i_unnamed_load_weight035_o;
    wire [33:0] i_unnamed_load_weight035_q;
    wire [32:0] i_unnamed_load_weight036_a;
    wire [32:0] i_unnamed_load_weight036_b;
    logic [32:0] i_unnamed_load_weight036_o;
    wire [32:0] i_unnamed_load_weight036_q;
    wire [2:0] i_unnamed_load_weight036_vt_const_2_q;
    wire [31:0] i_unnamed_load_weight036_vt_join_q;
    wire [0:0] i_unnamed_load_weight036_vt_select_3_b;
    wire [28:0] i_unnamed_load_weight037_vt_const_32_q;
    wire [32:0] i_unnamed_load_weight037_vt_join_q;
    wire [0:0] i_unnamed_load_weight037_vt_select_3_b;
    wire [33:0] i_unnamed_load_weight038_a;
    wire [33:0] i_unnamed_load_weight038_b;
    logic [33:0] i_unnamed_load_weight038_o;
    wire [33:0] i_unnamed_load_weight038_q;
    wire [2:0] i_unnamed_load_weight038_vt_const_2_q;
    wire [32:0] i_unnamed_load_weight038_vt_join_q;
    wire [29:0] i_unnamed_load_weight038_vt_select_32_b;
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
    wire [3:0] leftShiftStage0Idx1Pad4_uid213_i_mul_load_weight00_shift_x_q;
    wire [27:0] leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid215_i_mul_load_weight00_shift_x_q;
    wire [0:0] leftShiftStage0_uid217_i_mul_load_weight00_shift_x_s;
    reg [31:0] leftShiftStage0_uid217_i_mul_load_weight00_shift_x_q;
    wire [0:0] xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid221_i_sdiv_mask_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid222_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q;
    wire [1:0] seMsb_to2_uid225_in;
    wire [1:0] seMsb_to2_uid225_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid226_i_sdiv_mask_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid227_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q;
    wire [3:0] seMsb_to4_uid230_in;
    wire [3:0] seMsb_to4_uid230_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid231_i_sdiv_mask_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid232_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q;
    wire [7:0] seMsb_to8_uid235_in;
    wire [7:0] seMsb_to8_uid235_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid236_i_sdiv_mask_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid237_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q;
    wire [15:0] seMsb_to16_uid240_in;
    wire [15:0] seMsb_to16_uid240_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid241_i_sdiv_mask_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid242_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_q;
    wire [0:0] xMSB_uid246_i_sdiv_sh_load_weight00_shift_x_b;
    wire [3:0] seMsb_to4_uid248_in;
    wire [3:0] seMsb_to4_uid248_b;
    wire [27:0] rightShiftStage0Idx1Rng4_uid249_i_sdiv_sh_load_weight00_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid250_i_sdiv_sh_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_s;
    reg [31:0] rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q;
    wire [63:0] i_mul7_load_weight020_sums_join_0_q;
    wire [50:0] i_mul7_load_weight020_sums_align_1_q;
    wire [50:0] i_mul7_load_weight020_sums_align_1_qint;
    wire [64:0] i_mul7_load_weight020_sums_result_add_0_0_a;
    wire [64:0] i_mul7_load_weight020_sums_result_add_0_0_b;
    logic [64:0] i_mul7_load_weight020_sums_result_add_0_0_o;
    wire [64:0] i_mul7_load_weight020_sums_result_add_0_0_q;
    wire i_mul7_load_weight020_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul7_load_weight020_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul7_load_weight020_im0_cma_c0 [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_p [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_u [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_w [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_x [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_y [0:0];
    reg [35:0] i_mul7_load_weight020_im0_cma_s [0:0];
    wire [35:0] i_mul7_load_weight020_im0_cma_qq;
    wire [35:0] i_mul7_load_weight020_im0_cma_q;
    wire i_mul7_load_weight020_im0_cma_ena0;
    wire i_mul7_load_weight020_im0_cma_ena1;
    wire i_mul7_load_weight020_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul7_load_weight020_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul7_load_weight020_im8_cma_c0 [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_p [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_u [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_w [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_x [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_y [0:0];
    reg [27:0] i_mul7_load_weight020_im8_cma_s [0:0];
    wire [27:0] i_mul7_load_weight020_im8_cma_qq;
    wire [27:0] i_mul7_load_weight020_im8_cma_q;
    wire i_mul7_load_weight020_im8_cma_ena0;
    wire i_mul7_load_weight020_im8_cma_ena1;
    wire i_mul7_load_weight020_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul7_load_weight020_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul7_load_weight020_ma3_cma_c0 [0:1];
    wire [31:0] i_mul7_load_weight020_ma3_cma_p [0:1];
    wire [32:0] i_mul7_load_weight020_ma3_cma_u [0:1];
    wire [32:0] i_mul7_load_weight020_ma3_cma_w [0:0];
    wire [32:0] i_mul7_load_weight020_ma3_cma_x [0:0];
    wire [32:0] i_mul7_load_weight020_ma3_cma_y [0:0];
    reg [32:0] i_mul7_load_weight020_ma3_cma_s [0:0];
    wire [32:0] i_mul7_load_weight020_ma3_cma_qq;
    wire [32:0] i_mul7_load_weight020_ma3_cma_q;
    wire i_mul7_load_weight020_ma3_cma_ena0;
    wire i_mul7_load_weight020_ma3_cma_ena1;
    wire [17:0] i_mul7_load_weight020_bs1_merged_bit_select_b;
    wire [13:0] i_mul7_load_weight020_bs1_merged_bit_select_c;
    wire [17:0] i_mul7_load_weight020_bs2_merged_bit_select_b;
    wire [13:0] i_mul7_load_weight020_bs2_merged_bit_select_c;
    reg [0:0] redist0_i_unnamed_load_weight037_vt_select_3_b_1_q;
    reg [31:0] redist1_i_unnamed_load_weight034_vt_select_31_b_1_q;
    reg [31:0] redist2_i_unnamed_load_weight028_vt_select_31_b_1_q;
    reg [30:0] redist3_i_smax_load_weight026_vt_select_30_b_1_q;
    reg [0:0] redist4_i_acl_load_weight06_vt_select_3_b_1_q;
    reg [63:0] redist5_sync_together84_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [31:0] redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1_q;
    reg [31:0] redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2_q;
    reg [31:0] redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q;
    reg [31:0] redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q;
    reg [31:0] redist10_sync_together84_aunroll_x_in_c0_eni1_6_tpl_1_q;
    reg [31:0] redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q;
    reg [0:0] redist12_sync_together84_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist13_sync_together84_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist13_sync_together84_aunroll_x_in_i_valid_3_delay_0;
    reg [31:0] redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg11(REG,187)@2 + 1
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

    // c_i32_078_recast_x(CONSTANT,12)
    assign c_i32_078_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp6067_load_weight012(COMPARE,97)@2 + 1
    assign i_cmp6067_load_weight012_a = $unsigned({{2{c_i32_078_recast_x_q[31]}}, c_i32_078_recast_x_q});
    assign i_cmp6067_load_weight012_b = $unsigned({{2{in_c0_eni1_14_tpl[31]}}, in_c0_eni1_14_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp6067_load_weight012_o <= 34'b0;
        end
        else
        begin
            i_cmp6067_load_weight012_o <= $unsigned($signed(i_cmp6067_load_weight012_a) - $signed(i_cmp6067_load_weight012_b));
        end
    end
    assign i_cmp6067_load_weight012_c[0] = i_cmp6067_load_weight012_o[33];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight011_load_weight049(BLACKBOX,102)@3
    // out out_intel_reserved_ffwd_10_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght011_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight011_load_weight049 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_cmp6067_load_weight012_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight011_load_weight049_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,17)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight011_load_weight049_out_intel_reserved_ffwd_10_0;

    // redist12_sync_together84_aunroll_x_in_i_valid_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together84_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist12_sync_together84_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist13_sync_together84_aunroll_x_in_i_valid_3(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together84_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist13_sync_together84_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist13_sync_together84_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(redist12_sync_together84_aunroll_x_in_i_valid_1_q);
            redist13_sync_together84_aunroll_x_in_i_valid_3_q <= redist13_sync_together84_aunroll_x_in_i_valid_3_delay_0;
        end
    end

    // valid_fanout_reg12(REG,188)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist13_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1_q <= $unsigned(in_c0_eni1_2_tpl);
        end
    end

    // redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2_q <= $unsigned(redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1_q);
        end
    end

    // i_mul7_load_weight020_bs2_merged_bit_select(BITSELECT,272)@4
    assign i_mul7_load_weight020_bs2_merged_bit_select_b = redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2_q[17:0];
    assign i_mul7_load_weight020_bs2_merged_bit_select_c = redist7_sync_together84_aunroll_x_in_c0_eni1_2_tpl_2_q[31:18];

    // c_i32_175_recast_x(CONSTANT,13)
    assign c_i32_175_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // xMSB_uid246_i_sdiv_sh_load_weight00_shift_x(BITSELECT,245)@3
    assign xMSB_uid246_i_sdiv_sh_load_weight00_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_load_weight017_sel_x_b[31:31]);

    // seMsb_to4_uid248(BITSELECT,247)@3
    assign seMsb_to4_uid248_in = $unsigned({{3{xMSB_uid246_i_sdiv_sh_load_weight00_shift_x_b[0]}}, xMSB_uid246_i_sdiv_sh_load_weight00_shift_x_b});
    assign seMsb_to4_uid248_b = $unsigned(seMsb_to4_uid248_in[3:0]);

    // rightShiftStage0Idx1Rng4_uid249_i_sdiv_sh_load_weight00_shift_x(BITSELECT,248)@3
    assign rightShiftStage0Idx1Rng4_uid249_i_sdiv_sh_load_weight00_shift_x_b = $unsigned(bgTrunc_i_sdiv_add_load_weight017_sel_x_b[31:4]);

    // rightShiftStage0Idx1_uid250_i_sdiv_sh_load_weight00_shift_x(BITJOIN,249)@3
    assign rightShiftStage0Idx1_uid250_i_sdiv_sh_load_weight00_shift_x_q = {seMsb_to4_uid248_b, rightShiftStage0Idx1Rng4_uid249_i_sdiv_sh_load_weight00_shift_x_b};

    // c_i32_179(CONSTANT,85)
    assign c_i32_179_q = $unsigned(32'b11111111111111111111111111111111);

    // i_sub_i_load_weight014(ADD,136)@2
    assign i_sub_i_load_weight014_a = {1'b0, in_c0_eni1_9_tpl};
    assign i_sub_i_load_weight014_b = {1'b0, c_i32_179_q};
    assign i_sub_i_load_weight014_o = $unsigned(i_sub_i_load_weight014_a) + $unsigned(i_sub_i_load_weight014_b);
    assign i_sub_i_load_weight014_q = i_sub_i_load_weight014_o[32:0];

    // bgTrunc_i_sub_i_load_weight014_sel_x(BITSELECT,5)@2
    assign bgTrunc_i_sub_i_load_weight014_sel_x_b = i_sub_i_load_weight014_q[31:0];

    // redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_i_load_weight014_sel_x_b);
        end
    end

    // i_acl_load_weight06_vt_const_31(CONSTANT,92)
    assign i_acl_load_weight06_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // c_i32_1581(CONSTANT,83)
    assign c_i32_1581_q = $unsigned(32'b00000000000000000000000000001111);

    // xMSB_uid219_i_sdiv_mask_load_weight00_shift_x(BITSELECT,218)@3
    assign xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q[31:31]);

    // seMsb_to16_uid240(BITSELECT,239)@3
    assign seMsb_to16_uid240_in = $unsigned({{15{xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b[0]}}, xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b});
    assign seMsb_to16_uid240_b = $unsigned(seMsb_to16_uid240_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid241_i_sdiv_mask_load_weight00_shift_x(BITSELECT,240)@3
    assign rightShiftStage4Idx1Rng16_uid241_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid242_i_sdiv_mask_load_weight00_shift_x(BITJOIN,241)@3
    assign rightShiftStage4Idx1_uid242_i_sdiv_mask_load_weight00_shift_x_q = {seMsb_to16_uid240_b, rightShiftStage4Idx1Rng16_uid241_i_sdiv_mask_load_weight00_shift_x_b};

    // seMsb_to8_uid235(BITSELECT,234)@3
    assign seMsb_to8_uid235_in = $unsigned({{7{xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b[0]}}, xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b});
    assign seMsb_to8_uid235_b = $unsigned(seMsb_to8_uid235_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid236_i_sdiv_mask_load_weight00_shift_x(BITSELECT,235)@3
    assign rightShiftStage3Idx1Rng8_uid236_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid237_i_sdiv_mask_load_weight00_shift_x(BITJOIN,236)@3
    assign rightShiftStage3Idx1_uid237_i_sdiv_mask_load_weight00_shift_x_q = {seMsb_to8_uid235_b, rightShiftStage3Idx1Rng8_uid236_i_sdiv_mask_load_weight00_shift_x_b};

    // seMsb_to4_uid230(BITSELECT,229)@3
    assign seMsb_to4_uid230_in = $unsigned({{3{xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b[0]}}, xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b});
    assign seMsb_to4_uid230_b = $unsigned(seMsb_to4_uid230_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid231_i_sdiv_mask_load_weight00_shift_x(BITSELECT,230)@3
    assign rightShiftStage2Idx1Rng4_uid231_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid232_i_sdiv_mask_load_weight00_shift_x(BITJOIN,231)@3
    assign rightShiftStage2Idx1_uid232_i_sdiv_mask_load_weight00_shift_x_q = {seMsb_to4_uid230_b, rightShiftStage2Idx1Rng4_uid231_i_sdiv_mask_load_weight00_shift_x_b};

    // seMsb_to2_uid225(BITSELECT,224)@3
    assign seMsb_to2_uid225_in = $unsigned({{1{xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b[0]}}, xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b});
    assign seMsb_to2_uid225_b = $unsigned(seMsb_to2_uid225_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid226_i_sdiv_mask_load_weight00_shift_x(BITSELECT,225)@3
    assign rightShiftStage1Idx1Rng2_uid226_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid227_i_sdiv_mask_load_weight00_shift_x(BITJOIN,226)@3
    assign rightShiftStage1Idx1_uid227_i_sdiv_mask_load_weight00_shift_x_q = {seMsb_to2_uid225_b, rightShiftStage1Idx1Rng2_uid226_i_sdiv_mask_load_weight00_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid221_i_sdiv_mask_load_weight00_shift_x(BITSELECT,220)@3
    assign rightShiftStage0Idx1Rng1_uid221_i_sdiv_mask_load_weight00_shift_x_b = $unsigned(redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q[31:1]);

    // rightShiftStage0Idx1_uid222_i_sdiv_mask_load_weight00_shift_x(BITJOIN,221)@3
    assign rightShiftStage0Idx1_uid222_i_sdiv_mask_load_weight00_shift_x_q = {xMSB_uid219_i_sdiv_mask_load_weight00_shift_x_b, rightShiftStage0Idx1Rng1_uid221_i_sdiv_mask_load_weight00_shift_x_b};

    // rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x(MUX,223)@3
    assign rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_s or redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q or rightShiftStage0Idx1_uid222_i_sdiv_mask_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q = redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage0Idx1_uid222_i_sdiv_mask_load_weight00_shift_x_q;
            default : rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x(MUX,228)@3
    assign rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_s or rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q or rightShiftStage1Idx1_uid227_i_sdiv_mask_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_s)
            1'b0 : rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage0_uid224_i_sdiv_mask_load_weight00_shift_x_q;
            1'b1 : rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage1Idx1_uid227_i_sdiv_mask_load_weight00_shift_x_q;
            default : rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x(MUX,233)@3
    assign rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_s or rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q or rightShiftStage2Idx1_uid232_i_sdiv_mask_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_s)
            1'b0 : rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage1_uid229_i_sdiv_mask_load_weight00_shift_x_q;
            1'b1 : rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage2Idx1_uid232_i_sdiv_mask_load_weight00_shift_x_q;
            default : rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x(MUX,238)@3
    assign rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_s or rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q or rightShiftStage3Idx1_uid237_i_sdiv_mask_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_s)
            1'b0 : rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage2_uid234_i_sdiv_mask_load_weight00_shift_x_q;
            1'b1 : rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage3Idx1_uid237_i_sdiv_mask_load_weight00_shift_x_q;
            default : rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x(MUX,243)@3
    assign rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_s or rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q or rightShiftStage4Idx1_uid242_i_sdiv_mask_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_s)
            1'b0 : rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage3_uid239_i_sdiv_mask_load_weight00_shift_x_q;
            1'b1 : rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_q = rightShiftStage4Idx1_uid242_i_sdiv_mask_load_weight00_shift_x_q;
            default : rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // i_sdiv_and_load_weight016(LOGICAL,124)@3
    assign i_sdiv_and_load_weight016_q = rightShiftStage4_uid244_i_sdiv_mask_load_weight00_shift_x_q & c_i32_1581_q;

    // i_sdiv_and_load_weight016_vt_select_3(BITSELECT,127)@3
    assign i_sdiv_and_load_weight016_vt_select_3_b = i_sdiv_and_load_weight016_q[3:0];

    // i_sdiv_and_load_weight016_vt_join(BITJOIN,126)@3
    assign i_sdiv_and_load_weight016_vt_join_q = {i_acl_load_weight06_vt_const_31_q, i_sdiv_and_load_weight016_vt_select_3_b};

    // i_sdiv_add_load_weight017(ADD,123)@3
    assign i_sdiv_add_load_weight017_a = {1'b0, i_sdiv_and_load_weight016_vt_join_q};
    assign i_sdiv_add_load_weight017_b = {1'b0, redist14_bgTrunc_i_sub_i_load_weight014_sel_x_b_1_q};
    assign i_sdiv_add_load_weight017_o = $unsigned(i_sdiv_add_load_weight017_a) + $unsigned(i_sdiv_add_load_weight017_b);
    assign i_sdiv_add_load_weight017_q = i_sdiv_add_load_weight017_o[32:0];

    // bgTrunc_i_sdiv_add_load_weight017_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_sdiv_add_load_weight017_sel_x_b = i_sdiv_add_load_weight017_q[31:0];

    // rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x(MUX,251)@3 + 1
    assign rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_s = VCC_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_s)
                1'b0 : rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q <= bgTrunc_i_sdiv_add_load_weight017_sel_x_b;
                1'b1 : rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q <= rightShiftStage0Idx1_uid250_i_sdiv_sh_load_weight00_shift_x_q;
                default : rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q <= 32'b0;
            endcase
        end
    end

    // i_add_i_load_weight019(ADD,95)@4
    assign i_add_i_load_weight019_a = {1'b0, rightShiftStage0_uid252_i_sdiv_sh_load_weight00_shift_x_q};
    assign i_add_i_load_weight019_b = {1'b0, c_i32_175_recast_x_q};
    assign i_add_i_load_weight019_o = $unsigned(i_add_i_load_weight019_a) + $unsigned(i_add_i_load_weight019_b);
    assign i_add_i_load_weight019_q = i_add_i_load_weight019_o[32:0];

    // bgTrunc_i_add_i_load_weight019_sel_x(BITSELECT,2)@4
    assign bgTrunc_i_add_i_load_weight019_sel_x_b = i_add_i_load_weight019_q[31:0];

    // i_mul7_load_weight020_bs1_merged_bit_select(BITSELECT,271)@4
    assign i_mul7_load_weight020_bs1_merged_bit_select_b = bgTrunc_i_add_i_load_weight019_sel_x_b[17:0];
    assign i_mul7_load_weight020_bs1_merged_bit_select_c = bgTrunc_i_add_i_load_weight019_sel_x_b[31:18];

    // i_mul7_load_weight020_ma3_cma(CHAINMULTADD,270)@4 + 2
    assign i_mul7_load_weight020_ma3_cma_reset = ~ (resetn);
    assign i_mul7_load_weight020_ma3_cma_ena0 = 1'b1;
    assign i_mul7_load_weight020_ma3_cma_ena1 = i_mul7_load_weight020_ma3_cma_ena0;
    assign i_mul7_load_weight020_ma3_cma_p[0] = i_mul7_load_weight020_ma3_cma_a0[0] * i_mul7_load_weight020_ma3_cma_c0[0];
    assign i_mul7_load_weight020_ma3_cma_p[1] = i_mul7_load_weight020_ma3_cma_a0[1] * i_mul7_load_weight020_ma3_cma_c0[1];
    assign i_mul7_load_weight020_ma3_cma_u[0] = {1'b0, i_mul7_load_weight020_ma3_cma_p[0][31:0]};
    assign i_mul7_load_weight020_ma3_cma_u[1] = {1'b0, i_mul7_load_weight020_ma3_cma_p[1][31:0]};
    assign i_mul7_load_weight020_ma3_cma_w[0] = i_mul7_load_weight020_ma3_cma_u[0] + i_mul7_load_weight020_ma3_cma_u[1];
    assign i_mul7_load_weight020_ma3_cma_x[0] = i_mul7_load_weight020_ma3_cma_w[0];
    assign i_mul7_load_weight020_ma3_cma_y[0] = i_mul7_load_weight020_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_ma3_cma_a0 <= '{default: '0};
            i_mul7_load_weight020_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_ma3_cma_ena0 == 1'b1)
            begin
                i_mul7_load_weight020_ma3_cma_a0[0] <= i_mul7_load_weight020_bs1_merged_bit_select_c;
                i_mul7_load_weight020_ma3_cma_a0[1] <= i_mul7_load_weight020_bs2_merged_bit_select_c;
                i_mul7_load_weight020_ma3_cma_c0[0] <= i_mul7_load_weight020_bs2_merged_bit_select_b;
                i_mul7_load_weight020_ma3_cma_c0[1] <= i_mul7_load_weight020_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_ma3_cma_ena1 == 1'b1)
            begin
                i_mul7_load_weight020_ma3_cma_s[0] <= i_mul7_load_weight020_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_load_weight020_ma3_cma_delay ( .xin(i_mul7_load_weight020_ma3_cma_s[0]), .xout(i_mul7_load_weight020_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_load_weight020_ma3_cma_q = $unsigned(i_mul7_load_weight020_ma3_cma_qq[32:0]);

    // i_mul7_load_weight020_sums_align_1(BITSHIFT,265)@6
    assign i_mul7_load_weight020_sums_align_1_qint = { i_mul7_load_weight020_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul7_load_weight020_sums_align_1_q = i_mul7_load_weight020_sums_align_1_qint[50:0];

    // i_mul7_load_weight020_im8_cma(CHAINMULTADD,269)@4 + 2
    assign i_mul7_load_weight020_im8_cma_reset = ~ (resetn);
    assign i_mul7_load_weight020_im8_cma_ena0 = 1'b1;
    assign i_mul7_load_weight020_im8_cma_ena1 = i_mul7_load_weight020_im8_cma_ena0;
    assign i_mul7_load_weight020_im8_cma_p[0] = i_mul7_load_weight020_im8_cma_a0[0] * i_mul7_load_weight020_im8_cma_c0[0];
    assign i_mul7_load_weight020_im8_cma_u[0] = i_mul7_load_weight020_im8_cma_p[0][27:0];
    assign i_mul7_load_weight020_im8_cma_w[0] = i_mul7_load_weight020_im8_cma_u[0];
    assign i_mul7_load_weight020_im8_cma_x[0] = i_mul7_load_weight020_im8_cma_w[0];
    assign i_mul7_load_weight020_im8_cma_y[0] = i_mul7_load_weight020_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_im8_cma_a0 <= '{default: '0};
            i_mul7_load_weight020_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_im8_cma_ena0 == 1'b1)
            begin
                i_mul7_load_weight020_im8_cma_a0[0] <= i_mul7_load_weight020_bs1_merged_bit_select_c;
                i_mul7_load_weight020_im8_cma_c0[0] <= i_mul7_load_weight020_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_im8_cma_ena1 == 1'b1)
            begin
                i_mul7_load_weight020_im8_cma_s[0] <= i_mul7_load_weight020_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_load_weight020_im8_cma_delay ( .xin(i_mul7_load_weight020_im8_cma_s[0]), .xout(i_mul7_load_weight020_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_load_weight020_im8_cma_q = $unsigned(i_mul7_load_weight020_im8_cma_qq[27:0]);

    // i_mul7_load_weight020_im0_cma(CHAINMULTADD,268)@4 + 2
    assign i_mul7_load_weight020_im0_cma_reset = ~ (resetn);
    assign i_mul7_load_weight020_im0_cma_ena0 = 1'b1;
    assign i_mul7_load_weight020_im0_cma_ena1 = i_mul7_load_weight020_im0_cma_ena0;
    assign i_mul7_load_weight020_im0_cma_p[0] = i_mul7_load_weight020_im0_cma_a0[0] * i_mul7_load_weight020_im0_cma_c0[0];
    assign i_mul7_load_weight020_im0_cma_u[0] = i_mul7_load_weight020_im0_cma_p[0][35:0];
    assign i_mul7_load_weight020_im0_cma_w[0] = i_mul7_load_weight020_im0_cma_u[0];
    assign i_mul7_load_weight020_im0_cma_x[0] = i_mul7_load_weight020_im0_cma_w[0];
    assign i_mul7_load_weight020_im0_cma_y[0] = i_mul7_load_weight020_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_im0_cma_a0 <= '{default: '0};
            i_mul7_load_weight020_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_im0_cma_ena0 == 1'b1)
            begin
                i_mul7_load_weight020_im0_cma_a0[0] <= i_mul7_load_weight020_bs1_merged_bit_select_b;
                i_mul7_load_weight020_im0_cma_c0[0] <= i_mul7_load_weight020_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul7_load_weight020_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul7_load_weight020_im0_cma_ena1 == 1'b1)
            begin
                i_mul7_load_weight020_im0_cma_s[0] <= i_mul7_load_weight020_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul7_load_weight020_im0_cma_delay ( .xin(i_mul7_load_weight020_im0_cma_s[0]), .xout(i_mul7_load_weight020_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul7_load_weight020_im0_cma_q = $unsigned(i_mul7_load_weight020_im0_cma_qq[35:0]);

    // i_mul7_load_weight020_sums_join_0(BITJOIN,264)@6
    assign i_mul7_load_weight020_sums_join_0_q = {i_mul7_load_weight020_im8_cma_q, i_mul7_load_weight020_im0_cma_q};

    // i_mul7_load_weight020_sums_result_add_0_0(ADD,267)@6
    assign i_mul7_load_weight020_sums_result_add_0_0_a = {1'b0, i_mul7_load_weight020_sums_join_0_q};
    assign i_mul7_load_weight020_sums_result_add_0_0_b = {14'b00000000000000, i_mul7_load_weight020_sums_align_1_q};
    assign i_mul7_load_weight020_sums_result_add_0_0_o = $unsigned(i_mul7_load_weight020_sums_result_add_0_0_a) + $unsigned(i_mul7_load_weight020_sums_result_add_0_0_b);
    assign i_mul7_load_weight020_sums_result_add_0_0_q = i_mul7_load_weight020_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul7_load_weight020_sel_x(BITSELECT,3)@6
    assign bgTrunc_i_mul7_load_weight020_sel_x_in = i_mul7_load_weight020_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul7_load_weight020_sel_x_b = bgTrunc_i_mul7_load_weight020_sel_x_in[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight012_load_weight050(BLACKBOX,106)@6
    // out out_intel_reserved_ffwd_11_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ght012_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight012_load_weight050 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bgTrunc_i_mul7_load_weight020_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight012_load_weight050_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight012_load_weight050_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg13(REG,189)@2 + 1
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

    // i_cond86_load_weight021(LOGICAL,99)@2 + 1
    assign i_cond86_load_weight021_qi = $unsigned(in_c0_eni1_20_tpl == c_i32_175_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cond86_load_weight021_delay ( .xin(i_cond86_load_weight021_qi), .xout(i_cond86_load_weight021_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight013_load_weight051(BLACKBOX,103)@3
    // out out_intel_reserved_ffwd_12_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght013_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight013_load_weight051 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_cond86_load_weight021_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight013_load_weight051_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight013_load_weight051_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg14(REG,190)@2 + 1
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

    // redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q <= $unsigned(in_c0_eni1_3_tpl);
        end
    end

    // redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q <= $unsigned(in_c0_eni1_4_tpl);
        end
    end

    // i_cmp82_load_weight08(COMPARE,98)@3
    assign i_cmp82_load_weight08_a = $unsigned({{2{redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q[31]}}, redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q});
    assign i_cmp82_load_weight08_b = $unsigned({{2{redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q[31]}}, redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q});
    assign i_cmp82_load_weight08_o = $unsigned($signed(i_cmp82_load_weight08_a) - $signed(i_cmp82_load_weight08_b));
    assign i_cmp82_load_weight08_c[0] = i_cmp82_load_weight08_o[33];

    // i_unnamed_load_weight023(LOGICAL,137)@3
    assign i_unnamed_load_weight023_q = i_cmp82_load_weight08_c ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight014_load_weight052(BLACKBOX,104)@3
    // out out_intel_reserved_ffwd_13_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght014_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight014_load_weight052 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_unnamed_load_weight023_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight014_load_weight052_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight014_load_weight052_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg15(REG,191)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist12_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i33_183(CONSTANT,89)
    assign c_i33_183_q = $unsigned(33'b111111111111111111111111111111111);

    // i_unnamed_load_weight024(COMPARE,138)@2
    assign i_unnamed_load_weight024_a = $unsigned({{2{c_i32_175_recast_x_q[31]}}, c_i32_175_recast_x_q});
    assign i_unnamed_load_weight024_b = $unsigned({{2{in_c0_eni1_14_tpl[31]}}, in_c0_eni1_14_tpl});
    assign i_unnamed_load_weight024_o = $unsigned($signed(i_unnamed_load_weight024_a) - $signed(i_unnamed_load_weight024_b));
    assign i_unnamed_load_weight024_c[0] = i_unnamed_load_weight024_o[33];

    // i_smax_load_weight026(MUX,132)@2
    assign i_smax_load_weight026_s = i_unnamed_load_weight024_c;
    always @(i_smax_load_weight026_s or c_i32_175_recast_x_q or in_c0_eni1_14_tpl)
    begin
        unique case (i_smax_load_weight026_s)
            1'b0 : i_smax_load_weight026_q = c_i32_175_recast_x_q;
            1'b1 : i_smax_load_weight026_q = in_c0_eni1_14_tpl;
            default : i_smax_load_weight026_q = 32'b0;
        endcase
    end

    // i_smax_load_weight026_vt_select_30(BITSELECT,135)@2
    assign i_smax_load_weight026_vt_select_30_b = i_smax_load_weight026_q[30:0];

    // redist3_i_smax_load_weight026_vt_select_30_b_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_smax_load_weight026_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist3_i_smax_load_weight026_vt_select_30_b_1_q <= $unsigned(i_smax_load_weight026_vt_select_30_b);
        end
    end

    // i_smax_load_weight026_vt_join(BITJOIN,134)@3
    assign i_smax_load_weight026_vt_join_q = {GND_q, redist3_i_smax_load_weight026_vt_select_30_b_1_q};

    // i_unnamed_load_weight027(ADD,139)@3
    assign i_unnamed_load_weight027_a = {1'b0, i_smax_load_weight026_vt_join_q};
    assign i_unnamed_load_weight027_b = {1'b0, c_i32_179_q};
    assign i_unnamed_load_weight027_o = $unsigned(i_unnamed_load_weight027_a) + $unsigned(i_unnamed_load_weight027_b);
    assign i_unnamed_load_weight027_q = i_unnamed_load_weight027_o[32:0];

    // bgTrunc_i_unnamed_load_weight027_sel_x(BITSELECT,6)@3
    assign bgTrunc_i_unnamed_load_weight027_sel_x_b = i_unnamed_load_weight027_q[31:0];

    // i_unnamed_load_weight028_sel_x(BITSELECT,50)@3
    assign i_unnamed_load_weight028_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_weight027_sel_x_b[31:0]};

    // i_unnamed_load_weight028_vt_select_31(BITSELECT,143)@3
    assign i_unnamed_load_weight028_vt_select_31_b = i_unnamed_load_weight028_sel_x_b[31:0];

    // redist2_i_unnamed_load_weight028_vt_select_31_b_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_load_weight028_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_load_weight028_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_weight028_vt_select_31_b);
        end
    end

    // i_unnamed_load_weight028_vt_join(BITJOIN,142)@4
    assign i_unnamed_load_weight028_vt_join_q = {GND_q, redist2_i_unnamed_load_weight028_vt_select_31_b_1_q};

    // i_unnamed_load_weight029(ADD,144)@4
    assign i_unnamed_load_weight029_a = {1'b0, i_unnamed_load_weight028_vt_join_q};
    assign i_unnamed_load_weight029_b = {1'b0, c_i33_183_q};
    assign i_unnamed_load_weight029_o = $unsigned(i_unnamed_load_weight029_a) + $unsigned(i_unnamed_load_weight029_b);
    assign i_unnamed_load_weight029_q = i_unnamed_load_weight029_o[33:0];

    // bgTrunc_i_unnamed_load_weight029_sel_x(BITSELECT,7)@4
    assign bgTrunc_i_unnamed_load_weight029_sel_x_b = i_unnamed_load_weight029_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_weight015_load_weight053(BLACKBOX,114)@4
    // out out_intel_reserved_ffwd_14_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000ght015_load_weight00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_weight015_load_weight053 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(bgTrunc_i_unnamed_load_weight029_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_weight015_load_weight053_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_weight015_load_weight053_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg16(REG,192)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist12_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q <= $unsigned(in_c0_eni1_15_tpl);
        end
    end

    // i_unnamed_load_weight030(COMPARE,145)@2 + 1
    assign i_unnamed_load_weight030_a = $unsigned({{2{c_i32_175_recast_x_q[31]}}, c_i32_175_recast_x_q});
    assign i_unnamed_load_weight030_b = $unsigned({{2{in_c0_eni1_15_tpl[31]}}, in_c0_eni1_15_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_load_weight030_o <= 34'b0;
        end
        else
        begin
            i_unnamed_load_weight030_o <= $unsigned($signed(i_unnamed_load_weight030_a) - $signed(i_unnamed_load_weight030_b));
        end
    end
    assign i_unnamed_load_weight030_c[0] = i_unnamed_load_weight030_o[33];

    // i_smax9_load_weight032(MUX,128)@3
    assign i_smax9_load_weight032_s = i_unnamed_load_weight030_c;
    always @(i_smax9_load_weight032_s or c_i32_175_recast_x_q or redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q)
    begin
        unique case (i_smax9_load_weight032_s)
            1'b0 : i_smax9_load_weight032_q = c_i32_175_recast_x_q;
            1'b1 : i_smax9_load_weight032_q = redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q;
            default : i_smax9_load_weight032_q = 32'b0;
        endcase
    end

    // i_smax9_load_weight032_vt_select_30(BITSELECT,131)@3
    assign i_smax9_load_weight032_vt_select_30_b = i_smax9_load_weight032_q[30:0];

    // i_smax9_load_weight032_vt_join(BITJOIN,130)@3
    assign i_smax9_load_weight032_vt_join_q = {GND_q, i_smax9_load_weight032_vt_select_30_b};

    // i_unnamed_load_weight033(ADD,146)@3
    assign i_unnamed_load_weight033_a = {1'b0, i_smax9_load_weight032_vt_join_q};
    assign i_unnamed_load_weight033_b = {1'b0, c_i32_179_q};
    assign i_unnamed_load_weight033_o = $unsigned(i_unnamed_load_weight033_a) + $unsigned(i_unnamed_load_weight033_b);
    assign i_unnamed_load_weight033_q = i_unnamed_load_weight033_o[32:0];

    // bgTrunc_i_unnamed_load_weight033_sel_x(BITSELECT,8)@3
    assign bgTrunc_i_unnamed_load_weight033_sel_x_b = i_unnamed_load_weight033_q[31:0];

    // i_unnamed_load_weight034_sel_x(BITSELECT,51)@3
    assign i_unnamed_load_weight034_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_weight033_sel_x_b[31:0]};

    // i_unnamed_load_weight034_vt_select_31(BITSELECT,150)@3
    assign i_unnamed_load_weight034_vt_select_31_b = i_unnamed_load_weight034_sel_x_b[31:0];

    // redist1_i_unnamed_load_weight034_vt_select_31_b_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_load_weight034_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_load_weight034_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_weight034_vt_select_31_b);
        end
    end

    // i_unnamed_load_weight034_vt_join(BITJOIN,149)@4
    assign i_unnamed_load_weight034_vt_join_q = {GND_q, redist1_i_unnamed_load_weight034_vt_select_31_b_1_q};

    // i_unnamed_load_weight035(ADD,151)@4
    assign i_unnamed_load_weight035_a = {1'b0, i_unnamed_load_weight034_vt_join_q};
    assign i_unnamed_load_weight035_b = {1'b0, c_i33_183_q};
    assign i_unnamed_load_weight035_o = $unsigned(i_unnamed_load_weight035_a) + $unsigned(i_unnamed_load_weight035_b);
    assign i_unnamed_load_weight035_q = i_unnamed_load_weight035_o[33:0];

    // bgTrunc_i_unnamed_load_weight035_sel_x(BITSELECT,9)@4
    assign bgTrunc_i_unnamed_load_weight035_sel_x_b = i_unnamed_load_weight035_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_weight016_load_weight054(BLACKBOX,115)@4
    // out out_intel_reserved_ffwd_15_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000ght016_load_weight00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_weight016_load_weight054 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bgTrunc_i_unnamed_load_weight035_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_weight016_load_weight054_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_weight016_load_weight054_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg17(REG,193)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist12_sync_together84_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_unnamed_load_weight037_vt_const_32(CONSTANT,159)
    assign i_unnamed_load_weight037_vt_const_32_q = $unsigned(29'b00000000000000000000000000000);

    // c_i32_976(CONSTANT,88)
    assign c_i32_976_q = $unsigned(32'b00000000000000000000000000001001);

    // c_i32_374_recast_x(CONSTANT,14)
    assign c_i32_374_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_cond_load_weight04(LOGICAL,100)@2
    assign i_cond_load_weight04_q = $unsigned(in_c0_eni1_15_tpl == c_i32_374_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_load_weight06(MUX,90)@2
    assign i_acl_load_weight06_s = i_cond_load_weight04_q;
    always @(i_acl_load_weight06_s or c_i32_175_recast_x_q or c_i32_976_q)
    begin
        unique case (i_acl_load_weight06_s)
            1'b0 : i_acl_load_weight06_q = c_i32_175_recast_x_q;
            1'b1 : i_acl_load_weight06_q = c_i32_976_q;
            default : i_acl_load_weight06_q = 32'b0;
        endcase
    end

    // i_acl_load_weight06_vt_select_3(BITSELECT,94)@2
    assign i_acl_load_weight06_vt_select_3_b = i_acl_load_weight06_q[3:3];

    // redist4_i_acl_load_weight06_vt_select_3_b_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_acl_load_weight06_vt_select_3_b_1_q <= '0;
        end
        else
        begin
            redist4_i_acl_load_weight06_vt_select_3_b_1_q <= $unsigned(i_acl_load_weight06_vt_select_3_b);
        end
    end

    // i_acl_load_weight06_vt_const_2(CONSTANT,91)
    assign i_acl_load_weight06_vt_const_2_q = $unsigned(3'b001);

    // i_acl_load_weight06_vt_join(BITJOIN,93)@3
    assign i_acl_load_weight06_vt_join_q = {i_acl_load_weight06_vt_const_31_q, redist4_i_acl_load_weight06_vt_select_3_b_1_q, i_acl_load_weight06_vt_const_2_q};

    // i_unnamed_load_weight036(ADD,152)@3
    assign i_unnamed_load_weight036_a = {1'b0, i_acl_load_weight06_vt_join_q};
    assign i_unnamed_load_weight036_b = {1'b0, c_i32_179_q};
    assign i_unnamed_load_weight036_o = $unsigned(i_unnamed_load_weight036_a) + $unsigned(i_unnamed_load_weight036_b);
    assign i_unnamed_load_weight036_q = i_unnamed_load_weight036_o[32:0];

    // bgTrunc_i_unnamed_load_weight036_sel_x(BITSELECT,10)@3
    assign bgTrunc_i_unnamed_load_weight036_sel_x_b = i_unnamed_load_weight036_q[31:0];

    // i_unnamed_load_weight036_vt_select_3(BITSELECT,156)@3
    assign i_unnamed_load_weight036_vt_select_3_b = bgTrunc_i_unnamed_load_weight036_sel_x_b[3:3];

    // i_unnamed_load_weight036_vt_join(BITJOIN,155)@3
    assign i_unnamed_load_weight036_vt_join_q = {i_acl_load_weight06_vt_const_31_q, i_unnamed_load_weight036_vt_select_3_b, i_unnamed_load_weight036_vt_const_2_q};

    // i_unnamed_load_weight037_sel_x(BITSELECT,52)@3
    assign i_unnamed_load_weight037_sel_x_b = {1'b0, i_unnamed_load_weight036_vt_join_q[31:0]};

    // i_unnamed_load_weight037_vt_select_3(BITSELECT,161)@3
    assign i_unnamed_load_weight037_vt_select_3_b = i_unnamed_load_weight037_sel_x_b[3:3];

    // redist0_i_unnamed_load_weight037_vt_select_3_b_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_weight037_vt_select_3_b_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_weight037_vt_select_3_b_1_q <= $unsigned(i_unnamed_load_weight037_vt_select_3_b);
        end
    end

    // i_unnamed_load_weight036_vt_const_2(CONSTANT,153)
    assign i_unnamed_load_weight036_vt_const_2_q = $unsigned(3'b000);

    // i_unnamed_load_weight037_vt_join(BITJOIN,160)@4
    assign i_unnamed_load_weight037_vt_join_q = {i_unnamed_load_weight037_vt_const_32_q, redist0_i_unnamed_load_weight037_vt_select_3_b_1_q, i_unnamed_load_weight036_vt_const_2_q};

    // i_unnamed_load_weight038(ADD,162)@4
    assign i_unnamed_load_weight038_a = {1'b0, i_unnamed_load_weight037_vt_join_q};
    assign i_unnamed_load_weight038_b = {1'b0, c_i33_183_q};
    assign i_unnamed_load_weight038_o = $unsigned(i_unnamed_load_weight038_a) + $unsigned(i_unnamed_load_weight038_b);
    assign i_unnamed_load_weight038_q = i_unnamed_load_weight038_o[33:0];

    // bgTrunc_i_unnamed_load_weight038_sel_x(BITSELECT,11)@4
    assign bgTrunc_i_unnamed_load_weight038_sel_x_b = i_unnamed_load_weight038_q[32:0];

    // i_unnamed_load_weight038_vt_select_32(BITSELECT,165)@4
    assign i_unnamed_load_weight038_vt_select_32_b = bgTrunc_i_unnamed_load_weight038_sel_x_b[32:3];

    // i_unnamed_load_weight038_vt_const_2(CONSTANT,163)
    assign i_unnamed_load_weight038_vt_const_2_q = $unsigned(3'b111);

    // i_unnamed_load_weight038_vt_join(BITJOIN,164)@4
    assign i_unnamed_load_weight038_vt_join_q = {i_unnamed_load_weight038_vt_select_32_b, i_unnamed_load_weight038_vt_const_2_q};

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_weight017_load_weight055(BLACKBOX,116)@4
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000ght017_load_weight00 thei_llvm_fpga_ffwd_source_i33_unnamed_load_weight017_load_weight055 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(i_unnamed_load_weight038_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_weight017_load_weight055_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_weight017_load_weight055_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg2(REG,178)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight02_load_weight040(BLACKBOX,107)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight02_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight02_load_weight040 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist6_sync_together84_aunroll_x_in_c0_eni1_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight02_load_weight040_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight02_load_weight040_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg3(REG,179)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight03_load_weight041(BLACKBOX,108)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight03_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight03_load_weight041 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist8_sync_together84_aunroll_x_in_c0_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight03_load_weight041_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight03_load_weight041_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg4(REG,180)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight04_load_weight042(BLACKBOX,109)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight04_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight04_load_weight042 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist9_sync_together84_aunroll_x_in_c0_eni1_4_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight04_load_weight042_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight04_load_weight042_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg5(REG,181)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight05_load_weight043(BLACKBOX,110)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight05_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight05_load_weight043 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight05_load_weight043_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight05_load_weight043_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg6(REG,182)@2 + 1
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

    // redist10_sync_together84_aunroll_x_in_c0_eni1_6_tpl_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni1_6_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together84_aunroll_x_in_c0_eni1_6_tpl_1_q <= $unsigned(in_c0_eni1_6_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight06_load_weight044(BLACKBOX,111)@3
    // out out_intel_reserved_ffwd_5_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight06_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight06_load_weight044 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist10_sync_together84_aunroll_x_in_c0_eni1_6_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight06_load_weight044_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight06_load_weight044_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg7(REG,183)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight07_load_weight045(BLACKBOX,112)@3
    // out out_intel_reserved_ffwd_6_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight07_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight07_load_weight045 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_acl_load_weight06_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight07_load_weight045_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight07_load_weight045_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg8(REG,184)@2 + 1
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

    // i_mul_load_weight07_vt_const_31(CONSTANT,119)
    assign i_mul_load_weight07_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x(BITSELECT,213)@3
    assign leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_in = i_acl_load_weight06_vt_join_q[27:0];
    assign leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_b = leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_in[27:0];

    // leftShiftStage0Idx1Pad4_uid213_i_mul_load_weight00_shift_x(CONSTANT,212)
    assign leftShiftStage0Idx1Pad4_uid213_i_mul_load_weight00_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage0Idx1_uid215_i_mul_load_weight00_shift_x(BITJOIN,214)@3
    assign leftShiftStage0Idx1_uid215_i_mul_load_weight00_shift_x_q = {leftShiftStage0Idx1Rng4_uid214_i_mul_load_weight00_shift_x_b, leftShiftStage0Idx1Pad4_uid213_i_mul_load_weight00_shift_x_q};

    // leftShiftStage0_uid217_i_mul_load_weight00_shift_x(MUX,216)@3
    assign leftShiftStage0_uid217_i_mul_load_weight00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid217_i_mul_load_weight00_shift_x_s or i_acl_load_weight06_vt_join_q or leftShiftStage0Idx1_uid215_i_mul_load_weight00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid217_i_mul_load_weight00_shift_x_s)
            1'b0 : leftShiftStage0_uid217_i_mul_load_weight00_shift_x_q = i_acl_load_weight06_vt_join_q;
            1'b1 : leftShiftStage0_uid217_i_mul_load_weight00_shift_x_q = leftShiftStage0Idx1_uid215_i_mul_load_weight00_shift_x_q;
            default : leftShiftStage0_uid217_i_mul_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_load_weight07_vt_select_7(BITSELECT,122)@3
    assign i_mul_load_weight07_vt_select_7_b = leftShiftStage0_uid217_i_mul_load_weight00_shift_x_q[7:7];

    // i_mul_load_weight07_vt_const_6(CONSTANT,120)
    assign i_mul_load_weight07_vt_const_6_q = $unsigned(7'b0010000);

    // i_mul_load_weight07_vt_join(BITJOIN,121)@3
    assign i_mul_load_weight07_vt_join_q = {i_mul_load_weight07_vt_const_31_q, i_mul_load_weight07_vt_select_7_b, i_mul_load_weight07_vt_const_6_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight08_load_weight046(BLACKBOX,113)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ight08_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight08_load_weight046 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_mul_load_weight07_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight08_load_weight046_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight08_load_weight046_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg9(REG,185)@2 + 1
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

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight09_load_weight047(BLACKBOX,105)@3
    // out out_intel_reserved_ffwd_8_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ight09_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight09_load_weight047 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_cmp82_load_weight08_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight09_load_weight047_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight09_load_weight047_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg10(REG,186)@2 + 1
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

    // i_cmp5172_load_weight010(COMPARE,96)@3
    assign i_cmp5172_load_weight010_a = $unsigned({{2{c_i32_078_recast_x_q[31]}}, c_i32_078_recast_x_q});
    assign i_cmp5172_load_weight010_b = $unsigned({{2{redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q[31]}}, redist11_sync_together84_aunroll_x_in_c0_eni1_15_tpl_1_q});
    assign i_cmp5172_load_weight010_o = $unsigned($signed(i_cmp5172_load_weight010_a) - $signed(i_cmp5172_load_weight010_b));
    assign i_cmp5172_load_weight010_c[0] = i_cmp5172_load_weight010_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_weight010_load_weight048(BLACKBOX,101)@3
    // out out_intel_reserved_ffwd_9_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ght010_load_weight00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_weight010_load_weight048 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_cmp5172_load_weight010_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_weight010_load_weight048_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_weight010_load_weight048_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,176)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together84_aunroll_x_in_i_valid_3_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,53)@6
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_weight018_0_tpl = GND_q;
    assign out_unnamed_load_weight019 = GND_q;

    // valid_fanout_reg1(REG,177)@2 + 1
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

    // redist5_sync_together84_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together84_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_load_weight01_load_weight039(BLACKBOX,117)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1026s_c0000ight01_load_weight00 thei_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_load_weight01_load_weight039 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist5_sync_together84_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_load_weight01_load_weight039_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,173)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1026s_class_ihc_mm_hosts_unnamed_load_weight01_load_weight039_out_intel_reserved_ffwd_0_0;

endmodule
