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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000enter12_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_wt_entry_loa0000enter12_load_input10 (
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
    output wire [0:0] out_unnamed_load_input119_0_tpl,
    output wire [0:0] out_unnamed_load_input120,
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
    wire [31:0] bgTrunc_i_add3_load_input16_sel_x_b;
    wire [31:0] bgTrunc_i_add5_load_input18_sel_x_b;
    wire [31:0] bgTrunc_i_add_load_input15_sel_x_b;
    wire [31:0] bgTrunc_i_mul10_add28_load_input116_sel_x_b;
    wire [63:0] bgTrunc_i_mul12_load_input117_sel_x_in;
    wire [31:0] bgTrunc_i_mul12_load_input117_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input126_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input128_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input132_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input134_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input138_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input140_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_input144_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_load_input146_sel_x_b;
    wire [31:0] c_i32_086_recast_x_q;
    wire [31:0] c_i32_184_recast_x_q;
    wire [32:0] i_unnamed_load_input127_sel_x_b;
    wire [32:0] i_unnamed_load_input133_sel_x_b;
    wire [32:0] i_unnamed_load_input139_sel_x_b;
    wire [32:0] i_unnamed_load_input145_sel_x_b;
    wire [31:0] c_i32_188_q;
    wire [32:0] c_i33_189_q;
    wire [32:0] i_add3_load_input16_a;
    wire [32:0] i_add3_load_input16_b;
    logic [32:0] i_add3_load_input16_o;
    wire [32:0] i_add3_load_input16_q;
    wire [32:0] i_add5_load_input18_a;
    wire [32:0] i_add5_load_input18_b;
    logic [32:0] i_add5_load_input18_o;
    wire [32:0] i_add5_load_input18_q;
    wire [32:0] i_add_load_input15_a;
    wire [32:0] i_add_load_input15_b;
    logic [32:0] i_add_load_input15_o;
    wire [32:0] i_add_load_input15_q;
    wire [33:0] i_cmp1788_load_input118_a;
    wire [33:0] i_cmp1788_load_input118_b;
    logic [33:0] i_cmp1788_load_input118_o;
    wire [0:0] i_cmp1788_load_input118_c;
    wire [33:0] i_cmp2185_load_input120_a;
    wire [33:0] i_cmp2185_load_input120_b;
    logic [33:0] i_cmp2185_load_input120_o;
    wire [0:0] i_cmp2185_load_input120_c;
    wire [33:0] i_cmp5179_load_input111_a;
    wire [33:0] i_cmp5179_load_input111_b;
    logic [33:0] i_cmp5179_load_input111_o;
    wire [0:0] i_cmp5179_load_input111_c;
    wire [33:0] i_cmp6074_load_input113_a;
    wire [33:0] i_cmp6074_load_input113_b;
    logic [33:0] i_cmp6074_load_input113_o;
    wire [0:0] i_cmp6074_load_input113_c;
    wire [33:0] i_cmp92_load_input19_a;
    wire [33:0] i_cmp92_load_input19_b;
    logic [33:0] i_cmp92_load_input19_o;
    wire [0:0] i_cmp92_load_input19_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input110_load_input156_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input112_load_input158_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input113_load_input159_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input114_load_input160_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input18_load_input154_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input19_load_input155_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input111_load_input157_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input12_load_input148_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input13_load_input149_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input14_load_input150_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input15_load_input151_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input16_load_input152_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input17_load_input153_out_intel_reserved_ffwd_6_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input115_load_input161_out_intel_reserved_ffwd_14_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input116_load_input162_out_intel_reserved_ffwd_15_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input117_load_input163_out_intel_reserved_ffwd_16_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input164_out_intel_reserved_ffwd_17_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input11_load_input147_out_intel_reserved_ffwd_0_0;
    wire [32:0] i_mul10_add28_load_input116_a;
    wire [32:0] i_mul10_add28_load_input116_b;
    logic [32:0] i_mul10_add28_load_input116_o;
    wire [32:0] i_mul10_add28_load_input116_q;
    wire [1:0] i_mul4_load_input17_vt_const_1_q;
    wire [31:0] i_mul4_load_input17_vt_join_q;
    wire [29:0] i_mul4_load_input17_vt_select_31_b;
    wire [31:0] i_mul_load_input14_vt_join_q;
    wire [30:0] i_mul_load_input14_vt_select_31_b;
    wire [0:0] i_smax19_load_input137_s;
    reg [31:0] i_smax19_load_input137_q;
    wire [31:0] i_smax19_load_input137_vt_join_q;
    wire [30:0] i_smax19_load_input137_vt_select_30_b;
    wire [0:0] i_smax23_load_input143_s;
    reg [31:0] i_smax23_load_input143_q;
    wire [31:0] i_smax23_load_input143_vt_join_q;
    wire [30:0] i_smax23_load_input143_vt_select_30_b;
    wire [0:0] i_smax9_load_input131_s;
    reg [31:0] i_smax9_load_input131_q;
    wire [31:0] i_smax9_load_input131_vt_join_q;
    wire [30:0] i_smax9_load_input131_vt_select_30_b;
    wire [0:0] i_smax_load_input125_s;
    reg [31:0] i_smax_load_input125_q;
    wire [31:0] i_smax_load_input125_vt_join_q;
    wire [30:0] i_smax_load_input125_vt_select_30_b;
    wire [31:0] i_unnamed_load_input115_vt_join_q;
    wire [29:0] i_unnamed_load_input115_vt_select_31_b;
    wire [0:0] i_unnamed_load_input122_q;
    wire [33:0] i_unnamed_load_input123_a;
    wire [33:0] i_unnamed_load_input123_b;
    logic [33:0] i_unnamed_load_input123_o;
    wire [0:0] i_unnamed_load_input123_c;
    wire [32:0] i_unnamed_load_input126_a;
    wire [32:0] i_unnamed_load_input126_b;
    logic [32:0] i_unnamed_load_input126_o;
    wire [32:0] i_unnamed_load_input126_q;
    wire [32:0] i_unnamed_load_input127_vt_join_q;
    wire [31:0] i_unnamed_load_input127_vt_select_31_b;
    wire [33:0] i_unnamed_load_input128_a;
    wire [33:0] i_unnamed_load_input128_b;
    logic [33:0] i_unnamed_load_input128_o;
    wire [33:0] i_unnamed_load_input128_q;
    wire [33:0] i_unnamed_load_input129_a;
    wire [33:0] i_unnamed_load_input129_b;
    logic [33:0] i_unnamed_load_input129_o;
    wire [0:0] i_unnamed_load_input129_c;
    wire [32:0] i_unnamed_load_input132_a;
    wire [32:0] i_unnamed_load_input132_b;
    logic [32:0] i_unnamed_load_input132_o;
    wire [32:0] i_unnamed_load_input132_q;
    wire [32:0] i_unnamed_load_input133_vt_join_q;
    wire [31:0] i_unnamed_load_input133_vt_select_31_b;
    wire [33:0] i_unnamed_load_input134_a;
    wire [33:0] i_unnamed_load_input134_b;
    logic [33:0] i_unnamed_load_input134_o;
    wire [33:0] i_unnamed_load_input134_q;
    wire [33:0] i_unnamed_load_input135_a;
    wire [33:0] i_unnamed_load_input135_b;
    logic [33:0] i_unnamed_load_input135_o;
    wire [0:0] i_unnamed_load_input135_c;
    wire [32:0] i_unnamed_load_input138_a;
    wire [32:0] i_unnamed_load_input138_b;
    logic [32:0] i_unnamed_load_input138_o;
    wire [32:0] i_unnamed_load_input138_q;
    wire [32:0] i_unnamed_load_input139_vt_join_q;
    wire [31:0] i_unnamed_load_input139_vt_select_31_b;
    wire [33:0] i_unnamed_load_input140_a;
    wire [33:0] i_unnamed_load_input140_b;
    logic [33:0] i_unnamed_load_input140_o;
    wire [33:0] i_unnamed_load_input140_q;
    wire [33:0] i_unnamed_load_input141_a;
    wire [33:0] i_unnamed_load_input141_b;
    logic [33:0] i_unnamed_load_input141_o;
    wire [0:0] i_unnamed_load_input141_c;
    wire [32:0] i_unnamed_load_input144_a;
    wire [32:0] i_unnamed_load_input144_b;
    logic [32:0] i_unnamed_load_input144_o;
    wire [32:0] i_unnamed_load_input144_q;
    wire [32:0] i_unnamed_load_input145_vt_join_q;
    wire [31:0] i_unnamed_load_input145_vt_select_31_b;
    wire [33:0] i_unnamed_load_input146_a;
    wire [33:0] i_unnamed_load_input146_b;
    logic [33:0] i_unnamed_load_input146_o;
    wire [33:0] i_unnamed_load_input146_q;
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
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid232_i_mul4_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid234_i_mul4_load_input10_shift_x_s;
    reg [31:0] leftShiftStage0_uid234_i_mul4_load_input10_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid240_i_mul_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid242_i_mul_load_input10_shift_x_s;
    reg [31:0] leftShiftStage0_uid242_i_mul_load_input10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid248_i_unnamed_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_s;
    reg [31:0] leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_q;
    wire [17:0] i_mul12_load_input117_bs2_in;
    wire [17:0] i_mul12_load_input117_bs2_b;
    wire [13:0] i_mul12_load_input117_bs5_b;
    wire [63:0] i_mul12_load_input117_sums_join_0_q;
    wire [50:0] i_mul12_load_input117_sums_align_1_q;
    wire [50:0] i_mul12_load_input117_sums_align_1_qint;
    wire [64:0] i_mul12_load_input117_sums_result_add_0_0_a;
    wire [64:0] i_mul12_load_input117_sums_result_add_0_0_b;
    logic [64:0] i_mul12_load_input117_sums_result_add_0_0_o;
    wire [64:0] i_mul12_load_input117_sums_result_add_0_0_q;
    wire i_mul12_load_input117_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul12_load_input117_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul12_load_input117_im0_cma_c0 [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_p [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_u [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_w [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_x [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_y [0:0];
    reg [35:0] i_mul12_load_input117_im0_cma_s [0:0];
    wire [35:0] i_mul12_load_input117_im0_cma_qq;
    wire [35:0] i_mul12_load_input117_im0_cma_q;
    wire i_mul12_load_input117_im0_cma_ena0;
    wire i_mul12_load_input117_im0_cma_ena1;
    wire i_mul12_load_input117_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul12_load_input117_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul12_load_input117_im8_cma_c0 [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_p [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_u [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_w [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_x [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_y [0:0];
    reg [27:0] i_mul12_load_input117_im8_cma_s [0:0];
    wire [27:0] i_mul12_load_input117_im8_cma_qq;
    wire [27:0] i_mul12_load_input117_im8_cma_q;
    wire i_mul12_load_input117_im8_cma_ena0;
    wire i_mul12_load_input117_im8_cma_ena1;
    wire i_mul12_load_input117_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul12_load_input117_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul12_load_input117_ma3_cma_c0 [0:1];
    wire [31:0] i_mul12_load_input117_ma3_cma_p [0:1];
    wire [32:0] i_mul12_load_input117_ma3_cma_u [0:1];
    wire [32:0] i_mul12_load_input117_ma3_cma_w [0:0];
    wire [32:0] i_mul12_load_input117_ma3_cma_x [0:0];
    wire [32:0] i_mul12_load_input117_ma3_cma_y [0:0];
    reg [32:0] i_mul12_load_input117_ma3_cma_s [0:0];
    wire [32:0] i_mul12_load_input117_ma3_cma_qq;
    wire [32:0] i_mul12_load_input117_ma3_cma_q;
    wire i_mul12_load_input117_ma3_cma_ena0;
    wire i_mul12_load_input117_ma3_cma_ena1;
    wire [17:0] i_mul12_load_input117_bs1_merged_bit_select_b;
    wire [13:0] i_mul12_load_input117_bs1_merged_bit_select_c;
    reg [31:0] redist0_i_unnamed_load_input145_vt_select_31_b_1_q;
    reg [31:0] redist1_i_unnamed_load_input139_vt_select_31_b_1_q;
    reg [31:0] redist2_i_unnamed_load_input133_vt_select_31_b_1_q;
    reg [31:0] redist3_i_unnamed_load_input127_vt_select_31_b_1_q;
    reg [30:0] redist4_i_smax_load_input125_vt_select_30_b_1_q;
    reg [30:0] redist5_i_smax9_load_input131_vt_select_30_b_1_q;
    reg [30:0] redist6_i_smax23_load_input143_vt_select_30_b_1_q;
    reg [30:0] redist7_i_smax19_load_input137_vt_select_30_b_1_q;
    reg [63:0] redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [31:0] redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q;
    reg [31:0] redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q;
    reg [31:0] redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q;
    reg [31:0] redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q;
    reg [0:0] redist13_sync_together90_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together90_aunroll_x_in_i_valid_2_q;
    reg [31:0] redist15_bgTrunc_i_add_load_input15_sel_x_b_1_q;
    reg [31:0] redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q;
    reg [31:0] redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q;


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

    // i_mul12_load_input117_bs5(BITSELECT,256)@2
    assign i_mul12_load_input117_bs5_b = in_c0_eni1_19_tpl[31:18];

    // i_mul12_load_input117_bs2(BITSELECT,253)@2
    assign i_mul12_load_input117_bs2_in = in_c0_eni1_19_tpl[17:0];
    assign i_mul12_load_input117_bs2_b = i_mul12_load_input117_bs2_in[17:0];

    // leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x(BITSELECT,246)@2
    assign leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_in = in_c0_eni1_5_tpl[29:0];
    assign leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_b = leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid248_i_unnamed_load_input10_shift_x(BITJOIN,247)@2
    assign leftShiftStage0Idx1_uid248_i_unnamed_load_input10_shift_x_q = {leftShiftStage0Idx1Rng2_uid247_i_unnamed_load_input10_shift_x_b, i_mul4_load_input17_vt_const_1_q};

    // leftShiftStage0_uid250_i_unnamed_load_input10_shift_x(MUX,249)@2
    assign leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_s or in_c0_eni1_5_tpl or leftShiftStage0Idx1_uid248_i_unnamed_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_q = in_c0_eni1_5_tpl;
            1'b1 : leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_q = leftShiftStage0Idx1_uid248_i_unnamed_load_input10_shift_x_q;
            default : leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_input115_vt_select_31(BITSELECT,146)@2
    assign i_unnamed_load_input115_vt_select_31_b = leftShiftStage0_uid250_i_unnamed_load_input10_shift_x_q[31:2];

    // i_mul4_load_input17_vt_const_1(CONSTANT,122)
    assign i_mul4_load_input17_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_load_input115_vt_join(BITJOIN,145)@2
    assign i_unnamed_load_input115_vt_join_q = {i_unnamed_load_input115_vt_select_31_b, i_mul4_load_input17_vt_const_1_q};

    // i_mul10_add28_load_input116(ADD,120)@2
    assign i_mul10_add28_load_input116_a = {1'b0, in_c0_eni1_5_tpl};
    assign i_mul10_add28_load_input116_b = {1'b0, i_unnamed_load_input115_vt_join_q};
    assign i_mul10_add28_load_input116_o = $unsigned(i_mul10_add28_load_input116_a) + $unsigned(i_mul10_add28_load_input116_b);
    assign i_mul10_add28_load_input116_q = i_mul10_add28_load_input116_o[32:0];

    // bgTrunc_i_mul10_add28_load_input116_sel_x(BITSELECT,5)@2
    assign bgTrunc_i_mul10_add28_load_input116_sel_x_b = i_mul10_add28_load_input116_q[31:0];

    // i_mul12_load_input117_bs1_merged_bit_select(BITSELECT,269)@2
    assign i_mul12_load_input117_bs1_merged_bit_select_b = bgTrunc_i_mul10_add28_load_input116_sel_x_b[17:0];
    assign i_mul12_load_input117_bs1_merged_bit_select_c = bgTrunc_i_mul10_add28_load_input116_sel_x_b[31:18];

    // i_mul12_load_input117_ma3_cma(CHAINMULTADD,268)@2 + 2
    assign i_mul12_load_input117_ma3_cma_reset = ~ (resetn);
    assign i_mul12_load_input117_ma3_cma_ena0 = 1'b1;
    assign i_mul12_load_input117_ma3_cma_ena1 = i_mul12_load_input117_ma3_cma_ena0;
    assign i_mul12_load_input117_ma3_cma_p[0] = i_mul12_load_input117_ma3_cma_a0[0] * i_mul12_load_input117_ma3_cma_c0[0];
    assign i_mul12_load_input117_ma3_cma_p[1] = i_mul12_load_input117_ma3_cma_a0[1] * i_mul12_load_input117_ma3_cma_c0[1];
    assign i_mul12_load_input117_ma3_cma_u[0] = {1'b0, i_mul12_load_input117_ma3_cma_p[0][31:0]};
    assign i_mul12_load_input117_ma3_cma_u[1] = {1'b0, i_mul12_load_input117_ma3_cma_p[1][31:0]};
    assign i_mul12_load_input117_ma3_cma_w[0] = i_mul12_load_input117_ma3_cma_u[0] + i_mul12_load_input117_ma3_cma_u[1];
    assign i_mul12_load_input117_ma3_cma_x[0] = i_mul12_load_input117_ma3_cma_w[0];
    assign i_mul12_load_input117_ma3_cma_y[0] = i_mul12_load_input117_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_ma3_cma_a0 <= '{default: '0};
            i_mul12_load_input117_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_ma3_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input117_ma3_cma_a0[0] <= i_mul12_load_input117_bs1_merged_bit_select_c;
                i_mul12_load_input117_ma3_cma_a0[1] <= i_mul12_load_input117_bs5_b;
                i_mul12_load_input117_ma3_cma_c0[0] <= i_mul12_load_input117_bs2_b;
                i_mul12_load_input117_ma3_cma_c0[1] <= i_mul12_load_input117_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_ma3_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input117_ma3_cma_s[0] <= i_mul12_load_input117_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input117_ma3_cma_delay ( .xin(i_mul12_load_input117_ma3_cma_s[0]), .xout(i_mul12_load_input117_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input117_ma3_cma_q = $unsigned(i_mul12_load_input117_ma3_cma_qq[32:0]);

    // i_mul12_load_input117_sums_align_1(BITSHIFT,263)@4
    assign i_mul12_load_input117_sums_align_1_qint = { i_mul12_load_input117_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul12_load_input117_sums_align_1_q = i_mul12_load_input117_sums_align_1_qint[50:0];

    // i_mul12_load_input117_im8_cma(CHAINMULTADD,267)@2 + 2
    assign i_mul12_load_input117_im8_cma_reset = ~ (resetn);
    assign i_mul12_load_input117_im8_cma_ena0 = 1'b1;
    assign i_mul12_load_input117_im8_cma_ena1 = i_mul12_load_input117_im8_cma_ena0;
    assign i_mul12_load_input117_im8_cma_p[0] = i_mul12_load_input117_im8_cma_a0[0] * i_mul12_load_input117_im8_cma_c0[0];
    assign i_mul12_load_input117_im8_cma_u[0] = i_mul12_load_input117_im8_cma_p[0][27:0];
    assign i_mul12_load_input117_im8_cma_w[0] = i_mul12_load_input117_im8_cma_u[0];
    assign i_mul12_load_input117_im8_cma_x[0] = i_mul12_load_input117_im8_cma_w[0];
    assign i_mul12_load_input117_im8_cma_y[0] = i_mul12_load_input117_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_im8_cma_a0 <= '{default: '0};
            i_mul12_load_input117_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_im8_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input117_im8_cma_a0[0] <= i_mul12_load_input117_bs1_merged_bit_select_c;
                i_mul12_load_input117_im8_cma_c0[0] <= i_mul12_load_input117_bs5_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_im8_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input117_im8_cma_s[0] <= i_mul12_load_input117_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input117_im8_cma_delay ( .xin(i_mul12_load_input117_im8_cma_s[0]), .xout(i_mul12_load_input117_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input117_im8_cma_q = $unsigned(i_mul12_load_input117_im8_cma_qq[27:0]);

    // i_mul12_load_input117_im0_cma(CHAINMULTADD,266)@2 + 2
    assign i_mul12_load_input117_im0_cma_reset = ~ (resetn);
    assign i_mul12_load_input117_im0_cma_ena0 = 1'b1;
    assign i_mul12_load_input117_im0_cma_ena1 = i_mul12_load_input117_im0_cma_ena0;
    assign i_mul12_load_input117_im0_cma_p[0] = i_mul12_load_input117_im0_cma_a0[0] * i_mul12_load_input117_im0_cma_c0[0];
    assign i_mul12_load_input117_im0_cma_u[0] = i_mul12_load_input117_im0_cma_p[0][35:0];
    assign i_mul12_load_input117_im0_cma_w[0] = i_mul12_load_input117_im0_cma_u[0];
    assign i_mul12_load_input117_im0_cma_x[0] = i_mul12_load_input117_im0_cma_w[0];
    assign i_mul12_load_input117_im0_cma_y[0] = i_mul12_load_input117_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_im0_cma_a0 <= '{default: '0};
            i_mul12_load_input117_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_im0_cma_ena0 == 1'b1)
            begin
                i_mul12_load_input117_im0_cma_a0[0] <= i_mul12_load_input117_bs1_merged_bit_select_b;
                i_mul12_load_input117_im0_cma_c0[0] <= i_mul12_load_input117_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul12_load_input117_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul12_load_input117_im0_cma_ena1 == 1'b1)
            begin
                i_mul12_load_input117_im0_cma_s[0] <= i_mul12_load_input117_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul12_load_input117_im0_cma_delay ( .xin(i_mul12_load_input117_im0_cma_s[0]), .xout(i_mul12_load_input117_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul12_load_input117_im0_cma_q = $unsigned(i_mul12_load_input117_im0_cma_qq[35:0]);

    // i_mul12_load_input117_sums_join_0(BITJOIN,262)@4
    assign i_mul12_load_input117_sums_join_0_q = {i_mul12_load_input117_im8_cma_q, i_mul12_load_input117_im0_cma_q};

    // i_mul12_load_input117_sums_result_add_0_0(ADD,265)@4
    assign i_mul12_load_input117_sums_result_add_0_0_a = {1'b0, i_mul12_load_input117_sums_join_0_q};
    assign i_mul12_load_input117_sums_result_add_0_0_b = {14'b00000000000000, i_mul12_load_input117_sums_align_1_q};
    assign i_mul12_load_input117_sums_result_add_0_0_o = $unsigned(i_mul12_load_input117_sums_result_add_0_0_a) + $unsigned(i_mul12_load_input117_sums_result_add_0_0_b);
    assign i_mul12_load_input117_sums_result_add_0_0_q = i_mul12_load_input117_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul12_load_input117_sel_x(BITSELECT,6)@4
    assign bgTrunc_i_mul12_load_input117_sel_x_in = i_mul12_load_input117_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul12_load_input117_sel_x_b = bgTrunc_i_mul12_load_input117_sel_x_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input111_load_input157(BLACKBOX,108)@4
    // out out_intel_reserved_ffwd_10_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000nput111_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input111_load_input157 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bgTrunc_i_mul12_load_input117_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input111_load_input157_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input111_load_input157_out_intel_reserved_ffwd_10_0;

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

    // leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x(BITSELECT,230)@2
    assign leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_in = in_c0_eni1_19_tpl[29:0];
    assign leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_b = leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid232_i_mul4_load_input10_shift_x(BITJOIN,231)@2
    assign leftShiftStage0Idx1_uid232_i_mul4_load_input10_shift_x_q = {leftShiftStage0Idx1Rng2_uid231_i_mul4_load_input10_shift_x_b, i_mul4_load_input17_vt_const_1_q};

    // leftShiftStage0_uid234_i_mul4_load_input10_shift_x(MUX,233)@2
    assign leftShiftStage0_uid234_i_mul4_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid234_i_mul4_load_input10_shift_x_s or in_c0_eni1_19_tpl or leftShiftStage0Idx1_uid232_i_mul4_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid234_i_mul4_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid234_i_mul4_load_input10_shift_x_q = in_c0_eni1_19_tpl;
            1'b1 : leftShiftStage0_uid234_i_mul4_load_input10_shift_x_q = leftShiftStage0Idx1_uid232_i_mul4_load_input10_shift_x_q;
            default : leftShiftStage0_uid234_i_mul4_load_input10_shift_x_q = 32'b0;
        endcase
    end

    // i_mul4_load_input17_vt_select_31(BITSELECT,124)@2
    assign i_mul4_load_input17_vt_select_31_b = leftShiftStage0_uid234_i_mul4_load_input10_shift_x_q[31:2];

    // i_mul4_load_input17_vt_join(BITJOIN,123)@2
    assign i_mul4_load_input17_vt_join_q = {i_mul4_load_input17_vt_select_31_b, i_mul4_load_input17_vt_const_1_q};

    // i_add5_load_input18(ADD,95)@2
    assign i_add5_load_input18_a = {1'b0, i_mul4_load_input17_vt_join_q};
    assign i_add5_load_input18_b = {1'b0, in_c0_eni1_16_tpl};
    assign i_add5_load_input18_o = $unsigned(i_add5_load_input18_a) + $unsigned(i_add5_load_input18_b);
    assign i_add5_load_input18_q = i_add5_load_input18_o[32:0];

    // bgTrunc_i_add5_load_input18_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_add5_load_input18_sel_x_b = i_add5_load_input18_q[31:0];

    // redist16_bgTrunc_i_add5_load_input18_sel_x_b_1(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q <= $unsigned(bgTrunc_i_add5_load_input18_sel_x_b);
        end
    end

    // c_i32_086_recast_x(CONSTANT,15)
    assign c_i32_086_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1788_load_input118(COMPARE,97)@3
    assign i_cmp1788_load_input118_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp1788_load_input118_b = $unsigned({{2{redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q[31]}}, redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q});
    assign i_cmp1788_load_input118_o = $unsigned($signed(i_cmp1788_load_input118_a) - $signed(i_cmp1788_load_input118_b));
    assign i_cmp1788_load_input118_c[0] = i_cmp1788_load_input118_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input112_load_input158(BLACKBOX,103)@3
    // out out_intel_reserved_ffwd_11_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput112_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input112_load_input158 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_cmp1788_load_input118_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input112_load_input158_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input112_load_input158_out_intel_reserved_ffwd_11_0;

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

    // leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x(BITSELECT,238)@2
    assign leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_in = in_c0_eni1_17_tpl[30:0];
    assign leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_b = leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid240_i_mul_load_input10_shift_x(BITJOIN,239)@2
    assign leftShiftStage0Idx1_uid240_i_mul_load_input10_shift_x_q = {leftShiftStage0Idx1Rng1_uid239_i_mul_load_input10_shift_x_b, GND_q};

    // leftShiftStage0_uid242_i_mul_load_input10_shift_x(MUX,241)@2
    assign leftShiftStage0_uid242_i_mul_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid242_i_mul_load_input10_shift_x_s or in_c0_eni1_17_tpl or leftShiftStage0Idx1_uid240_i_mul_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid242_i_mul_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid242_i_mul_load_input10_shift_x_q = in_c0_eni1_17_tpl;
            1'b1 : leftShiftStage0_uid242_i_mul_load_input10_shift_x_q = leftShiftStage0Idx1_uid240_i_mul_load_input10_shift_x_q;
            default : leftShiftStage0_uid242_i_mul_load_input10_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_load_input14_vt_select_31(BITSELECT,127)@2
    assign i_mul_load_input14_vt_select_31_b = leftShiftStage0_uid242_i_mul_load_input10_shift_x_q[31:1];

    // i_mul_load_input14_vt_join(BITJOIN,126)@2
    assign i_mul_load_input14_vt_join_q = {i_mul_load_input14_vt_select_31_b, GND_q};

    // i_add3_load_input16(ADD,94)@2
    assign i_add3_load_input16_a = {1'b0, i_mul_load_input14_vt_join_q};
    assign i_add3_load_input16_b = {1'b0, in_c0_eni1_12_tpl};
    assign i_add3_load_input16_o = $unsigned(i_add3_load_input16_a) + $unsigned(i_add3_load_input16_b);
    assign i_add3_load_input16_q = i_add3_load_input16_o[32:0];

    // bgTrunc_i_add3_load_input16_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_add3_load_input16_sel_x_b = i_add3_load_input16_q[31:0];

    // redist17_bgTrunc_i_add3_load_input16_sel_x_b_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q <= $unsigned(bgTrunc_i_add3_load_input16_sel_x_b);
        end
    end

    // i_cmp2185_load_input120(COMPARE,98)@3
    assign i_cmp2185_load_input120_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp2185_load_input120_b = $unsigned({{2{redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q[31]}}, redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q});
    assign i_cmp2185_load_input120_o = $unsigned($signed(i_cmp2185_load_input120_a) - $signed(i_cmp2185_load_input120_b));
    assign i_cmp2185_load_input120_c[0] = i_cmp2185_load_input120_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input113_load_input159(BLACKBOX,104)@3
    // out out_intel_reserved_ffwd_12_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput113_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input113_load_input159 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_cmp2185_load_input120_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input113_load_input159_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input113_load_input159_out_intel_reserved_ffwd_12_0;

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

    // i_cmp92_load_input19(COMPARE,101)@3
    assign i_cmp92_load_input19_a = $unsigned({{2{redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q[31]}}, redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q});
    assign i_cmp92_load_input19_b = $unsigned({{2{redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q[31]}}, redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q});
    assign i_cmp92_load_input19_o = $unsigned($signed(i_cmp92_load_input19_a) - $signed(i_cmp92_load_input19_b));
    assign i_cmp92_load_input19_c[0] = i_cmp92_load_input19_o[33];

    // i_unnamed_load_input122(LOGICAL,147)@3
    assign i_unnamed_load_input122_q = i_cmp92_load_input19_c ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input114_load_input160(BLACKBOX,105)@3
    // out out_intel_reserved_ffwd_13_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput114_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input114_load_input160 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_unnamed_load_input122_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input114_load_input160_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input114_load_input160_out_intel_reserved_ffwd_13_0;

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

    // i_unnamed_load_input123(COMPARE,148)@2
    assign i_unnamed_load_input123_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input123_b = $unsigned({{2{in_c0_eni1_15_tpl[31]}}, in_c0_eni1_15_tpl});
    assign i_unnamed_load_input123_o = $unsigned($signed(i_unnamed_load_input123_a) - $signed(i_unnamed_load_input123_b));
    assign i_unnamed_load_input123_c[0] = i_unnamed_load_input123_o[33];

    // i_smax_load_input125(MUX,140)@2
    assign i_smax_load_input125_s = i_unnamed_load_input123_c;
    always @(i_smax_load_input125_s or c_i32_184_recast_x_q or in_c0_eni1_15_tpl)
    begin
        unique case (i_smax_load_input125_s)
            1'b0 : i_smax_load_input125_q = c_i32_184_recast_x_q;
            1'b1 : i_smax_load_input125_q = in_c0_eni1_15_tpl;
            default : i_smax_load_input125_q = 32'b0;
        endcase
    end

    // i_smax_load_input125_vt_select_30(BITSELECT,143)@2
    assign i_smax_load_input125_vt_select_30_b = i_smax_load_input125_q[30:0];

    // redist4_i_smax_load_input125_vt_select_30_b_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_smax_load_input125_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist4_i_smax_load_input125_vt_select_30_b_1_q <= $unsigned(i_smax_load_input125_vt_select_30_b);
        end
    end

    // i_smax_load_input125_vt_join(BITJOIN,142)@3
    assign i_smax_load_input125_vt_join_q = {GND_q, redist4_i_smax_load_input125_vt_select_30_b_1_q};

    // i_unnamed_load_input126(ADD,149)@3
    assign i_unnamed_load_input126_a = {1'b0, i_smax_load_input125_vt_join_q};
    assign i_unnamed_load_input126_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input126_o = $unsigned(i_unnamed_load_input126_a) + $unsigned(i_unnamed_load_input126_b);
    assign i_unnamed_load_input126_q = i_unnamed_load_input126_o[32:0];

    // bgTrunc_i_unnamed_load_input126_sel_x(BITSELECT,7)@3
    assign bgTrunc_i_unnamed_load_input126_sel_x_b = i_unnamed_load_input126_q[31:0];

    // i_unnamed_load_input127_sel_x(BITSELECT,52)@3
    assign i_unnamed_load_input127_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input126_sel_x_b[31:0]};

    // i_unnamed_load_input127_vt_select_31(BITSELECT,153)@3
    assign i_unnamed_load_input127_vt_select_31_b = i_unnamed_load_input127_sel_x_b[31:0];

    // redist3_i_unnamed_load_input127_vt_select_31_b_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_unnamed_load_input127_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist3_i_unnamed_load_input127_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input127_vt_select_31_b);
        end
    end

    // i_unnamed_load_input127_vt_join(BITJOIN,152)@4
    assign i_unnamed_load_input127_vt_join_q = {GND_q, redist3_i_unnamed_load_input127_vt_select_31_b_1_q};

    // i_unnamed_load_input128(ADD,154)@4
    assign i_unnamed_load_input128_a = {1'b0, i_unnamed_load_input127_vt_join_q};
    assign i_unnamed_load_input128_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input128_o = $unsigned(i_unnamed_load_input128_a) + $unsigned(i_unnamed_load_input128_b);
    assign i_unnamed_load_input128_q = i_unnamed_load_input128_o[33:0];

    // bgTrunc_i_unnamed_load_input128_sel_x(BITSELECT,8)@4
    assign bgTrunc_i_unnamed_load_input128_sel_x_b = i_unnamed_load_input128_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input115_load_input161(BLACKBOX,115)@4
    // out out_intel_reserved_ffwd_14_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput115_load_input10 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input115_load_input161 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(bgTrunc_i_unnamed_load_input128_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input115_load_input161_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input115_load_input161_out_intel_reserved_ffwd_14_0;

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

    // i_unnamed_load_input129(COMPARE,155)@2
    assign i_unnamed_load_input129_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input129_b = $unsigned({{2{in_c0_eni1_16_tpl[31]}}, in_c0_eni1_16_tpl});
    assign i_unnamed_load_input129_o = $unsigned($signed(i_unnamed_load_input129_a) - $signed(i_unnamed_load_input129_b));
    assign i_unnamed_load_input129_c[0] = i_unnamed_load_input129_o[33];

    // i_smax9_load_input131(MUX,136)@2
    assign i_smax9_load_input131_s = i_unnamed_load_input129_c;
    always @(i_smax9_load_input131_s or c_i32_184_recast_x_q or in_c0_eni1_16_tpl)
    begin
        unique case (i_smax9_load_input131_s)
            1'b0 : i_smax9_load_input131_q = c_i32_184_recast_x_q;
            1'b1 : i_smax9_load_input131_q = in_c0_eni1_16_tpl;
            default : i_smax9_load_input131_q = 32'b0;
        endcase
    end

    // i_smax9_load_input131_vt_select_30(BITSELECT,139)@2
    assign i_smax9_load_input131_vt_select_30_b = i_smax9_load_input131_q[30:0];

    // redist5_i_smax9_load_input131_vt_select_30_b_1(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_smax9_load_input131_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist5_i_smax9_load_input131_vt_select_30_b_1_q <= $unsigned(i_smax9_load_input131_vt_select_30_b);
        end
    end

    // i_smax9_load_input131_vt_join(BITJOIN,138)@3
    assign i_smax9_load_input131_vt_join_q = {GND_q, redist5_i_smax9_load_input131_vt_select_30_b_1_q};

    // i_unnamed_load_input132(ADD,156)@3
    assign i_unnamed_load_input132_a = {1'b0, i_smax9_load_input131_vt_join_q};
    assign i_unnamed_load_input132_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input132_o = $unsigned(i_unnamed_load_input132_a) + $unsigned(i_unnamed_load_input132_b);
    assign i_unnamed_load_input132_q = i_unnamed_load_input132_o[32:0];

    // bgTrunc_i_unnamed_load_input132_sel_x(BITSELECT,9)@3
    assign bgTrunc_i_unnamed_load_input132_sel_x_b = i_unnamed_load_input132_q[31:0];

    // i_unnamed_load_input133_sel_x(BITSELECT,53)@3
    assign i_unnamed_load_input133_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input132_sel_x_b[31:0]};

    // i_unnamed_load_input133_vt_select_31(BITSELECT,160)@3
    assign i_unnamed_load_input133_vt_select_31_b = i_unnamed_load_input133_sel_x_b[31:0];

    // redist2_i_unnamed_load_input133_vt_select_31_b_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_load_input133_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist2_i_unnamed_load_input133_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input133_vt_select_31_b);
        end
    end

    // i_unnamed_load_input133_vt_join(BITJOIN,159)@4
    assign i_unnamed_load_input133_vt_join_q = {GND_q, redist2_i_unnamed_load_input133_vt_select_31_b_1_q};

    // i_unnamed_load_input134(ADD,161)@4
    assign i_unnamed_load_input134_a = {1'b0, i_unnamed_load_input133_vt_join_q};
    assign i_unnamed_load_input134_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input134_o = $unsigned(i_unnamed_load_input134_a) + $unsigned(i_unnamed_load_input134_b);
    assign i_unnamed_load_input134_q = i_unnamed_load_input134_o[33:0];

    // bgTrunc_i_unnamed_load_input134_sel_x(BITSELECT,10)@4
    assign bgTrunc_i_unnamed_load_input134_sel_x_b = i_unnamed_load_input134_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input116_load_input162(BLACKBOX,116)@4
    // out out_intel_reserved_ffwd_15_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput116_load_input10 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input116_load_input162 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(bgTrunc_i_unnamed_load_input134_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input116_load_input162_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input116_load_input162_out_intel_reserved_ffwd_15_0;

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

    // i_unnamed_load_input135(COMPARE,162)@3
    assign i_unnamed_load_input135_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input135_b = $unsigned({{2{redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q[31]}}, redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q});
    assign i_unnamed_load_input135_o = $unsigned($signed(i_unnamed_load_input135_a) - $signed(i_unnamed_load_input135_b));
    assign i_unnamed_load_input135_c[0] = i_unnamed_load_input135_o[33];

    // i_smax19_load_input137(MUX,128)@3
    assign i_smax19_load_input137_s = i_unnamed_load_input135_c;
    always @(i_smax19_load_input137_s or c_i32_184_recast_x_q or redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q)
    begin
        unique case (i_smax19_load_input137_s)
            1'b0 : i_smax19_load_input137_q = c_i32_184_recast_x_q;
            1'b1 : i_smax19_load_input137_q = redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q;
            default : i_smax19_load_input137_q = 32'b0;
        endcase
    end

    // i_smax19_load_input137_vt_select_30(BITSELECT,131)@3
    assign i_smax19_load_input137_vt_select_30_b = i_smax19_load_input137_q[30:0];

    // redist7_i_smax19_load_input137_vt_select_30_b_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_smax19_load_input137_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist7_i_smax19_load_input137_vt_select_30_b_1_q <= $unsigned(i_smax19_load_input137_vt_select_30_b);
        end
    end

    // i_smax19_load_input137_vt_join(BITJOIN,130)@4
    assign i_smax19_load_input137_vt_join_q = {GND_q, redist7_i_smax19_load_input137_vt_select_30_b_1_q};

    // i_unnamed_load_input138(ADD,163)@4
    assign i_unnamed_load_input138_a = {1'b0, i_smax19_load_input137_vt_join_q};
    assign i_unnamed_load_input138_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input138_o = $unsigned(i_unnamed_load_input138_a) + $unsigned(i_unnamed_load_input138_b);
    assign i_unnamed_load_input138_q = i_unnamed_load_input138_o[32:0];

    // bgTrunc_i_unnamed_load_input138_sel_x(BITSELECT,11)@4
    assign bgTrunc_i_unnamed_load_input138_sel_x_b = i_unnamed_load_input138_q[31:0];

    // i_unnamed_load_input139_sel_x(BITSELECT,54)@4
    assign i_unnamed_load_input139_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input138_sel_x_b[31:0]};

    // i_unnamed_load_input139_vt_select_31(BITSELECT,167)@4
    assign i_unnamed_load_input139_vt_select_31_b = i_unnamed_load_input139_sel_x_b[31:0];

    // redist1_i_unnamed_load_input139_vt_select_31_b_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_load_input139_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_load_input139_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input139_vt_select_31_b);
        end
    end

    // i_unnamed_load_input139_vt_join(BITJOIN,166)@5
    assign i_unnamed_load_input139_vt_join_q = {GND_q, redist1_i_unnamed_load_input139_vt_select_31_b_1_q};

    // i_unnamed_load_input140(ADD,168)@5
    assign i_unnamed_load_input140_a = {1'b0, i_unnamed_load_input139_vt_join_q};
    assign i_unnamed_load_input140_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input140_o = $unsigned(i_unnamed_load_input140_a) + $unsigned(i_unnamed_load_input140_b);
    assign i_unnamed_load_input140_q = i_unnamed_load_input140_o[33:0];

    // bgTrunc_i_unnamed_load_input140_sel_x(BITSELECT,12)@5
    assign bgTrunc_i_unnamed_load_input140_sel_x_b = i_unnamed_load_input140_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input117_load_input163(BLACKBOX,117)@5
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput117_load_input10 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input117_load_input163 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(bgTrunc_i_unnamed_load_input140_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input117_load_input163_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input117_load_input163_out_intel_reserved_ffwd_16_0;

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

    // i_unnamed_load_input141(COMPARE,169)@3
    assign i_unnamed_load_input141_a = $unsigned({{2{c_i32_184_recast_x_q[31]}}, c_i32_184_recast_x_q});
    assign i_unnamed_load_input141_b = $unsigned({{2{redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q[31]}}, redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q});
    assign i_unnamed_load_input141_o = $unsigned($signed(i_unnamed_load_input141_a) - $signed(i_unnamed_load_input141_b));
    assign i_unnamed_load_input141_c[0] = i_unnamed_load_input141_o[33];

    // i_smax23_load_input143(MUX,132)@3
    assign i_smax23_load_input143_s = i_unnamed_load_input141_c;
    always @(i_smax23_load_input143_s or c_i32_184_recast_x_q or redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q)
    begin
        unique case (i_smax23_load_input143_s)
            1'b0 : i_smax23_load_input143_q = c_i32_184_recast_x_q;
            1'b1 : i_smax23_load_input143_q = redist16_bgTrunc_i_add5_load_input18_sel_x_b_1_q;
            default : i_smax23_load_input143_q = 32'b0;
        endcase
    end

    // i_smax23_load_input143_vt_select_30(BITSELECT,135)@3
    assign i_smax23_load_input143_vt_select_30_b = i_smax23_load_input143_q[30:0];

    // redist6_i_smax23_load_input143_vt_select_30_b_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_smax23_load_input143_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist6_i_smax23_load_input143_vt_select_30_b_1_q <= $unsigned(i_smax23_load_input143_vt_select_30_b);
        end
    end

    // i_smax23_load_input143_vt_join(BITJOIN,134)@4
    assign i_smax23_load_input143_vt_join_q = {GND_q, redist6_i_smax23_load_input143_vt_select_30_b_1_q};

    // i_unnamed_load_input144(ADD,170)@4
    assign i_unnamed_load_input144_a = {1'b0, i_smax23_load_input143_vt_join_q};
    assign i_unnamed_load_input144_b = {1'b0, c_i32_188_q};
    assign i_unnamed_load_input144_o = $unsigned(i_unnamed_load_input144_a) + $unsigned(i_unnamed_load_input144_b);
    assign i_unnamed_load_input144_q = i_unnamed_load_input144_o[32:0];

    // bgTrunc_i_unnamed_load_input144_sel_x(BITSELECT,13)@4
    assign bgTrunc_i_unnamed_load_input144_sel_x_b = i_unnamed_load_input144_q[31:0];

    // i_unnamed_load_input145_sel_x(BITSELECT,55)@4
    assign i_unnamed_load_input145_sel_x_b = {1'b0, bgTrunc_i_unnamed_load_input144_sel_x_b[31:0]};

    // i_unnamed_load_input145_vt_select_31(BITSELECT,174)@4
    assign i_unnamed_load_input145_vt_select_31_b = i_unnamed_load_input145_sel_x_b[31:0];

    // redist0_i_unnamed_load_input145_vt_select_31_b_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input145_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input145_vt_select_31_b_1_q <= $unsigned(i_unnamed_load_input145_vt_select_31_b);
        end
    end

    // i_unnamed_load_input145_vt_join(BITJOIN,173)@5
    assign i_unnamed_load_input145_vt_join_q = {GND_q, redist0_i_unnamed_load_input145_vt_select_31_b_1_q};

    // i_unnamed_load_input146(ADD,175)@5
    assign i_unnamed_load_input146_a = {1'b0, i_unnamed_load_input145_vt_join_q};
    assign i_unnamed_load_input146_b = {1'b0, c_i33_189_q};
    assign i_unnamed_load_input146_o = $unsigned(i_unnamed_load_input146_a) + $unsigned(i_unnamed_load_input146_b);
    assign i_unnamed_load_input146_q = i_unnamed_load_input146_o[33:0];

    // bgTrunc_i_unnamed_load_input146_sel_x(BITSELECT,14)@5
    assign bgTrunc_i_unnamed_load_input146_sel_x_b = i_unnamed_load_input146_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input164(BLACKBOX,118)@5
    // out out_intel_reserved_ffwd_17_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000nput118_load_input10 thei_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input164 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(bgTrunc_i_unnamed_load_input146_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input164_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i33_unnamed_load_input118_load_input164_out_intel_reserved_ffwd_17_0;

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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input12_load_input148(BLACKBOX,109)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input12_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input12_load_input148 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist9_sync_together90_aunroll_x_in_c0_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input12_load_input148_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input12_load_input148_out_intel_reserved_ffwd_1_0;

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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input13_load_input149(BLACKBOX,110)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input13_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input13_load_input149 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist10_sync_together90_aunroll_x_in_c0_eni1_4_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input13_load_input149_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input13_load_input149_out_intel_reserved_ffwd_2_0;

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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input14_load_input150(BLACKBOX,111)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input14_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input14_load_input150 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist11_sync_together90_aunroll_x_in_c0_eni1_6_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input14_load_input150_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input14_load_input150_out_intel_reserved_ffwd_3_0;

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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input15_load_input151(BLACKBOX,112)@3
    // out out_intel_reserved_ffwd_4_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input15_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input15_load_input151 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(redist12_sync_together90_aunroll_x_in_c0_eni1_19_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input15_load_input151_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input15_load_input151_out_intel_reserved_ffwd_4_0;

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

    // i_add_load_input15(ADD,96)@2
    assign i_add_load_input15_a = {1'b0, i_mul_load_input14_vt_join_q};
    assign i_add_load_input15_b = {1'b0, in_c0_eni1_11_tpl};
    assign i_add_load_input15_o = $unsigned(i_add_load_input15_a) + $unsigned(i_add_load_input15_b);
    assign i_add_load_input15_q = i_add_load_input15_o[32:0];

    // bgTrunc_i_add_load_input15_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_add_load_input15_sel_x_b = i_add_load_input15_q[31:0];

    // redist15_bgTrunc_i_add_load_input15_sel_x_b_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_add_load_input15_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_bgTrunc_i_add_load_input15_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_load_input15_sel_x_b);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input16_load_input152(BLACKBOX,113)@3
    // out out_intel_reserved_ffwd_5_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input16_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input16_load_input152 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist15_bgTrunc_i_add_load_input15_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input16_load_input152_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input16_load_input152_out_intel_reserved_ffwd_5_0;

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

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input17_load_input153(BLACKBOX,114)@3
    // out out_intel_reserved_ffwd_6_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000input17_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input17_load_input153 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(redist17_bgTrunc_i_add3_load_input16_sel_x_b_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input17_load_input153_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input17_load_input153_out_intel_reserved_ffwd_6_0;

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

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input18_load_input154(BLACKBOX,106)@3
    // out out_intel_reserved_ffwd_7_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000input18_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input18_load_input154 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_cmp92_load_input19_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input18_load_input154_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input18_load_input154_out_intel_reserved_ffwd_7_0;

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

    // i_cmp5179_load_input111(COMPARE,99)@2 + 1
    assign i_cmp5179_load_input111_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp5179_load_input111_b = $unsigned({{2{in_c0_eni1_16_tpl[31]}}, in_c0_eni1_16_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp5179_load_input111_o <= 34'b0;
        end
        else
        begin
            i_cmp5179_load_input111_o <= $unsigned($signed(i_cmp5179_load_input111_a) - $signed(i_cmp5179_load_input111_b));
        end
    end
    assign i_cmp5179_load_input111_c[0] = i_cmp5179_load_input111_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input19_load_input155(BLACKBOX,107)@3
    // out out_intel_reserved_ffwd_8_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000input19_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input19_load_input155 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_cmp5179_load_input111_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input19_load_input155_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input19_load_input155_out_intel_reserved_ffwd_8_0;

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

    // i_cmp6074_load_input113(COMPARE,100)@2 + 1
    assign i_cmp6074_load_input113_a = $unsigned({{2{c_i32_086_recast_x_q[31]}}, c_i32_086_recast_x_q});
    assign i_cmp6074_load_input113_b = $unsigned({{2{in_c0_eni1_15_tpl[31]}}, in_c0_eni1_15_tpl});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp6074_load_input113_o <= 34'b0;
        end
        else
        begin
            i_cmp6074_load_input113_o <= $unsigned($signed(i_cmp6074_load_input113_a) - $signed(i_cmp6074_load_input113_b));
        end
    end
    assign i_cmp6074_load_input113_c[0] = i_cmp6074_load_input113_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input110_load_input156(BLACKBOX,102)@3
    // out out_intel_reserved_ffwd_9_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput110_load_input10 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input110_load_input156 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_cmp6074_load_input113_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input110_load_input156_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input110_load_input156_out_intel_reserved_ffwd_9_0;

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
    assign out_unnamed_load_input119_0_tpl = GND_q;
    assign out_unnamed_load_input120 = GND_q;

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

    // i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input11_load_input147(BLACKBOX,119)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1025s_c0000input11_load_input10 thei_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input11_load_input147 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist8_sync_together90_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input11_load_input147_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,185)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1025s_class_ihc_mm_host_3s_unnamed_load_input11_load_input147_out_intel_reserved_ffwd_0_0;

endmodule
