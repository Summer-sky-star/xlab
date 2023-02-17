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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond_cle0000ter711_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond_cle0000ter711_conv_process0 (
    output wire [31:0] out_intel_reserved_ffwd_65_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_65_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_66_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_67_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_68_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_69_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_70_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_71_0_2_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_0_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_72_0_2_tpl,
    output wire [0:0] out_intel_reserved_ffwd_60_0,
    output wire [31:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [31:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_73_0,
    output wire [32:0] out_intel_reserved_ffwd_74_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    output wire [0:0] out_unnamed_conv_process88_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_22_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [31:0] in_intel_reserved_ffwd_25_0,
    input wire [31:0] in_intel_reserved_ffwd_26_0,
    input wire [31:0] in_intel_reserved_ffwd_27_0,
    input wire [31:0] in_intel_reserved_ffwd_28_0,
    input wire [31:0] in_intel_reserved_ffwd_29_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_30_0,
    input wire [31:0] in_intel_reserved_ffwd_31_0,
    input wire [31:0] in_intel_reserved_ffwd_36_0,
    input wire [31:0] in_intel_reserved_ffwd_37_0,
    input wire [31:0] in_intel_reserved_ffwd_38_0,
    input wire [31:0] in_intel_reserved_ffwd_39_0,
    input wire [31:0] in_intel_reserved_ffwd_40_0,
    input wire [31:0] in_intel_reserved_ffwd_41_0,
    input wire [31:0] in_intel_reserved_ffwd_42_0,
    input wire [31:0] in_intel_reserved_ffwd_43_0,
    input wire [31:0] in_intel_reserved_ffwd_44_0,
    input wire [31:0] in_intel_reserved_ffwd_45_0,
    input wire [31:0] in_intel_reserved_ffwd_46_0,
    input wire [31:0] in_intel_reserved_ffwd_47_0,
    input wire [31:0] in_intel_reserved_ffwd_48_0,
    input wire [31:0] in_intel_reserved_ffwd_49_0,
    input wire [0:0] in_intel_reserved_ffwd_50_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [31:0] in_intel_reserved_ffwd_9_0,
    output wire [63:0] out_intel_reserved_ffwd_59_0,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add4_i_conv_process15_sel_x_b;
    wire [31:0] bgTrunc_i_add55_i_conv_process35_sel_x_b;
    wire [31:0] bgTrunc_i_add5_i_conv_process21_sel_x_b;
    wire [31:0] bgTrunc_i_add9_i_conv_process25_sel_x_b;
    wire [31:0] bgTrunc_i_add_i105_conv_process18_sel_x_b;
    wire [63:0] bgTrunc_i_mul3_i_conv_process20_sel_x_in;
    wire [31:0] bgTrunc_i_mul3_i_conv_process20_sel_x_b;
    wire [63:0] bgTrunc_i_mul8_i_conv_process23_sel_x_in;
    wire [31:0] bgTrunc_i_mul8_i_conv_process23_sel_x_b;
    wire [31:0] bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_conv_process8_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv_process73_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv_process75_sel_x_b;
    wire [31:0] c_i32_0151_recast_x_q;
    wire [31:0] c_i32_1154_recast_x_q;
    wire [31:0] c_i32_2149_recast_x_q;
    wire [31:0] c_i32_5150_recast_x_q;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl;
    wire [32:0] i_unnamed_conv_process74_sel_x_b;
    wire [31:0] c_i32_1155_q;
    wire [32:0] c_i33_1156_q;
    wire [32:0] i_add4_i_conv_process15_a;
    wire [32:0] i_add4_i_conv_process15_b;
    logic [32:0] i_add4_i_conv_process15_o;
    wire [32:0] i_add4_i_conv_process15_q;
    wire [32:0] i_add55_i_conv_process35_a;
    wire [32:0] i_add55_i_conv_process35_b;
    logic [32:0] i_add55_i_conv_process35_o;
    wire [32:0] i_add55_i_conv_process35_q;
    wire [32:0] i_add5_i_conv_process21_a;
    wire [32:0] i_add5_i_conv_process21_b;
    logic [32:0] i_add5_i_conv_process21_o;
    wire [32:0] i_add5_i_conv_process21_q;
    wire [32:0] i_add9_i_conv_process25_a;
    wire [32:0] i_add9_i_conv_process25_b;
    logic [32:0] i_add9_i_conv_process25_o;
    wire [32:0] i_add9_i_conv_process25_q;
    wire [32:0] i_add_i105_conv_process18_a;
    wire [32:0] i_add_i105_conv_process18_b;
    logic [32:0] i_add_i105_conv_process18_o;
    wire [32:0] i_add_i105_conv_process18_q;
    wire [0:0] i_cmp45_i_conv_process28_q;
    wire [0:0] i_cmp48_i_conv_process31_q;
    wire [33:0] i_cmp_i107473_conv_process12_a;
    wire [33:0] i_cmp_i107473_conv_process12_b;
    logic [33:0] i_cmp_i107473_conv_process12_o;
    wire [0:0] i_cmp_i107473_conv_process12_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process36_out_dest_data_out_20_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process44_out_dest_data_out_21_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process52_out_dest_data_out_22_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process60_out_dest_data_out_23_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process38_out_dest_data_out_24_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process46_out_dest_data_out_25_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process54_out_dest_data_out_26_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process62_out_dest_data_out_27_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process39_out_dest_data_out_28_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process47_out_dest_data_out_29_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process55_out_dest_data_out_30_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process63_out_dest_data_out_31_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process40_out_dest_data_out_36_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process48_out_dest_data_out_37_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process56_out_dest_data_out_38_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select203100_conv_process64_out_dest_data_out_39_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select204101_conv_process42_out_dest_data_out_40_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select205102_conv_process50_out_dest_data_out_41_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select206103_conv_process58_out_dest_data_out_42_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select207104_conv_process66_out_dest_data_out_43_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select208105_conv_process43_out_dest_data_out_44_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select209106_conv_process51_out_dest_data_out_45_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select210107_conv_process59_out_dest_data_out_46_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select211108_conv_process67_out_dest_data_out_47_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process68_out_dest_data_out_50_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22_out_dest_data_out_49_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process17_out_dest_data_out_48_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract61_conv_process33_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract62_conv_process14_out_dest_data_out_7_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract72_conv_process30_out_dest_data_out_12_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract73_conv_process27_out_dest_data_out_12_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_3_extract65_conv_process24_out_dest_data_out_9_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract66_conv_process34_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract67_conv_process16_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract68_conv_process7_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_too88048_conv_process19_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_tr88354_conv_process5_out_dest_data_out_5_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1027s_class_ihc_mm_host_10s_ddr_out187846_conv_process1_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process73_conv_process77_out_intel_reserved_ffwd_60_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process75_conv_process79_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process76_conv_process80_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process86_conv_process90_out_intel_reserved_ffwd_73_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process74_conv_process78_out_intel_reserved_ffwd_61_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process77_conv_process81_out_intel_reserved_ffwd_64_0;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process87_conv_process91_out_intel_reserved_ffwd_74_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1027s_class_ac_int_4s_unnamed_conv_process72_conv_process76_out_intel_reserved_ffwd_59_0;
    wire [1:0] i_mul10_i_conv_process26_vt_const_1_q;
    wire [31:0] i_mul10_i_conv_process26_vt_join_q;
    wire [29:0] i_mul10_i_conv_process26_vt_select_31_b;
    wire [32:0] i_mul_i101_add45_conv_process6_a;
    wire [32:0] i_mul_i101_add45_conv_process6_b;
    logic [32:0] i_mul_i101_add45_conv_process6_o;
    wire [32:0] i_mul_i101_add45_conv_process6_q;
    wire [0:0] i_smax40_conv_process72_s;
    reg [31:0] i_smax40_conv_process72_q;
    wire [31:0] i_smax40_conv_process72_vt_join_q;
    wire [30:0] i_smax40_conv_process72_vt_select_30_b;
    wire [32:0] i_sub_i_conv_process8_a;
    wire [32:0] i_sub_i_conv_process8_b;
    logic [32:0] i_sub_i_conv_process8_o;
    wire [32:0] i_sub_i_conv_process8_q;
    wire [0:0] i_unnamed_conv_process11_s;
    reg [31:0] i_unnamed_conv_process11_q;
    wire [31:0] i_unnamed_conv_process4_vt_join_q;
    wire [29:0] i_unnamed_conv_process4_vt_select_31_b;
    wire [0:0] i_unnamed_conv_process69_q;
    wire [33:0] i_unnamed_conv_process70_a;
    wire [33:0] i_unnamed_conv_process70_b;
    logic [33:0] i_unnamed_conv_process70_o;
    wire [0:0] i_unnamed_conv_process70_c;
    wire [32:0] i_unnamed_conv_process73_a;
    wire [32:0] i_unnamed_conv_process73_b;
    logic [32:0] i_unnamed_conv_process73_o;
    wire [32:0] i_unnamed_conv_process73_q;
    wire [32:0] i_unnamed_conv_process74_vt_join_q;
    wire [31:0] i_unnamed_conv_process74_vt_select_31_b;
    wire [33:0] i_unnamed_conv_process75_a;
    wire [33:0] i_unnamed_conv_process75_b;
    logic [33:0] i_unnamed_conv_process75_o;
    wire [33:0] i_unnamed_conv_process75_q;
    wire [33:0] i_unnamed_conv_process9_a;
    wire [33:0] i_unnamed_conv_process9_b;
    logic [33:0] i_unnamed_conv_process9_o;
    wire [0:0] i_unnamed_conv_process9_c;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid318_i_mul10_i_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid326_i_unnamed_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_q;
    wire [63:0] i_mul3_i_conv_process20_sums_join_0_q;
    wire [50:0] i_mul3_i_conv_process20_sums_align_1_q;
    wire [50:0] i_mul3_i_conv_process20_sums_align_1_qint;
    wire [64:0] i_mul3_i_conv_process20_sums_result_add_0_0_a;
    wire [64:0] i_mul3_i_conv_process20_sums_result_add_0_0_b;
    logic [64:0] i_mul3_i_conv_process20_sums_result_add_0_0_o;
    wire [64:0] i_mul3_i_conv_process20_sums_result_add_0_0_q;
    wire [63:0] i_mul8_i_conv_process23_sums_join_0_q;
    wire [50:0] i_mul8_i_conv_process23_sums_align_1_q;
    wire [50:0] i_mul8_i_conv_process23_sums_align_1_qint;
    wire [64:0] i_mul8_i_conv_process23_sums_result_add_0_0_a;
    wire [64:0] i_mul8_i_conv_process23_sums_result_add_0_0_b;
    logic [64:0] i_mul8_i_conv_process23_sums_result_add_0_0_o;
    wire [64:0] i_mul8_i_conv_process23_sums_result_add_0_0_q;
    wire i_mul3_i_conv_process20_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul3_i_conv_process20_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul3_i_conv_process20_im0_cma_c0 [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_p [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_u [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_w [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_x [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_y [0:0];
    reg [35:0] i_mul3_i_conv_process20_im0_cma_s [0:0];
    wire [35:0] i_mul3_i_conv_process20_im0_cma_qq;
    wire [35:0] i_mul3_i_conv_process20_im0_cma_q;
    wire i_mul3_i_conv_process20_im0_cma_ena0;
    wire i_mul3_i_conv_process20_im0_cma_ena1;
    wire i_mul3_i_conv_process20_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul3_i_conv_process20_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul3_i_conv_process20_im8_cma_c0 [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_p [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_u [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_w [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_x [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_y [0:0];
    reg [27:0] i_mul3_i_conv_process20_im8_cma_s [0:0];
    wire [27:0] i_mul3_i_conv_process20_im8_cma_qq;
    wire [27:0] i_mul3_i_conv_process20_im8_cma_q;
    wire i_mul3_i_conv_process20_im8_cma_ena0;
    wire i_mul3_i_conv_process20_im8_cma_ena1;
    wire i_mul8_i_conv_process23_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul8_i_conv_process23_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul8_i_conv_process23_im0_cma_c0 [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_p [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_u [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_w [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_x [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_y [0:0];
    reg [35:0] i_mul8_i_conv_process23_im0_cma_s [0:0];
    wire [35:0] i_mul8_i_conv_process23_im0_cma_qq;
    wire [35:0] i_mul8_i_conv_process23_im0_cma_q;
    wire i_mul8_i_conv_process23_im0_cma_ena0;
    wire i_mul8_i_conv_process23_im0_cma_ena1;
    wire i_mul8_i_conv_process23_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul8_i_conv_process23_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul8_i_conv_process23_im8_cma_c0 [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_p [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_u [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_w [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_x [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_y [0:0];
    reg [27:0] i_mul8_i_conv_process23_im8_cma_s [0:0];
    wire [27:0] i_mul8_i_conv_process23_im8_cma_qq;
    wire [27:0] i_mul8_i_conv_process23_im8_cma_q;
    wire i_mul8_i_conv_process23_im8_cma_ena0;
    wire i_mul8_i_conv_process23_im8_cma_ena1;
    wire i_mul3_i_conv_process20_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul3_i_conv_process20_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul3_i_conv_process20_ma3_cma_c0 [0:1];
    wire [31:0] i_mul3_i_conv_process20_ma3_cma_p [0:1];
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_u [0:1];
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_w [0:0];
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_x [0:0];
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_y [0:0];
    reg [32:0] i_mul3_i_conv_process20_ma3_cma_s [0:0];
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_qq;
    wire [32:0] i_mul3_i_conv_process20_ma3_cma_q;
    wire i_mul3_i_conv_process20_ma3_cma_ena0;
    wire i_mul3_i_conv_process20_ma3_cma_ena1;
    wire i_mul8_i_conv_process23_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul8_i_conv_process23_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul8_i_conv_process23_ma3_cma_c0 [0:1];
    wire [31:0] i_mul8_i_conv_process23_ma3_cma_p [0:1];
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_u [0:1];
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_w [0:0];
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_x [0:0];
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_y [0:0];
    reg [32:0] i_mul8_i_conv_process23_ma3_cma_s [0:0];
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_qq;
    wire [32:0] i_mul8_i_conv_process23_ma3_cma_q;
    wire i_mul8_i_conv_process23_ma3_cma_ena0;
    wire i_mul8_i_conv_process23_ma3_cma_ena1;
    wire [17:0] i_mul8_i_conv_process23_bs1_merged_bit_select_b;
    wire [13:0] i_mul8_i_conv_process23_bs1_merged_bit_select_c;
    wire [17:0] i_mul3_i_conv_process20_bs1_merged_bit_select_b;
    wire [13:0] i_mul3_i_conv_process20_bs1_merged_bit_select_c;
    wire [17:0] i_mul8_i_conv_process23_bs2_merged_bit_select_b;
    wire [13:0] i_mul8_i_conv_process23_bs2_merged_bit_select_c;
    wire [17:0] i_mul3_i_conv_process20_bs2_merged_bit_select_b;
    wire [13:0] i_mul3_i_conv_process20_bs2_merged_bit_select_c;
    reg [0:0] redist0_sync_together191_in_i_valid_1_q;
    reg [0:0] redist1_sync_together191_in_i_valid_2_q;
    reg [0:0] redist2_sync_together191_in_i_valid_3_q;
    reg [0:0] redist3_sync_together191_in_i_valid_6_q;
    reg [0:0] redist3_sync_together191_in_i_valid_6_delay_0;
    reg [0:0] redist3_sync_together191_in_i_valid_6_delay_1;
    reg [31:0] redist4_i_unnamed_conv_process74_vt_select_31_b_1_q;
    reg [30:0] redist5_i_smax40_conv_process72_vt_select_30_b_1_q;
    reg [31:0] redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q;
    reg [31:0] redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1_q;
    reg [31:0] redist8_bgTrunc_i_mul8_i_conv_process23_sel_x_b_1_q;
    reg [31:0] redist9_bgTrunc_i_mul3_i_conv_process20_sel_x_b_1_q;
    reg [31:0] redist10_bgTrunc_i_add4_i_conv_process15_sel_x_b_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg46(REG,289)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg17(REG,260)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process39(BLACKBOX,138)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process39 (
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_28_0(i_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process39_out_dest_data_out_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,259)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process38(BLACKBOX,134)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process38 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process38_out_dest_data_out_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg15(REG,258)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process36(BLACKBOX,130)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process36 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process36_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x(BLACKBOX,33)@1
    // out out_intel_reserved_ffwd_65_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_65_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess78_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x (
        .in_src_data_in_65_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select18482_conv_process36_out_dest_data_out_20_0),
        .in_src_data_in_65_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select18986_conv_process38_out_dest_data_out_24_0),
        .in_src_data_in_65_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19390_conv_process39_out_dest_data_out_28_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_65_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl),
        .out_intel_reserved_ffwd_65_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl),
        .out_intel_reserved_ffwd_65_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_aunroll_x(GPOUT,2)
    assign out_intel_reserved_ffwd_65_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_0_tpl;
    assign out_intel_reserved_ffwd_65_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_1_tpl;
    assign out_intel_reserved_ffwd_65_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process78_conv_process82_aunroll_x_out_intel_reserved_ffwd_65_0_2_tpl;

    // valid_fanout_reg47(REG,290)@0 + 1
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

    // valid_fanout_reg20(REG,263)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select208105_conv_process43(BLACKBOX,150)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000208105_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select208105_conv_process43 (
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_44_0(i_llvm_fpga_ffwd_dest_f32_spec_select208105_conv_process43_out_dest_data_out_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,262)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select204101_conv_process42(BLACKBOX,146)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000204101_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select204101_conv_process42 (
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_40_0(i_llvm_fpga_ffwd_dest_f32_spec_select204101_conv_process42_out_dest_data_out_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg18(REG,261)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process40(BLACKBOX,142)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process40 (
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_36_0(i_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process40_out_dest_data_out_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x(BLACKBOX,34)@1
    // out out_intel_reserved_ffwd_66_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_66_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess79_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x (
        .in_src_data_in_66_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select20097_conv_process40_out_dest_data_out_36_0),
        .in_src_data_in_66_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select204101_conv_process42_out_dest_data_out_40_0),
        .in_src_data_in_66_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select208105_conv_process43_out_dest_data_out_44_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_66_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl),
        .out_intel_reserved_ffwd_66_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl),
        .out_intel_reserved_ffwd_66_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_aunroll_x(GPOUT,3)
    assign out_intel_reserved_ffwd_66_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_0_tpl;
    assign out_intel_reserved_ffwd_66_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_1_tpl;
    assign out_intel_reserved_ffwd_66_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process79_conv_process83_aunroll_x_out_intel_reserved_ffwd_66_0_2_tpl;

    // valid_fanout_reg48(REG,291)@0 + 1
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

    // valid_fanout_reg23(REG,266)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process47(BLACKBOX,139)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process47 (
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_29_0(i_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process47_out_dest_data_out_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg22(REG,265)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process46(BLACKBOX,135)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process46 (
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_25_0(i_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process46_out_dest_data_out_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,264)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process44(BLACKBOX,131)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process44 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process44_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x(BLACKBOX,35)@1
    // out out_intel_reserved_ffwd_67_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_67_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess80_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x (
        .in_src_data_in_67_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select18583_conv_process44_out_dest_data_out_21_0),
        .in_src_data_in_67_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19087_conv_process46_out_dest_data_out_25_0),
        .in_src_data_in_67_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19491_conv_process47_out_dest_data_out_29_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_67_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl),
        .out_intel_reserved_ffwd_67_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl),
        .out_intel_reserved_ffwd_67_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_aunroll_x(GPOUT,4)
    assign out_intel_reserved_ffwd_67_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_0_tpl;
    assign out_intel_reserved_ffwd_67_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_1_tpl;
    assign out_intel_reserved_ffwd_67_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process80_conv_process84_aunroll_x_out_intel_reserved_ffwd_67_0_2_tpl;

    // valid_fanout_reg49(REG,292)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,269)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select209106_conv_process51(BLACKBOX,151)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000209106_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select209106_conv_process51 (
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_45_0(i_llvm_fpga_ffwd_dest_f32_spec_select209106_conv_process51_out_dest_data_out_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,268)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select205102_conv_process50(BLACKBOX,147)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000205102_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select205102_conv_process50 (
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_41_0(i_llvm_fpga_ffwd_dest_f32_spec_select205102_conv_process50_out_dest_data_out_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg24(REG,267)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process48(BLACKBOX,143)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process48 (
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_37_0(i_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process48_out_dest_data_out_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x(BLACKBOX,36)@1
    // out out_intel_reserved_ffwd_68_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_68_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess81_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x (
        .in_src_data_in_68_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select20198_conv_process48_out_dest_data_out_37_0),
        .in_src_data_in_68_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select205102_conv_process50_out_dest_data_out_41_0),
        .in_src_data_in_68_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select209106_conv_process51_out_dest_data_out_45_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_68_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl),
        .out_intel_reserved_ffwd_68_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl),
        .out_intel_reserved_ffwd_68_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_aunroll_x(GPOUT,5)
    assign out_intel_reserved_ffwd_68_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_0_tpl;
    assign out_intel_reserved_ffwd_68_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_1_tpl;
    assign out_intel_reserved_ffwd_68_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process81_conv_process85_aunroll_x_out_intel_reserved_ffwd_68_0_2_tpl;

    // valid_fanout_reg50(REG,293)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,272)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process55(BLACKBOX,140)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process55 (
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_dest_data_out_30_0(i_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process55_out_dest_data_out_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg28(REG,271)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process54(BLACKBOX,136)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process54 (
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_26_0(i_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process54_out_dest_data_out_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg27(REG,270)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process52(BLACKBOX,132)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process52 (
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_22_0(i_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process52_out_dest_data_out_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x(BLACKBOX,37)@1
    // out out_intel_reserved_ffwd_69_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_69_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_69_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess82_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x (
        .in_src_data_in_69_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select18684_conv_process52_out_dest_data_out_22_0),
        .in_src_data_in_69_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19188_conv_process54_out_dest_data_out_26_0),
        .in_src_data_in_69_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19592_conv_process55_out_dest_data_out_30_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_69_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl),
        .out_intel_reserved_ffwd_69_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl),
        .out_intel_reserved_ffwd_69_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_aunroll_x(GPOUT,6)
    assign out_intel_reserved_ffwd_69_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_0_tpl;
    assign out_intel_reserved_ffwd_69_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_1_tpl;
    assign out_intel_reserved_ffwd_69_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process82_conv_process86_aunroll_x_out_intel_reserved_ffwd_69_0_2_tpl;

    // valid_fanout_reg51(REG,294)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,275)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select210107_conv_process59(BLACKBOX,152)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000210107_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select210107_conv_process59 (
        .in_intel_reserved_ffwd_46_0(in_intel_reserved_ffwd_46_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_46_0(i_llvm_fpga_ffwd_dest_f32_spec_select210107_conv_process59_out_dest_data_out_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,274)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select206103_conv_process58(BLACKBOX,148)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000206103_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select206103_conv_process58 (
        .in_intel_reserved_ffwd_42_0(in_intel_reserved_ffwd_42_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_dest_data_out_42_0(i_llvm_fpga_ffwd_dest_f32_spec_select206103_conv_process58_out_dest_data_out_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg30(REG,273)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process56(BLACKBOX,144)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process56 (
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_38_0(i_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process56_out_dest_data_out_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x(BLACKBOX,38)@1
    // out out_intel_reserved_ffwd_70_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_70_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_70_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess83_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x (
        .in_src_data_in_70_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select20299_conv_process56_out_dest_data_out_38_0),
        .in_src_data_in_70_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select206103_conv_process58_out_dest_data_out_42_0),
        .in_src_data_in_70_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select210107_conv_process59_out_dest_data_out_46_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_70_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl),
        .out_intel_reserved_ffwd_70_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl),
        .out_intel_reserved_ffwd_70_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_aunroll_x(GPOUT,7)
    assign out_intel_reserved_ffwd_70_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_0_tpl;
    assign out_intel_reserved_ffwd_70_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_1_tpl;
    assign out_intel_reserved_ffwd_70_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process83_conv_process87_aunroll_x_out_intel_reserved_ffwd_70_0_2_tpl;

    // valid_fanout_reg52(REG,295)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,278)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process63(BLACKBOX,141)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process63 (
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_dest_data_out_31_0(i_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process63_out_dest_data_out_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg34(REG,277)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process62(BLACKBOX,137)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process62 (
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_27_0(i_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process62_out_dest_data_out_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg33(REG,276)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process60(BLACKBOX,133)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process60 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process60_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x(BLACKBOX,39)@1
    // out out_intel_reserved_ffwd_71_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_71_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_71_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess84_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x (
        .in_src_data_in_71_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select18785_conv_process60_out_dest_data_out_23_0),
        .in_src_data_in_71_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19289_conv_process62_out_dest_data_out_27_0),
        .in_src_data_in_71_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select19693_conv_process63_out_dest_data_out_31_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_71_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl),
        .out_intel_reserved_ffwd_71_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl),
        .out_intel_reserved_ffwd_71_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_aunroll_x(GPOUT,8)
    assign out_intel_reserved_ffwd_71_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_0_tpl;
    assign out_intel_reserved_ffwd_71_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_1_tpl;
    assign out_intel_reserved_ffwd_71_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process84_conv_process88_aunroll_x_out_intel_reserved_ffwd_71_0_2_tpl;

    // valid_fanout_reg53(REG,296)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,281)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select211108_conv_process67(BLACKBOX,153)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000211108_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select211108_conv_process67 (
        .in_intel_reserved_ffwd_47_0(in_intel_reserved_ffwd_47_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_dest_data_out_47_0(i_llvm_fpga_ffwd_dest_f32_spec_select211108_conv_process67_out_dest_data_out_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg37(REG,280)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select207104_conv_process66(BLACKBOX,149)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000207104_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select207104_conv_process66 (
        .in_intel_reserved_ffwd_43_0(in_intel_reserved_ffwd_43_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_dest_data_out_43_0(i_llvm_fpga_ffwd_dest_f32_spec_select207104_conv_process66_out_dest_data_out_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg36(REG,279)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_spec_select203100_conv_process64(BLACKBOX,145)@1
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_s0000203100_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select203100_conv_process64 (
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_dest_data_out_39_0(i_llvm_fpga_ffwd_dest_f32_spec_select203100_conv_process64_out_dest_data_out_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x(BLACKBOX,40)@1
    // out out_intel_reserved_ffwd_72_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_72_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_72_0_2_tpl@20000000
    cnn_top_i_llvm_fpga_ffwd_source_s_case_a0000cess85_conv_process0 thei_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x (
        .in_src_data_in_72_0_0_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select203100_conv_process64_out_dest_data_out_39_0),
        .in_src_data_in_72_0_1_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select207104_conv_process66_out_dest_data_out_43_0),
        .in_src_data_in_72_0_2_tpl(i_llvm_fpga_ffwd_dest_f32_spec_select211108_conv_process67_out_dest_data_out_47_0),
        .in_predicate_in(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_72_0_0_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl),
        .out_intel_reserved_ffwd_72_0_1_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl),
        .out_intel_reserved_ffwd_72_0_2_tpl(i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_aunroll_x(GPOUT,9)
    assign out_intel_reserved_ffwd_72_0_0_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_0_tpl;
    assign out_intel_reserved_ffwd_72_0_1_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_1_tpl;
    assign out_intel_reserved_ffwd_72_0_2_tpl = i_llvm_fpga_ffwd_source_s_case_assign_struct_conv_process_fpgaunique_0s_unnamed_conv_process85_conv_process89_aunroll_x_out_intel_reserved_ffwd_72_0_2_tpl;

    // redist0_sync_together191_in_i_valid_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together191_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist0_sync_together191_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist1_sync_together191_in_i_valid_2(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together191_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist1_sync_together191_in_i_valid_2_q <= $unsigned(redist0_sync_together191_in_i_valid_1_q);
        end
    end

    // redist2_sync_together191_in_i_valid_3(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together191_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together191_in_i_valid_3_q <= $unsigned(redist1_sync_together191_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg41(REG,284)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist2_sync_together191_in_i_valid_3_q);
        end
    end

    // leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x(BITSELECT,324)@2
    assign leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_in = i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3_out_dest_data_out_5_0[29:0];
    assign leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_b = leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid326_i_unnamed_conv_process0_shift_x(BITJOIN,325)@2
    assign leftShiftStage0Idx1_uid326_i_unnamed_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng2_uid325_i_unnamed_conv_process0_shift_x_b, i_mul10_i_conv_process26_vt_const_1_q};

    // valid_fanout_reg2(REG,245)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist0_sync_together191_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3(BLACKBOX,166)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process0 thei_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x(MUX,327)@2
    assign leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_s or i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3_out_dest_data_out_5_0 or leftShiftStage0Idx1_uid326_i_unnamed_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_q = i_llvm_fpga_ffwd_dest_i32_tr88353_conv_process3_out_dest_data_out_5_0;
            1'b1 : leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_q = leftShiftStage0Idx1_uid326_i_unnamed_conv_process0_shift_x_q;
            default : leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_conv_process4_vt_select_31(BITSELECT,191)@2
    assign i_unnamed_conv_process4_vt_select_31_b = leftShiftStage0_uid328_i_unnamed_conv_process0_shift_x_q[31:2];

    // i_mul10_i_conv_process26_vt_const_1(CONSTANT,177)
    assign i_mul10_i_conv_process26_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_conv_process4_vt_join(BITJOIN,190)@2
    assign i_unnamed_conv_process4_vt_join_q = {i_unnamed_conv_process4_vt_select_31_b, i_mul10_i_conv_process26_vt_const_1_q};

    // valid_fanout_reg3(REG,246)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together191_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_tr88354_conv_process5(BLACKBOX,167)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_tr88354_conv_process0 thei_llvm_fpga_ffwd_dest_i32_tr88354_conv_process5 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_tr88354_conv_process5_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_i101_add45_conv_process6(ADD,182)@2
    assign i_mul_i101_add45_conv_process6_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_tr88354_conv_process5_out_dest_data_out_5_0};
    assign i_mul_i101_add45_conv_process6_b = {1'b0, i_unnamed_conv_process4_vt_join_q};
    assign i_mul_i101_add45_conv_process6_o = $unsigned(i_mul_i101_add45_conv_process6_a) + $unsigned(i_mul_i101_add45_conv_process6_b);
    assign i_mul_i101_add45_conv_process6_q = i_mul_i101_add45_conv_process6_o[32:0];

    // bgTrunc_i_mul_i101_add45_conv_process6_sel_x(BITSELECT,17)@2
    assign bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b = i_mul_i101_add45_conv_process6_q[31:0];

    // redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1(DELAY,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b);
        end
    end

    // valid_fanout_reg4(REG,247)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together191_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract68_conv_process7(BLACKBOX,164)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract68_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_8_extract68_conv_process7 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract68_conv_process7_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sub_i_conv_process8(SUB,187)@3
    assign i_sub_i_conv_process8_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract68_conv_process7_out_dest_data_out_10_0};
    assign i_sub_i_conv_process8_b = {1'b0, redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1_q};
    assign i_sub_i_conv_process8_o = $unsigned(i_sub_i_conv_process8_a) - $unsigned(i_sub_i_conv_process8_b);
    assign i_sub_i_conv_process8_q = i_sub_i_conv_process8_o[32:0];

    // bgTrunc_i_sub_i_conv_process8_sel_x(BITSELECT,18)@3
    assign bgTrunc_i_sub_i_conv_process8_sel_x_b = $unsigned(i_sub_i_conv_process8_q[31:0]);

    // redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1(DELAY,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_i_conv_process8_sel_x_b);
        end
    end

    // c_i32_0151_recast_x(CONSTANT,21)
    assign c_i32_0151_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp_i107473_conv_process12(COMPARE,129)@4
    assign i_cmp_i107473_conv_process12_a = $unsigned({{2{c_i32_0151_recast_x_q[31]}}, c_i32_0151_recast_x_q});
    assign i_cmp_i107473_conv_process12_b = $unsigned({{2{redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q});
    assign i_cmp_i107473_conv_process12_o = $unsigned($signed(i_cmp_i107473_conv_process12_a) - $signed(i_cmp_i107473_conv_process12_b));
    assign i_cmp_i107473_conv_process12_c[0] = i_cmp_i107473_conv_process12_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process73_conv_process77(BLACKBOX,169)@4
    // out out_intel_reserved_ffwd_60_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess73_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process73_conv_process77 (
        .in_predicate_in(GND_q),
        .in_src_data_in_60_0(i_cmp_i107473_conv_process12_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_intel_reserved_ffwd_60_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process73_conv_process77_out_intel_reserved_ffwd_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_60_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process73_conv_process77_out_intel_reserved_ffwd_60_0;

    // redist3_sync_together191_in_i_valid_6(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together191_in_i_valid_6_delay_0 <= '0;
            redist3_sync_together191_in_i_valid_6_delay_1 <= '0;
            redist3_sync_together191_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist3_sync_together191_in_i_valid_6_delay_0 <= $unsigned(redist2_sync_together191_in_i_valid_3_q);
            redist3_sync_together191_in_i_valid_6_delay_1 <= redist3_sync_together191_in_i_valid_6_delay_0;
            redist3_sync_together191_in_i_valid_6_q <= redist3_sync_together191_in_i_valid_6_delay_1;
        end
    end

    // valid_fanout_reg42(REG,285)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x(BITSELECT,316)@7
    assign leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_in = bgTrunc_i_add9_i_conv_process25_sel_x_b[29:0];
    assign leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_b = leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid318_i_mul10_i_conv_process0_shift_x(BITJOIN,317)@7
    assign leftShiftStage0Idx1_uid318_i_mul10_i_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng2_uid317_i_mul10_i_conv_process0_shift_x_b, i_mul10_i_conv_process26_vt_const_1_q};

    // valid_fanout_reg10(REG,253)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_3_extract65_conv_process24(BLACKBOX,161)@7
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract65_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_3_extract65_conv_process24 (
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_9_0(i_llvm_fpga_ffwd_dest_i32_param_fca_3_extract65_conv_process24_out_dest_data_out_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,252)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist2_sync_together191_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22(BLACKBOX,155)@4
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process0 thei_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22 (
        .in_intel_reserved_ffwd_49_0(in_intel_reserved_ffwd_49_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_49_0(i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22_out_dest_data_out_49_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul8_i_conv_process23_bs2_merged_bit_select(BITSELECT,367)@4
    assign i_mul8_i_conv_process23_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22_out_dest_data_out_49_0[17:0];
    assign i_mul8_i_conv_process23_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_add_i80110_conv_process22_out_dest_data_out_49_0[31:18];

    // valid_fanout_reg8(REG,251)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_too88048_conv_process19(BLACKBOX,165)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_too88048_conv_process0 thei_llvm_fpga_ffwd_dest_i32_too88048_conv_process19 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_too88048_conv_process19_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul3_i_conv_process20_bs2_merged_bit_select(BITSELECT,368)@1
    assign i_mul3_i_conv_process20_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_too88048_conv_process19_out_dest_data_out_2_0[17:0];
    assign i_mul3_i_conv_process20_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_too88048_conv_process19_out_dest_data_out_2_0[31:18];

    // valid_fanout_reg6(REG,249)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract67_conv_process16(BLACKBOX,163)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract67_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_8_extract67_conv_process16 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract67_conv_process16_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,250)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process17(BLACKBOX,156)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process0 thei_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process17 (
        .in_intel_reserved_ffwd_48_0(in_intel_reserved_ffwd_48_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_48_0(i_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process17_out_dest_data_out_48_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_i105_conv_process18(ADD,126)@1
    assign i_add_i105_conv_process18_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_mul_i109_conv_process17_out_dest_data_out_48_0};
    assign i_add_i105_conv_process18_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract67_conv_process16_out_dest_data_out_10_0};
    assign i_add_i105_conv_process18_o = $unsigned(i_add_i105_conv_process18_a) + $unsigned(i_add_i105_conv_process18_b);
    assign i_add_i105_conv_process18_q = i_add_i105_conv_process18_o[32:0];

    // bgTrunc_i_add_i105_conv_process18_sel_x(BITSELECT,14)@1
    assign bgTrunc_i_add_i105_conv_process18_sel_x_b = i_add_i105_conv_process18_q[31:0];

    // i_mul3_i_conv_process20_bs1_merged_bit_select(BITSELECT,366)@1
    assign i_mul3_i_conv_process20_bs1_merged_bit_select_b = bgTrunc_i_add_i105_conv_process18_sel_x_b[17:0];
    assign i_mul3_i_conv_process20_bs1_merged_bit_select_c = bgTrunc_i_add_i105_conv_process18_sel_x_b[31:18];

    // i_mul3_i_conv_process20_ma3_cma(CHAINMULTADD,363)@1 + 2
    assign i_mul3_i_conv_process20_ma3_cma_reset = ~ (resetn);
    assign i_mul3_i_conv_process20_ma3_cma_ena0 = 1'b1;
    assign i_mul3_i_conv_process20_ma3_cma_ena1 = i_mul3_i_conv_process20_ma3_cma_ena0;
    assign i_mul3_i_conv_process20_ma3_cma_p[0] = i_mul3_i_conv_process20_ma3_cma_a0[0] * i_mul3_i_conv_process20_ma3_cma_c0[0];
    assign i_mul3_i_conv_process20_ma3_cma_p[1] = i_mul3_i_conv_process20_ma3_cma_a0[1] * i_mul3_i_conv_process20_ma3_cma_c0[1];
    assign i_mul3_i_conv_process20_ma3_cma_u[0] = {1'b0, i_mul3_i_conv_process20_ma3_cma_p[0][31:0]};
    assign i_mul3_i_conv_process20_ma3_cma_u[1] = {1'b0, i_mul3_i_conv_process20_ma3_cma_p[1][31:0]};
    assign i_mul3_i_conv_process20_ma3_cma_w[0] = i_mul3_i_conv_process20_ma3_cma_u[0] + i_mul3_i_conv_process20_ma3_cma_u[1];
    assign i_mul3_i_conv_process20_ma3_cma_x[0] = i_mul3_i_conv_process20_ma3_cma_w[0];
    assign i_mul3_i_conv_process20_ma3_cma_y[0] = i_mul3_i_conv_process20_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_ma3_cma_a0 <= '{default: '0};
            i_mul3_i_conv_process20_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_ma3_cma_ena0 == 1'b1)
            begin
                i_mul3_i_conv_process20_ma3_cma_a0[0] <= i_mul3_i_conv_process20_bs1_merged_bit_select_c;
                i_mul3_i_conv_process20_ma3_cma_a0[1] <= i_mul3_i_conv_process20_bs2_merged_bit_select_c;
                i_mul3_i_conv_process20_ma3_cma_c0[0] <= i_mul3_i_conv_process20_bs2_merged_bit_select_b;
                i_mul3_i_conv_process20_ma3_cma_c0[1] <= i_mul3_i_conv_process20_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_ma3_cma_ena1 == 1'b1)
            begin
                i_mul3_i_conv_process20_ma3_cma_s[0] <= i_mul3_i_conv_process20_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_i_conv_process20_ma3_cma_delay ( .xin(i_mul3_i_conv_process20_ma3_cma_s[0]), .xout(i_mul3_i_conv_process20_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_i_conv_process20_ma3_cma_q = $unsigned(i_mul3_i_conv_process20_ma3_cma_qq[32:0]);

    // i_mul3_i_conv_process20_sums_align_1(BITSHIFT,341)@3
    assign i_mul3_i_conv_process20_sums_align_1_qint = { i_mul3_i_conv_process20_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul3_i_conv_process20_sums_align_1_q = i_mul3_i_conv_process20_sums_align_1_qint[50:0];

    // i_mul3_i_conv_process20_im8_cma(CHAINMULTADD,360)@1 + 2
    assign i_mul3_i_conv_process20_im8_cma_reset = ~ (resetn);
    assign i_mul3_i_conv_process20_im8_cma_ena0 = 1'b1;
    assign i_mul3_i_conv_process20_im8_cma_ena1 = i_mul3_i_conv_process20_im8_cma_ena0;
    assign i_mul3_i_conv_process20_im8_cma_p[0] = i_mul3_i_conv_process20_im8_cma_a0[0] * i_mul3_i_conv_process20_im8_cma_c0[0];
    assign i_mul3_i_conv_process20_im8_cma_u[0] = i_mul3_i_conv_process20_im8_cma_p[0][27:0];
    assign i_mul3_i_conv_process20_im8_cma_w[0] = i_mul3_i_conv_process20_im8_cma_u[0];
    assign i_mul3_i_conv_process20_im8_cma_x[0] = i_mul3_i_conv_process20_im8_cma_w[0];
    assign i_mul3_i_conv_process20_im8_cma_y[0] = i_mul3_i_conv_process20_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_im8_cma_a0 <= '{default: '0};
            i_mul3_i_conv_process20_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_im8_cma_ena0 == 1'b1)
            begin
                i_mul3_i_conv_process20_im8_cma_a0[0] <= i_mul3_i_conv_process20_bs1_merged_bit_select_c;
                i_mul3_i_conv_process20_im8_cma_c0[0] <= i_mul3_i_conv_process20_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_im8_cma_ena1 == 1'b1)
            begin
                i_mul3_i_conv_process20_im8_cma_s[0] <= i_mul3_i_conv_process20_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_i_conv_process20_im8_cma_delay ( .xin(i_mul3_i_conv_process20_im8_cma_s[0]), .xout(i_mul3_i_conv_process20_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_i_conv_process20_im8_cma_q = $unsigned(i_mul3_i_conv_process20_im8_cma_qq[27:0]);

    // i_mul3_i_conv_process20_im0_cma(CHAINMULTADD,359)@1 + 2
    assign i_mul3_i_conv_process20_im0_cma_reset = ~ (resetn);
    assign i_mul3_i_conv_process20_im0_cma_ena0 = 1'b1;
    assign i_mul3_i_conv_process20_im0_cma_ena1 = i_mul3_i_conv_process20_im0_cma_ena0;
    assign i_mul3_i_conv_process20_im0_cma_p[0] = i_mul3_i_conv_process20_im0_cma_a0[0] * i_mul3_i_conv_process20_im0_cma_c0[0];
    assign i_mul3_i_conv_process20_im0_cma_u[0] = i_mul3_i_conv_process20_im0_cma_p[0][35:0];
    assign i_mul3_i_conv_process20_im0_cma_w[0] = i_mul3_i_conv_process20_im0_cma_u[0];
    assign i_mul3_i_conv_process20_im0_cma_x[0] = i_mul3_i_conv_process20_im0_cma_w[0];
    assign i_mul3_i_conv_process20_im0_cma_y[0] = i_mul3_i_conv_process20_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_im0_cma_a0 <= '{default: '0};
            i_mul3_i_conv_process20_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_im0_cma_ena0 == 1'b1)
            begin
                i_mul3_i_conv_process20_im0_cma_a0[0] <= i_mul3_i_conv_process20_bs1_merged_bit_select_b;
                i_mul3_i_conv_process20_im0_cma_c0[0] <= i_mul3_i_conv_process20_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_i_conv_process20_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_i_conv_process20_im0_cma_ena1 == 1'b1)
            begin
                i_mul3_i_conv_process20_im0_cma_s[0] <= i_mul3_i_conv_process20_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_i_conv_process20_im0_cma_delay ( .xin(i_mul3_i_conv_process20_im0_cma_s[0]), .xout(i_mul3_i_conv_process20_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul3_i_conv_process20_im0_cma_q = $unsigned(i_mul3_i_conv_process20_im0_cma_qq[35:0]);

    // i_mul3_i_conv_process20_sums_join_0(BITJOIN,340)@3
    assign i_mul3_i_conv_process20_sums_join_0_q = {i_mul3_i_conv_process20_im8_cma_q, i_mul3_i_conv_process20_im0_cma_q};

    // i_mul3_i_conv_process20_sums_result_add_0_0(ADD,343)@3
    assign i_mul3_i_conv_process20_sums_result_add_0_0_a = {1'b0, i_mul3_i_conv_process20_sums_join_0_q};
    assign i_mul3_i_conv_process20_sums_result_add_0_0_b = {14'b00000000000000, i_mul3_i_conv_process20_sums_align_1_q};
    assign i_mul3_i_conv_process20_sums_result_add_0_0_o = $unsigned(i_mul3_i_conv_process20_sums_result_add_0_0_a) + $unsigned(i_mul3_i_conv_process20_sums_result_add_0_0_b);
    assign i_mul3_i_conv_process20_sums_result_add_0_0_q = i_mul3_i_conv_process20_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul3_i_conv_process20_sel_x(BITSELECT,15)@3
    assign bgTrunc_i_mul3_i_conv_process20_sel_x_in = i_mul3_i_conv_process20_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul3_i_conv_process20_sel_x_b = bgTrunc_i_mul3_i_conv_process20_sel_x_in[31:0];

    // redist9_bgTrunc_i_mul3_i_conv_process20_sel_x_b_1(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_bgTrunc_i_mul3_i_conv_process20_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist9_bgTrunc_i_mul3_i_conv_process20_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul3_i_conv_process20_sel_x_b);
        end
    end

    // valid_fanout_reg5(REG,248)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together191_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract62_conv_process14(BLACKBOX,158)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract62_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_12_extract62_conv_process14 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract62_conv_process14_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add4_i_conv_process15(ADD,122)@3
    assign i_add4_i_conv_process15_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract62_conv_process14_out_dest_data_out_7_0};
    assign i_add4_i_conv_process15_b = {1'b0, redist7_bgTrunc_i_mul_i101_add45_conv_process6_sel_x_b_1_q};
    assign i_add4_i_conv_process15_o = $unsigned(i_add4_i_conv_process15_a) + $unsigned(i_add4_i_conv_process15_b);
    assign i_add4_i_conv_process15_q = i_add4_i_conv_process15_o[32:0];

    // bgTrunc_i_add4_i_conv_process15_sel_x(BITSELECT,10)@3
    assign bgTrunc_i_add4_i_conv_process15_sel_x_b = i_add4_i_conv_process15_q[31:0];

    // redist10_bgTrunc_i_add4_i_conv_process15_sel_x_b_1(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_add4_i_conv_process15_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist10_bgTrunc_i_add4_i_conv_process15_sel_x_b_1_q <= $unsigned(bgTrunc_i_add4_i_conv_process15_sel_x_b);
        end
    end

    // i_add5_i_conv_process21(ADD,124)@4
    assign i_add5_i_conv_process21_a = {1'b0, redist10_bgTrunc_i_add4_i_conv_process15_sel_x_b_1_q};
    assign i_add5_i_conv_process21_b = {1'b0, redist9_bgTrunc_i_mul3_i_conv_process20_sel_x_b_1_q};
    assign i_add5_i_conv_process21_o = $unsigned(i_add5_i_conv_process21_a) + $unsigned(i_add5_i_conv_process21_b);
    assign i_add5_i_conv_process21_q = i_add5_i_conv_process21_o[32:0];

    // bgTrunc_i_add5_i_conv_process21_sel_x(BITSELECT,12)@4
    assign bgTrunc_i_add5_i_conv_process21_sel_x_b = i_add5_i_conv_process21_q[31:0];

    // i_mul8_i_conv_process23_bs1_merged_bit_select(BITSELECT,365)@4
    assign i_mul8_i_conv_process23_bs1_merged_bit_select_b = bgTrunc_i_add5_i_conv_process21_sel_x_b[17:0];
    assign i_mul8_i_conv_process23_bs1_merged_bit_select_c = bgTrunc_i_add5_i_conv_process21_sel_x_b[31:18];

    // i_mul8_i_conv_process23_ma3_cma(CHAINMULTADD,364)@4 + 2
    assign i_mul8_i_conv_process23_ma3_cma_reset = ~ (resetn);
    assign i_mul8_i_conv_process23_ma3_cma_ena0 = 1'b1;
    assign i_mul8_i_conv_process23_ma3_cma_ena1 = i_mul8_i_conv_process23_ma3_cma_ena0;
    assign i_mul8_i_conv_process23_ma3_cma_p[0] = i_mul8_i_conv_process23_ma3_cma_a0[0] * i_mul8_i_conv_process23_ma3_cma_c0[0];
    assign i_mul8_i_conv_process23_ma3_cma_p[1] = i_mul8_i_conv_process23_ma3_cma_a0[1] * i_mul8_i_conv_process23_ma3_cma_c0[1];
    assign i_mul8_i_conv_process23_ma3_cma_u[0] = {1'b0, i_mul8_i_conv_process23_ma3_cma_p[0][31:0]};
    assign i_mul8_i_conv_process23_ma3_cma_u[1] = {1'b0, i_mul8_i_conv_process23_ma3_cma_p[1][31:0]};
    assign i_mul8_i_conv_process23_ma3_cma_w[0] = i_mul8_i_conv_process23_ma3_cma_u[0] + i_mul8_i_conv_process23_ma3_cma_u[1];
    assign i_mul8_i_conv_process23_ma3_cma_x[0] = i_mul8_i_conv_process23_ma3_cma_w[0];
    assign i_mul8_i_conv_process23_ma3_cma_y[0] = i_mul8_i_conv_process23_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_ma3_cma_a0 <= '{default: '0};
            i_mul8_i_conv_process23_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_ma3_cma_ena0 == 1'b1)
            begin
                i_mul8_i_conv_process23_ma3_cma_a0[0] <= i_mul8_i_conv_process23_bs1_merged_bit_select_c;
                i_mul8_i_conv_process23_ma3_cma_a0[1] <= i_mul8_i_conv_process23_bs2_merged_bit_select_c;
                i_mul8_i_conv_process23_ma3_cma_c0[0] <= i_mul8_i_conv_process23_bs2_merged_bit_select_b;
                i_mul8_i_conv_process23_ma3_cma_c0[1] <= i_mul8_i_conv_process23_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_ma3_cma_ena1 == 1'b1)
            begin
                i_mul8_i_conv_process23_ma3_cma_s[0] <= i_mul8_i_conv_process23_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul8_i_conv_process23_ma3_cma_delay ( .xin(i_mul8_i_conv_process23_ma3_cma_s[0]), .xout(i_mul8_i_conv_process23_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul8_i_conv_process23_ma3_cma_q = $unsigned(i_mul8_i_conv_process23_ma3_cma_qq[32:0]);

    // i_mul8_i_conv_process23_sums_align_1(BITSHIFT,356)@6
    assign i_mul8_i_conv_process23_sums_align_1_qint = { i_mul8_i_conv_process23_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul8_i_conv_process23_sums_align_1_q = i_mul8_i_conv_process23_sums_align_1_qint[50:0];

    // i_mul8_i_conv_process23_im8_cma(CHAINMULTADD,362)@4 + 2
    assign i_mul8_i_conv_process23_im8_cma_reset = ~ (resetn);
    assign i_mul8_i_conv_process23_im8_cma_ena0 = 1'b1;
    assign i_mul8_i_conv_process23_im8_cma_ena1 = i_mul8_i_conv_process23_im8_cma_ena0;
    assign i_mul8_i_conv_process23_im8_cma_p[0] = i_mul8_i_conv_process23_im8_cma_a0[0] * i_mul8_i_conv_process23_im8_cma_c0[0];
    assign i_mul8_i_conv_process23_im8_cma_u[0] = i_mul8_i_conv_process23_im8_cma_p[0][27:0];
    assign i_mul8_i_conv_process23_im8_cma_w[0] = i_mul8_i_conv_process23_im8_cma_u[0];
    assign i_mul8_i_conv_process23_im8_cma_x[0] = i_mul8_i_conv_process23_im8_cma_w[0];
    assign i_mul8_i_conv_process23_im8_cma_y[0] = i_mul8_i_conv_process23_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_im8_cma_a0 <= '{default: '0};
            i_mul8_i_conv_process23_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_im8_cma_ena0 == 1'b1)
            begin
                i_mul8_i_conv_process23_im8_cma_a0[0] <= i_mul8_i_conv_process23_bs1_merged_bit_select_c;
                i_mul8_i_conv_process23_im8_cma_c0[0] <= i_mul8_i_conv_process23_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_im8_cma_ena1 == 1'b1)
            begin
                i_mul8_i_conv_process23_im8_cma_s[0] <= i_mul8_i_conv_process23_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul8_i_conv_process23_im8_cma_delay ( .xin(i_mul8_i_conv_process23_im8_cma_s[0]), .xout(i_mul8_i_conv_process23_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul8_i_conv_process23_im8_cma_q = $unsigned(i_mul8_i_conv_process23_im8_cma_qq[27:0]);

    // i_mul8_i_conv_process23_im0_cma(CHAINMULTADD,361)@4 + 2
    assign i_mul8_i_conv_process23_im0_cma_reset = ~ (resetn);
    assign i_mul8_i_conv_process23_im0_cma_ena0 = 1'b1;
    assign i_mul8_i_conv_process23_im0_cma_ena1 = i_mul8_i_conv_process23_im0_cma_ena0;
    assign i_mul8_i_conv_process23_im0_cma_p[0] = i_mul8_i_conv_process23_im0_cma_a0[0] * i_mul8_i_conv_process23_im0_cma_c0[0];
    assign i_mul8_i_conv_process23_im0_cma_u[0] = i_mul8_i_conv_process23_im0_cma_p[0][35:0];
    assign i_mul8_i_conv_process23_im0_cma_w[0] = i_mul8_i_conv_process23_im0_cma_u[0];
    assign i_mul8_i_conv_process23_im0_cma_x[0] = i_mul8_i_conv_process23_im0_cma_w[0];
    assign i_mul8_i_conv_process23_im0_cma_y[0] = i_mul8_i_conv_process23_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_im0_cma_a0 <= '{default: '0};
            i_mul8_i_conv_process23_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_im0_cma_ena0 == 1'b1)
            begin
                i_mul8_i_conv_process23_im0_cma_a0[0] <= i_mul8_i_conv_process23_bs1_merged_bit_select_b;
                i_mul8_i_conv_process23_im0_cma_c0[0] <= i_mul8_i_conv_process23_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul8_i_conv_process23_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul8_i_conv_process23_im0_cma_ena1 == 1'b1)
            begin
                i_mul8_i_conv_process23_im0_cma_s[0] <= i_mul8_i_conv_process23_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul8_i_conv_process23_im0_cma_delay ( .xin(i_mul8_i_conv_process23_im0_cma_s[0]), .xout(i_mul8_i_conv_process23_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul8_i_conv_process23_im0_cma_q = $unsigned(i_mul8_i_conv_process23_im0_cma_qq[35:0]);

    // i_mul8_i_conv_process23_sums_join_0(BITJOIN,355)@6
    assign i_mul8_i_conv_process23_sums_join_0_q = {i_mul8_i_conv_process23_im8_cma_q, i_mul8_i_conv_process23_im0_cma_q};

    // i_mul8_i_conv_process23_sums_result_add_0_0(ADD,358)@6
    assign i_mul8_i_conv_process23_sums_result_add_0_0_a = {1'b0, i_mul8_i_conv_process23_sums_join_0_q};
    assign i_mul8_i_conv_process23_sums_result_add_0_0_b = {14'b00000000000000, i_mul8_i_conv_process23_sums_align_1_q};
    assign i_mul8_i_conv_process23_sums_result_add_0_0_o = $unsigned(i_mul8_i_conv_process23_sums_result_add_0_0_a) + $unsigned(i_mul8_i_conv_process23_sums_result_add_0_0_b);
    assign i_mul8_i_conv_process23_sums_result_add_0_0_q = i_mul8_i_conv_process23_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul8_i_conv_process23_sel_x(BITSELECT,16)@6
    assign bgTrunc_i_mul8_i_conv_process23_sel_x_in = i_mul8_i_conv_process23_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul8_i_conv_process23_sel_x_b = bgTrunc_i_mul8_i_conv_process23_sel_x_in[31:0];

    // redist8_bgTrunc_i_mul8_i_conv_process23_sel_x_b_1(DELAY,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_mul8_i_conv_process23_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_mul8_i_conv_process23_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul8_i_conv_process23_sel_x_b);
        end
    end

    // i_add9_i_conv_process25(ADD,125)@7
    assign i_add9_i_conv_process25_a = {1'b0, redist8_bgTrunc_i_mul8_i_conv_process23_sel_x_b_1_q};
    assign i_add9_i_conv_process25_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_3_extract65_conv_process24_out_dest_data_out_9_0};
    assign i_add9_i_conv_process25_o = $unsigned(i_add9_i_conv_process25_a) + $unsigned(i_add9_i_conv_process25_b);
    assign i_add9_i_conv_process25_q = i_add9_i_conv_process25_o[32:0];

    // bgTrunc_i_add9_i_conv_process25_sel_x(BITSELECT,13)@7
    assign bgTrunc_i_add9_i_conv_process25_sel_x_b = i_add9_i_conv_process25_q[31:0];

    // leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x(MUX,319)@7
    assign leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_s or bgTrunc_i_add9_i_conv_process25_sel_x_b or leftShiftStage0Idx1_uid318_i_mul10_i_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_q = bgTrunc_i_add9_i_conv_process25_sel_x_b;
            1'b1 : leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_q = leftShiftStage0Idx1_uid318_i_mul10_i_conv_process0_shift_x_q;
            default : leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul10_i_conv_process26_vt_select_31(BITSELECT,179)@7
    assign i_mul10_i_conv_process26_vt_select_31_b = leftShiftStage0_uid320_i_mul10_i_conv_process0_shift_x_q[31:2];

    // i_mul10_i_conv_process26_vt_join(BITJOIN,178)@7
    assign i_mul10_i_conv_process26_vt_join_q = {i_mul10_i_conv_process26_vt_select_31_b, i_mul10_i_conv_process26_vt_const_1_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process74_conv_process78(BLACKBOX,173)@7
    // out out_intel_reserved_ffwd_61_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess74_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process74_conv_process78 (
        .in_predicate_in(GND_q),
        .in_src_data_in_61_0(i_mul10_i_conv_process26_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_61_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process74_conv_process78_out_intel_reserved_ffwd_61_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_61_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process74_conv_process78_out_intel_reserved_ffwd_61_0;

    // valid_fanout_reg43(REG,286)@0 + 1
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

    // valid_fanout_reg11(REG,254)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract73_conv_process27(BLACKBOX,160)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract73_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_14_extract73_conv_process27 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract73_conv_process27_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp45_i_conv_process28(LOGICAL,127)@1
    assign i_cmp45_i_conv_process28_q = $unsigned(i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract73_conv_process27_out_dest_data_out_12_0 != c_i32_0151_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process75_conv_process79(BLACKBOX,170)@1
    // out out_intel_reserved_ffwd_62_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess75_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process75_conv_process79 (
        .in_predicate_in(GND_q),
        .in_src_data_in_62_0(i_cmp45_i_conv_process28_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_62_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process75_conv_process79_out_intel_reserved_ffwd_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_62_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process75_conv_process79_out_intel_reserved_ffwd_62_0;

    // valid_fanout_reg44(REG,287)@0 + 1
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

    // c_i32_2149_recast_x(CONSTANT,23)
    assign c_i32_2149_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // valid_fanout_reg12(REG,255)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract72_conv_process30(BLACKBOX,159)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract72_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_14_extract72_conv_process30 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract72_conv_process30_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp48_i_conv_process31(LOGICAL,128)@1
    assign i_cmp48_i_conv_process31_q = $unsigned(i_llvm_fpga_ffwd_dest_i32_param_fca_14_extract72_conv_process30_out_dest_data_out_12_0 == c_i32_2149_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process76_conv_process80(BLACKBOX,171)@1
    // out out_intel_reserved_ffwd_63_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess76_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process76_conv_process80 (
        .in_predicate_in(GND_q),
        .in_src_data_in_63_0(i_cmp48_i_conv_process31_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_63_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process76_conv_process80_out_intel_reserved_ffwd_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_63_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process76_conv_process80_out_intel_reserved_ffwd_63_0;

    // valid_fanout_reg45(REG,288)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg13(REG,256)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract61_conv_process33(BLACKBOX,157)@7
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract61_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_12_extract61_conv_process33 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract61_conv_process33_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,257)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract66_conv_process34(BLACKBOX,162)@7
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract66_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_8_extract66_conv_process34 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract66_conv_process34_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add55_i_conv_process35(ADD,123)@7
    assign i_add55_i_conv_process35_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_8_extract66_conv_process34_out_dest_data_out_10_0};
    assign i_add55_i_conv_process35_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract61_conv_process33_out_dest_data_out_7_0};
    assign i_add55_i_conv_process35_o = $unsigned(i_add55_i_conv_process35_a) + $unsigned(i_add55_i_conv_process35_b);
    assign i_add55_i_conv_process35_q = i_add55_i_conv_process35_o[32:0];

    // bgTrunc_i_add55_i_conv_process35_sel_x(BITSELECT,11)@7
    assign bgTrunc_i_add55_i_conv_process35_sel_x_b = i_add55_i_conv_process35_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process77_conv_process81(BLACKBOX,174)@7
    // out out_intel_reserved_ffwd_64_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess77_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process77_conv_process81 (
        .in_predicate_in(GND_q),
        .in_src_data_in_64_0(bgTrunc_i_add55_i_conv_process35_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_64_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process77_conv_process81_out_intel_reserved_ffwd_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_64_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process77_conv_process81_out_intel_reserved_ffwd_64_0;

    // valid_fanout_reg54(REG,297)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist2_sync_together191_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg39(REG,282)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist2_sync_together191_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process68(BLACKBOX,154)@4
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process68 (
        .in_intel_reserved_ffwd_50_0(in_intel_reserved_ffwd_50_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_dest_data_out_50_0(i_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process68_out_dest_data_out_50_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process69(LOGICAL,192)@4
    assign i_unnamed_conv_process69_q = i_cmp_i107473_conv_process12_c & i_llvm_fpga_ffwd_dest_i1_cmp2_i494111_conv_process68_out_dest_data_out_50_0;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process86_conv_process90(BLACKBOX,172)@4
    // out out_intel_reserved_ffwd_73_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess86_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process86_conv_process90 (
        .in_predicate_in(GND_q),
        .in_src_data_in_73_0(i_unnamed_conv_process69_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_73_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process86_conv_process90_out_intel_reserved_ffwd_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_73_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process86_conv_process90_out_intel_reserved_ffwd_73_0;

    // valid_fanout_reg55(REG,298)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // c_i33_1156(CONSTANT,121)
    assign c_i33_1156_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_1155(CONSTANT,118)
    assign c_i32_1155_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_5150_recast_x(CONSTANT,24)
    assign c_i32_5150_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_conv_process9(COMPARE,200)@4
    assign i_unnamed_conv_process9_a = $unsigned({{2{redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q[31]}}, redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q});
    assign i_unnamed_conv_process9_b = $unsigned({{2{c_i32_5150_recast_x_q[31]}}, c_i32_5150_recast_x_q});
    assign i_unnamed_conv_process9_o = $unsigned($signed(i_unnamed_conv_process9_a) - $signed(i_unnamed_conv_process9_b));
    assign i_unnamed_conv_process9_c[0] = i_unnamed_conv_process9_o[33];

    // i_unnamed_conv_process11(MUX,188)@4 + 1
    assign i_unnamed_conv_process11_s = i_unnamed_conv_process9_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process11_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_conv_process11_s)
                1'b0 : i_unnamed_conv_process11_q <= c_i32_5150_recast_x_q;
                1'b1 : i_unnamed_conv_process11_q <= redist6_bgTrunc_i_sub_i_conv_process8_sel_x_b_1_q;
                default : i_unnamed_conv_process11_q <= 32'b0;
            endcase
        end
    end

    // c_i32_1154_recast_x(CONSTANT,22)
    assign c_i32_1154_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_conv_process70(COMPARE,193)@5
    assign i_unnamed_conv_process70_a = $unsigned({{2{c_i32_1154_recast_x_q[31]}}, c_i32_1154_recast_x_q});
    assign i_unnamed_conv_process70_b = $unsigned({{2{i_unnamed_conv_process11_q[31]}}, i_unnamed_conv_process11_q});
    assign i_unnamed_conv_process70_o = $unsigned($signed(i_unnamed_conv_process70_a) - $signed(i_unnamed_conv_process70_b));
    assign i_unnamed_conv_process70_c[0] = i_unnamed_conv_process70_o[33];

    // i_smax40_conv_process72(MUX,183)@5
    assign i_smax40_conv_process72_s = i_unnamed_conv_process70_c;
    always @(i_smax40_conv_process72_s or c_i32_1154_recast_x_q or i_unnamed_conv_process11_q)
    begin
        unique case (i_smax40_conv_process72_s)
            1'b0 : i_smax40_conv_process72_q = c_i32_1154_recast_x_q;
            1'b1 : i_smax40_conv_process72_q = i_unnamed_conv_process11_q;
            default : i_smax40_conv_process72_q = 32'b0;
        endcase
    end

    // i_smax40_conv_process72_vt_select_30(BITSELECT,186)@5
    assign i_smax40_conv_process72_vt_select_30_b = i_smax40_conv_process72_q[30:0];

    // redist5_i_smax40_conv_process72_vt_select_30_b_1(DELAY,374)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_smax40_conv_process72_vt_select_30_b_1_q <= '0;
        end
        else
        begin
            redist5_i_smax40_conv_process72_vt_select_30_b_1_q <= $unsigned(i_smax40_conv_process72_vt_select_30_b);
        end
    end

    // i_smax40_conv_process72_vt_join(BITJOIN,185)@6
    assign i_smax40_conv_process72_vt_join_q = {GND_q, redist5_i_smax40_conv_process72_vt_select_30_b_1_q};

    // i_unnamed_conv_process73(ADD,194)@6
    assign i_unnamed_conv_process73_a = {1'b0, i_smax40_conv_process72_vt_join_q};
    assign i_unnamed_conv_process73_b = {1'b0, c_i32_1155_q};
    assign i_unnamed_conv_process73_o = $unsigned(i_unnamed_conv_process73_a) + $unsigned(i_unnamed_conv_process73_b);
    assign i_unnamed_conv_process73_q = i_unnamed_conv_process73_o[32:0];

    // bgTrunc_i_unnamed_conv_process73_sel_x(BITSELECT,19)@6
    assign bgTrunc_i_unnamed_conv_process73_sel_x_b = i_unnamed_conv_process73_q[31:0];

    // i_unnamed_conv_process74_sel_x(BITSELECT,49)@6
    assign i_unnamed_conv_process74_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv_process73_sel_x_b[31:0]};

    // i_unnamed_conv_process74_vt_select_31(BITSELECT,198)@6
    assign i_unnamed_conv_process74_vt_select_31_b = i_unnamed_conv_process74_sel_x_b[31:0];

    // redist4_i_unnamed_conv_process74_vt_select_31_b_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_unnamed_conv_process74_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist4_i_unnamed_conv_process74_vt_select_31_b_1_q <= $unsigned(i_unnamed_conv_process74_vt_select_31_b);
        end
    end

    // i_unnamed_conv_process74_vt_join(BITJOIN,197)@7
    assign i_unnamed_conv_process74_vt_join_q = {GND_q, redist4_i_unnamed_conv_process74_vt_select_31_b_1_q};

    // i_unnamed_conv_process75(ADD,199)@7
    assign i_unnamed_conv_process75_a = {1'b0, i_unnamed_conv_process74_vt_join_q};
    assign i_unnamed_conv_process75_b = {1'b0, c_i33_1156_q};
    assign i_unnamed_conv_process75_o = $unsigned(i_unnamed_conv_process75_a) + $unsigned(i_unnamed_conv_process75_b);
    assign i_unnamed_conv_process75_q = i_unnamed_conv_process75_o[33:0];

    // bgTrunc_i_unnamed_conv_process75_sel_x(BITSELECT,20)@7
    assign bgTrunc_i_unnamed_conv_process75_sel_x_b = i_unnamed_conv_process75_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv_process87_conv_process91(BLACKBOX,175)@7
    // out out_intel_reserved_ffwd_74_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000cess87_conv_process0 thei_llvm_fpga_ffwd_source_i33_unnamed_conv_process87_conv_process91 (
        .in_predicate_in(GND_q),
        .in_src_data_in_74_0(bgTrunc_i_unnamed_conv_process75_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_74_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process87_conv_process91_out_intel_reserved_ffwd_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_74_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process87_conv_process91_out_intel_reserved_ffwd_74_0;

    // valid_fanout_reg0(REG,243)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together191_in_i_valid_6_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,50)@7
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;
    assign out_unnamed_conv_process88_0_tpl = GND_q;

    // valid_fanout_reg40(REG,283)@0 + 1
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

    // valid_fanout_reg1(REG,244)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1027s_class_ihc_mm_host_10s_ddr_out187846_conv_process1(BLACKBOX,168)@1
    cnn_top_i_llvm_fpga_ffwd_dest_p1027s_cla0000187846_conv_process0 thei_llvm_fpga_ffwd_dest_p1027s_class_ihc_mm_host_10s_ddr_out187846_conv_process1 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1027s_class_ihc_mm_host_10s_ddr_out187846_conv_process1_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1027s_class_ac_int_4s_unnamed_conv_process72_conv_process76(BLACKBOX,176)@1
    // out out_intel_reserved_ffwd_59_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_p1027s_c0000cess72_conv_process0 thei_llvm_fpga_ffwd_source_p1027s_class_ac_int_4s_unnamed_conv_process72_conv_process76 (
        .in_predicate_in(GND_q),
        .in_src_data_in_59_0(i_llvm_fpga_ffwd_dest_p1027s_class_ihc_mm_host_10s_ddr_out187846_conv_process1_out_dest_data_out_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_intel_reserved_ffwd_59_0(i_llvm_fpga_ffwd_source_p1027s_class_ac_int_4s_unnamed_conv_process72_conv_process76_out_intel_reserved_ffwd_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,240)
    assign out_intel_reserved_ffwd_59_0 = i_llvm_fpga_ffwd_source_p1027s_class_ac_int_4s_unnamed_conv_process72_conv_process76_out_intel_reserved_ffwd_59_0;

endmodule
