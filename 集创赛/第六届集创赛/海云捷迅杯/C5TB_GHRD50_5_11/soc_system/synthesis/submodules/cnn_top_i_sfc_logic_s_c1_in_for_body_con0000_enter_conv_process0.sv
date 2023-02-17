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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body_con0000_enter_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body_con0000_enter_conv_process0 (
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [31:0] out_intel_reserved_ffwd_29_0,
    output wire [31:0] out_intel_reserved_ffwd_30_0,
    output wire [31:0] out_intel_reserved_ffwd_31_0,
    output wire [31:0] out_intel_reserved_ffwd_32_0,
    output wire [31:0] out_intel_reserved_ffwd_33_0,
    output wire [31:0] out_intel_reserved_ffwd_34_0,
    output wire [31:0] out_intel_reserved_ffwd_35_0,
    output wire [31:0] out_intel_reserved_ffwd_36_0,
    output wire [31:0] out_intel_reserved_ffwd_37_0,
    output wire [31:0] out_intel_reserved_ffwd_38_0,
    output wire [31:0] out_intel_reserved_ffwd_39_0,
    output wire [31:0] out_intel_reserved_ffwd_40_0,
    output wire [31:0] out_intel_reserved_ffwd_41_0,
    output wire [31:0] out_intel_reserved_ffwd_42_0,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [31:0] out_intel_reserved_ffwd_45_0,
    output wire [31:0] out_intel_reserved_ffwd_46_0,
    output wire [31:0] out_intel_reserved_ffwd_47_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    output wire [0:0] out_unnamed_conv_process54_0_tpl,
    input wire [0:0] in_c1_eni5_0_tpl,
    input wire [31:0] in_c1_eni5_1_tpl,
    input wire [0:0] in_c1_eni5_2_tpl,
    input wire [0:0] in_c1_eni5_3_tpl,
    input wire [31:0] in_c1_eni5_4_tpl,
    input wire [0:0] in_c1_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc8_conv_process87_sel_x_b;
    wire [31:0] c_i32_0270_recast_x_q;
    wire [31:0] c_i32_10276_recast_x_q;
    wire [31:0] c_i32_11275_recast_x_q;
    wire [31:0] c_i32_12274_recast_x_q;
    wire [31:0] c_i32_1285_recast_x_q;
    wire [31:0] c_i32_13273_recast_x_q;
    wire [31:0] c_i32_14272_recast_x_q;
    wire [31:0] c_i32_15271_recast_x_q;
    wire [31:0] c_i32_2284_recast_x_q;
    wire [31:0] c_i32_3283_recast_x_q;
    wire [31:0] c_i32_4282_recast_x_q;
    wire [31:0] c_i32_5281_recast_x_q;
    wire [31:0] c_i32_6280_recast_x_q;
    wire [31:0] c_i32_7279_recast_x_q;
    wire [31:0] c_i32_8278_recast_x_q;
    wire [31:0] c_i32_9277_recast_x_q;
    wire [31:0] c_float_undef286_q;
    wire [31:0] i_div_conv_process5_out_primWireOut;
    wire [32:0] i_inc8_conv_process87_a;
    wire [32:0] i_inc8_conv_process87_b;
    logic [32:0] i_inc8_conv_process87_o;
    wire [32:0] i_inc8_conv_process87_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_0_extract64_conv_process2_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract75_conv_process4_out_dest_data_out_13_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process22_conv_process137_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process23_conv_process138_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process24_conv_process139_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process25_conv_process140_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process26_conv_process141_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process27_conv_process142_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process28_conv_process143_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process29_conv_process144_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process30_conv_process145_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process31_conv_process146_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process32_conv_process147_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process33_conv_process148_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process34_conv_process149_out_intel_reserved_ffwd_28_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process35_conv_process150_out_intel_reserved_ffwd_29_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process36_conv_process151_out_intel_reserved_ffwd_30_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process37_conv_process152_out_intel_reserved_ffwd_31_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process38_conv_process153_out_intel_reserved_ffwd_32_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process39_conv_process154_out_intel_reserved_ffwd_33_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process40_conv_process155_out_intel_reserved_ffwd_34_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process41_conv_process156_out_intel_reserved_ffwd_35_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process42_conv_process157_out_intel_reserved_ffwd_36_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process43_conv_process158_out_intel_reserved_ffwd_37_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process44_conv_process159_out_intel_reserved_ffwd_38_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process45_conv_process160_out_intel_reserved_ffwd_39_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process46_conv_process161_out_intel_reserved_ffwd_40_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process47_conv_process162_out_intel_reserved_ffwd_41_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process48_conv_process163_out_intel_reserved_ffwd_42_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process49_conv_process164_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process50_conv_process165_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process51_conv_process166_out_intel_reserved_ffwd_45_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process52_conv_process167_out_intel_reserved_ffwd_46_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_conv_process53_conv_process168_out_intel_reserved_ffwd_47_0;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_feedback_stall_out_54;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_feedback_stall_out_52;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_feedback_stall_out_47;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_feedback_stall_out_45;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_feedback_stall_out_57;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_feedback_stall_out_39;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_valid_out_54;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_valid_out_52;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_valid_out_47;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_valid_out_45;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_valid_out_57;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_valid_out_39;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_valid_out_42;
    wire [31:0] i_mul7_conv_process3_out_primWireOut;
    wire [0:0] i_spec_select182_conv_process46_s;
    reg [31:0] i_spec_select182_conv_process46_q;
    wire [0:0] i_spec_select183_conv_process49_s;
    reg [31:0] i_spec_select183_conv_process49_q;
    wire [0:0] i_spec_select184_conv_process52_s;
    reg [31:0] i_spec_select184_conv_process52_q;
    wire [0:0] i_spec_select185_conv_process55_s;
    reg [31:0] i_spec_select185_conv_process55_q;
    wire [0:0] i_spec_select186_conv_process58_s;
    reg [31:0] i_spec_select186_conv_process58_q;
    wire [0:0] i_spec_select187_conv_process61_s;
    reg [31:0] i_spec_select187_conv_process61_q;
    wire [0:0] i_spec_select189_conv_process64_s;
    reg [31:0] i_spec_select189_conv_process64_q;
    wire [0:0] i_spec_select190_conv_process67_s;
    reg [31:0] i_spec_select190_conv_process67_q;
    wire [0:0] i_spec_select191_conv_process70_s;
    reg [31:0] i_spec_select191_conv_process70_q;
    wire [0:0] i_spec_select192_conv_process73_s;
    reg [31:0] i_spec_select192_conv_process73_q;
    wire [0:0] i_spec_select193_conv_process76_s;
    reg [31:0] i_spec_select193_conv_process76_q;
    wire [0:0] i_spec_select194_conv_process79_s;
    reg [31:0] i_spec_select194_conv_process79_q;
    wire [0:0] i_spec_select195_conv_process82_s;
    reg [31:0] i_spec_select195_conv_process82_q;
    wire [0:0] i_spec_select196_conv_process85_s;
    reg [31:0] i_spec_select196_conv_process85_q;
    wire [0:0] i_spec_select197_conv_process90_s;
    reg [31:0] i_spec_select197_conv_process90_q;
    wire [0:0] i_spec_select198_conv_process96_s;
    reg [31:0] i_spec_select198_conv_process96_q;
    wire [0:0] i_spec_select199_conv_process99_s;
    reg [31:0] i_spec_select199_conv_process99_q;
    wire [0:0] i_spec_select200_conv_process102_s;
    reg [31:0] i_spec_select200_conv_process102_q;
    wire [0:0] i_spec_select201_conv_process105_s;
    reg [31:0] i_spec_select201_conv_process105_q;
    wire [0:0] i_spec_select202_conv_process108_s;
    reg [31:0] i_spec_select202_conv_process108_q;
    wire [0:0] i_spec_select203_conv_process111_s;
    reg [31:0] i_spec_select203_conv_process111_q;
    wire [0:0] i_spec_select204_conv_process114_s;
    reg [31:0] i_spec_select204_conv_process114_q;
    wire [0:0] i_spec_select205_conv_process117_s;
    reg [31:0] i_spec_select205_conv_process117_q;
    wire [0:0] i_spec_select206_conv_process120_s;
    reg [31:0] i_spec_select206_conv_process120_q;
    wire [0:0] i_spec_select207_conv_process123_s;
    reg [31:0] i_spec_select207_conv_process123_q;
    wire [0:0] i_spec_select208_conv_process126_s;
    reg [31:0] i_spec_select208_conv_process126_q;
    wire [0:0] i_spec_select209_conv_process129_s;
    reg [31:0] i_spec_select209_conv_process129_q;
    wire [0:0] i_spec_select210_conv_process132_s;
    reg [31:0] i_spec_select210_conv_process132_q;
    wire [0:0] i_spec_select211_conv_process135_s;
    reg [31:0] i_spec_select211_conv_process135_q;
    wire [0:0] i_spec_select_conv_process40_s;
    reg [31:0] i_spec_select_conv_process40_q;
    wire [0:0] i_unnamed_conv_process11_qi;
    reg [0:0] i_unnamed_conv_process11_q;
    wire [0:0] i_unnamed_conv_process13_qi;
    reg [0:0] i_unnamed_conv_process13_q;
    wire [0:0] i_unnamed_conv_process15_qi;
    reg [0:0] i_unnamed_conv_process15_q;
    wire [0:0] i_unnamed_conv_process17_qi;
    reg [0:0] i_unnamed_conv_process17_q;
    wire [0:0] i_unnamed_conv_process19_qi;
    reg [0:0] i_unnamed_conv_process19_q;
    wire [0:0] i_unnamed_conv_process21_qi;
    reg [0:0] i_unnamed_conv_process21_q;
    wire [0:0] i_unnamed_conv_process23_qi;
    reg [0:0] i_unnamed_conv_process23_q;
    wire [0:0] i_unnamed_conv_process25_qi;
    reg [0:0] i_unnamed_conv_process25_q;
    wire [0:0] i_unnamed_conv_process27_qi;
    reg [0:0] i_unnamed_conv_process27_q;
    wire [0:0] i_unnamed_conv_process29_qi;
    reg [0:0] i_unnamed_conv_process29_q;
    wire [0:0] i_unnamed_conv_process31_qi;
    reg [0:0] i_unnamed_conv_process31_q;
    wire [0:0] i_unnamed_conv_process33_qi;
    reg [0:0] i_unnamed_conv_process33_q;
    wire [0:0] i_unnamed_conv_process35_qi;
    reg [0:0] i_unnamed_conv_process35_q;
    wire [0:0] i_unnamed_conv_process37_qi;
    reg [0:0] i_unnamed_conv_process37_q;
    wire [0:0] i_unnamed_conv_process43_s;
    reg [31:0] i_unnamed_conv_process43_q;
    wire [0:0] i_unnamed_conv_process7_qi;
    reg [0:0] i_unnamed_conv_process7_q;
    wire [0:0] i_unnamed_conv_process9_qi;
    reg [0:0] i_unnamed_conv_process9_q;
    wire [0:0] i_unnamed_conv_process93_s;
    reg [31:0] i_unnamed_conv_process93_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg61_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg62_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg63_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg64_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg65_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg66_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg67_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg68_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg69_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg70_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg71_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg72_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg73_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg74_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg75_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg76_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg77_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg78_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg79_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg80_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg81_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg82_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg83_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg84_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg85_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg86_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg87_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg88_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg89_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg90_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg91_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg92_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg93_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg94_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg95_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg96_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg97_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg98_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg99_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg100_q;
    reg [0:0] redist0_i_unnamed_conv_process9_q_14_q;
    reg [0:0] redist1_i_unnamed_conv_process7_q_14_q;
    reg [0:0] redist2_i_unnamed_conv_process37_q_14_q;
    reg [0:0] redist3_i_unnamed_conv_process35_q_14_q;
    reg [0:0] redist4_i_unnamed_conv_process33_q_14_q;
    reg [0:0] redist5_i_unnamed_conv_process31_q_14_q;
    reg [0:0] redist6_i_unnamed_conv_process29_q_14_q;
    reg [0:0] redist7_i_unnamed_conv_process27_q_14_q;
    reg [0:0] redist8_i_unnamed_conv_process25_q_14_q;
    reg [0:0] redist9_i_unnamed_conv_process23_q_14_q;
    reg [0:0] redist10_i_unnamed_conv_process21_q_14_q;
    reg [0:0] redist11_i_unnamed_conv_process19_q_14_q;
    reg [0:0] redist12_i_unnamed_conv_process17_q_14_q;
    reg [0:0] redist13_i_unnamed_conv_process15_q_14_q;
    reg [0:0] redist14_i_unnamed_conv_process13_q_14_q;
    reg [0:0] redist15_i_unnamed_conv_process11_q_14_q;
    reg [31:0] redist16_i_mul7_conv_process3_out_primWireOut_1_q;
    reg [31:0] redist17_i_div_conv_process5_out_primWireOut_1_q;
    reg [0:0] redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1_q;
    reg [0:0] redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q;
    reg [0:0] redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q;
    reg [0:0] redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1_q;
    reg [0:0] redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q;
    reg [0:0] redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q;
    reg [31:0] redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
    reg [31:0] redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_delay_0;
    reg [0:0] redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q;
    reg [0:0] redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_delay_0;
    reg [0:0] redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q;
    reg [0:0] redist28_sync_together355_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist29_sync_together355_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist30_sync_together355_aunroll_x_in_i_valid_14_q;
    wire redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_reset0;
    wire [31:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ia;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_aa;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ab;
    wire [31:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_iq;
    wire [31:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_q;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_i;
    reg [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_cmpReg_q;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_notEnable_q;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena_q;
    wire [0:0] redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist28_sync_together355_aunroll_x_in_i_valid_1(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together355_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist28_sync_together355_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist29_sync_together355_aunroll_x_in_i_valid_2(DELAY,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together355_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist29_sync_together355_aunroll_x_in_i_valid_2_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_sync_together355_aunroll_x_in_i_valid_14(DELAY,459)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together355_aunroll_x_in_i_valid_14 ( .xin(redist29_sync_together355_aunroll_x_in_i_valid_2_q), .xout(redist30_sync_together355_aunroll_x_in_i_valid_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg70(REG,397)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg70_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg70_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg2(REG,329)@79 + 1
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

    // i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract75_conv_process4(BLACKBOX,159)@80
    cnn_top_i_llvm_fpga_ffwd_dest_f32_scale_0000ract75_conv_process0 thei_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract75_conv_process4 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract75_conv_process4_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_notEnable(LOGICAL,464)
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_nor(LOGICAL,465)
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_nor_q = ~ (redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_notEnable_q | redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena_q);

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_cmpReg(REG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_nor_q == 1'b1)
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena_q <= $unsigned(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_cmpReg_q);
        end
    end

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_enaAnd(LOGICAL,467)
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_enaAnd_q = redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_sticky_ena_q & VCC_q;

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt(COUNTER,461)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_i <= $unsigned(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_q = redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_i[0:0];

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_wraddr(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_wraddr_q <= $unsigned(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_q);
        end
    end

    // redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem(DUALMEM,460)
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ia = $unsigned(in_c1_eni5_1_tpl);
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_aa = redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_wraddr_q;
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ab = redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_rdcnt_q;
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_reset0 = ~ (resetn);
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
    ) redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_dmem (
        .clocken1(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_aa),
        .data_a(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_ab),
        .q_b(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_iq),
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
    assign redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_q = redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_iq[31:0];

    // valid_fanout_reg1(REG,328)@81 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist29_sync_together355_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_0_extract64_conv_process2(BLACKBOX,158)@82
    cnn_top_i_llvm_fpga_ffwd_dest_f32_scale_0000ract64_conv_process0 thei_llvm_fpga_ffwd_dest_f32_scale_buff_fca_0_extract64_conv_process2 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_0_extract64_conv_process2_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul7_conv_process3(BLACKBOX,258)@82
    // out out_primWireOut@87
    cnn_top_flt_i_sfc_logic_s_c1_in_for_body000124ad20454ge26154gk5u thei_mul7_conv_process3 (
        .in_0(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_0_extract64_conv_process2_out_dest_data_out_8_0),
        .in_1(redist18_sync_together355_aunroll_x_in_c1_eni5_1_tpl_3_mem_q),
        .out_primWireOut(i_mul7_conv_process3_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_mul7_conv_process3_out_primWireOut_1(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_mul7_conv_process3_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist16_i_mul7_conv_process3_out_primWireOut_1_q <= $unsigned(i_mul7_conv_process3_out_primWireOut);
        end
    end

    // i_div_conv_process5(BLACKBOX,156)@80
    // in in_0@88
    // out out_primWireOut@93
    cnn_top_flt_i_sfc_logic_s_c1_in_for_body000024ad20454ge26154gk5u thei_div_conv_process5 (
        .in_0(redist16_i_mul7_conv_process3_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract75_conv_process4_out_dest_data_out_13_0),
        .out_primWireOut(i_div_conv_process5_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_div_conv_process5_out_primWireOut_1(DELAY,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_div_conv_process5_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist17_i_div_conv_process5_out_primWireOut_1_q <= $unsigned(i_div_conv_process5_out_primWireOut);
        end
    end

    // valid_fanout_reg6(REG,333)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg7(REG,334)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1(DELAY,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1_q <= $unsigned(in_c1_eni5_3_tpl);
        end
    end

    // redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2(DELAY,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q <= $unsigned(redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1_q);
        end
    end

    // redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15(DELAY,453)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15 ( .xin(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q), .xout(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44(BLACKBOX,254)@94
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push39_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_unnamed_conv_process43_q),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1(DELAY,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1_q <= $unsigned(in_c1_eni5_2_tpl);
        end
    end

    // redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2(DELAY,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q <= $unsigned(redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1_q);
        end
    end

    // redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15(DELAY,450)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15 ( .xin(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q), .xout(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_undef286(FLOATCONSTANT,53)
    assign c_float_undef286_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42(BLACKBOX,221)@94
    // out out_feedback_stall_out_39@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop39_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_39(i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_f32_weight_scale_buff_sroa_4_0_push39_conv_process44_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1285_recast_x(CONSTANT,7)
    assign c_i32_1285_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg3(REG,330)@79 + 1
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

    // valid_fanout_reg36(REG,363)@79 + 1
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

    // i_inc8_conv_process87(ADD,157)@80
    assign i_inc8_conv_process87_a = {1'b0, i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out};
    assign i_inc8_conv_process87_b = {1'b0, c_i32_1285_recast_x_q};
    assign i_inc8_conv_process87_o = $unsigned(i_inc8_conv_process87_a) + $unsigned(i_inc8_conv_process87_b);
    assign i_inc8_conv_process87_q = i_inc8_conv_process87_o[32:0];

    // bgTrunc_i_inc8_conv_process87_sel_x(BITSELECT,2)@80
    assign bgTrunc_i_inc8_conv_process87_sel_x_b = i_inc8_conv_process87_q[31:0];

    // i_llvm_fpga_push_i32_i_0500_push42_conv_process88(BLACKBOX,257)@80
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    cnn_top_i_llvm_fpga_push_i32_i_0500_push42_conv_process0 thei_llvm_fpga_push_i32_i_0500_push42_conv_process88 (
        .in_c1_ene3(redist22_sync_together355_aunroll_x_in_c1_eni5_3_tpl_1_q),
        .in_data_in(bgTrunc_i_inc8_conv_process87_sel_x_b),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0270_recast_x(CONSTANT,3)
    assign c_i32_0270_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6(BLACKBOX,224)@80
    // out out_feedback_stall_out_42@20000000
    cnn_top_i_llvm_fpga_pop_i32_i_0500_pop42_conv_process0 thei_llvm_fpga_pop_i32_i_0500_pop42_conv_process6 (
        .in_data_in(c_i32_0270_recast_x_q),
        .in_dir(redist19_sync_together355_aunroll_x_in_c1_eni5_2_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i32_i_0500_push42_conv_process88_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process35(LOGICAL,301)@80 + 1
    assign i_unnamed_conv_process35_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_1285_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process35_delay ( .xin(i_unnamed_conv_process35_qi), .xout(i_unnamed_conv_process35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_i_unnamed_conv_process35_q_14(DELAY,432)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_i_unnamed_conv_process35_q_14 ( .xin(i_unnamed_conv_process35_q), .xout(redist3_i_unnamed_conv_process35_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_conv_process43(MUX,303)@94
    assign i_unnamed_conv_process43_s = redist3_i_unnamed_conv_process35_q_14_q;
    always @(i_unnamed_conv_process43_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_unnamed_conv_process43_s)
            1'b0 : i_unnamed_conv_process43_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_4_0_pop39_conv_process42_out_data_out;
            1'b1 : i_unnamed_conv_process43_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_unnamed_conv_process43_q = 32'b0;
        endcase
    end

    // redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_delay_0 <= '0;
            redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q <= '0;
        end
        else
        begin
            redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_delay_0 <= $unsigned(in_c1_eni5_5_tpl);
            redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q <= redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_delay_0;
        end
    end

    // redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15(DELAY,456)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15 ( .xin(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q), .xout(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process23_conv_process138(BLACKBOX,161)@94
    // out out_intel_reserved_ffwd_17_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess23_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process23_conv_process138 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_17_0(i_unnamed_conv_process43_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg70_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process23_conv_process138_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process23_conv_process138_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg71(REG,398)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg71_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg71_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg8(REG,335)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg9(REG,336)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47(BLACKBOX,255)@94
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push38_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select182_conv_process46_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45(BLACKBOX,222)@94
    // out out_feedback_stall_out_38@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop38_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_38(i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_f32_weight_scale_buff_sroa_6_0_push38_conv_process47_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2284_recast_x(CONSTANT,11)
    assign c_i32_2284_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_conv_process33(LOGICAL,300)@80 + 1
    assign i_unnamed_conv_process33_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_2284_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process33_delay ( .xin(i_unnamed_conv_process33_qi), .xout(i_unnamed_conv_process33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_i_unnamed_conv_process33_q_14(DELAY,433)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_i_unnamed_conv_process33_q_14 ( .xin(i_unnamed_conv_process33_q), .xout(redist4_i_unnamed_conv_process33_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select182_conv_process46(MUX,259)@94
    assign i_spec_select182_conv_process46_s = redist4_i_unnamed_conv_process33_q_14_q;
    always @(i_spec_select182_conv_process46_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select182_conv_process46_s)
            1'b0 : i_spec_select182_conv_process46_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_6_0_pop38_conv_process45_out_data_out;
            1'b1 : i_spec_select182_conv_process46_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select182_conv_process46_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process24_conv_process139(BLACKBOX,162)@94
    // out out_intel_reserved_ffwd_18_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess24_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process24_conv_process139 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_18_0(i_spec_select182_conv_process46_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg71_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process24_conv_process139_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process24_conv_process139_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg72(REG,399)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg72_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg72_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg10(REG,337)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg11(REG,338)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50(BLACKBOX,256)@94
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push37_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select183_conv_process49_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48(BLACKBOX,223)@94
    // out out_feedback_stall_out_37@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop37_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_37(i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_f32_weight_scale_buff_sroa_8_0_push37_conv_process50_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3283_recast_x(CONSTANT,12)
    assign c_i32_3283_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_conv_process31(LOGICAL,299)@80 + 1
    assign i_unnamed_conv_process31_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_3283_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process31_delay ( .xin(i_unnamed_conv_process31_qi), .xout(i_unnamed_conv_process31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_unnamed_conv_process31_q_14(DELAY,434)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_unnamed_conv_process31_q_14 ( .xin(i_unnamed_conv_process31_q), .xout(redist5_i_unnamed_conv_process31_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select183_conv_process49(MUX,260)@94
    assign i_spec_select183_conv_process49_s = redist5_i_unnamed_conv_process31_q_14_q;
    always @(i_spec_select183_conv_process49_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select183_conv_process49_s)
            1'b0 : i_spec_select183_conv_process49_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_8_0_pop37_conv_process48_out_data_out;
            1'b1 : i_spec_select183_conv_process49_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select183_conv_process49_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process25_conv_process140(BLACKBOX,163)@94
    // out out_intel_reserved_ffwd_19_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess25_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process25_conv_process140 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_19_0(i_spec_select183_conv_process49_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg72_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process25_conv_process140_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process25_conv_process140_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg73(REG,400)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg73_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg73_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg12(REG,339)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg13(REG,340)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53(BLACKBOX,242)@94
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push36_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select184_conv_process52_q),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51(BLACKBOX,209)@94
    // out out_feedback_stall_out_36@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop36_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_36(i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_f32_weight_scale_buff_sroa_10_0_push36_conv_process53_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_4282_recast_x(CONSTANT,13)
    assign c_i32_4282_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_conv_process29(LOGICAL,298)@80 + 1
    assign i_unnamed_conv_process29_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_4282_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process29_delay ( .xin(i_unnamed_conv_process29_qi), .xout(i_unnamed_conv_process29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_unnamed_conv_process29_q_14(DELAY,435)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_unnamed_conv_process29_q_14 ( .xin(i_unnamed_conv_process29_q), .xout(redist6_i_unnamed_conv_process29_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select184_conv_process52(MUX,261)@94
    assign i_spec_select184_conv_process52_s = redist6_i_unnamed_conv_process29_q_14_q;
    always @(i_spec_select184_conv_process52_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select184_conv_process52_s)
            1'b0 : i_spec_select184_conv_process52_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_10_0_pop36_conv_process51_out_data_out;
            1'b1 : i_spec_select184_conv_process52_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select184_conv_process52_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process26_conv_process141(BLACKBOX,164)@94
    // out out_intel_reserved_ffwd_20_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess26_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process26_conv_process141 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_20_0(i_spec_select184_conv_process52_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg73_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process26_conv_process141_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process26_conv_process141_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg74(REG,401)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg74_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg74_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg14(REG,341)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg15(REG,342)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56(BLACKBOX,243)@94
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push35_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select185_conv_process55_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54(BLACKBOX,210)@94
    // out out_feedback_stall_out_35@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop35_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_35(i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_f32_weight_scale_buff_sroa_12_0_push35_conv_process56_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5281_recast_x(CONSTANT,14)
    assign c_i32_5281_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_conv_process27(LOGICAL,297)@80 + 1
    assign i_unnamed_conv_process27_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_5281_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process27_delay ( .xin(i_unnamed_conv_process27_qi), .xout(i_unnamed_conv_process27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_unnamed_conv_process27_q_14(DELAY,436)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_unnamed_conv_process27_q_14 ( .xin(i_unnamed_conv_process27_q), .xout(redist7_i_unnamed_conv_process27_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select185_conv_process55(MUX,262)@94
    assign i_spec_select185_conv_process55_s = redist7_i_unnamed_conv_process27_q_14_q;
    always @(i_spec_select185_conv_process55_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select185_conv_process55_s)
            1'b0 : i_spec_select185_conv_process55_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_12_0_pop35_conv_process54_out_data_out;
            1'b1 : i_spec_select185_conv_process55_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select185_conv_process55_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process27_conv_process142(BLACKBOX,165)@94
    // out out_intel_reserved_ffwd_21_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess27_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process27_conv_process142 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_21_0(i_spec_select185_conv_process55_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg74_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process27_conv_process142_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process27_conv_process142_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg75(REG,402)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg75_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg75_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg16(REG,343)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg17(REG,344)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59(BLACKBOX,244)@94
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push34_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select186_conv_process58_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57(BLACKBOX,211)@94
    // out out_feedback_stall_out_34@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop34_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_34(i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_f32_weight_scale_buff_sroa_14_0_push34_conv_process59_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6280_recast_x(CONSTANT,15)
    assign c_i32_6280_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_conv_process25(LOGICAL,296)@80 + 1
    assign i_unnamed_conv_process25_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_6280_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process25_delay ( .xin(i_unnamed_conv_process25_qi), .xout(i_unnamed_conv_process25_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_unnamed_conv_process25_q_14(DELAY,437)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_unnamed_conv_process25_q_14 ( .xin(i_unnamed_conv_process25_q), .xout(redist8_i_unnamed_conv_process25_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select186_conv_process58(MUX,263)@94
    assign i_spec_select186_conv_process58_s = redist8_i_unnamed_conv_process25_q_14_q;
    always @(i_spec_select186_conv_process58_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select186_conv_process58_s)
            1'b0 : i_spec_select186_conv_process58_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_14_0_pop34_conv_process57_out_data_out;
            1'b1 : i_spec_select186_conv_process58_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select186_conv_process58_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process28_conv_process143(BLACKBOX,166)@94
    // out out_intel_reserved_ffwd_22_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess28_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process28_conv_process143 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_22_0(i_spec_select186_conv_process58_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg75_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process28_conv_process143_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process28_conv_process143_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg76(REG,403)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg76_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg76_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg18(REG,345)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg19(REG,346)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62(BLACKBOX,245)@94
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push33_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select187_conv_process61_q),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60(BLACKBOX,212)@94
    // out out_feedback_stall_out_33@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop33_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_33(i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_f32_weight_scale_buff_sroa_16_0_push33_conv_process62_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7279_recast_x(CONSTANT,16)
    assign c_i32_7279_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_conv_process23(LOGICAL,295)@80 + 1
    assign i_unnamed_conv_process23_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_7279_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process23_delay ( .xin(i_unnamed_conv_process23_qi), .xout(i_unnamed_conv_process23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_unnamed_conv_process23_q_14(DELAY,438)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_unnamed_conv_process23_q_14 ( .xin(i_unnamed_conv_process23_q), .xout(redist9_i_unnamed_conv_process23_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select187_conv_process61(MUX,264)@94
    assign i_spec_select187_conv_process61_s = redist9_i_unnamed_conv_process23_q_14_q;
    always @(i_spec_select187_conv_process61_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select187_conv_process61_s)
            1'b0 : i_spec_select187_conv_process61_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_16_0_pop33_conv_process60_out_data_out;
            1'b1 : i_spec_select187_conv_process61_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select187_conv_process61_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process29_conv_process144(BLACKBOX,167)@94
    // out out_intel_reserved_ffwd_23_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess29_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process29_conv_process144 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_23_0(i_spec_select187_conv_process61_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg76_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process29_conv_process144_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process29_conv_process144_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg77(REG,404)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg77_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg77_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg20(REG,347)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg21(REG,348)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65(BLACKBOX,246)@94
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push32_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select189_conv_process64_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63(BLACKBOX,213)@94
    // out out_feedback_stall_out_32@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop32_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_32(i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_f32_weight_scale_buff_sroa_18_0_push32_conv_process65_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8278_recast_x(CONSTANT,17)
    assign c_i32_8278_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_conv_process21(LOGICAL,294)@80 + 1
    assign i_unnamed_conv_process21_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_8278_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process21_delay ( .xin(i_unnamed_conv_process21_qi), .xout(i_unnamed_conv_process21_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_unnamed_conv_process21_q_14(DELAY,439)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_unnamed_conv_process21_q_14 ( .xin(i_unnamed_conv_process21_q), .xout(redist10_i_unnamed_conv_process21_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select189_conv_process64(MUX,265)@94
    assign i_spec_select189_conv_process64_s = redist10_i_unnamed_conv_process21_q_14_q;
    always @(i_spec_select189_conv_process64_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select189_conv_process64_s)
            1'b0 : i_spec_select189_conv_process64_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_18_0_pop32_conv_process63_out_data_out;
            1'b1 : i_spec_select189_conv_process64_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select189_conv_process64_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process30_conv_process145(BLACKBOX,168)@94
    // out out_intel_reserved_ffwd_24_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess30_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process30_conv_process145 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_24_0(i_spec_select189_conv_process64_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg77_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process30_conv_process145_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process30_conv_process145_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg78(REG,405)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg78_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg78_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg22(REG,349)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg23(REG,350)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68(BLACKBOX,247)@94
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push31_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select190_conv_process67_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66(BLACKBOX,214)@94
    // out out_feedback_stall_out_31@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop31_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_31(i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_f32_weight_scale_buff_sroa_20_0_push31_conv_process68_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_9277_recast_x(CONSTANT,18)
    assign c_i32_9277_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_conv_process19(LOGICAL,293)@80 + 1
    assign i_unnamed_conv_process19_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_9277_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process19_delay ( .xin(i_unnamed_conv_process19_qi), .xout(i_unnamed_conv_process19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_i_unnamed_conv_process19_q_14(DELAY,440)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_i_unnamed_conv_process19_q_14 ( .xin(i_unnamed_conv_process19_q), .xout(redist11_i_unnamed_conv_process19_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select190_conv_process67(MUX,266)@94
    assign i_spec_select190_conv_process67_s = redist11_i_unnamed_conv_process19_q_14_q;
    always @(i_spec_select190_conv_process67_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select190_conv_process67_s)
            1'b0 : i_spec_select190_conv_process67_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_20_0_pop31_conv_process66_out_data_out;
            1'b1 : i_spec_select190_conv_process67_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select190_conv_process67_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process31_conv_process146(BLACKBOX,169)@94
    // out out_intel_reserved_ffwd_25_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess31_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process31_conv_process146 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_25_0(i_spec_select190_conv_process67_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg78_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process31_conv_process146_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process31_conv_process146_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg79(REG,406)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg79_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg79_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg24(REG,351)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg25(REG,352)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71(BLACKBOX,248)@94
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push30_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select191_conv_process70_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_feedback_stall_out_30),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69(BLACKBOX,215)@94
    // out out_feedback_stall_out_30@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop30_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_30(i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f32_weight_scale_buff_sroa_22_0_push30_conv_process71_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_10276_recast_x(CONSTANT,4)
    assign c_i32_10276_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_conv_process17(LOGICAL,292)@80 + 1
    assign i_unnamed_conv_process17_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_10276_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process17_delay ( .xin(i_unnamed_conv_process17_qi), .xout(i_unnamed_conv_process17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_unnamed_conv_process17_q_14(DELAY,441)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_unnamed_conv_process17_q_14 ( .xin(i_unnamed_conv_process17_q), .xout(redist12_i_unnamed_conv_process17_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select191_conv_process70(MUX,267)@94
    assign i_spec_select191_conv_process70_s = redist12_i_unnamed_conv_process17_q_14_q;
    always @(i_spec_select191_conv_process70_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select191_conv_process70_s)
            1'b0 : i_spec_select191_conv_process70_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_22_0_pop30_conv_process69_out_data_out;
            1'b1 : i_spec_select191_conv_process70_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select191_conv_process70_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process32_conv_process147(BLACKBOX,170)@94
    // out out_intel_reserved_ffwd_26_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess32_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process32_conv_process147 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_26_0(i_spec_select191_conv_process70_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg79_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process32_conv_process147_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process32_conv_process147_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg80(REG,407)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg80_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg80_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg26(REG,353)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg27(REG,354)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74(BLACKBOX,249)@94
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push29_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select192_conv_process73_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_feedback_stall_out_29),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72(BLACKBOX,216)@94
    // out out_feedback_stall_out_29@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop29_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_29(i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_f32_weight_scale_buff_sroa_24_0_push29_conv_process74_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_11275_recast_x(CONSTANT,5)
    assign c_i32_11275_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_conv_process15(LOGICAL,291)@80 + 1
    assign i_unnamed_conv_process15_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_11275_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process15_delay ( .xin(i_unnamed_conv_process15_qi), .xout(i_unnamed_conv_process15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_unnamed_conv_process15_q_14(DELAY,442)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_unnamed_conv_process15_q_14 ( .xin(i_unnamed_conv_process15_q), .xout(redist13_i_unnamed_conv_process15_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select192_conv_process73(MUX,268)@94
    assign i_spec_select192_conv_process73_s = redist13_i_unnamed_conv_process15_q_14_q;
    always @(i_spec_select192_conv_process73_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select192_conv_process73_s)
            1'b0 : i_spec_select192_conv_process73_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_24_0_pop29_conv_process72_out_data_out;
            1'b1 : i_spec_select192_conv_process73_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select192_conv_process73_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process33_conv_process148(BLACKBOX,171)@94
    // out out_intel_reserved_ffwd_27_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess33_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process33_conv_process148 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_27_0(i_spec_select192_conv_process73_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg80_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process33_conv_process148_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process33_conv_process148_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg81(REG,408)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg81_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg81_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg28(REG,355)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg29(REG,356)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77(BLACKBOX,250)@94
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push28_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select193_conv_process76_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_feedback_stall_out_28),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75(BLACKBOX,217)@94
    // out out_feedback_stall_out_28@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop28_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_28(i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_f32_weight_scale_buff_sroa_26_0_push28_conv_process77_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_12274_recast_x(CONSTANT,6)
    assign c_i32_12274_recast_x_q = $unsigned(32'b00000000000000000000000000001100);

    // i_unnamed_conv_process13(LOGICAL,290)@80 + 1
    assign i_unnamed_conv_process13_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_12274_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process13_delay ( .xin(i_unnamed_conv_process13_qi), .xout(i_unnamed_conv_process13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_unnamed_conv_process13_q_14(DELAY,443)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_unnamed_conv_process13_q_14 ( .xin(i_unnamed_conv_process13_q), .xout(redist14_i_unnamed_conv_process13_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select193_conv_process76(MUX,269)@94
    assign i_spec_select193_conv_process76_s = redist14_i_unnamed_conv_process13_q_14_q;
    always @(i_spec_select193_conv_process76_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select193_conv_process76_s)
            1'b0 : i_spec_select193_conv_process76_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_26_0_pop28_conv_process75_out_data_out;
            1'b1 : i_spec_select193_conv_process76_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select193_conv_process76_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process34_conv_process149(BLACKBOX,172)@94
    // out out_intel_reserved_ffwd_28_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess34_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process34_conv_process149 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_28_0(i_spec_select193_conv_process76_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg81_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process34_conv_process149_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process34_conv_process149_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg82(REG,409)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg82_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg82_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg30(REG,357)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg31(REG,358)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80(BLACKBOX,251)@94
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push27_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select194_conv_process79_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78(BLACKBOX,218)@94
    // out out_feedback_stall_out_27@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop27_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_27(i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_f32_weight_scale_buff_sroa_28_0_push27_conv_process80_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_13273_recast_x(CONSTANT,8)
    assign c_i32_13273_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_conv_process11(LOGICAL,289)@80 + 1
    assign i_unnamed_conv_process11_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_13273_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process11_delay ( .xin(i_unnamed_conv_process11_qi), .xout(i_unnamed_conv_process11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_unnamed_conv_process11_q_14(DELAY,444)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist15_i_unnamed_conv_process11_q_14 ( .xin(i_unnamed_conv_process11_q), .xout(redist15_i_unnamed_conv_process11_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select194_conv_process79(MUX,270)@94
    assign i_spec_select194_conv_process79_s = redist15_i_unnamed_conv_process11_q_14_q;
    always @(i_spec_select194_conv_process79_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select194_conv_process79_s)
            1'b0 : i_spec_select194_conv_process79_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_28_0_pop27_conv_process78_out_data_out;
            1'b1 : i_spec_select194_conv_process79_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select194_conv_process79_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process35_conv_process150(BLACKBOX,173)@94
    // out out_intel_reserved_ffwd_29_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess35_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process35_conv_process150 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_29_0(i_spec_select194_conv_process79_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg82_q),
        .out_intel_reserved_ffwd_29_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process35_conv_process150_out_intel_reserved_ffwd_29_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_29_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process35_conv_process150_out_intel_reserved_ffwd_29_0;

    // valid_fanout_reg83(REG,410)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg83_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg83_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg32(REG,359)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg33(REG,360)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83(BLACKBOX,252)@94
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push26_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select195_conv_process82_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81(BLACKBOX,219)@94
    // out out_feedback_stall_out_26@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop26_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_26(i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_f32_weight_scale_buff_sroa_30_0_push26_conv_process83_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_14272_recast_x(CONSTANT,9)
    assign c_i32_14272_recast_x_q = $unsigned(32'b00000000000000000000000000001110);

    // i_unnamed_conv_process9(LOGICAL,305)@80 + 1
    assign i_unnamed_conv_process9_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_14272_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process9_delay ( .xin(i_unnamed_conv_process9_qi), .xout(i_unnamed_conv_process9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_i_unnamed_conv_process9_q_14(DELAY,429)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_i_unnamed_conv_process9_q_14 ( .xin(i_unnamed_conv_process9_q), .xout(redist0_i_unnamed_conv_process9_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select195_conv_process82(MUX,271)@94
    assign i_spec_select195_conv_process82_s = redist0_i_unnamed_conv_process9_q_14_q;
    always @(i_spec_select195_conv_process82_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select195_conv_process82_s)
            1'b0 : i_spec_select195_conv_process82_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_30_0_pop26_conv_process81_out_data_out;
            1'b1 : i_spec_select195_conv_process82_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select195_conv_process82_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process36_conv_process151(BLACKBOX,174)@94
    // out out_intel_reserved_ffwd_30_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess36_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process36_conv_process151 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_30_0(i_spec_select195_conv_process82_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg83_q),
        .out_intel_reserved_ffwd_30_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process36_conv_process151_out_intel_reserved_ffwd_30_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_30_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process36_conv_process151_out_intel_reserved_ffwd_30_0;

    // valid_fanout_reg84(REG,411)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg84_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg84_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg34(REG,361)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg35(REG,362)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86(BLACKBOX,253)@94
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push25_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select196_conv_process85_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_feedback_stall_out_25),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84(BLACKBOX,220)@94
    // out out_feedback_stall_out_25@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop25_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_25(i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_f32_weight_scale_buff_sroa_32_0_push25_conv_process86_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15271_recast_x(CONSTANT,10)
    assign c_i32_15271_recast_x_q = $unsigned(32'b00000000000000000000000000001111);

    // i_unnamed_conv_process7(LOGICAL,304)@80 + 1
    assign i_unnamed_conv_process7_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_15271_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process7_delay ( .xin(i_unnamed_conv_process7_qi), .xout(i_unnamed_conv_process7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_i_unnamed_conv_process7_q_14(DELAY,430)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_i_unnamed_conv_process7_q_14 ( .xin(i_unnamed_conv_process7_q), .xout(redist1_i_unnamed_conv_process7_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select196_conv_process85(MUX,272)@94
    assign i_spec_select196_conv_process85_s = redist1_i_unnamed_conv_process7_q_14_q;
    always @(i_spec_select196_conv_process85_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select196_conv_process85_s)
            1'b0 : i_spec_select196_conv_process85_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_32_0_pop25_conv_process84_out_data_out;
            1'b1 : i_spec_select196_conv_process85_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select196_conv_process85_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process37_conv_process152(BLACKBOX,175)@94
    // out out_intel_reserved_ffwd_31_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess37_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process37_conv_process152 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_31_0(i_spec_select196_conv_process85_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg84_q),
        .out_intel_reserved_ffwd_31_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process37_conv_process152_out_intel_reserved_ffwd_31_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_31_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process37_conv_process152_out_intel_reserved_ffwd_31_0;

    // valid_fanout_reg85(REG,412)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg85_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg85_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2(DELAY,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_delay_0 <= '0;
            redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q <= '0;
        end
        else
        begin
            redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_delay_0 <= $unsigned(in_c1_eni5_4_tpl);
            redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q <= redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg37(REG,364)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg38(REG,365)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91(BLACKBOX,225)@81
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push58_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select197_conv_process90_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_feedback_stall_out_58),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89(BLACKBOX,192)@81
    // out out_feedback_stall_out_58@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop58_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_58(i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_f32_bias_buff_sroa_0_0_push58_conv_process91_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process37(LOGICAL,302)@80 + 1
    assign i_unnamed_conv_process37_qi = $unsigned(i_llvm_fpga_pop_i32_i_0500_pop42_conv_process6_out_data_out == c_i32_0270_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_conv_process37_delay ( .xin(i_unnamed_conv_process37_qi), .xout(i_unnamed_conv_process37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select197_conv_process90(MUX,273)@81
    assign i_spec_select197_conv_process90_s = i_unnamed_conv_process37_q;
    always @(i_spec_select197_conv_process90_s or i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select197_conv_process90_s)
            1'b0 : i_spec_select197_conv_process90_q = i_llvm_fpga_pop_f32_bias_buff_sroa_0_0_pop58_conv_process89_out_data_out;
            1'b1 : i_spec_select197_conv_process90_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select197_conv_process90_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process38_conv_process153(BLACKBOX,176)@81
    // out out_intel_reserved_ffwd_32_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess38_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process38_conv_process153 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_32_0(i_spec_select197_conv_process90_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg85_q),
        .out_intel_reserved_ffwd_32_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process38_conv_process153_out_intel_reserved_ffwd_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_32_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process38_conv_process153_out_intel_reserved_ffwd_32_0;

    // valid_fanout_reg86(REG,413)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg86_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg86_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg39(REG,366)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg40(REG,367)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94(BLACKBOX,238)@81
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push57_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_unnamed_conv_process93_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_feedback_stall_out_57),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92(BLACKBOX,205)@81
    // out out_feedback_stall_out_57@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop57_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_57(i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_f32_bias_buff_sroa_4_0_push57_conv_process94_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process93(MUX,306)@81
    assign i_unnamed_conv_process93_s = i_unnamed_conv_process35_q;
    always @(i_unnamed_conv_process93_s or i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_unnamed_conv_process93_s)
            1'b0 : i_unnamed_conv_process93_q = i_llvm_fpga_pop_f32_bias_buff_sroa_4_0_pop57_conv_process92_out_data_out;
            1'b1 : i_unnamed_conv_process93_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_unnamed_conv_process93_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process39_conv_process154(BLACKBOX,177)@81
    // out out_intel_reserved_ffwd_33_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess39_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process39_conv_process154 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_33_0(i_unnamed_conv_process93_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg86_q),
        .out_intel_reserved_ffwd_33_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process39_conv_process154_out_intel_reserved_ffwd_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_33_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process39_conv_process154_out_intel_reserved_ffwd_33_0;

    // valid_fanout_reg87(REG,414)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg87_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg87_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg41(REG,368)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg42(REG,369)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97(BLACKBOX,239)@81
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push56_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select198_conv_process96_q),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_feedback_stall_out_56),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95(BLACKBOX,206)@81
    // out out_feedback_stall_out_56@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop56_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_56(i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_f32_bias_buff_sroa_6_0_push56_conv_process97_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select198_conv_process96(MUX,274)@81
    assign i_spec_select198_conv_process96_s = i_unnamed_conv_process33_q;
    always @(i_spec_select198_conv_process96_s or i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select198_conv_process96_s)
            1'b0 : i_spec_select198_conv_process96_q = i_llvm_fpga_pop_f32_bias_buff_sroa_6_0_pop56_conv_process95_out_data_out;
            1'b1 : i_spec_select198_conv_process96_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select198_conv_process96_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process40_conv_process155(BLACKBOX,178)@81
    // out out_intel_reserved_ffwd_34_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess40_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process40_conv_process155 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_34_0(i_spec_select198_conv_process96_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg87_q),
        .out_intel_reserved_ffwd_34_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process40_conv_process155_out_intel_reserved_ffwd_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_17_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_34_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process40_conv_process155_out_intel_reserved_ffwd_34_0;

    // valid_fanout_reg88(REG,415)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg88_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg88_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg43(REG,370)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg44(REG,371)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100(BLACKBOX,240)@81
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push55_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select199_conv_process99_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_feedback_stall_out_55),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98(BLACKBOX,207)@81
    // out out_feedback_stall_out_55@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop55_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_55(i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_f32_bias_buff_sroa_8_0_push55_conv_process100_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select199_conv_process99(MUX,275)@81
    assign i_spec_select199_conv_process99_s = i_unnamed_conv_process31_q;
    always @(i_spec_select199_conv_process99_s or i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select199_conv_process99_s)
            1'b0 : i_spec_select199_conv_process99_q = i_llvm_fpga_pop_f32_bias_buff_sroa_8_0_pop55_conv_process98_out_data_out;
            1'b1 : i_spec_select199_conv_process99_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select199_conv_process99_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process41_conv_process156(BLACKBOX,179)@81
    // out out_intel_reserved_ffwd_35_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess41_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process41_conv_process156 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_35_0(i_spec_select199_conv_process99_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg88_q),
        .out_intel_reserved_ffwd_35_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process41_conv_process156_out_intel_reserved_ffwd_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_18_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_35_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process41_conv_process156_out_intel_reserved_ffwd_35_0;

    // valid_fanout_reg89(REG,416)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg89_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg89_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg45(REG,372)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg46(REG,373)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103(BLACKBOX,226)@81
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push54_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select200_conv_process102_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_feedback_stall_out_54),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101(BLACKBOX,193)@81
    // out out_feedback_stall_out_54@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop54_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_54(i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_f32_bias_buff_sroa_10_0_push54_conv_process103_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select200_conv_process102(MUX,276)@81
    assign i_spec_select200_conv_process102_s = i_unnamed_conv_process29_q;
    always @(i_spec_select200_conv_process102_s or i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select200_conv_process102_s)
            1'b0 : i_spec_select200_conv_process102_q = i_llvm_fpga_pop_f32_bias_buff_sroa_10_0_pop54_conv_process101_out_data_out;
            1'b1 : i_spec_select200_conv_process102_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select200_conv_process102_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process42_conv_process157(BLACKBOX,180)@81
    // out out_intel_reserved_ffwd_36_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess42_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process42_conv_process157 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_36_0(i_spec_select200_conv_process102_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg89_q),
        .out_intel_reserved_ffwd_36_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process42_conv_process157_out_intel_reserved_ffwd_36_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_19_regfree_osync_x(GPOUT,38)
    assign out_intel_reserved_ffwd_36_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process42_conv_process157_out_intel_reserved_ffwd_36_0;

    // valid_fanout_reg90(REG,417)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg90_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg90_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg47(REG,374)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg48(REG,375)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106(BLACKBOX,227)@81
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push53_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select201_conv_process105_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_feedback_stall_out_53),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104(BLACKBOX,194)@81
    // out out_feedback_stall_out_53@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop53_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_53(i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_f32_bias_buff_sroa_12_0_push53_conv_process106_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select201_conv_process105(MUX,277)@81
    assign i_spec_select201_conv_process105_s = i_unnamed_conv_process27_q;
    always @(i_spec_select201_conv_process105_s or i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select201_conv_process105_s)
            1'b0 : i_spec_select201_conv_process105_q = i_llvm_fpga_pop_f32_bias_buff_sroa_12_0_pop53_conv_process104_out_data_out;
            1'b1 : i_spec_select201_conv_process105_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select201_conv_process105_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process43_conv_process158(BLACKBOX,181)@81
    // out out_intel_reserved_ffwd_37_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess43_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process43_conv_process158 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_37_0(i_spec_select201_conv_process105_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg90_q),
        .out_intel_reserved_ffwd_37_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process43_conv_process158_out_intel_reserved_ffwd_37_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_20_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_37_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process43_conv_process158_out_intel_reserved_ffwd_37_0;

    // valid_fanout_reg91(REG,418)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg91_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg91_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg49(REG,376)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg50(REG,377)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109(BLACKBOX,228)@81
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push52_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select202_conv_process108_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_feedback_stall_out_52),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107(BLACKBOX,195)@81
    // out out_feedback_stall_out_52@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop52_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_52(i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_f32_bias_buff_sroa_14_0_push52_conv_process109_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select202_conv_process108(MUX,278)@81
    assign i_spec_select202_conv_process108_s = i_unnamed_conv_process25_q;
    always @(i_spec_select202_conv_process108_s or i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select202_conv_process108_s)
            1'b0 : i_spec_select202_conv_process108_q = i_llvm_fpga_pop_f32_bias_buff_sroa_14_0_pop52_conv_process107_out_data_out;
            1'b1 : i_spec_select202_conv_process108_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select202_conv_process108_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process44_conv_process159(BLACKBOX,182)@81
    // out out_intel_reserved_ffwd_38_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess44_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process44_conv_process159 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_38_0(i_spec_select202_conv_process108_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg91_q),
        .out_intel_reserved_ffwd_38_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process44_conv_process159_out_intel_reserved_ffwd_38_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_21_regfree_osync_x(GPOUT,40)
    assign out_intel_reserved_ffwd_38_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process44_conv_process159_out_intel_reserved_ffwd_38_0;

    // valid_fanout_reg92(REG,419)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg92_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg92_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg51(REG,378)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg52(REG,379)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112(BLACKBOX,229)@81
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push51_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select203_conv_process111_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_feedback_stall_out_51),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110(BLACKBOX,196)@81
    // out out_feedback_stall_out_51@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop51_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_51(i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_f32_bias_buff_sroa_16_0_push51_conv_process112_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select203_conv_process111(MUX,279)@81
    assign i_spec_select203_conv_process111_s = i_unnamed_conv_process23_q;
    always @(i_spec_select203_conv_process111_s or i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select203_conv_process111_s)
            1'b0 : i_spec_select203_conv_process111_q = i_llvm_fpga_pop_f32_bias_buff_sroa_16_0_pop51_conv_process110_out_data_out;
            1'b1 : i_spec_select203_conv_process111_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select203_conv_process111_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process45_conv_process160(BLACKBOX,183)@81
    // out out_intel_reserved_ffwd_39_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess45_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process45_conv_process160 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_39_0(i_spec_select203_conv_process111_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg92_q),
        .out_intel_reserved_ffwd_39_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process45_conv_process160_out_intel_reserved_ffwd_39_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_22_regfree_osync_x(GPOUT,41)
    assign out_intel_reserved_ffwd_39_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process45_conv_process160_out_intel_reserved_ffwd_39_0;

    // valid_fanout_reg93(REG,420)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg93_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg93_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg53(REG,380)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg54(REG,381)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115(BLACKBOX,230)@81
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push50_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select204_conv_process114_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_feedback_stall_out_50),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113(BLACKBOX,197)@81
    // out out_feedback_stall_out_50@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop50_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_50(i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_f32_bias_buff_sroa_18_0_push50_conv_process115_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select204_conv_process114(MUX,280)@81
    assign i_spec_select204_conv_process114_s = i_unnamed_conv_process21_q;
    always @(i_spec_select204_conv_process114_s or i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select204_conv_process114_s)
            1'b0 : i_spec_select204_conv_process114_q = i_llvm_fpga_pop_f32_bias_buff_sroa_18_0_pop50_conv_process113_out_data_out;
            1'b1 : i_spec_select204_conv_process114_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select204_conv_process114_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process46_conv_process161(BLACKBOX,184)@81
    // out out_intel_reserved_ffwd_40_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess46_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process46_conv_process161 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_40_0(i_spec_select204_conv_process114_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg93_q),
        .out_intel_reserved_ffwd_40_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process46_conv_process161_out_intel_reserved_ffwd_40_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_23_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_40_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process46_conv_process161_out_intel_reserved_ffwd_40_0;

    // valid_fanout_reg94(REG,421)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg94_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg94_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg55(REG,382)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg56(REG,383)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118(BLACKBOX,231)@81
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push49_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select205_conv_process117_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_feedback_stall_out_49),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116(BLACKBOX,198)@81
    // out out_feedback_stall_out_49@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop49_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_49(i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_f32_bias_buff_sroa_20_0_push49_conv_process118_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select205_conv_process117(MUX,281)@81
    assign i_spec_select205_conv_process117_s = i_unnamed_conv_process19_q;
    always @(i_spec_select205_conv_process117_s or i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select205_conv_process117_s)
            1'b0 : i_spec_select205_conv_process117_q = i_llvm_fpga_pop_f32_bias_buff_sroa_20_0_pop49_conv_process116_out_data_out;
            1'b1 : i_spec_select205_conv_process117_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select205_conv_process117_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process47_conv_process162(BLACKBOX,185)@81
    // out out_intel_reserved_ffwd_41_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess47_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process47_conv_process162 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_41_0(i_spec_select205_conv_process117_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg94_q),
        .out_intel_reserved_ffwd_41_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process47_conv_process162_out_intel_reserved_ffwd_41_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_24_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_41_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process47_conv_process162_out_intel_reserved_ffwd_41_0;

    // valid_fanout_reg95(REG,422)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg95_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg95_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg57(REG,384)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg58(REG,385)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121(BLACKBOX,232)@81
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push48_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select206_conv_process120_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_feedback_stall_out_48),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119(BLACKBOX,199)@81
    // out out_feedback_stall_out_48@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop48_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_48(i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_f32_bias_buff_sroa_22_0_push48_conv_process121_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select206_conv_process120(MUX,282)@81
    assign i_spec_select206_conv_process120_s = i_unnamed_conv_process17_q;
    always @(i_spec_select206_conv_process120_s or i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select206_conv_process120_s)
            1'b0 : i_spec_select206_conv_process120_q = i_llvm_fpga_pop_f32_bias_buff_sroa_22_0_pop48_conv_process119_out_data_out;
            1'b1 : i_spec_select206_conv_process120_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select206_conv_process120_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process48_conv_process163(BLACKBOX,186)@81
    // out out_intel_reserved_ffwd_42_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess48_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process48_conv_process163 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_42_0(i_spec_select206_conv_process120_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg95_q),
        .out_intel_reserved_ffwd_42_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process48_conv_process163_out_intel_reserved_ffwd_42_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_25_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_42_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process48_conv_process163_out_intel_reserved_ffwd_42_0;

    // valid_fanout_reg96(REG,423)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg96_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg96_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg59(REG,386)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg60(REG,387)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124(BLACKBOX,233)@81
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push47_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select207_conv_process123_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_feedback_stall_out_47),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122(BLACKBOX,200)@81
    // out out_feedback_stall_out_47@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop47_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_47(i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_f32_bias_buff_sroa_24_0_push47_conv_process124_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select207_conv_process123(MUX,283)@81
    assign i_spec_select207_conv_process123_s = i_unnamed_conv_process15_q;
    always @(i_spec_select207_conv_process123_s or i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select207_conv_process123_s)
            1'b0 : i_spec_select207_conv_process123_q = i_llvm_fpga_pop_f32_bias_buff_sroa_24_0_pop47_conv_process122_out_data_out;
            1'b1 : i_spec_select207_conv_process123_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select207_conv_process123_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process49_conv_process164(BLACKBOX,187)@81
    // out out_intel_reserved_ffwd_43_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess49_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process49_conv_process164 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_43_0(i_spec_select207_conv_process123_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg96_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process49_conv_process164_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_26_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process49_conv_process164_out_intel_reserved_ffwd_43_0;

    // valid_fanout_reg97(REG,424)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg97_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg97_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg61(REG,388)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg62(REG,389)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg62_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg62_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127(BLACKBOX,234)@81
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push46_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select208_conv_process126_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_feedback_stall_out_46),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg62_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125(BLACKBOX,201)@81
    // out out_feedback_stall_out_46@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop46_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_46(i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_f32_bias_buff_sroa_26_0_push46_conv_process127_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select208_conv_process126(MUX,284)@81
    assign i_spec_select208_conv_process126_s = i_unnamed_conv_process13_q;
    always @(i_spec_select208_conv_process126_s or i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select208_conv_process126_s)
            1'b0 : i_spec_select208_conv_process126_q = i_llvm_fpga_pop_f32_bias_buff_sroa_26_0_pop46_conv_process125_out_data_out;
            1'b1 : i_spec_select208_conv_process126_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select208_conv_process126_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process50_conv_process165(BLACKBOX,188)@81
    // out out_intel_reserved_ffwd_44_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess50_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process50_conv_process165 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_44_0(i_spec_select208_conv_process126_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg97_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process50_conv_process165_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_27_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process50_conv_process165_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg98(REG,425)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg98_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg98_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg63(REG,390)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg63_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg63_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg64(REG,391)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg64_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg64_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130(BLACKBOX,235)@81
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push45_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select209_conv_process129_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_feedback_stall_out_45),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg64_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128(BLACKBOX,202)@81
    // out out_feedback_stall_out_45@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop45_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_45(i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_f32_bias_buff_sroa_28_0_push45_conv_process130_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg63_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select209_conv_process129(MUX,285)@81
    assign i_spec_select209_conv_process129_s = i_unnamed_conv_process11_q;
    always @(i_spec_select209_conv_process129_s or i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select209_conv_process129_s)
            1'b0 : i_spec_select209_conv_process129_q = i_llvm_fpga_pop_f32_bias_buff_sroa_28_0_pop45_conv_process128_out_data_out;
            1'b1 : i_spec_select209_conv_process129_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select209_conv_process129_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process51_conv_process166(BLACKBOX,189)@81
    // out out_intel_reserved_ffwd_45_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess51_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process51_conv_process166 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_45_0(i_spec_select209_conv_process129_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg98_q),
        .out_intel_reserved_ffwd_45_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process51_conv_process166_out_intel_reserved_ffwd_45_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_28_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_45_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process51_conv_process166_out_intel_reserved_ffwd_45_0;

    // valid_fanout_reg99(REG,426)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg99_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg99_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg65(REG,392)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg65_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg65_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg66(REG,393)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg66_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg66_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133(BLACKBOX,236)@81
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push44_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select210_conv_process132_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg66_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131(BLACKBOX,203)@81
    // out out_feedback_stall_out_44@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop44_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_44(i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_f32_bias_buff_sroa_30_0_push44_conv_process133_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg65_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select210_conv_process132(MUX,286)@81
    assign i_spec_select210_conv_process132_s = i_unnamed_conv_process9_q;
    always @(i_spec_select210_conv_process132_s or i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select210_conv_process132_s)
            1'b0 : i_spec_select210_conv_process132_q = i_llvm_fpga_pop_f32_bias_buff_sroa_30_0_pop44_conv_process131_out_data_out;
            1'b1 : i_spec_select210_conv_process132_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select210_conv_process132_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process52_conv_process167(BLACKBOX,190)@81
    // out out_intel_reserved_ffwd_46_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess52_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process52_conv_process167 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_46_0(i_spec_select210_conv_process132_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg99_q),
        .out_intel_reserved_ffwd_46_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process52_conv_process167_out_intel_reserved_ffwd_46_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_29_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_46_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process52_conv_process167_out_intel_reserved_ffwd_46_0;

    // valid_fanout_reg100(REG,427)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg100_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg100_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg67(REG,394)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg67_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg67_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg68(REG,395)@80 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg68_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg68_q <= $unsigned(redist28_sync_together355_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136(BLACKBOX,237)@81
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    cnn_top_i_llvm_fpga_push_f32_bias_buff_s0000push43_conv_process0 thei_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136 (
        .in_c1_ene3(redist23_sync_together355_aunroll_x_in_c1_eni5_3_tpl_2_q),
        .in_data_in(i_spec_select211_conv_process135_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg68_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134(BLACKBOX,204)@81
    // out out_feedback_stall_out_43@20000000
    cnn_top_i_llvm_fpga_pop_f32_bias_buff_sr0000_pop43_conv_process0 thei_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist20_sync_together355_aunroll_x_in_c1_eni5_2_tpl_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_f32_bias_buff_sroa_32_0_push43_conv_process136_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg67_q),
        .out_data_out(i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select211_conv_process135(MUX,287)@81
    assign i_spec_select211_conv_process135_s = i_unnamed_conv_process7_q;
    always @(i_spec_select211_conv_process135_s or i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_data_out or redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q)
    begin
        unique case (i_spec_select211_conv_process135_s)
            1'b0 : i_spec_select211_conv_process135_q = i_llvm_fpga_pop_f32_bias_buff_sroa_32_0_pop43_conv_process134_out_data_out;
            1'b1 : i_spec_select211_conv_process135_q = redist25_sync_together355_aunroll_x_in_c1_eni5_4_tpl_2_q;
            default : i_spec_select211_conv_process135_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process53_conv_process168(BLACKBOX,191)@81
    // out out_intel_reserved_ffwd_47_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess53_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process53_conv_process168 (
        .in_predicate_in(redist26_sync_together355_aunroll_x_in_c1_eni5_5_tpl_2_q),
        .in_src_data_in_47_0(i_spec_select211_conv_process135_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg100_q),
        .out_intel_reserved_ffwd_47_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process53_conv_process168_out_intel_reserved_ffwd_47_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_30_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_47_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process53_conv_process168_out_intel_reserved_ffwd_47_0;

    // valid_fanout_reg0(REG,327)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,50)@94
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;
    assign out_unnamed_conv_process54_0_tpl = GND_q;

    // valid_fanout_reg69(REG,396)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg69_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg69_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg4(REG,331)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // valid_fanout_reg5(REG,332)@93 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist30_sync_together355_aunroll_x_in_i_valid_14_q);
        end
    end

    // i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41(BLACKBOX,241)@94
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    cnn_top_i_llvm_fpga_push_f32_weight_scal0000push40_conv_process0 thei_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41 (
        .in_c1_ene3(redist24_sync_together355_aunroll_x_in_c1_eni5_3_tpl_15_q),
        .in_data_in(i_spec_select_conv_process40_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39(BLACKBOX,208)@94
    // out out_feedback_stall_out_40@20000000
    cnn_top_i_llvm_fpga_pop_f32_weight_scale0000_pop40_conv_process0 thei_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39 (
        .in_data_in(c_float_undef286_q),
        .in_dir(redist21_sync_together355_aunroll_x_in_c1_eni5_2_tpl_15_q),
        .in_feedback_in_40(i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_f32_weight_scale_buff_sroa_0_0_push40_conv_process41_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_unnamed_conv_process37_q_14(DELAY,431)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_i_unnamed_conv_process37_q_14 ( .xin(i_unnamed_conv_process37_q), .xout(redist2_i_unnamed_conv_process37_q_14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select_conv_process40(MUX,288)@94
    assign i_spec_select_conv_process40_s = redist2_i_unnamed_conv_process37_q_14_q;
    always @(i_spec_select_conv_process40_s or i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_data_out or redist17_i_div_conv_process5_out_primWireOut_1_q)
    begin
        unique case (i_spec_select_conv_process40_s)
            1'b0 : i_spec_select_conv_process40_q = i_llvm_fpga_pop_f32_weight_scale_buff_sroa_0_0_pop40_conv_process39_out_data_out;
            1'b1 : i_spec_select_conv_process40_q = redist17_i_div_conv_process5_out_primWireOut_1_q;
            default : i_spec_select_conv_process40_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_conv_process22_conv_process137(BLACKBOX,160)@94
    // out out_intel_reserved_ffwd_16_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unna0000cess22_conv_process0 thei_llvm_fpga_ffwd_source_f32_unnamed_conv_process22_conv_process137 (
        .in_predicate_in(redist27_sync_together355_aunroll_x_in_c1_eni5_5_tpl_15_q),
        .in_src_data_in_16_0(i_spec_select_conv_process40_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg69_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_f32_unnamed_conv_process22_conv_process137_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,325)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_f32_unnamed_conv_process22_conv_process137_out_intel_reserved_ffwd_16_0;

endmodule
