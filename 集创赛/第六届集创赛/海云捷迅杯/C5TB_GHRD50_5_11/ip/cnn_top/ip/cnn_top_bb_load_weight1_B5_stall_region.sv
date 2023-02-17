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

// SystemVerilog created from cnn_top_bb_load_weight1_B5_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B5_stall_region (
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add8_load_weight12_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_weight118_sel_x_b;
    wire [31:0] bgTrunc_i_v_add26_load_weight116_sel_x_b;
    wire [32:0] i_add8_load_weight12_a;
    wire [32:0] i_add8_load_weight12_b;
    logic [32:0] i_add8_load_weight12_o;
    wire [32:0] i_add8_load_weight12_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_dest_data_out_12_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_valid_out;
    wire [3:0] i_unnamed_load_weight110_vt_const_3_q;
    wire [31:0] i_unnamed_load_weight110_vt_join_q;
    wire [27:0] i_unnamed_load_weight110_vt_select_31_b;
    wire [23:0] i_unnamed_load_weight112_vt_const_23_q;
    wire [31:0] i_unnamed_load_weight112_vt_join_q;
    wire [7:0] i_unnamed_load_weight112_vt_select_31_b;
    wire [6:0] i_unnamed_load_weight115_vt_const_6_q;
    wire [31:0] i_unnamed_load_weight115_vt_join_q;
    wire [24:0] i_unnamed_load_weight115_vt_select_31_b;
    wire [32:0] i_unnamed_load_weight118_a;
    wire [32:0] i_unnamed_load_weight118_b;
    logic [32:0] i_unnamed_load_weight118_o;
    wire [32:0] i_unnamed_load_weight118_q;
    wire [26:0] i_unnamed_load_weight17_vt_const_26_q;
    wire [31:0] i_unnamed_load_weight17_vt_join_q;
    wire [4:0] i_unnamed_load_weight17_vt_select_31_b;
    wire [32:0] i_v_add26_load_weight116_a;
    wire [32:0] i_v_add26_load_weight116_b;
    logic [32:0] i_v_add26_load_weight116_o;
    wire [32:0] i_v_add26_load_weight116_q;
    wire [31:0] i_v_add26_load_weight116_vt_join_q;
    wire [27:0] i_v_add26_load_weight116_vt_select_31_b;
    wire [31:0] i_v_masked25_load_weight114_q;
    wire [31:0] i_v_masked_load_weight19_q;
    wire [0:0] i_v_v_load_weight15_s;
    reg [31:0] i_v_v_load_weight15_q;
    wire [0:0] xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid114_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid115_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [1:0] seMsb_to2_uid118_in;
    wire [1:0] seMsb_to2_uid118_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid119_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid120_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [3:0] seMsb_to4_uid123_in;
    wire [3:0] seMsb_to4_uid123_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid124_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid125_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [7:0] seMsb_to8_uid128_in;
    wire [7:0] seMsb_to8_uid128_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid129_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid130_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [15:0] seMsb_to16_uid133_in;
    wire [15:0] seMsb_to16_uid133_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid134_dupName_0_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid135_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_q;
    wire [27:0] leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid143_dupName_1_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_q;
    wire [7:0] leftShiftStage0Idx1Pad8_uid149_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [23:0] leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_in;
    wire [23:0] leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid151_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [15:0] leftShiftStage1Idx1Pad16_uid154_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [15:0] leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_in;
    wire [15:0] leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid156_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid162_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid163_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [1:0] seMsb_to2_uid166_in;
    wire [1:0] seMsb_to2_uid166_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid167_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid168_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [3:0] seMsb_to4_uid171_in;
    wire [3:0] seMsb_to4_uid171_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid172_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid173_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [7:0] seMsb_to8_uid176_in;
    wire [7:0] seMsb_to8_uid176_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid177_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid178_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [15:0] seMsb_to16_uid181_in;
    wire [15:0] seMsb_to16_uid181_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid182_dupName_3_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid183_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid191_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid194_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid196_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [27:0] leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_in;
    wire [27:0] leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid201_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid209_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid214_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q;
    wire [23:0] leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_in;
    wire [23:0] leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid219_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q;
    wire [15:0] leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_in;
    wire [15:0] leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_b;
    wire [31:0] leftShiftStage3Idx1_uid224_i_unnamed_load_weight10_shift_x_q;
    wire [0:0] leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_s;
    reg [31:0] leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_q;
    reg [27:0] redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_q;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_V0;
    reg [0:0] SE_i_v_v_load_weight15_R_v_0;
    wire [0:0] SE_i_v_v_load_weight15_v_s_0;
    wire [0:0] SE_i_v_v_load_weight15_s_tv_0;
    wire [0:0] SE_i_v_v_load_weight15_backEN;
    wire [0:0] SE_i_v_v_load_weight15_and0;
    wire [0:0] SE_i_v_v_load_weight15_and1;
    wire [0:0] SE_i_v_v_load_weight15_backStall;
    wire [0:0] SE_i_v_v_load_weight15_V0;
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
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    reg [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_V0;
    wire [0:0] SE_out_bubble_out_stall_entry_7_wireValid;
    wire [0:0] SE_out_bubble_out_stall_entry_7_backStall;
    wire [0:0] SE_out_bubble_out_stall_entry_7_V0;
    reg [0:0] bubble_out_stall_entry_5_reg_R_v_0;
    reg [0:0] bubble_out_stall_entry_5_reg_R_v_1;
    wire [0:0] bubble_out_stall_entry_5_reg_v_s_0;
    wire [0:0] bubble_out_stall_entry_5_reg_s_tv_0;
    wire [0:0] bubble_out_stall_entry_5_reg_s_tv_1;
    wire [0:0] bubble_out_stall_entry_5_reg_backEN;
    wire [0:0] bubble_out_stall_entry_5_reg_or0;
    wire [0:0] bubble_out_stall_entry_5_reg_backStall;
    wire [0:0] bubble_out_stall_entry_5_reg_V0;
    wire [0:0] bubble_out_stall_entry_5_reg_V1;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_in;
    wire bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_in;
    wire bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_valid_out;
    wire bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_stall_entry_7_reg_stall_out;
    wire bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;


    // SE_out_bubble_out_stall_entry_7(STALLENABLE,409)
    // Valid signal propagation
    assign SE_out_bubble_out_stall_entry_7_V0 = SE_out_bubble_out_stall_entry_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_stall_entry_7_backStall = i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_stall_out | ~ (SE_out_bubble_out_stall_entry_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_stall_entry_7_wireValid = bubble_out_stall_entry_7_reg_valid_out;

    // bubble_out_stall_entry_7_reg(STALLFIFO,412)
    assign bubble_out_stall_entry_7_reg_valid_in = SE_stall_entry_V5;
    assign bubble_out_stall_entry_7_reg_stall_in = SE_out_bubble_out_stall_entry_7_backStall;
    assign bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp = bubble_out_stall_entry_7_reg_valid_in[0];
    assign bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp = bubble_out_stall_entry_7_reg_stall_in[0];
    assign bubble_out_stall_entry_7_reg_valid_out[0] = bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_stall_entry_7_reg_stall_out[0] = bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_stall_entry_7_reg (
        .valid_in(bubble_out_stall_entry_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_stall_entry_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_stall_entry_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_stall_entry_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_stall_entry_5_reg(STALLENABLE,410)
    // Valid signal propagation
    assign bubble_out_stall_entry_5_reg_V0 = bubble_out_stall_entry_5_reg_R_v_0;
    assign bubble_out_stall_entry_5_reg_V1 = bubble_out_stall_entry_5_reg_R_v_1;
    // Stall signal propagation
    assign bubble_out_stall_entry_5_reg_s_tv_0 = i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_stall_out & bubble_out_stall_entry_5_reg_R_v_0;
    assign bubble_out_stall_entry_5_reg_s_tv_1 = i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_stall_out & bubble_out_stall_entry_5_reg_R_v_1;
    // Backward Enable generation
    assign bubble_out_stall_entry_5_reg_or0 = bubble_out_stall_entry_5_reg_s_tv_0;
    assign bubble_out_stall_entry_5_reg_backEN = ~ (bubble_out_stall_entry_5_reg_s_tv_1 | bubble_out_stall_entry_5_reg_or0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_stall_entry_5_reg_v_s_0 = bubble_out_stall_entry_5_reg_backEN & SE_stall_entry_V4;
    // Backward Stall generation
    assign bubble_out_stall_entry_5_reg_backStall = ~ (bubble_out_stall_entry_5_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_stall_entry_5_reg_R_v_0 <= 1'b0;
            bubble_out_stall_entry_5_reg_R_v_1 <= 1'b0;
        end
        else
        begin
            if (bubble_out_stall_entry_5_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_R_v_0 & bubble_out_stall_entry_5_reg_s_tv_0;
            end
            else
            begin
                bubble_out_stall_entry_5_reg_R_v_0 <= bubble_out_stall_entry_5_reg_v_s_0;
            end

            if (bubble_out_stall_entry_5_reg_backEN == 1'b0)
            begin
                bubble_out_stall_entry_5_reg_R_v_1 <= bubble_out_stall_entry_5_reg_R_v_1 & bubble_out_stall_entry_5_reg_s_tv_1;
            end
            else
            begin
                bubble_out_stall_entry_5_reg_R_v_1 <= bubble_out_stall_entry_5_reg_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10(BLACKBOX,50)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10 thei_llvm_fpga_ffwd_dest_i32_mul741_load_weight10 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11(BLACKBOX,47)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_17_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000_phi49_load_weight10 thei_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14(BLACKBOX,46)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_12_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight10 thei_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_dest_data_out_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,293)
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
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (bubble_out_stall_entry_5_reg_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (bubble_out_stall_entry_7_reg_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed5 & SE_stall_entry_or4);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13(BLACKBOX,52)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight10 thei_llvm_fpga_ffwd_dest_i32_too21828_load_weight13 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13(STALLENABLE,275)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_backStall = SE_i_v_v_load_weight15_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_wireValid = i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14(STALLENABLE,263)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_backStall = SE_i_v_v_load_weight15_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_wireValid = i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10(STALLENABLE,271)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_backStall = SE_i_v_v_load_weight15_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_and0 = i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_wireValid = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_and0;

    // SE_i_v_v_load_weight15(STALLENABLE,292)
    // Valid signal propagation
    assign SE_i_v_v_load_weight15_V0 = SE_i_v_v_load_weight15_R_v_0;
    // Stall signal propagation
    assign SE_i_v_v_load_weight15_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_backStall & SE_i_v_v_load_weight15_R_v_0;
    // Backward Enable generation
    assign SE_i_v_v_load_weight15_backEN = ~ (SE_i_v_v_load_weight15_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_v_v_load_weight15_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_V0 & SE_i_v_v_load_weight15_backEN;
    assign SE_i_v_v_load_weight15_and1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_V0 & SE_i_v_v_load_weight15_and0;
    assign SE_i_v_v_load_weight15_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_V0 & SE_i_v_v_load_weight15_and1;
    // Backward Stall generation
    assign SE_i_v_v_load_weight15_backStall = ~ (SE_i_v_v_load_weight15_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_v_v_load_weight15_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_v_v_load_weight15_backEN == 1'b0)
            begin
                SE_i_v_v_load_weight15_R_v_0 <= SE_i_v_v_load_weight15_R_v_0 & SE_i_v_v_load_weight15_s_tv_0;
            end
            else
            begin
                SE_i_v_v_load_weight15_R_v_0 <= SE_i_v_v_load_weight15_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111(BLACKBOX,48)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight10 thei_llvm_fpga_ffwd_dest_i32_mul34_load_weight111 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_backStall),
        .in_valid_in(bubble_out_stall_entry_5_reg_V1),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16(BLACKBOX,49)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight10 thei_llvm_fpga_ffwd_dest_i32_mul35_load_weight16 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_backStall),
        .in_valid_in(bubble_out_stall_entry_5_reg_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16(STALLENABLE,269)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_backStall = SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and0 = i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and1 = i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_wireValid = SE_i_v_v_load_weight15_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_and1;

    // SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0(STALLENABLE,365)
    // Valid signal propagation
    assign SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_V0 = SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_backStall & SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_V0;
    // Backward Stall generation
    assign SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117(BLACKBOX,51)@2
    // in in_stall_in@20000000
    // out out_dest_data_out_5_0@3
    // out out_stall_out@20000000
    // out out_valid_out@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract32_load_weight10 thei_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_backStall),
        .in_valid_in(SE_out_bubble_out_stall_entry_7_V0),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_dest_data_out_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117(STALLENABLE,273)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_and0 = i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_wireValid = SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117(BITJOIN,245)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_q = i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_out_dest_data_out_5_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117(BITSELECT,246)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_q[31:0]);

    // leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x(BITSELECT,199)@2
    assign leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_in = leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q[27:0];
    assign leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_b = leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_in[27:0];

    // leftShiftStage2Idx1_uid201_dupName_4_i_unnamed_load_weight10_shift_x(BITJOIN,200)@2
    assign leftShiftStage2Idx1_uid201_dupName_4_i_unnamed_load_weight10_shift_x_q = {leftShiftStage2Idx1Rng4_uid200_dupName_4_i_unnamed_load_weight10_shift_x_b, i_unnamed_load_weight110_vt_const_3_q};

    // leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x(BITSELECT,194)@2
    assign leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_in = leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_b = leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid194_dupName_4_i_unnamed_load_weight10_shift_x(CONSTANT,193)
    assign leftShiftStage1Idx1Pad2_uid194_dupName_4_i_unnamed_load_weight10_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid196_dupName_4_i_unnamed_load_weight10_shift_x(BITJOIN,195)@2
    assign leftShiftStage1Idx1_uid196_dupName_4_i_unnamed_load_weight10_shift_x_q = {leftShiftStage1Idx1Rng2_uid195_dupName_4_i_unnamed_load_weight10_shift_x_b, leftShiftStage1Idx1Pad2_uid194_dupName_4_i_unnamed_load_weight10_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x(BITSELECT,189)@2
    assign leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_in = i_v_masked25_load_weight114_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_b = leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid191_dupName_4_i_unnamed_load_weight10_shift_x(BITJOIN,190)@2
    assign leftShiftStage0Idx1_uid191_dupName_4_i_unnamed_load_weight10_shift_x_q = {leftShiftStage0Idx1Rng1_uid190_dupName_4_i_unnamed_load_weight10_shift_x_b, GND_q};

    // leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x(BITSELECT,154)@2
    assign leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_in = leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q[15:0];
    assign leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_b = leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_in[15:0];

    // leftShiftStage1Idx1Pad16_uid154_dupName_2_i_unnamed_load_weight10_shift_x(CONSTANT,153)
    assign leftShiftStage1Idx1Pad16_uid154_dupName_2_i_unnamed_load_weight10_shift_x_q = $unsigned(16'b0000000000000000);

    // leftShiftStage1Idx1_uid156_dupName_2_i_unnamed_load_weight10_shift_x(BITJOIN,155)@2
    assign leftShiftStage1Idx1_uid156_dupName_2_i_unnamed_load_weight10_shift_x_q = {leftShiftStage1Idx1Rng16_uid155_dupName_2_i_unnamed_load_weight10_shift_x_b, leftShiftStage1Idx1Pad16_uid154_dupName_2_i_unnamed_load_weight10_shift_x_q};

    // leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x(BITSELECT,149)@2
    assign leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_in = bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_b[23:0];
    assign leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_b = leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_in[23:0];

    // leftShiftStage0Idx1Pad8_uid149_dupName_2_i_unnamed_load_weight10_shift_x(CONSTANT,148)
    assign leftShiftStage0Idx1Pad8_uid149_dupName_2_i_unnamed_load_weight10_shift_x_q = $unsigned(8'b00000000);

    // leftShiftStage0Idx1_uid151_dupName_2_i_unnamed_load_weight10_shift_x(BITJOIN,150)@2
    assign leftShiftStage0Idx1_uid151_dupName_2_i_unnamed_load_weight10_shift_x_q = {leftShiftStage0Idx1Rng8_uid150_dupName_2_i_unnamed_load_weight10_shift_x_b, leftShiftStage0Idx1Pad8_uid149_dupName_2_i_unnamed_load_weight10_shift_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111(BITJOIN,236)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_q = i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111(BITSELECT,237)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_q[31:0]);

    // leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x(MUX,152)@2
    assign leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_b or leftShiftStage0Idx1_uid151_dupName_2_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_mul34_load_weight111_b;
            1'b1 : leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q = leftShiftStage0Idx1_uid151_dupName_2_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x(MUX,157)@2
    assign leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_s or leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q or leftShiftStage1Idx1_uid156_dupName_2_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_q = leftShiftStage0_uid153_dupName_2_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_q = leftShiftStage1Idx1_uid156_dupName_2_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_weight112_vt_select_31(BITSELECT,59)@2
    assign i_unnamed_load_weight112_vt_select_31_b = leftShiftStage1_uid158_dupName_2_i_unnamed_load_weight10_shift_x_q[31:24];

    // i_unnamed_load_weight112_vt_const_23(CONSTANT,57)
    assign i_unnamed_load_weight112_vt_const_23_q = $unsigned(24'b000000000000000000000000);

    // i_unnamed_load_weight112_vt_join(BITJOIN,58)@2
    assign i_unnamed_load_weight112_vt_join_q = {i_unnamed_load_weight112_vt_select_31_b, i_unnamed_load_weight112_vt_const_23_q};

    // xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,159)@2
    assign xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(i_unnamed_load_weight112_vt_join_q[31:31]);

    // seMsb_to16_uid181(BITSELECT,180)@2
    assign seMsb_to16_uid181_in = $unsigned({{15{xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to16_uid181_b = $unsigned(seMsb_to16_uid181_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid182_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,181)@2
    assign rightShiftStage4Idx1Rng16_uid182_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid183_dupName_3_i_unnamed_load_weight10_shift_x(BITJOIN,182)@2
    assign rightShiftStage4Idx1_uid183_dupName_3_i_unnamed_load_weight10_shift_x_q = {seMsb_to16_uid181_b, rightShiftStage4Idx1Rng16_uid182_dupName_3_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to8_uid176(BITSELECT,175)@2
    assign seMsb_to8_uid176_in = $unsigned({{7{xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to8_uid176_b = $unsigned(seMsb_to8_uid176_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid177_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,176)@2
    assign rightShiftStage3Idx1Rng8_uid177_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid178_dupName_3_i_unnamed_load_weight10_shift_x(BITJOIN,177)@2
    assign rightShiftStage3Idx1_uid178_dupName_3_i_unnamed_load_weight10_shift_x_q = {seMsb_to8_uid176_b, rightShiftStage3Idx1Rng8_uid177_dupName_3_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to4_uid171(BITSELECT,170)@2
    assign seMsb_to4_uid171_in = $unsigned({{3{xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to4_uid171_b = $unsigned(seMsb_to4_uid171_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid172_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,171)@2
    assign rightShiftStage2Idx1Rng4_uid172_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid173_dupName_3_i_unnamed_load_weight10_shift_x(BITJOIN,172)@2
    assign rightShiftStage2Idx1_uid173_dupName_3_i_unnamed_load_weight10_shift_x_q = {seMsb_to4_uid171_b, rightShiftStage2Idx1Rng4_uid172_dupName_3_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to2_uid166(BITSELECT,165)@2
    assign seMsb_to2_uid166_in = $unsigned({{1{xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to2_uid166_b = $unsigned(seMsb_to2_uid166_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid167_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,166)@2
    assign rightShiftStage1Idx1Rng2_uid167_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid168_dupName_3_i_unnamed_load_weight10_shift_x(BITJOIN,167)@2
    assign rightShiftStage1Idx1_uid168_dupName_3_i_unnamed_load_weight10_shift_x_q = {seMsb_to2_uid166_b, rightShiftStage1Idx1Rng2_uid167_dupName_3_i_unnamed_load_weight10_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid162_dupName_3_i_unnamed_load_weight10_shift_x(BITSELECT,161)@2
    assign rightShiftStage0Idx1Rng1_uid162_dupName_3_i_unnamed_load_weight10_shift_x_b = $unsigned(i_unnamed_load_weight112_vt_join_q[31:1]);

    // rightShiftStage0Idx1_uid163_dupName_3_i_unnamed_load_weight10_shift_x(BITJOIN,162)@2
    assign rightShiftStage0Idx1_uid163_dupName_3_i_unnamed_load_weight10_shift_x_q = {xMSB_uid160_dupName_3_i_unnamed_load_weight10_shift_x_b, rightShiftStage0Idx1Rng1_uid162_dupName_3_i_unnamed_load_weight10_shift_x_b};

    // rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x(MUX,164)@2
    assign rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_s or i_unnamed_load_weight112_vt_join_q or rightShiftStage0Idx1_uid163_dupName_3_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q = i_unnamed_load_weight112_vt_join_q;
            1'b1 : rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage0Idx1_uid163_dupName_3_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x(MUX,169)@2
    assign rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_s or rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q or rightShiftStage1Idx1_uid168_dupName_3_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage0_uid165_dupName_3_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage1Idx1_uid168_dupName_3_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x(MUX,174)@2
    assign rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_s or rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q or rightShiftStage2Idx1_uid173_dupName_3_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage1_uid170_dupName_3_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage2Idx1_uid173_dupName_3_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x(MUX,179)@2
    assign rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_s or rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q or rightShiftStage3Idx1_uid178_dupName_3_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage2_uid175_dupName_3_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage3Idx1_uid178_dupName_3_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x(MUX,184)@2
    assign rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_s or rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q or rightShiftStage4Idx1_uid183_dupName_3_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage3_uid180_dupName_3_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_q = rightShiftStage4Idx1_uid183_dupName_3_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10(BITJOIN,242)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_q = i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10(BITSELECT,243)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11(BITJOIN,233)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_q = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11(BITSELECT,234)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_q[31:0]);

    // i_add8_load_weight12(ADD,45)@1
    assign i_add8_load_weight12_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi49_load_weight11_b};
    assign i_add8_load_weight12_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_mul741_load_weight10_b};
    assign i_add8_load_weight12_o = $unsigned(i_add8_load_weight12_a) + $unsigned(i_add8_load_weight12_b);
    assign i_add8_load_weight12_q = i_add8_load_weight12_o[32:0];

    // bgTrunc_i_add8_load_weight12_sel_x(BITSELECT,26)@1
    assign bgTrunc_i_add8_load_weight12_sel_x_b = i_add8_load_weight12_q[31:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13(BITJOIN,248)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_q = i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13(BITSELECT,249)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14(BITJOIN,230)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_q = i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_out_dest_data_out_12_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14(BITSELECT,231)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_q[0:0]);

    // i_v_v_load_weight15(MUX,73)@1 + 1
    assign i_v_v_load_weight15_s = bubble_select_i_llvm_fpga_ffwd_dest_i1_cond8642_load_weight14_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_v_v_load_weight15_q <= 32'b0;
        end
        else if (SE_i_v_v_load_weight15_backEN == 1'b1)
        begin
            unique case (i_v_v_load_weight15_s)
                1'b0 : i_v_v_load_weight15_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_too21828_load_weight13_b;
                1'b1 : i_v_v_load_weight15_q <= bgTrunc_i_add8_load_weight12_sel_x_b;
                default : i_v_v_load_weight15_q <= 32'b0;
            endcase
        end
    end

    // i_v_masked25_load_weight114(LOGICAL,71)@2
    assign i_v_masked25_load_weight114_q = i_v_v_load_weight15_q & rightShiftStage4_uid185_dupName_3_i_unnamed_load_weight10_shift_x_q;

    // leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x(MUX,192)@2
    assign leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_s or i_v_masked25_load_weight114_q or leftShiftStage0Idx1_uid191_dupName_4_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q = i_v_masked25_load_weight114_q;
            1'b1 : leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q = leftShiftStage0Idx1_uid191_dupName_4_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x(MUX,197)@2
    assign leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_s or leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q or leftShiftStage1Idx1_uid196_dupName_4_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q = leftShiftStage0_uid193_dupName_4_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q = leftShiftStage1Idx1_uid196_dupName_4_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x(MUX,202)@2
    assign leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_s or leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q or leftShiftStage2Idx1_uid201_dupName_4_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_q = leftShiftStage1_uid198_dupName_4_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_q = leftShiftStage2Idx1_uid201_dupName_4_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_weight115_vt_select_31(BITSELECT,62)@2
    assign i_unnamed_load_weight115_vt_select_31_b = leftShiftStage2_uid203_dupName_4_i_unnamed_load_weight10_shift_x_q[31:7];

    // i_unnamed_load_weight115_vt_const_6(CONSTANT,60)
    assign i_unnamed_load_weight115_vt_const_6_q = $unsigned(7'b0000000);

    // i_unnamed_load_weight115_vt_join(BITJOIN,61)@2
    assign i_unnamed_load_weight115_vt_join_q = {i_unnamed_load_weight115_vt_select_31_b, i_unnamed_load_weight115_vt_const_6_q};

    // leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x(BITSELECT,141)@2
    assign leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_in = i_v_masked_load_weight19_q[27:0];
    assign leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_b = leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_in[27:0];

    // leftShiftStage0Idx1_uid143_dupName_1_i_unnamed_load_weight10_shift_x(BITJOIN,142)@2
    assign leftShiftStage0Idx1_uid143_dupName_1_i_unnamed_load_weight10_shift_x_q = {leftShiftStage0Idx1Rng4_uid142_dupName_1_i_unnamed_load_weight10_shift_x_b, i_unnamed_load_weight110_vt_const_3_q};

    // leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x(BITSELECT,222)@2
    assign leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_in = leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q[15:0];
    assign leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_b = leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_in[15:0];

    // leftShiftStage3Idx1_uid224_i_unnamed_load_weight10_shift_x(BITJOIN,223)@2
    assign leftShiftStage3Idx1_uid224_i_unnamed_load_weight10_shift_x_q = {leftShiftStage3Idx1Rng16_uid223_i_unnamed_load_weight10_shift_x_b, leftShiftStage1Idx1Pad16_uid154_dupName_2_i_unnamed_load_weight10_shift_x_q};

    // leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x(BITSELECT,217)@2
    assign leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_in = leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q[23:0];
    assign leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_b = leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_in[23:0];

    // leftShiftStage2Idx1_uid219_i_unnamed_load_weight10_shift_x(BITJOIN,218)@2
    assign leftShiftStage2Idx1_uid219_i_unnamed_load_weight10_shift_x_q = {leftShiftStage2Idx1Rng8_uid218_i_unnamed_load_weight10_shift_x_b, leftShiftStage0Idx1Pad8_uid149_dupName_2_i_unnamed_load_weight10_shift_x_q};

    // leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x(BITSELECT,212)@2
    assign leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_in = leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_b = leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_in[29:0];

    // leftShiftStage1Idx1_uid214_i_unnamed_load_weight10_shift_x(BITJOIN,213)@2
    assign leftShiftStage1Idx1_uid214_i_unnamed_load_weight10_shift_x_q = {leftShiftStage1Idx1Rng2_uid213_i_unnamed_load_weight10_shift_x_b, leftShiftStage1Idx1Pad2_uid194_dupName_4_i_unnamed_load_weight10_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x(BITSELECT,207)@2
    assign leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_in = bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_b = leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid209_i_unnamed_load_weight10_shift_x(BITJOIN,208)@2
    assign leftShiftStage0Idx1_uid209_i_unnamed_load_weight10_shift_x_q = {leftShiftStage0Idx1Rng1_uid208_i_unnamed_load_weight10_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16(BITJOIN,239)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_q = i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16(BITSELECT,240)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_q[31:0]);

    // leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x(MUX,210)@2
    assign leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_b or leftShiftStage0Idx1_uid209_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_mul35_load_weight16_b;
            1'b1 : leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q = leftShiftStage0Idx1_uid209_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x(MUX,215)@2
    assign leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_s or leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q or leftShiftStage1Idx1_uid214_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q = leftShiftStage0_uid211_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q = leftShiftStage1Idx1_uid214_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x(MUX,220)@2
    assign leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_s or leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q or leftShiftStage2Idx1_uid219_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q = leftShiftStage1_uid216_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q = leftShiftStage2Idx1_uid219_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x(MUX,225)@2
    assign leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_s or leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q or leftShiftStage3Idx1_uid224_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_q = leftShiftStage2_uid221_i_unnamed_load_weight10_shift_x_q;
            1'b1 : leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_q = leftShiftStage3Idx1_uid224_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_weight17_vt_select_31(BITSELECT,66)@2
    assign i_unnamed_load_weight17_vt_select_31_b = leftShiftStage3_uid226_i_unnamed_load_weight10_shift_x_q[31:27];

    // i_unnamed_load_weight17_vt_const_26(CONSTANT,64)
    assign i_unnamed_load_weight17_vt_const_26_q = $unsigned(27'b000000000000000000000000000);

    // i_unnamed_load_weight17_vt_join(BITJOIN,65)@2
    assign i_unnamed_load_weight17_vt_join_q = {i_unnamed_load_weight17_vt_select_31_b, i_unnamed_load_weight17_vt_const_26_q};

    // xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,111)@2
    assign xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(i_unnamed_load_weight17_vt_join_q[31:31]);

    // seMsb_to16_uid133(BITSELECT,132)@2
    assign seMsb_to16_uid133_in = $unsigned({{15{xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to16_uid133_b = $unsigned(seMsb_to16_uid133_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid134_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,133)@2
    assign rightShiftStage4Idx1Rng16_uid134_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid135_dupName_0_i_unnamed_load_weight10_shift_x(BITJOIN,134)@2
    assign rightShiftStage4Idx1_uid135_dupName_0_i_unnamed_load_weight10_shift_x_q = {seMsb_to16_uid133_b, rightShiftStage4Idx1Rng16_uid134_dupName_0_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to8_uid128(BITSELECT,127)@2
    assign seMsb_to8_uid128_in = $unsigned({{7{xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to8_uid128_b = $unsigned(seMsb_to8_uid128_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid129_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,128)@2
    assign rightShiftStage3Idx1Rng8_uid129_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid130_dupName_0_i_unnamed_load_weight10_shift_x(BITJOIN,129)@2
    assign rightShiftStage3Idx1_uid130_dupName_0_i_unnamed_load_weight10_shift_x_q = {seMsb_to8_uid128_b, rightShiftStage3Idx1Rng8_uid129_dupName_0_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to4_uid123(BITSELECT,122)@2
    assign seMsb_to4_uid123_in = $unsigned({{3{xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to4_uid123_b = $unsigned(seMsb_to4_uid123_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid124_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,123)@2
    assign rightShiftStage2Idx1Rng4_uid124_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid125_dupName_0_i_unnamed_load_weight10_shift_x(BITJOIN,124)@2
    assign rightShiftStage2Idx1_uid125_dupName_0_i_unnamed_load_weight10_shift_x_q = {seMsb_to4_uid123_b, rightShiftStage2Idx1Rng4_uid124_dupName_0_i_unnamed_load_weight10_shift_x_b};

    // seMsb_to2_uid118(BITSELECT,117)@2
    assign seMsb_to2_uid118_in = $unsigned({{1{xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b[0]}}, xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b});
    assign seMsb_to2_uid118_b = $unsigned(seMsb_to2_uid118_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid119_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,118)@2
    assign rightShiftStage1Idx1Rng2_uid119_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid120_dupName_0_i_unnamed_load_weight10_shift_x(BITJOIN,119)@2
    assign rightShiftStage1Idx1_uid120_dupName_0_i_unnamed_load_weight10_shift_x_q = {seMsb_to2_uid118_b, rightShiftStage1Idx1Rng2_uid119_dupName_0_i_unnamed_load_weight10_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid114_dupName_0_i_unnamed_load_weight10_shift_x(BITSELECT,113)@2
    assign rightShiftStage0Idx1Rng1_uid114_dupName_0_i_unnamed_load_weight10_shift_x_b = $unsigned(i_unnamed_load_weight17_vt_join_q[31:1]);

    // rightShiftStage0Idx1_uid115_dupName_0_i_unnamed_load_weight10_shift_x(BITJOIN,114)@2
    assign rightShiftStage0Idx1_uid115_dupName_0_i_unnamed_load_weight10_shift_x_q = {xMSB_uid112_dupName_0_i_unnamed_load_weight10_shift_x_b, rightShiftStage0Idx1Rng1_uid114_dupName_0_i_unnamed_load_weight10_shift_x_b};

    // rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x(MUX,116)@2
    assign rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_s or i_unnamed_load_weight17_vt_join_q or rightShiftStage0Idx1_uid115_dupName_0_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q = i_unnamed_load_weight17_vt_join_q;
            1'b1 : rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage0Idx1_uid115_dupName_0_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x(MUX,121)@2
    assign rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_s or rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q or rightShiftStage1Idx1_uid120_dupName_0_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage0_uid117_dupName_0_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage1Idx1_uid120_dupName_0_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x(MUX,126)@2
    assign rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_s or rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q or rightShiftStage2Idx1_uid125_dupName_0_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage1_uid122_dupName_0_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage2Idx1_uid125_dupName_0_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x(MUX,131)@2
    assign rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_s or rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q or rightShiftStage3Idx1_uid130_dupName_0_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage2_uid127_dupName_0_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage3Idx1_uid130_dupName_0_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x(MUX,136)@2
    assign rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_s or rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q or rightShiftStage4Idx1_uid135_dupName_0_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_s)
            1'b0 : rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage3_uid132_dupName_0_i_unnamed_load_weight10_shift_x_q;
            1'b1 : rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_q = rightShiftStage4Idx1_uid135_dupName_0_i_unnamed_load_weight10_shift_x_q;
            default : rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // i_v_masked_load_weight19(LOGICAL,72)@2
    assign i_v_masked_load_weight19_q = i_v_v_load_weight15_q & rightShiftStage4_uid137_dupName_0_i_unnamed_load_weight10_shift_x_q;

    // leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x(MUX,144)@2
    assign leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_s or i_v_masked_load_weight19_q or leftShiftStage0Idx1_uid143_dupName_1_i_unnamed_load_weight10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_s)
            1'b0 : leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_q = i_v_masked_load_weight19_q;
            1'b1 : leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_q = leftShiftStage0Idx1_uid143_dupName_1_i_unnamed_load_weight10_shift_x_q;
            default : leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_load_weight110_vt_select_31(BITSELECT,56)@2
    assign i_unnamed_load_weight110_vt_select_31_b = leftShiftStage0_uid145_dupName_1_i_unnamed_load_weight10_shift_x_q[31:4];

    // i_unnamed_load_weight110_vt_join(BITJOIN,55)@2
    assign i_unnamed_load_weight110_vt_join_q = {i_unnamed_load_weight110_vt_select_31_b, i_unnamed_load_weight110_vt_const_3_q};

    // i_v_add26_load_weight116(ADD,67)@2
    assign i_v_add26_load_weight116_a = {1'b0, i_unnamed_load_weight110_vt_join_q};
    assign i_v_add26_load_weight116_b = {1'b0, i_unnamed_load_weight115_vt_join_q};
    assign i_v_add26_load_weight116_o = $unsigned(i_v_add26_load_weight116_a) + $unsigned(i_v_add26_load_weight116_b);
    assign i_v_add26_load_weight116_q = i_v_add26_load_weight116_o[32:0];

    // bgTrunc_i_v_add26_load_weight116_sel_x(BITSELECT,28)@2
    assign bgTrunc_i_v_add26_load_weight116_sel_x_b = i_v_add26_load_weight116_q[31:0];

    // i_v_add26_load_weight116_vt_select_31(BITSELECT,70)@2
    assign i_v_add26_load_weight116_vt_select_31_b = bgTrunc_i_v_add26_load_weight116_sel_x_b[31:4];

    // redist0_i_v_add26_load_weight116_vt_select_31_b_1_0(REG,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_q <= $unsigned(i_v_add26_load_weight116_vt_select_31_b);
        end
    end

    // i_unnamed_load_weight110_vt_const_3(CONSTANT,54)
    assign i_unnamed_load_weight110_vt_const_3_q = $unsigned(4'b0000);

    // i_v_add26_load_weight116_vt_join(BITJOIN,69)@3
    assign i_v_add26_load_weight116_vt_join_q = {redist0_i_v_add26_load_weight116_vt_select_31_b_1_0_q, i_unnamed_load_weight110_vt_const_3_q};

    // i_unnamed_load_weight118(ADD,63)@3
    assign i_unnamed_load_weight118_a = {1'b0, i_v_add26_load_weight116_vt_join_q};
    assign i_unnamed_load_weight118_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_b};
    assign i_unnamed_load_weight118_o = $unsigned(i_unnamed_load_weight118_a) + $unsigned(i_unnamed_load_weight118_b);
    assign i_unnamed_load_weight118_q = i_unnamed_load_weight118_o[32:0];

    // bgTrunc_i_unnamed_load_weight118_sel_x(BITSELECT,27)@3
    assign bgTrunc_i_unnamed_load_weight118_sel_x_b = i_unnamed_load_weight118_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119(BLACKBOX,53)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ght131_load_weight10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(bgTrunc_i_unnamed_load_weight118_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_1_extract32_load_weight117_V0),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119(STALLENABLE,277)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_valid_out;

    // dupName_0_sync_out_x(GPOUT,29)@3
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_V0;

    // regfree_osync(GPOUT,96)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight131_load_weight119_out_intel_reserved_ffwd_21_0;

    // sync_out(GPOUT,100)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
