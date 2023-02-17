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

// SystemVerilog created from cnn_top_bb_conv_process_B15_stall_region
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B15_stall_region (
    input wire [0:0] in_iowr_bl_weight_ctrl0_1_i_fifoready,
    output wire [15:0] out_iowr_bl_weight_ctrl0_1_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl0_1_o_fifovalid,
    output wire [31:0] out_intel_reserved_ffwd_76_0,
    output wire [0:0] out_lnot,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_input_ctrl1_1_i_fifoready,
    output wire [15:0] out_iowr_bl_input_ctrl1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl1_1_o_fifovalid,
    output wire [0:0] out_intel_reserved_ffwd_77_0,
    input wire [0:0] in_iowr_bl_weight_ctrl1_1_i_fifoready,
    output wire [15:0] out_iowr_bl_weight_ctrl1_1_o_fifodata,
    output wire [0:0] out_iowr_bl_weight_ctrl1_1_o_fifovalid,
    input wire [0:0] in_iowr_bl_input_ctrl0_1_i_fifoready,
    output wire [15:0] out_iowr_bl_input_ctrl0_1_o_fifodata,
    output wire [0:0] out_iowr_bl_input_ctrl0_1_o_fifovalid,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_53_0,
    input wire [31:0] in_intel_reserved_ffwd_78_0,
    output wire [0:0] out_intel_reserved_ffwd_75_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_l_0_off0492,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] conv_process_B15_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv_process_B15_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] conv_process_B15_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv_process_B15_merge_reg_aunroll_x_out_valid_out;
    wire [7:0] i_frombool30_conv_process5_sel_x_b;
    wire [7:0] i_frombool_conv_process4_sel_x_b;
    wire [15:0] i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifodata;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifovalid;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifodata;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifodata;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifovalid;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_valid;
    wire [15:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifodata;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifovalid;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_valid;
    wire [6:0] i_frombool30_conv_process5_vt_const_7_q;
    wire [7:0] i_frombool30_conv_process5_vt_join_q;
    wire [0:0] i_frombool30_conv_process5_vt_select_0_b;
    wire [7:0] i_frombool_conv_process4_vt_join_q;
    wire [0:0] i_frombool_conv_process4_vt_select_0_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_dest_data_out_53_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_dest_data_out_53_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_dest_data_out_53_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_dest_data_out_53_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_dest_data_out_78_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_intel_reserved_ffwd_75_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_intel_reserved_ffwd_77_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_intel_reserved_ffwd_76_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_valid_out;
    wire [0:0] i_lnot_conv_process3_q;
    wire [0:0] i_ti_0490_replace_phi_conv_process2_s;
    reg [31:0] i_ti_0490_replace_phi_conv_process2_q;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [1:0] bubble_join_conv_process_B15_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv_process_B15_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_conv_process_B15_merge_reg_aunroll_x_c;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_b;
    wire [1:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_conv_process_B15_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    reg [0:0] SE_coalesced_delay_0_0_R_v_3;
    reg [0:0] SE_coalesced_delay_0_0_R_v_4;
    reg [0:0] SE_coalesced_delay_0_0_R_v_5;
    reg [0:0] SE_coalesced_delay_0_0_R_v_6;
    reg [0:0] SE_coalesced_delay_0_0_R_v_7;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_3;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_4;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_5;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_6;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_7;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_or2;
    wire [0:0] SE_coalesced_delay_0_0_or3;
    wire [0:0] SE_coalesced_delay_0_0_or4;
    wire [0:0] SE_coalesced_delay_0_0_or5;
    wire [0:0] SE_coalesced_delay_0_0_or6;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_coalesced_delay_0_0_V3;
    wire [0:0] SE_coalesced_delay_0_0_V4;
    wire [0:0] SE_coalesced_delay_0_0_V5;
    wire [0:0] SE_coalesced_delay_0_0_V6;
    wire [0:0] SE_coalesced_delay_0_0_V7;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;


    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14(BITJOIN,102)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_q = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_dest_data_out_53_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14(BITSELECT,103)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_q[0:0]);

    // i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x(BLACKBOX,17)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_weight_ctrl1_1_o_fifodata@20000000
    // out out_iowr_bl_weight_ctrl1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_weight_ctrl1_unnamed_c0000ess106_conv_process0 thei_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x (
        .in_i_data_0_tpl(i_frombool30_conv_process5_vt_join_q),
        .in_i_data_1_tpl(i_frombool_conv_process4_vt_join_q),
        .in_cmp24489_phi_decision96_xor118(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_V0),
        .in_iowr_bl_weight_ctrl1_1_i_fifoready(in_iowr_bl_weight_ctrl1_1_i_fifoready),
        .out_iowr_bl_weight_ctrl1_1_o_fifodata(i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifodata),
        .out_iowr_bl_weight_ctrl1_1_o_fifovalid(i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_78_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0 thei_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0 (
        .in_intel_reserved_ffwd_78_0(in_intel_reserved_ffwd_78_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V5),
        .out_dest_data_out_78_0(i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_dest_data_out_78_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channe0000t88149_conv_process0 thei_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V4),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7(BLACKBOX,35)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_53_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24480000xor121_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V3),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_dest_data_out_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12(BLACKBOX,33)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_53_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24480000xor119_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V1),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_dest_data_out_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,162)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B15_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,123)
    assign bubble_join_stall_entry_q = {in_l_0_off0492, in_forked};

    // bubble_select_stall_entry(BITSELECT,124)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);

    // conv_process_B15_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B15_merge_reg theconv_process_B15_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_conv_process_B15_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv_process_B15_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(conv_process_B15_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(conv_process_B15_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv_process_B15_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B15_merge_reg_aunroll_x(STALLENABLE,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg0 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg1 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg2 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg3 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg4 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg5 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg6 <= SE_out_conv_process_B15_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg0;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg1;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg2;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg3;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg4;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_stall_out) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg5;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_consumed6 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid) | SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid = SE_out_conv_process_B15_merge_reg_aunroll_x_backStall & SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg0 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg1 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed1;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg2 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed2;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg3 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed3;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg4 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed4;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg5 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed5;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_toReg6 = SE_out_conv_process_B15_merge_reg_aunroll_x_StallValid & SE_out_conv_process_B15_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or0 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed0;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or1 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed1 & SE_out_conv_process_B15_merge_reg_aunroll_x_or0;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or2 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed2 & SE_out_conv_process_B15_merge_reg_aunroll_x_or1;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or3 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed3 & SE_out_conv_process_B15_merge_reg_aunroll_x_or2;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or4 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed4 & SE_out_conv_process_B15_merge_reg_aunroll_x_or3;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_or5 = SE_out_conv_process_B15_merge_reg_aunroll_x_consumed5 & SE_out_conv_process_B15_merge_reg_aunroll_x_or4;
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_wireStall = ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_consumed6 & SE_out_conv_process_B15_merge_reg_aunroll_x_or5);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_backStall = SE_out_conv_process_B15_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V0 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg0);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V1 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg1);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V2 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg2);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V3 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg3);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V4 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg4);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V5 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg5);
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_V6 = SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid & ~ (SE_out_conv_process_B15_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B15_merge_reg_aunroll_x_wireValid = conv_process_B15_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14(BLACKBOX,32)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_53_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24480000xor118_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V0),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_dest_data_out_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_backStall = i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_and0 = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_wireValid = SE_coalesced_delay_0_0_V7 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12(BITJOIN,105)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_q = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_dest_data_out_53_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12(BITSELECT,106)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_q[0:0]);

    // i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x(BLACKBOX,15)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_input_ctrl1_1_o_fifodata@20000000
    // out out_iowr_bl_input_ctrl1_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_input_ctrl1_unnamed_co0000ess105_conv_process0 thei_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x (
        .in_i_data_0_tpl(i_frombool30_conv_process5_vt_join_q),
        .in_i_data_1_tpl(i_frombool_conv_process4_vt_join_q),
        .in_cmp24489_phi_decision96_xor119(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_V0),
        .in_iowr_bl_input_ctrl1_1_i_fifoready(in_iowr_bl_input_ctrl1_1_i_fifoready),
        .out_iowr_bl_input_ctrl1_1_o_fifodata(i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifodata),
        .out_iowr_bl_input_ctrl1_1_o_fifovalid(i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12(STALLENABLE,145)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_backStall = i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_and0 = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_wireValid = SE_coalesced_delay_0_0_V5 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7(BITJOIN,111)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_q = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_dest_data_out_53_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7(BITSELECT,112)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_q[0:0]);

    // i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x(BLACKBOX,14)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_input_ctrl0_1_o_fifodata@20000000
    // out out_iowr_bl_input_ctrl0_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_input_ctrl0_unnamed_co0000ess103_conv_process0 thei_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x (
        .in_i_data_0_tpl(i_frombool_conv_process4_vt_join_q),
        .in_i_data_1_tpl(i_frombool30_conv_process5_vt_join_q),
        .in_cmp24489_phi_decision96_xor121(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_V0),
        .in_iowr_bl_input_ctrl0_1_i_fifoready(in_iowr_bl_input_ctrl0_1_i_fifoready),
        .out_iowr_bl_input_ctrl0_1_o_fifodata(i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifodata),
        .out_iowr_bl_input_ctrl0_1_o_fifovalid(i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7(STALLENABLE,149)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_backStall = i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_and0 = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_wireValid = SE_coalesced_delay_0_0_V4 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_and0;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // coalesced_delay_0_0(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,86)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_lnot_conv_process3(LOGICAL,41)@2
    assign i_lnot_conv_process3_q = sel_for_coalesced_delay_0_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18(BLACKBOX,39)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_77_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ess109_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_77_0(i_lnot_conv_process3_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V3),
        .out_intel_reserved_ffwd_77_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_intel_reserved_ffwd_77_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16(BLACKBOX,38)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_75_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000ess107_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_75_0(sel_for_coalesced_delay_0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_valid_in(SE_coalesced_delay_0_0_V1),
        .out_intel_reserved_ffwd_75_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_intel_reserved_ffwd_75_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1(BITJOIN,114)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_q = i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1(BITSELECT,115)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0(BITJOIN,117)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_q = i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_dest_data_out_78_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0(BITSELECT,118)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_q[31:0]);

    // i_ti_0490_replace_phi_conv_process2(MUX,42)@2
    assign i_ti_0490_replace_phi_conv_process2_s = sel_for_coalesced_delay_0_c;
    always @(i_ti_0490_replace_phi_conv_process2_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_b)
    begin
        unique case (i_ti_0490_replace_phi_conv_process2_s)
            1'b0 : i_ti_0490_replace_phi_conv_process2_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_b;
            1'b1 : i_ti_0490_replace_phi_conv_process2_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_b;
            default : i_ti_0490_replace_phi_conv_process2_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17(BLACKBOX,40)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_76_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ess108_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_76_0(i_ti_0490_replace_phi_conv_process2_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_V0),
        .out_intel_reserved_ffwd_76_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_intel_reserved_ffwd_76_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and0 = i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and1 = i_llvm_fpga_ffwd_dest_i32_channel_start88149_conv_process1_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_and1;

    // bubble_join_conv_process_B15_merge_reg_aunroll_x(BITJOIN,89)
    assign bubble_join_conv_process_B15_merge_reg_aunroll_x_q = {conv_process_B15_merge_reg_aunroll_x_out_data_out_1_tpl, conv_process_B15_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_conv_process_B15_merge_reg_aunroll_x(BITSELECT,90)
    assign bubble_select_conv_process_B15_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv_process_B15_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_conv_process_B15_merge_reg_aunroll_x_c = $unsigned(bubble_join_conv_process_B15_merge_reg_aunroll_x_q[1:1]);

    // join_for_coalesced_delay_0(BITJOIN,85)
    assign join_for_coalesced_delay_0_q = {bubble_select_conv_process_B15_merge_reg_aunroll_x_c, bubble_select_conv_process_B15_merge_reg_aunroll_x_b};

    // SR_SE_coalesced_delay_0_0(STALLREG,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_conv_process_B15_merge_reg_aunroll_x_V6;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,166)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_V3 = SE_coalesced_delay_0_0_R_v_3;
    assign SE_coalesced_delay_0_0_V4 = SE_coalesced_delay_0_0_R_v_4;
    assign SE_coalesced_delay_0_0_V5 = SE_coalesced_delay_0_0_R_v_5;
    assign SE_coalesced_delay_0_0_V6 = SE_coalesced_delay_0_0_R_v_6;
    assign SE_coalesced_delay_0_0_V7 = SE_coalesced_delay_0_0_R_v_7;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc47162_conv_process0_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_stall_out & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall & SE_coalesced_delay_0_0_R_v_2;
    assign SE_coalesced_delay_0_0_s_tv_3 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_stall_out & SE_coalesced_delay_0_0_R_v_3;
    assign SE_coalesced_delay_0_0_s_tv_4 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor121_conv_process7_backStall & SE_coalesced_delay_0_0_R_v_4;
    assign SE_coalesced_delay_0_0_s_tv_5 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor119_conv_process12_backStall & SE_coalesced_delay_0_0_R_v_5;
    assign SE_coalesced_delay_0_0_s_tv_6 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_backStall & SE_coalesced_delay_0_0_R_v_6;
    assign SE_coalesced_delay_0_0_s_tv_7 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor118_conv_process14_backStall & SE_coalesced_delay_0_0_R_v_7;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_or2 = SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1;
    assign SE_coalesced_delay_0_0_or3 = SE_coalesced_delay_0_0_s_tv_3 | SE_coalesced_delay_0_0_or2;
    assign SE_coalesced_delay_0_0_or4 = SE_coalesced_delay_0_0_s_tv_4 | SE_coalesced_delay_0_0_or3;
    assign SE_coalesced_delay_0_0_or5 = SE_coalesced_delay_0_0_s_tv_5 | SE_coalesced_delay_0_0_or4;
    assign SE_coalesced_delay_0_0_or6 = SE_coalesced_delay_0_0_s_tv_6 | SE_coalesced_delay_0_0_or5;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_7 | SE_coalesced_delay_0_0_or6);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_3 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_4 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_5 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_6 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_7 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_R_v_3 & SE_coalesced_delay_0_0_s_tv_3;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_3 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_4 <= SE_coalesced_delay_0_0_R_v_4 & SE_coalesced_delay_0_0_s_tv_4;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_4 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_5 <= SE_coalesced_delay_0_0_R_v_5 & SE_coalesced_delay_0_0_s_tv_5;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_5 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_6 <= SE_coalesced_delay_0_0_R_v_6 & SE_coalesced_delay_0_0_s_tv_6;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_6 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_7 <= SE_coalesced_delay_0_0_R_v_7 & SE_coalesced_delay_0_0_s_tv_7;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_7 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9(BLACKBOX,34)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_53_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24480000xor120_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9 (
        .in_intel_reserved_ffwd_53_0(in_intel_reserved_ffwd_53_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_backStall),
        .in_valid_in(SE_out_conv_process_B15_merge_reg_aunroll_x_V2),
        .out_dest_data_out_53_0(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_dest_data_out_53_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9(STALLENABLE,147)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_backStall = i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_and0 = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_wireValid = SE_coalesced_delay_0_0_V6 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17(STALLENABLE,159)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and1 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and2 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and3 = i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and4 = i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and5 = i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and6 = i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_o_valid & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_wireValid = SE_coalesced_delay_0_0_V2 & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_and6;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9(BITJOIN,108)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_q = i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_out_dest_data_out_53_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9(BITSELECT,109)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_q[0:0]);

    // i_frombool30_conv_process5_vt_const_7(CONSTANT,25)
    assign i_frombool30_conv_process5_vt_const_7_q = $unsigned(7'b0000000);

    // i_frombool30_conv_process5_sel_x(BITSELECT,12)@2
    assign i_frombool30_conv_process5_sel_x_b = {7'b0000000, sel_for_coalesced_delay_0_b[0:0]};

    // i_frombool30_conv_process5_vt_select_0(BITSELECT,27)@2
    assign i_frombool30_conv_process5_vt_select_0_b = i_frombool30_conv_process5_sel_x_b[0:0];

    // i_frombool30_conv_process5_vt_join(BITJOIN,26)@2
    assign i_frombool30_conv_process5_vt_join_q = {i_frombool30_conv_process5_vt_const_7_q, i_frombool30_conv_process5_vt_select_0_b};

    // i_frombool_conv_process4_sel_x(BITSELECT,13)@2
    assign i_frombool_conv_process4_sel_x_b = {7'b0000000, i_lnot_conv_process3_q[0:0]};

    // i_frombool_conv_process4_vt_select_0(BITSELECT,31)@2
    assign i_frombool_conv_process4_vt_select_0_b = i_frombool_conv_process4_sel_x_b[0:0];

    // i_frombool_conv_process4_vt_join(BITJOIN,30)@2
    assign i_frombool_conv_process4_vt_join_q = {i_frombool30_conv_process5_vt_const_7_q, i_frombool_conv_process4_vt_select_0_b};

    // i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x(BLACKBOX,16)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_weight_ctrl0_1_o_fifodata@20000000
    // out out_iowr_bl_weight_ctrl0_1_o_fifovalid@20000000
    // out out_o_stall@20000000
    cnn_top_i_iowr_bl_weight_ctrl0_unnamed_c0000ess104_conv_process0 thei_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x (
        .in_i_data_0_tpl(i_frombool_conv_process4_vt_join_q),
        .in_i_data_1_tpl(i_frombool30_conv_process5_vt_join_q),
        .in_cmp24489_phi_decision96_xor120(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_b),
        .in_i_stall(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp24489_phi_decision96_xor120_conv_process9_V0),
        .in_iowr_bl_weight_ctrl0_1_i_fifoready(in_iowr_bl_weight_ctrl0_1_i_fifoready),
        .out_iowr_bl_weight_ctrl0_1_o_fifodata(i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifodata),
        .out_iowr_bl_weight_ctrl0_1_o_fifovalid(i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_iowr_bl_weight_ctrl0_1_o_fifodata = i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifodata;
    assign out_iowr_bl_weight_ctrl0_1_o_fifovalid = i_iowr_bl_weight_ctrl0_unnamed_conv_process104_conv_process10_aunroll_x_out_iowr_bl_weight_ctrl0_1_o_fifovalid;

    // dupName_0_regfree_osync_x(GPOUT,5)
    assign out_intel_reserved_ffwd_76_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_out_intel_reserved_ffwd_76_0;

    // dupName_0_sync_out_x(GPOUT,6)@2
    assign out_lnot = i_lnot_conv_process3_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process108_conv_process17_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_input_ctrl1_1_o_fifodata = i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifodata;
    assign out_iowr_bl_input_ctrl1_1_o_fifovalid = i_iowr_bl_input_ctrl1_unnamed_conv_process105_conv_process13_aunroll_x_out_iowr_bl_input_ctrl1_1_o_fifovalid;

    // dupName_1_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_77_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process109_conv_process18_out_intel_reserved_ffwd_77_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,11)
    assign out_iowr_bl_weight_ctrl1_1_o_fifodata = i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifodata;
    assign out_iowr_bl_weight_ctrl1_1_o_fifovalid = i_iowr_bl_weight_ctrl1_unnamed_conv_process106_conv_process15_aunroll_x_out_iowr_bl_weight_ctrl1_1_o_fifovalid;

    // ext_sig_sync_out(GPOUT,23)
    assign out_iowr_bl_input_ctrl0_1_o_fifodata = i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifodata;
    assign out_iowr_bl_input_ctrl0_1_o_fifovalid = i_iowr_bl_input_ctrl0_unnamed_conv_process103_conv_process8_aunroll_x_out_iowr_bl_input_ctrl0_1_o_fifovalid;

    // regfree_osync(GPOUT,74)
    assign out_intel_reserved_ffwd_75_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process107_conv_process16_out_intel_reserved_ffwd_75_0;

    // sync_out(GPOUT,78)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
