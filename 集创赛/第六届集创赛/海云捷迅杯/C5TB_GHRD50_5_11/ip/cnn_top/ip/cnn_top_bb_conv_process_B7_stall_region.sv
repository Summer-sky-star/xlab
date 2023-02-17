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

// SystemVerilog created from cnn_top_bb_conv_process_B7_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B7_stall_region (
    input wire [0:0] in_iowr_bl_weight_ctrl0_0_i_fifoready,
    output wire [15:0] out_iowr_bl_weight_ctrl0_0_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl0_0_o_fifovalid,
    output wire [0:0] out_intel_reserved_ffwd_53_0,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_input_ctrl1_0_i_fifoready,
    output wire [15:0] out_iowr_bl_input_ctrl1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl1_0_o_fifovalid,
    output wire [0:0] out_intel_reserved_ffwd_54_0,
    input wire [0:0] in_iowr_bl_weight_ctrl1_0_i_fifoready,
    output wire [15:0] out_iowr_bl_weight_ctrl1_0_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl1_0_o_fifovalid,
    output wire [0:0] out_intel_reserved_ffwd_55_0,
    output wire [0:0] out_intel_reserved_ffwd_56_0,
    output wire [32:0] out_intel_reserved_ffwd_57_0,
    output wire [32:0] out_intel_reserved_ffwd_58_0,
    input wire [0:0] in_iowr_bl_input_ctrl0_0_i_fifoready,
    output wire [15:0] out_iowr_bl_input_ctrl0_0_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl0_0_o_fifovalid,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    output wire [0:0] out_intel_reserved_ffwd_52_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_unnamed_conv_process23_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv_process25_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv_process31_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv_process33_sel_x_b;
    wire [31:0] c_i32_045_recast_x_q;
    wire [31:0] c_i32_147_recast_x_q;
    wire [15:0] i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifodata;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifovalid;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifodata;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifodata;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifovalid;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifodata;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifovalid;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_valid;
    wire [32:0] i_unnamed_conv_process24_sel_x_b;
    wire [32:0] i_unnamed_conv_process32_sel_x_b;
    wire [31:0] c_i32_148_q;
    wire [32:0] c_i33_149_q;
    wire [7:0] c_i8_043_q;
    wire [7:0] c_i8_142_q;
    wire [33:0] i_cmp12_i482_conv_process12_a;
    wire [33:0] i_cmp12_i482_conv_process12_b;
    logic [33:0] i_cmp12_i482_conv_process12_o;
    wire [0:0] i_cmp12_i482_conv_process12_c;
    wire [33:0] i_cmp24489_conv_process6_a;
    wire [33:0] i_cmp24489_conv_process6_b;
    logic [33:0] i_cmp24489_conv_process6_o;
    wire [0:0] i_cmp24489_conv_process6_c;
    wire [0:0] i_cmp24489_phi_decision96_xor_conv_process14_q;
    wire [33:0] i_cmp3_i486_conv_process9_a;
    wire [33:0] i_cmp3_i486_conv_process9_b;
    logic [33:0] i_cmp3_i486_conv_process9_o;
    wire [0:0] i_cmp3_i486_conv_process9_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_intel_reserved_ffwd_52_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_intel_reserved_ffwd_53_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_intel_reserved_ffwd_57_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_valid_out;
    wire [0:0] i_phi_decision143_xor_conv_process17_q;
    wire [0:0] i_smax20_conv_process22_s;
    reg [31:0] i_smax20_conv_process22_q;
    wire [0:0] i_smax24_conv_process30_s;
    reg [31:0] i_smax24_conv_process30_q;
    wire [0:0] i_unnamed_conv_process15_q;
    wire [0:0] i_unnamed_conv_process16_q;
    wire [33:0] i_unnamed_conv_process19_a;
    wire [33:0] i_unnamed_conv_process19_b;
    logic [33:0] i_unnamed_conv_process19_o;
    wire [0:0] i_unnamed_conv_process19_c;
    wire [32:0] i_unnamed_conv_process23_a;
    wire [32:0] i_unnamed_conv_process23_b;
    logic [32:0] i_unnamed_conv_process23_o;
    wire [32:0] i_unnamed_conv_process23_q;
    wire [32:0] i_unnamed_conv_process24_vt_join_q;
    wire [31:0] i_unnamed_conv_process24_vt_select_31_b;
    wire [33:0] i_unnamed_conv_process25_a;
    wire [33:0] i_unnamed_conv_process25_b;
    logic [33:0] i_unnamed_conv_process25_o;
    wire [33:0] i_unnamed_conv_process25_q;
    wire [33:0] i_unnamed_conv_process27_a;
    wire [33:0] i_unnamed_conv_process27_b;
    logic [33:0] i_unnamed_conv_process27_o;
    wire [0:0] i_unnamed_conv_process27_c;
    wire [32:0] i_unnamed_conv_process31_a;
    wire [32:0] i_unnamed_conv_process31_b;
    logic [32:0] i_unnamed_conv_process31_o;
    wire [32:0] i_unnamed_conv_process31_q;
    wire [32:0] i_unnamed_conv_process32_vt_join_q;
    wire [31:0] i_unnamed_conv_process32_vt_select_31_b;
    wire [33:0] i_unnamed_conv_process33_a;
    wire [33:0] i_unnamed_conv_process33_b;
    logic [33:0] i_unnamed_conv_process33_o;
    wire [33:0] i_unnamed_conv_process33_q;
    reg [31:0] redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_q;
    reg [0:0] redist1_i_cmp3_i486_conv_process9_c_2_0_q;
    reg [0:0] redist2_i_cmp24489_conv_process6_c_2_0_q;
    reg [0:0] redist3_i_cmp12_i482_conv_process12_c_2_0_q;
    reg [31:0] redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_b;
    reg [0:0] SE_i_cmp12_i482_conv_process12_R_v_0;
    wire [0:0] SE_i_cmp12_i482_conv_process12_v_s_0;
    wire [0:0] SE_i_cmp12_i482_conv_process12_s_tv_0;
    wire [0:0] SE_i_cmp12_i482_conv_process12_backEN;
    wire [0:0] SE_i_cmp12_i482_conv_process12_backStall;
    wire [0:0] SE_i_cmp12_i482_conv_process12_V0;
    reg [0:0] SE_i_cmp24489_conv_process6_R_v_0;
    wire [0:0] SE_i_cmp24489_conv_process6_v_s_0;
    wire [0:0] SE_i_cmp24489_conv_process6_s_tv_0;
    wire [0:0] SE_i_cmp24489_conv_process6_backEN;
    wire [0:0] SE_i_cmp24489_conv_process6_and0;
    wire [0:0] SE_i_cmp24489_conv_process6_backStall;
    wire [0:0] SE_i_cmp24489_conv_process6_V0;
    reg [0:0] SE_i_cmp3_i486_conv_process9_R_v_0;
    wire [0:0] SE_i_cmp3_i486_conv_process9_v_s_0;
    wire [0:0] SE_i_cmp3_i486_conv_process9_s_tv_0;
    wire [0:0] SE_i_cmp3_i486_conv_process9_backEN;
    wire [0:0] SE_i_cmp3_i486_conv_process9_backStall;
    wire [0:0] SE_i_cmp3_i486_conv_process9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and9;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_V0;
    wire [0:0] SE_i_unnamed_conv_process15_wireValid;
    wire [0:0] SE_i_unnamed_conv_process15_wireStall;
    wire [0:0] SE_i_unnamed_conv_process15_StallValid;
    wire [0:0] SE_i_unnamed_conv_process15_toReg0;
    reg [0:0] SE_i_unnamed_conv_process15_fromReg0;
    wire [0:0] SE_i_unnamed_conv_process15_consumed0;
    wire [0:0] SE_i_unnamed_conv_process15_toReg1;
    reg [0:0] SE_i_unnamed_conv_process15_fromReg1;
    wire [0:0] SE_i_unnamed_conv_process15_consumed1;
    wire [0:0] SE_i_unnamed_conv_process15_and0;
    wire [0:0] SE_i_unnamed_conv_process15_or0;
    wire [0:0] SE_i_unnamed_conv_process15_backStall;
    wire [0:0] SE_i_unnamed_conv_process15_V0;
    wire [0:0] SE_i_unnamed_conv_process15_V1;
    wire [0:0] SE_i_unnamed_conv_process16_wireValid;
    wire [0:0] SE_i_unnamed_conv_process16_wireStall;
    wire [0:0] SE_i_unnamed_conv_process16_StallValid;
    wire [0:0] SE_i_unnamed_conv_process16_toReg0;
    reg [0:0] SE_i_unnamed_conv_process16_fromReg0;
    wire [0:0] SE_i_unnamed_conv_process16_consumed0;
    wire [0:0] SE_i_unnamed_conv_process16_toReg1;
    reg [0:0] SE_i_unnamed_conv_process16_fromReg1;
    wire [0:0] SE_i_unnamed_conv_process16_consumed1;
    wire [0:0] SE_i_unnamed_conv_process16_or0;
    wire [0:0] SE_i_unnamed_conv_process16_backStall;
    wire [0:0] SE_i_unnamed_conv_process16_V0;
    wire [0:0] SE_i_unnamed_conv_process16_V1;
    reg [0:0] SE_i_unnamed_conv_process19_R_v_0;
    wire [0:0] SE_i_unnamed_conv_process19_v_s_0;
    wire [0:0] SE_i_unnamed_conv_process19_s_tv_0;
    wire [0:0] SE_i_unnamed_conv_process19_backEN;
    wire [0:0] SE_i_unnamed_conv_process19_backStall;
    wire [0:0] SE_i_unnamed_conv_process19_V0;
    reg [0:0] SE_i_unnamed_conv_process27_R_v_0;
    wire [0:0] SE_i_unnamed_conv_process27_v_s_0;
    wire [0:0] SE_i_unnamed_conv_process27_s_tv_0;
    wire [0:0] SE_i_unnamed_conv_process27_backEN;
    wire [0:0] SE_i_unnamed_conv_process27_backStall;
    wire [0:0] SE_i_unnamed_conv_process27_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_toReg10;
    reg [0:0] SE_stall_entry_fromReg10;
    wire [0:0] SE_stall_entry_consumed10;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_or9;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_stall_entry_V10;
    reg [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0;
    wire [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_v_s_0;
    wire [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_s_tv_0;
    wire [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backEN;
    wire [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backStall;
    wire [0:0] SE_redist1_i_cmp3_i486_conv_process9_c_2_0_V0;
    reg [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0;
    reg [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1;
    reg [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_0;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_1;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_2;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_or0;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_or1;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_backStall;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_V0;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_V1;
    wire [0:0] SE_redist2_i_cmp24489_conv_process6_c_2_0_V2;
    reg [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0;
    wire [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_v_s_0;
    wire [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_s_tv_0;
    wire [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backEN;
    wire [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backStall;
    wire [0:0] SE_redist3_i_cmp12_i482_conv_process12_c_2_0_V0;
    reg [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_9_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_9_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_9_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_10_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_10_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_10_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_11_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_11_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_11_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_12_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_12_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_12_V0;
    reg [0:0] bubble_out_stall_entry_6_reg_R_v_0;
    reg [0:0] bubble_out_stall_entry_6_reg_R_v_1;
    wire [0:0] bubble_out_stall_entry_6_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_6_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_6_reg_s_tv_1;
    wire [0:0] bubble_out_stall_entry_6_reg_backEN;
    wire [0:0] bubble_out_stall_entry_6_reg_or0;
    wire [0:0] bubble_out_stall_entry_6_reg_backStall;
    wire [0:0] bubble_out_stall_entry_6_reg_V0;
    wire [0:0] bubble_out_stall_entry_6_reg_V1;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_in;
    wire bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_in;
    wire bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_valid_out;
    wire bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_9_reg_stall_out;
    wire bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_valid_in;
    wire bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_stall_in;
    wire bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_valid_out;
    wire bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_10_reg_stall_out;
    wire bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_valid_in;
    wire bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_stall_in;
    wire bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_valid_out;
    wire bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_11_reg_stall_out;
    wire bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_valid_in;
    wire bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_stall_in;
    wire bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_valid_out;
    wire bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_12_reg_stall_out;
    wire bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_i_unnamed_conv_process16_i_valid;
    reg [0:0] SR_SE_i_unnamed_conv_process16_r_valid;
    wire [0:0] SR_SE_i_unnamed_conv_process16_and0;
    reg [0:0] SR_SE_i_unnamed_conv_process16_r_data0;
    reg [0:0] SR_SE_i_unnamed_conv_process16_r_data1;
    wire [0:0] SR_SE_i_unnamed_conv_process16_backStall;
    wire [0:0] SR_SE_i_unnamed_conv_process16_V;
    wire [0:0] SR_SE_i_unnamed_conv_process16_D0;
    wire [0:0] SR_SE_i_unnamed_conv_process16_D1;


    // i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x(BLACKBOX,26)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_weight_ctrl1_0_o_fifodata@20000000
    // out out_iowr_bl_weight_ctrl1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_weight_ctrl1_unnamed_c0000cess63_conv_process0 thei_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x (
        .in_i_data_0_tpl(c_i8_043_q),
        .in_i_data_1_tpl(c_i8_043_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_i_valid(SE_out_bubble_out_stall_entry_12_V0),
        .in_iowr_bl_weight_ctrl1_0_i_fifoready(in_iowr_bl_weight_ctrl1_0_i_fifoready),
        .out_iowr_bl_weight_ctrl1_0_o_fifodata(i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifodata),
        .out_iowr_bl_weight_ctrl1_0_o_fifovalid(i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_12(STALLENABLE,346)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_12_V0 = SE_out_bubble_out_stall_entry_12_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_12_backStall = i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_stall_entry_12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_12_wireValid = bubble_out_stall_entry_12_reg_valid_out;

    // bubble_out_stall_entry_12_reg(STALLFIFO,352)
    assign bubble_out_stall_entry_12_reg_valid_in = SE_stall_entry_V10;
    assign bubble_out_stall_entry_12_reg_stall_in = SE_out_bubble_out_stall_entry_12_backStall;
    assign bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_12_reg_valid_in[0];
    assign bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_12_reg_stall_in[0];
    assign bubble_out_stall_entry_12_reg_valid_out[0] = bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_12_reg_stall_out[0] = bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_12_reg (
        .valid_in(bubble_out_stall_entry_12_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_12_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_12_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_12_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x(BLACKBOX,24)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_input_ctrl1_0_o_fifodata@20000000
    // out out_iowr_bl_input_ctrl1_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_input_ctrl1_unnamed_co0000cess62_conv_process0 thei_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x (
        .in_i_data_0_tpl(c_i8_043_q),
        .in_i_data_1_tpl(c_i8_043_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_i_valid(SE_out_bubble_out_stall_entry_11_V0),
        .in_iowr_bl_input_ctrl1_0_i_fifoready(in_iowr_bl_input_ctrl1_0_i_fifoready),
        .out_iowr_bl_input_ctrl1_0_o_fifodata(i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifodata),
        .out_iowr_bl_input_ctrl1_0_o_fifovalid(i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_11(STALLENABLE,344)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_11_V0 = SE_out_bubble_out_stall_entry_11_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_11_backStall = i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_stall_entry_11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_11_wireValid = bubble_out_stall_entry_11_reg_valid_out;

    // bubble_out_stall_entry_11_reg(STALLFIFO,351)
    assign bubble_out_stall_entry_11_reg_valid_in = SE_stall_entry_V9;
    assign bubble_out_stall_entry_11_reg_stall_in = SE_out_bubble_out_stall_entry_11_backStall;
    assign bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_11_reg_valid_in[0];
    assign bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_11_reg_stall_in[0];
    assign bubble_out_stall_entry_11_reg_valid_out[0] = bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_11_reg_stall_out[0] = bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_11_reg (
        .valid_in(bubble_out_stall_entry_11_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_11_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_11_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_11_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x(BLACKBOX,23)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_input_ctrl0_0_o_fifodata@20000000
    // out out_iowr_bl_input_ctrl0_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_input_ctrl0_unnamed_co0000cess60_conv_process0 thei_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x (
        .in_i_data_0_tpl(c_i8_142_q),
        .in_i_data_1_tpl(c_i8_043_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_i_valid(SE_out_bubble_out_stall_entry_9_V0),
        .in_iowr_bl_input_ctrl0_0_i_fifoready(in_iowr_bl_input_ctrl0_0_i_fifoready),
        .out_iowr_bl_input_ctrl0_0_o_fifodata(i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifodata),
        .out_iowr_bl_input_ctrl0_0_o_fifovalid(i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_9(STALLENABLE,340)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_9_V0 = SE_out_bubble_out_stall_entry_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_9_backStall = i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_stall_entry_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_9_wireValid = bubble_out_stall_entry_9_reg_valid_out;

    // bubble_out_stall_entry_9_reg(STALLFIFO,349)
    assign bubble_out_stall_entry_9_reg_valid_in = SE_stall_entry_V7;
    assign bubble_out_stall_entry_9_reg_stall_in = SE_out_bubble_out_stall_entry_9_backStall;
    assign bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_9_reg_valid_in[0];
    assign bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_9_reg_stall_in[0];
    assign bubble_out_stall_entry_9_reg_valid_out[0] = bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_9_reg_stall_out[0] = bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_9_reg (
        .valid_in(bubble_out_stall_entry_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_149(CONSTANT,37)
    assign c_i33_149_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_148(CONSTANT,36)
    assign c_i32_148_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29(BITJOIN,163)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_q = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29(BITSELECT,164)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_q[31:0]);

    // c_i32_147_recast_x(CONSTANT,7)
    assign c_i32_147_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26(BITJOIN,166)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_q = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26(BITSELECT,167)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_q[31:0]);

    // i_unnamed_conv_process27(COMPARE,75)@1 + 1
    assign i_unnamed_conv_process27_a = $unsigned({{2{c_i32_147_recast_x_q[31]}}, c_i32_147_recast_x_q});
    assign i_unnamed_conv_process27_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process27_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv_process27_backEN == 1'b1)
        begin
            i_unnamed_conv_process27_o <= $unsigned($signed(i_unnamed_conv_process27_a) - $signed(i_unnamed_conv_process27_b));
        end
    end
    assign i_unnamed_conv_process27_c[0] = i_unnamed_conv_process27_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax24_conv_process30(MUX,65)@2
    assign i_smax24_conv_process30_s = i_unnamed_conv_process27_c;
    always @(i_smax24_conv_process30_s or c_i32_147_recast_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_b)
    begin
        unique case (i_smax24_conv_process30_s)
            1'b0 : i_smax24_conv_process30_q = c_i32_147_recast_x_q;
            1'b1 : i_smax24_conv_process30_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_b;
            default : i_smax24_conv_process30_q = 32'b0;
        endcase
    end

    // i_unnamed_conv_process31(ADD,76)@2
    assign i_unnamed_conv_process31_a = {1'b0, i_smax24_conv_process30_q};
    assign i_unnamed_conv_process31_b = {1'b0, c_i32_148_q};
    assign i_unnamed_conv_process31_o = $unsigned(i_unnamed_conv_process31_a) + $unsigned(i_unnamed_conv_process31_b);
    assign i_unnamed_conv_process31_q = i_unnamed_conv_process31_o[32:0];

    // bgTrunc_i_unnamed_conv_process31_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_unnamed_conv_process31_sel_x_b = i_unnamed_conv_process31_q[31:0];

    // i_unnamed_conv_process32_sel_x(BITSELECT,28)@2
    assign i_unnamed_conv_process32_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv_process31_sel_x_b[31:0]};

    // i_unnamed_conv_process32_vt_select_31(BITSELECT,80)@2
    assign i_unnamed_conv_process32_vt_select_31_b = i_unnamed_conv_process32_sel_x_b[31:0];

    // redist0_i_unnamed_conv_process32_vt_select_31_b_1_0(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_conv_process32_vt_select_31_b);
        end
    end

    // i_unnamed_conv_process32_vt_join(BITJOIN,79)@3
    assign i_unnamed_conv_process32_vt_join_q = {GND_q, redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_q};

    // i_unnamed_conv_process33(ADD,81)@3
    assign i_unnamed_conv_process33_a = {1'b0, i_unnamed_conv_process32_vt_join_q};
    assign i_unnamed_conv_process33_b = {1'b0, c_i33_149_q};
    assign i_unnamed_conv_process33_o = $unsigned(i_unnamed_conv_process33_a) + $unsigned(i_unnamed_conv_process33_b);
    assign i_unnamed_conv_process33_q = i_unnamed_conv_process33_o[33:0];

    // bgTrunc_i_unnamed_conv_process33_sel_x(BITSELECT,5)@3
    assign bgTrunc_i_unnamed_conv_process33_sel_x_b = i_unnamed_conv_process33_q[32:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40(BLACKBOX,62)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000cess70_conv_process0 thei_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_58_0(bgTrunc_i_unnamed_conv_process33_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_V0),
        .out_intel_reserved_ffwd_58_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_intel_reserved_ffwd_58_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0(STALLENABLE,264)
    // Valid signal propagation
    assign SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_V0 = SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_stall_out & SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_V0;
    // Backward Stall generation
    assign SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26(STALLENABLE,224)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_backStall = SE_i_unnamed_conv_process27_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_wireValid = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_valid_out;

    // SE_i_unnamed_conv_process27(STALLENABLE,257)
    // Valid signal propagation
    assign SE_i_unnamed_conv_process27_V0 = SE_i_unnamed_conv_process27_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv_process27_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_backStall & SE_i_unnamed_conv_process27_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv_process27_backEN = ~ (SE_i_unnamed_conv_process27_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv_process27_v_s_0 = SE_i_unnamed_conv_process27_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv_process27_backStall = ~ (SE_i_unnamed_conv_process27_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv_process27_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv_process27_backEN == 1'b0)
            begin
                SE_i_unnamed_conv_process27_R_v_0 <= SE_i_unnamed_conv_process27_R_v_0 & SE_i_unnamed_conv_process27_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv_process27_R_v_0 <= SE_i_unnamed_conv_process27_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29(STALLENABLE,222)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_backStall = SE_redist0_i_unnamed_conv_process32_vt_select_31_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_and0 = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_wireValid = SE_i_unnamed_conv_process27_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_and0;

    // i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29(BLACKBOX,50)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract69_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_backStall),
        .in_valid_in(bubble_out_stall_entry_6_reg_V1),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21(BITJOIN,172)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_q = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21(BITSELECT,173)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18(BITJOIN,175)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_q = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18(BITSELECT,176)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_q[31:0]);

    // i_unnamed_conv_process19(COMPARE,68)@1 + 1
    assign i_unnamed_conv_process19_a = $unsigned({{2{c_i32_147_recast_x_q[31]}}, c_i32_147_recast_x_q});
    assign i_unnamed_conv_process19_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process19_o <= 34'b0;
        end
        else if (SE_i_unnamed_conv_process19_backEN == 1'b1)
        begin
            i_unnamed_conv_process19_o <= $unsigned($signed(i_unnamed_conv_process19_a) - $signed(i_unnamed_conv_process19_b));
        end
    end
    assign i_unnamed_conv_process19_c[0] = i_unnamed_conv_process19_o[33];

    // i_smax20_conv_process22(MUX,64)@2
    assign i_smax20_conv_process22_s = i_unnamed_conv_process19_c;
    always @(i_smax20_conv_process22_s or c_i32_147_recast_x_q or bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_b)
    begin
        unique case (i_smax20_conv_process22_s)
            1'b0 : i_smax20_conv_process22_q = c_i32_147_recast_x_q;
            1'b1 : i_smax20_conv_process22_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_b;
            default : i_smax20_conv_process22_q = 32'b0;
        endcase
    end

    // i_unnamed_conv_process23(ADD,69)@2
    assign i_unnamed_conv_process23_a = {1'b0, i_smax20_conv_process22_q};
    assign i_unnamed_conv_process23_b = {1'b0, c_i32_148_q};
    assign i_unnamed_conv_process23_o = $unsigned(i_unnamed_conv_process23_a) + $unsigned(i_unnamed_conv_process23_b);
    assign i_unnamed_conv_process23_q = i_unnamed_conv_process23_o[32:0];

    // bgTrunc_i_unnamed_conv_process23_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_unnamed_conv_process23_sel_x_b = i_unnamed_conv_process23_q[31:0];

    // redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0(REG,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_unnamed_conv_process23_sel_x_b);
        end
    end

    // i_unnamed_conv_process24_sel_x(BITSELECT,27)@3
    assign i_unnamed_conv_process24_sel_x_b = {1'b0, redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_q[31:0]};

    // i_unnamed_conv_process24_vt_select_31(BITSELECT,73)@3
    assign i_unnamed_conv_process24_vt_select_31_b = i_unnamed_conv_process24_sel_x_b[31:0];

    // i_unnamed_conv_process24_vt_join(BITJOIN,72)@3
    assign i_unnamed_conv_process24_vt_join_q = {GND_q, i_unnamed_conv_process24_vt_select_31_b};

    // i_unnamed_conv_process25(ADD,74)@3
    assign i_unnamed_conv_process25_a = {1'b0, i_unnamed_conv_process24_vt_join_q};
    assign i_unnamed_conv_process25_b = {1'b0, c_i33_149_q};
    assign i_unnamed_conv_process25_o = $unsigned(i_unnamed_conv_process25_a) + $unsigned(i_unnamed_conv_process25_b);
    assign i_unnamed_conv_process25_q = i_unnamed_conv_process25_o[33:0];

    // bgTrunc_i_unnamed_conv_process25_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_unnamed_conv_process25_sel_x_b = i_unnamed_conv_process25_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39(BLACKBOX,61)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000cess69_conv_process0 thei_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_57_0(bgTrunc_i_unnamed_conv_process25_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_V0),
        .out_intel_reserved_ffwd_57_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_intel_reserved_ffwd_57_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0(STALLENABLE,268)
    // Valid signal propagation
    assign SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_V0 = SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_stall_out & SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backEN = ~ (SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_v_s_0 = SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_V0;
    // Backward Stall generation
    assign SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backStall = ~ (SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0 & SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_R_v_0 <= SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18(STALLENABLE,230)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_backStall = SE_i_unnamed_conv_process19_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_wireValid = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_valid_out;

    // SE_i_unnamed_conv_process19(STALLENABLE,252)
    // Valid signal propagation
    assign SE_i_unnamed_conv_process19_V0 = SE_i_unnamed_conv_process19_R_v_0;
    // Stall signal propagation
    assign SE_i_unnamed_conv_process19_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_backStall & SE_i_unnamed_conv_process19_R_v_0;
    // Backward Enable generation
    assign SE_i_unnamed_conv_process19_backEN = ~ (SE_i_unnamed_conv_process19_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_conv_process19_v_s_0 = SE_i_unnamed_conv_process19_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_V0;
    // Backward Stall generation
    assign SE_i_unnamed_conv_process19_backStall = ~ (SE_i_unnamed_conv_process19_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv_process19_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_conv_process19_backEN == 1'b0)
            begin
                SE_i_unnamed_conv_process19_R_v_0 <= SE_i_unnamed_conv_process19_R_v_0 & SE_i_unnamed_conv_process19_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_conv_process19_R_v_0 <= SE_i_unnamed_conv_process19_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21(STALLENABLE,228)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_backStall = SE_redist4_bgTrunc_i_unnamed_conv_process23_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_and0 = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_wireValid = SE_i_unnamed_conv_process19_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_and0;

    // i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21(BLACKBOX,53)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract55_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_backStall),
        .in_valid_in(bubble_out_stall_entry_6_reg_V0),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_6_reg(STALLENABLE,347)
    // Valid signal propagation
    assign bubble_out_stall_entry_6_reg_V0 = bubble_out_stall_entry_6_reg_R_v_0;
    assign bubble_out_stall_entry_6_reg_V1 = bubble_out_stall_entry_6_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_stall_entry_6_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract55_conv_process21_out_stall_out & bubble_out_stall_entry_6_reg_R_v_0;
    assign bubble_out_stall_entry_6_reg_s_tv_1 = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract69_conv_process29_out_stall_out & bubble_out_stall_entry_6_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_stall_entry_6_reg_or0 = bubble_out_stall_entry_6_reg_s_tv_0;
    assign bubble_out_stall_entry_6_reg_backEN = ~ (bubble_out_stall_entry_6_reg_s_tv_1 | bubble_out_stall_entry_6_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_6_reg_v_s_0 = bubble_out_stall_entry_6_reg_backEN & SE_stall_entry_V6;
    // Backward Stall generation
    assign bubble_out_stall_entry_6_reg_backStall = ~ (bubble_out_stall_entry_6_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_6_reg_R_v_0 <= 1'b0;
            bubble_out_stall_entry_6_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_6_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_6_reg_R_v_0 <= bubble_out_stall_entry_6_reg_R_v_0 & bubble_out_stall_entry_6_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_6_reg_R_v_0 <= bubble_out_stall_entry_6_reg_v_s_0;
            end

            if (bubble_out_stall_entry_6_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_6_reg_R_v_1 <= bubble_out_stall_entry_6_reg_R_v_1 & bubble_out_stall_entry_6_reg_s_tv_1;
            end
            else
            begin
                bubble_out_stall_entry_6_reg_R_v_1 <= bubble_out_stall_entry_6_reg_v_s_0;
            end

        end
    end

    // i_phi_decision143_xor_conv_process17(LOGICAL,63)@3
    assign i_phi_decision143_xor_conv_process17_q = i_unnamed_conv_process16_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11(BITJOIN,178)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_q = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11(BITSELECT,179)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_q[31:0]);

    // c_i32_045_recast_x(CONSTANT,6)
    assign c_i32_045_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp12_i482_conv_process12(COMPARE,44)@1 + 1
    assign i_cmp12_i482_conv_process12_a = $unsigned({{2{c_i32_045_recast_x_q[31]}}, c_i32_045_recast_x_q});
    assign i_cmp12_i482_conv_process12_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp12_i482_conv_process12_o <= 34'b0;
        end
        else if (SE_i_cmp12_i482_conv_process12_backEN == 1'b1)
        begin
            i_cmp12_i482_conv_process12_o <= $unsigned($signed(i_cmp12_i482_conv_process12_a) - $signed(i_cmp12_i482_conv_process12_b));
        end
    end
    assign i_cmp12_i482_conv_process12_c[0] = i_cmp12_i482_conv_process12_o[33];

    // redist3_i_cmp12_i482_conv_process12_c_2_0(REG,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_cmp12_i482_conv_process12_c_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backEN == 1'b1)
        begin
            redist3_i_cmp12_i482_conv_process12_c_2_0_q <= $unsigned(i_cmp12_i482_conv_process12_c);
        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8(STALLENABLE,226)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_backStall = SE_i_cmp3_i486_conv_process9_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_wireValid = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_valid_out;

    // SE_i_cmp3_i486_conv_process9(STALLENABLE,216)
    // Valid signal propagation
    assign SE_i_cmp3_i486_conv_process9_V0 = SE_i_cmp3_i486_conv_process9_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp3_i486_conv_process9_s_tv_0 = SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backStall & SE_i_cmp3_i486_conv_process9_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp3_i486_conv_process9_backEN = ~ (SE_i_cmp3_i486_conv_process9_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp3_i486_conv_process9_v_s_0 = SE_i_cmp3_i486_conv_process9_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_V0;
    // Backward Stall generation
    assign SE_i_cmp3_i486_conv_process9_backStall = ~ (SE_i_cmp3_i486_conv_process9_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp3_i486_conv_process9_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp3_i486_conv_process9_backEN == 1'b0)
            begin
                SE_i_cmp3_i486_conv_process9_R_v_0 <= SE_i_cmp3_i486_conv_process9_R_v_0 & SE_i_cmp3_i486_conv_process9_s_tv_0;
            end
            else
            begin
                SE_i_cmp3_i486_conv_process9_R_v_0 <= SE_i_cmp3_i486_conv_process9_v_s_0;
            end

        end
    end

    // SE_redist1_i_cmp3_i486_conv_process9_c_2_0(STALLENABLE,265)
    // Valid signal propagation
    assign SE_redist1_i_cmp3_i486_conv_process9_c_2_0_V0 = SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_cmp3_i486_conv_process9_c_2_0_s_tv_0 = SE_i_unnamed_conv_process15_backStall & SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backEN = ~ (SE_redist1_i_cmp3_i486_conv_process9_c_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_cmp3_i486_conv_process9_c_2_0_v_s_0 = SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backEN & SE_i_cmp3_i486_conv_process9_V0;
    // Backward Stall generation
    assign SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backStall = ~ (SE_redist1_i_cmp3_i486_conv_process9_c_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backEN == 1'b0)
            begin
                SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0 <= SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0 & SE_redist1_i_cmp3_i486_conv_process9_c_2_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_cmp3_i486_conv_process9_c_2_0_R_v_0 <= SE_redist1_i_cmp3_i486_conv_process9_c_2_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8(BITJOIN,169)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_q = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8(BITSELECT,170)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_q[31:0]);

    // i_cmp3_i486_conv_process9(COMPARE,47)@1 + 1
    assign i_cmp3_i486_conv_process9_a = $unsigned({{2{c_i32_045_recast_x_q[31]}}, c_i32_045_recast_x_q});
    assign i_cmp3_i486_conv_process9_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i486_conv_process9_o <= 34'b0;
        end
        else if (SE_i_cmp3_i486_conv_process9_backEN == 1'b1)
        begin
            i_cmp3_i486_conv_process9_o <= $unsigned($signed(i_cmp3_i486_conv_process9_a) - $signed(i_cmp3_i486_conv_process9_b));
        end
    end
    assign i_cmp3_i486_conv_process9_c[0] = i_cmp3_i486_conv_process9_o[33];

    // redist1_i_cmp3_i486_conv_process9_c_2_0(REG,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_cmp3_i486_conv_process9_c_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_i_cmp3_i486_conv_process9_c_2_0_backEN == 1'b1)
        begin
            redist1_i_cmp3_i486_conv_process9_c_2_0_q <= $unsigned(i_cmp3_i486_conv_process9_c);
        end
    end

    // i_cmp24489_phi_decision96_xor_conv_process14(LOGICAL,46)@3
    assign i_cmp24489_phi_decision96_xor_conv_process14_q = redist2_i_cmp24489_conv_process6_c_2_0_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35(BLACKBOX,57)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess65_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_53_0(i_cmp24489_phi_decision96_xor_conv_process14_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_redist2_i_cmp24489_conv_process6_c_2_0_V2),
        .out_intel_reserved_ffwd_53_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_intel_reserved_ffwd_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34(BLACKBOX,56)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess64_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_52_0(redist2_i_cmp24489_conv_process6_c_2_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_redist2_i_cmp24489_conv_process6_c_2_0_V1),
        .out_intel_reserved_ffwd_52_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_intel_reserved_ffwd_52_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4(STALLENABLE,220)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_backStall = SE_i_cmp24489_conv_process6_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_wireValid = i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5(STALLENABLE,218)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_backStall = SE_i_cmp24489_conv_process6_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_wireValid = i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_valid_out;

    // SE_i_cmp24489_conv_process6(STALLENABLE,214)
    // Valid signal propagation
    assign SE_i_cmp24489_conv_process6_V0 = SE_i_cmp24489_conv_process6_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp24489_conv_process6_s_tv_0 = SE_redist2_i_cmp24489_conv_process6_c_2_0_backStall & SE_i_cmp24489_conv_process6_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp24489_conv_process6_backEN = ~ (SE_i_cmp24489_conv_process6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp24489_conv_process6_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_V0 & SE_i_cmp24489_conv_process6_backEN;
    assign SE_i_cmp24489_conv_process6_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_V0 & SE_i_cmp24489_conv_process6_and0;
    // Backward Stall generation
    assign SE_i_cmp24489_conv_process6_backStall = ~ (SE_i_cmp24489_conv_process6_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp24489_conv_process6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp24489_conv_process6_backEN == 1'b0)
            begin
                SE_i_cmp24489_conv_process6_R_v_0 <= SE_i_cmp24489_conv_process6_R_v_0 & SE_i_cmp24489_conv_process6_s_tv_0;
            end
            else
            begin
                SE_i_cmp24489_conv_process6_R_v_0 <= SE_i_cmp24489_conv_process6_v_s_0;
            end

        end
    end

    // SE_redist2_i_cmp24489_conv_process6_c_2_0(STALLENABLE,266)
    // Valid signal propagation
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_V0 = SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_V1 = SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_V2 = SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2;
    // Stall signal propagation
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_0 = SE_i_unnamed_conv_process15_backStall & SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_stall_out & SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_2 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_stall_out & SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2;
    // Backward Enable generation
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_or0 = SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_0;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_or1 = SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_1 | SE_redist2_i_cmp24489_conv_process6_c_2_0_or0;
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN = ~ (SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_2 | SE_redist2_i_cmp24489_conv_process6_c_2_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0 = SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN & SE_i_cmp24489_conv_process6_V0;
    // Backward Stall generation
    assign SE_redist2_i_cmp24489_conv_process6_c_2_0_backStall = ~ (SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0 <= 1'b0;
            SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1 <= 1'b0;
            SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN == 1'b0)
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0 & SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_0 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0;
            end

            if (SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN == 1'b0)
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1 & SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_1;
            end
            else
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_1 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0;
            end

            if (SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN == 1'b0)
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2 & SE_redist2_i_cmp24489_conv_process6_c_2_0_s_tv_2;
            end
            else
            begin
                SE_redist2_i_cmp24489_conv_process6_c_2_0_R_v_2 <= SE_redist2_i_cmp24489_conv_process6_c_2_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5(BITJOIN,157)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_q = i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5(BITSELECT,158)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4(BITJOIN,160)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_q = i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4(BITSELECT,161)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_q[31:0]);

    // i_cmp24489_conv_process6(COMPARE,45)@1 + 1
    assign i_cmp24489_conv_process6_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_b});
    assign i_cmp24489_conv_process6_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp24489_conv_process6_o <= 34'b0;
        end
        else if (SE_i_cmp24489_conv_process6_backEN == 1'b1)
        begin
            i_cmp24489_conv_process6_o <= $unsigned($signed(i_cmp24489_conv_process6_a) - $signed(i_cmp24489_conv_process6_b));
        end
    end
    assign i_cmp24489_conv_process6_c[0] = i_cmp24489_conv_process6_o[33];

    // redist2_i_cmp24489_conv_process6_c_2_0(REG,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_cmp24489_conv_process6_c_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_cmp24489_conv_process6_c_2_0_backEN == 1'b1)
        begin
            redist2_i_cmp24489_conv_process6_c_2_0_q <= $unsigned(i_cmp24489_conv_process6_c);
        end
    end

    // i_unnamed_conv_process15(LOGICAL,66)@3
    assign i_unnamed_conv_process15_q = redist2_i_cmp24489_conv_process6_c_2_0_q & redist1_i_cmp3_i486_conv_process9_c_2_0_q;

    // i_unnamed_conv_process16(LOGICAL,67)@3
    assign i_unnamed_conv_process16_q = i_unnamed_conv_process15_q & redist3_i_cmp12_i482_conv_process12_c_2_0_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36(BLACKBOX,58)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess66_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36 (
        .in_predicate_in(GND_q),
        .in_src_data_in_54_0(i_unnamed_conv_process15_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_i_unnamed_conv_process15_V1),
        .out_intel_reserved_ffwd_54_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_intel_reserved_ffwd_54_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_conv_process15(STALLENABLE,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv_process15_fromReg0 <= '0;
            SE_i_unnamed_conv_process15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_conv_process15_fromReg0 <= SE_i_unnamed_conv_process15_toReg0;
            // Successor 1
            SE_i_unnamed_conv_process15_fromReg1 <= SE_i_unnamed_conv_process15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_conv_process15_consumed0 = (~ (SR_SE_i_unnamed_conv_process16_backStall) & SE_i_unnamed_conv_process15_wireValid) | SE_i_unnamed_conv_process15_fromReg0;
    assign SE_i_unnamed_conv_process15_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_stall_out) & SE_i_unnamed_conv_process15_wireValid) | SE_i_unnamed_conv_process15_fromReg1;
    // Consuming
    assign SE_i_unnamed_conv_process15_StallValid = SE_i_unnamed_conv_process15_backStall & SE_i_unnamed_conv_process15_wireValid;
    assign SE_i_unnamed_conv_process15_toReg0 = SE_i_unnamed_conv_process15_StallValid & SE_i_unnamed_conv_process15_consumed0;
    assign SE_i_unnamed_conv_process15_toReg1 = SE_i_unnamed_conv_process15_StallValid & SE_i_unnamed_conv_process15_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_conv_process15_or0 = SE_i_unnamed_conv_process15_consumed0;
    assign SE_i_unnamed_conv_process15_wireStall = ~ (SE_i_unnamed_conv_process15_consumed1 & SE_i_unnamed_conv_process15_or0);
    assign SE_i_unnamed_conv_process15_backStall = SE_i_unnamed_conv_process15_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_conv_process15_V0 = SE_i_unnamed_conv_process15_wireValid & ~ (SE_i_unnamed_conv_process15_fromReg0);
    assign SE_i_unnamed_conv_process15_V1 = SE_i_unnamed_conv_process15_wireValid & ~ (SE_i_unnamed_conv_process15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_conv_process15_and0 = SE_redist1_i_cmp3_i486_conv_process9_c_2_0_V0;
    assign SE_i_unnamed_conv_process15_wireValid = SE_redist2_i_cmp24489_conv_process6_c_2_0_V0 & SE_i_unnamed_conv_process15_and0;

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38(BLACKBOX,60)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess68_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_56_0(SR_SE_i_unnamed_conv_process16_D1),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_i_unnamed_conv_process16_V1),
        .out_intel_reserved_ffwd_56_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_intel_reserved_ffwd_56_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37(BLACKBOX,59)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess67_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_55_0(SR_SE_i_unnamed_conv_process16_D0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_valid_in(SE_i_unnamed_conv_process16_V0),
        .out_intel_reserved_ffwd_55_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_intel_reserved_ffwd_55_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_conv_process16(STALLENABLE,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_conv_process16_fromReg0 <= '0;
            SE_i_unnamed_conv_process16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_conv_process16_fromReg0 <= SE_i_unnamed_conv_process16_toReg0;
            // Successor 1
            SE_i_unnamed_conv_process16_fromReg1 <= SE_i_unnamed_conv_process16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_conv_process16_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_stall_out) & SE_i_unnamed_conv_process16_wireValid) | SE_i_unnamed_conv_process16_fromReg0;
    assign SE_i_unnamed_conv_process16_consumed1 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_stall_out) & SE_i_unnamed_conv_process16_wireValid) | SE_i_unnamed_conv_process16_fromReg1;
    // Consuming
    assign SE_i_unnamed_conv_process16_StallValid = SE_i_unnamed_conv_process16_backStall & SE_i_unnamed_conv_process16_wireValid;
    assign SE_i_unnamed_conv_process16_toReg0 = SE_i_unnamed_conv_process16_StallValid & SE_i_unnamed_conv_process16_consumed0;
    assign SE_i_unnamed_conv_process16_toReg1 = SE_i_unnamed_conv_process16_StallValid & SE_i_unnamed_conv_process16_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_conv_process16_or0 = SE_i_unnamed_conv_process16_consumed0;
    assign SE_i_unnamed_conv_process16_wireStall = ~ (SE_i_unnamed_conv_process16_consumed1 & SE_i_unnamed_conv_process16_or0);
    assign SE_i_unnamed_conv_process16_backStall = SE_i_unnamed_conv_process16_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_conv_process16_V0 = SE_i_unnamed_conv_process16_wireValid & ~ (SE_i_unnamed_conv_process16_fromReg0);
    assign SE_i_unnamed_conv_process16_V1 = SE_i_unnamed_conv_process16_wireValid & ~ (SE_i_unnamed_conv_process16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_conv_process16_wireValid = SR_SE_i_unnamed_conv_process16_V;

    // SR_SE_i_unnamed_conv_process16(STALLREG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_unnamed_conv_process16_r_valid <= 1'b0;
            SR_SE_i_unnamed_conv_process16_r_data0 <= 1'bx;
            SR_SE_i_unnamed_conv_process16_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_unnamed_conv_process16_r_valid <= SE_i_unnamed_conv_process16_backStall & (SR_SE_i_unnamed_conv_process16_r_valid | SR_SE_i_unnamed_conv_process16_i_valid);

            if (SR_SE_i_unnamed_conv_process16_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_unnamed_conv_process16_r_data0 <= i_unnamed_conv_process16_q;
                SR_SE_i_unnamed_conv_process16_r_data1 <= i_phi_decision143_xor_conv_process17_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_unnamed_conv_process16_and0 = SE_i_unnamed_conv_process15_V0;
    assign SR_SE_i_unnamed_conv_process16_i_valid = SE_redist3_i_cmp12_i482_conv_process12_c_2_0_V0 & SR_SE_i_unnamed_conv_process16_and0;
    // Stall signal propagation
    assign SR_SE_i_unnamed_conv_process16_backStall = SR_SE_i_unnamed_conv_process16_r_valid | ~ (SR_SE_i_unnamed_conv_process16_i_valid);

    // Valid
    assign SR_SE_i_unnamed_conv_process16_V = SR_SE_i_unnamed_conv_process16_r_valid == 1'b1 ? SR_SE_i_unnamed_conv_process16_r_valid : SR_SE_i_unnamed_conv_process16_i_valid;

    // Data0
    assign SR_SE_i_unnamed_conv_process16_D0 = SR_SE_i_unnamed_conv_process16_r_valid == 1'b1 ? SR_SE_i_unnamed_conv_process16_r_data0 : i_unnamed_conv_process16_q;
    // Data1
    assign SR_SE_i_unnamed_conv_process16_D1 = SR_SE_i_unnamed_conv_process16_r_valid == 1'b1 ? SR_SE_i_unnamed_conv_process16_r_data1 : i_phi_decision143_xor_conv_process17_q;

    // SE_redist3_i_cmp12_i482_conv_process12_c_2_0(STALLENABLE,267)
    // Valid signal propagation
    assign SE_redist3_i_cmp12_i482_conv_process12_c_2_0_V0 = SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_cmp12_i482_conv_process12_c_2_0_s_tv_0 = SR_SE_i_unnamed_conv_process16_backStall & SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backEN = ~ (SE_redist3_i_cmp12_i482_conv_process12_c_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_cmp12_i482_conv_process12_c_2_0_v_s_0 = SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backEN & SE_i_cmp12_i482_conv_process12_V0;
    // Backward Stall generation
    assign SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backStall = ~ (SE_redist3_i_cmp12_i482_conv_process12_c_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backEN == 1'b0)
            begin
                SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0 <= SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0 & SE_redist3_i_cmp12_i482_conv_process12_c_2_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_cmp12_i482_conv_process12_c_2_0_R_v_0 <= SE_redist3_i_cmp12_i482_conv_process12_c_2_0_v_s_0;
            end

        end
    end

    // SE_i_cmp12_i482_conv_process12(STALLENABLE,213)
    // Valid signal propagation
    assign SE_i_cmp12_i482_conv_process12_V0 = SE_i_cmp12_i482_conv_process12_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp12_i482_conv_process12_s_tv_0 = SE_redist3_i_cmp12_i482_conv_process12_c_2_0_backStall & SE_i_cmp12_i482_conv_process12_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp12_i482_conv_process12_backEN = ~ (SE_i_cmp12_i482_conv_process12_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp12_i482_conv_process12_v_s_0 = SE_i_cmp12_i482_conv_process12_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_V0;
    // Backward Stall generation
    assign SE_i_cmp12_i482_conv_process12_backStall = ~ (SE_i_cmp12_i482_conv_process12_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp12_i482_conv_process12_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp12_i482_conv_process12_backEN == 1'b0)
            begin
                SE_i_cmp12_i482_conv_process12_R_v_0 <= SE_i_cmp12_i482_conv_process12_R_v_0 & SE_i_cmp12_i482_conv_process12_s_tv_0;
            end
            else
            begin
                SE_i_cmp12_i482_conv_process12_R_v_0 <= SE_i_cmp12_i482_conv_process12_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11(STALLENABLE,232)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_backStall = SE_i_cmp12_i482_conv_process12_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_wireValid = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11(BLACKBOX,55)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract57_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18(BLACKBOX,54)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract56_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8(BLACKBOX,52)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract71_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26(BLACKBOX,51)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract70_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4(BLACKBOX,49)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channe0000t88150_conv_process0 thei_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5(BLACKBOX,48)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process0 thei_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
            SE_stall_entry_fromReg10 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
            // Successor 10
            SE_stall_entry_fromReg10 <= SE_stall_entry_toReg10;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_num88252_conv_process5_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_start88150_conv_process4_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract70_conv_process26_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract71_conv_process8_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract56_conv_process18_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract57_conv_process11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (bubble_out_stall_entry_6_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (bubble_out_stall_entry_9_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (bubble_out_stall_entry_10_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (bubble_out_stall_entry_11_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    assign SE_stall_entry_consumed10 = (~ (bubble_out_stall_entry_12_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg10;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    assign SE_stall_entry_toReg10 = SE_stall_entry_StallValid & SE_stall_entry_consumed10;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_or9 = SE_stall_entry_consumed9 & SE_stall_entry_or8;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed10 & SE_stall_entry_or9);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    assign SE_stall_entry_V10 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg10);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_out_stall_entry_10_reg(STALLFIFO,350)
    assign bubble_out_stall_entry_10_reg_valid_in = SE_stall_entry_V8;
    assign bubble_out_stall_entry_10_reg_stall_in = SE_out_bubble_out_stall_entry_10_backStall;
    assign bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_10_reg_valid_in[0];
    assign bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_10_reg_stall_in[0];
    assign bubble_out_stall_entry_10_reg_valid_out[0] = bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_10_reg_stall_out[0] = bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_10_reg (
        .valid_in(bubble_out_stall_entry_10_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_10_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_10_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_10_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_stall_entry_10(STALLENABLE,342)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_10_V0 = SE_out_bubble_out_stall_entry_10_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_10_backStall = i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_bubble_out_stall_entry_10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_10_wireValid = bubble_out_stall_entry_10_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40(STALLENABLE,246)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and1 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and3 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and4 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and5 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and6 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and7 = i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and8 = i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and7;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and9 = i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and8;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_wireValid = i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_and9;

    // c_i8_043(CONSTANT,38)
    assign c_i8_043_q = $unsigned(8'b00000000);

    // c_i8_142(CONSTANT,39)
    assign c_i8_142_q = $unsigned(8'b00000001);

    // i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x(BLACKBOX,25)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_weight_ctrl0_0_o_fifodata@20000000
    // out out_iowr_bl_weight_ctrl0_0_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_weight_ctrl0_unnamed_c0000cess61_conv_process0 thei_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x (
        .in_i_data_0_tpl(c_i8_142_q),
        .in_i_data_1_tpl(c_i8_043_q),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_backStall),
        .in_i_valid(SE_out_bubble_out_stall_entry_10_V0),
        .in_iowr_bl_weight_ctrl0_0_i_fifoready(in_iowr_bl_weight_ctrl0_0_i_fifoready),
        .out_iowr_bl_weight_ctrl0_0_o_fifodata(i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifodata),
        .out_iowr_bl_weight_ctrl0_0_o_fifovalid(i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,11)
    assign out_iowr_bl_weight_ctrl0_0_o_fifodata = i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifodata;
    assign out_iowr_bl_weight_ctrl0_0_o_fifovalid = i_iowr_bl_weight_ctrl0_unnamed_conv_process61_conv_process1_aunroll_x_out_iowr_bl_weight_ctrl0_0_o_fifovalid;

    // dupName_0_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_53_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process65_conv_process35_out_intel_reserved_ffwd_53_0;

    // dupName_0_sync_out_x(GPOUT,13)@3
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,15)
    assign out_iowr_bl_input_ctrl1_0_o_fifodata = i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifodata;
    assign out_iowr_bl_input_ctrl1_0_o_fifovalid = i_iowr_bl_input_ctrl1_unnamed_conv_process62_conv_process2_aunroll_x_out_iowr_bl_input_ctrl1_0_o_fifovalid;

    // dupName_1_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_54_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process66_conv_process36_out_intel_reserved_ffwd_54_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,18)
    assign out_iowr_bl_weight_ctrl1_0_o_fifodata = i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifodata;
    assign out_iowr_bl_weight_ctrl1_0_o_fifovalid = i_iowr_bl_weight_ctrl1_unnamed_conv_process63_conv_process3_aunroll_x_out_iowr_bl_weight_ctrl1_0_o_fifovalid;

    // dupName_2_regfree_osync_x(GPOUT,19)
    assign out_intel_reserved_ffwd_55_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process67_conv_process37_out_intel_reserved_ffwd_55_0;

    // dupName_3_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_56_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process68_conv_process38_out_intel_reserved_ffwd_56_0;

    // dupName_4_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_57_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process69_conv_process39_out_intel_reserved_ffwd_57_0;

    // dupName_5_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_58_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process70_conv_process40_out_intel_reserved_ffwd_58_0;

    // ext_sig_sync_out(GPOUT,43)
    assign out_iowr_bl_input_ctrl0_0_o_fifodata = i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifodata;
    assign out_iowr_bl_input_ctrl0_0_o_fifovalid = i_iowr_bl_input_ctrl0_unnamed_conv_process60_conv_process0_aunroll_x_out_iowr_bl_input_ctrl0_0_o_fifovalid;

    // regfree_osync(GPOUT,129)
    assign out_intel_reserved_ffwd_52_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process64_conv_process34_out_intel_reserved_ffwd_52_0;

    // sync_out(GPOUT,134)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
