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

// SystemVerilog created from cnn_top_bb_load_input0_B20_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B20_stall_region (
    output wire [0:0] out_unnamed_load_input057,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_cmp1779_phi_decision35_replace_phi_dir,
    input wire [0:0] in_cmp83_phi_decision29_replace_phi_dir,
    input wire [0:0] in_phi_decision47_replace_phi_dir,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc106_load_input012_sel_x_b;
    wire [0:0] load_input0_B20_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] load_input0_B20_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_input0_B20_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] load_input0_B20_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_input0_B20_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_122_q;
    wire [0:0] i_cmp1779_phi_decision35_replace_phi_load_input03_s;
    reg [0:0] i_cmp1779_phi_decision35_replace_phi_load_input03_q;
    wire [0:0] i_cmp1779_phi_decision35_select_load_input07_q;
    wire [0:0] i_cmp83_phi_decision29_replace_phi_load_input05_s;
    reg [0:0] i_cmp83_phi_decision29_replace_phi_load_input05_q;
    wire [0:0] i_cmp83_phi_decision29_select52_load_input09_s;
    reg [0:0] i_cmp83_phi_decision29_select52_load_input09_q;
    wire [0:0] i_cmp83_phi_decision29_select_load_input010_qi;
    reg [0:0] i_cmp83_phi_decision29_select_load_input010_q;
    wire [33:0] i_cmp_load_input015_a;
    wire [33:0] i_cmp_load_input015_b;
    logic [33:0] i_cmp_load_input015_o;
    wire [0:0] i_cmp_load_input015_c;
    wire [32:0] i_inc106_load_input012_a;
    wire [32:0] i_inc106_load_input012_b;
    logic [32:0] i_inc106_load_input012_o;
    wire [32:0] i_inc106_load_input012_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_intel_reserved_ffwd_24_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_valid_out;
    wire [0:0] i_not_phi_decision47_load_input06_q;
    wire [0:0] i_phi_decision47_replace_phi_load_input01_s;
    reg [0:0] i_phi_decision47_replace_phi_load_input01_q;
    wire [0:0] i_unnamed_load_input017_q;
    wire [0:0] i_unnamed_load_input018_q;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    reg [2:0] coalesced_delay_0_0_q;
    wire [2:0] bubble_join_load_input0_B20_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_input0_B20_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_load_input0_B20_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_load_input0_B20_merge_reg_aunroll_x_d;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_b;
    wire [2:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_load_input0_B20_merge_reg_aunroll_x_V7;
    wire [0:0] SE_i_cmp1779_phi_decision35_replace_phi_load_input03_wireValid;
    wire [0:0] SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and0;
    wire [0:0] SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and1;
    wire [0:0] SE_i_cmp1779_phi_decision35_replace_phi_load_input03_backStall;
    wire [0:0] SE_i_cmp1779_phi_decision35_replace_phi_load_input03_V0;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_wireValid;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_and0;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_and1;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_and2;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall;
    wire [0:0] SE_i_cmp83_phi_decision29_replace_phi_load_input05_V0;
    reg [0:0] SE_i_cmp83_phi_decision29_select_load_input010_R_v_0;
    wire [0:0] SE_i_cmp83_phi_decision29_select_load_input010_v_s_0;
    wire [0:0] SE_i_cmp83_phi_decision29_select_load_input010_s_tv_0;
    wire [0:0] SE_i_cmp83_phi_decision29_select_load_input010_backEN;
    wire [0:0] SE_i_cmp83_phi_decision29_select_load_input010_backStall;
    wire [0:0] SE_i_cmp83_phi_decision29_select_load_input010_V0;
    reg [0:0] SE_i_cmp_load_input015_R_v_0;
    wire [0:0] SE_i_cmp_load_input015_v_s_0;
    wire [0:0] SE_i_cmp_load_input015_s_tv_0;
    wire [0:0] SE_i_cmp_load_input015_backEN;
    wire [0:0] SE_i_cmp_load_input015_and0;
    wire [0:0] SE_i_cmp_load_input015_backStall;
    wire [0:0] SE_i_cmp_load_input015_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_V0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_wireValid;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_wireStall;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_StallValid;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_toReg0;
    reg [0:0] SE_i_phi_decision47_replace_phi_load_input01_fromReg0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_consumed0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_toReg1;
    reg [0:0] SE_i_phi_decision47_replace_phi_load_input01_fromReg1;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_consumed1;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_and0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_or0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_backStall;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_V0;
    wire [0:0] SE_i_phi_decision47_replace_phi_load_input01_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_V0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [2:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [2:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_i_valid;
    reg [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_and0;
    reg [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data0;
    reg [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data1;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_backStall;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_V;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_D0;
    wire [0:0] SR_SE_i_cmp83_phi_decision29_select_load_input010_D1;


    // bubble_join_load_input0_B20_merge_reg_aunroll_x(BITJOIN,70)
    assign bubble_join_load_input0_B20_merge_reg_aunroll_x_q = {load_input0_B20_merge_reg_aunroll_x_out_data_out_2_tpl, load_input0_B20_merge_reg_aunroll_x_out_data_out_1_tpl, load_input0_B20_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_input0_B20_merge_reg_aunroll_x(BITSELECT,71)
    assign bubble_select_load_input0_B20_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_input0_B20_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_input0_B20_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_input0_B20_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_load_input0_B20_merge_reg_aunroll_x_d = $unsigned(bubble_join_load_input0_B20_merge_reg_aunroll_x_q[2:2]);

    // join_for_coalesced_delay_0(BITJOIN,66)
    assign join_for_coalesced_delay_0_q = {bubble_select_load_input0_B20_merge_reg_aunroll_x_d, bubble_select_load_input0_B20_merge_reg_aunroll_x_c, bubble_select_load_input0_B20_merge_reg_aunroll_x_b};

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00(STALLENABLE,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed1 = (~ (SE_i_phi_decision47_replace_phi_load_input01_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_wireValid = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_valid_out;

    // SE_i_phi_decision47_replace_phi_load_input01(STALLENABLE,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_phi_decision47_replace_phi_load_input01_fromReg0 <= '0;
            SE_i_phi_decision47_replace_phi_load_input01_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_phi_decision47_replace_phi_load_input01_fromReg0 <= SE_i_phi_decision47_replace_phi_load_input01_toReg0;
            // Successor 1
            SE_i_phi_decision47_replace_phi_load_input01_fromReg1 <= SE_i_phi_decision47_replace_phi_load_input01_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_phi_decision47_replace_phi_load_input01_consumed0 = (~ (SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall) & SE_i_phi_decision47_replace_phi_load_input01_wireValid) | SE_i_phi_decision47_replace_phi_load_input01_fromReg0;
    assign SE_i_phi_decision47_replace_phi_load_input01_consumed1 = (~ (SE_i_cmp1779_phi_decision35_replace_phi_load_input03_backStall) & SE_i_phi_decision47_replace_phi_load_input01_wireValid) | SE_i_phi_decision47_replace_phi_load_input01_fromReg1;
    // Consuming
    assign SE_i_phi_decision47_replace_phi_load_input01_StallValid = SE_i_phi_decision47_replace_phi_load_input01_backStall & SE_i_phi_decision47_replace_phi_load_input01_wireValid;
    assign SE_i_phi_decision47_replace_phi_load_input01_toReg0 = SE_i_phi_decision47_replace_phi_load_input01_StallValid & SE_i_phi_decision47_replace_phi_load_input01_consumed0;
    assign SE_i_phi_decision47_replace_phi_load_input01_toReg1 = SE_i_phi_decision47_replace_phi_load_input01_StallValid & SE_i_phi_decision47_replace_phi_load_input01_consumed1;
    // Backward Stall generation
    assign SE_i_phi_decision47_replace_phi_load_input01_or0 = SE_i_phi_decision47_replace_phi_load_input01_consumed0;
    assign SE_i_phi_decision47_replace_phi_load_input01_wireStall = ~ (SE_i_phi_decision47_replace_phi_load_input01_consumed1 & SE_i_phi_decision47_replace_phi_load_input01_or0);
    assign SE_i_phi_decision47_replace_phi_load_input01_backStall = SE_i_phi_decision47_replace_phi_load_input01_wireStall;
    // Valid signal propagation
    assign SE_i_phi_decision47_replace_phi_load_input01_V0 = SE_i_phi_decision47_replace_phi_load_input01_wireValid & ~ (SE_i_phi_decision47_replace_phi_load_input01_fromReg0);
    assign SE_i_phi_decision47_replace_phi_load_input01_V1 = SE_i_phi_decision47_replace_phi_load_input01_wireValid & ~ (SE_i_phi_decision47_replace_phi_load_input01_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_phi_decision47_replace_phi_load_input01_and0 = SE_coalesced_delay_0_0_V2;
    assign SE_i_phi_decision47_replace_phi_load_input01_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V1 & SE_i_phi_decision47_replace_phi_load_input01_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04(BITJOIN,88)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_q = i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04(BITSELECT,89)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_q[0:0]);

    // coalesced_delay_0_0(REG,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(3'b000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,67)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[2:2]);

    // i_cmp83_phi_decision29_replace_phi_load_input05(MUX,13)@2
    assign i_cmp83_phi_decision29_replace_phi_load_input05_s = sel_for_coalesced_delay_0_b;
    always @(i_cmp83_phi_decision29_replace_phi_load_input05_s or GND_q or bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_b)
    begin
        unique case (i_cmp83_phi_decision29_replace_phi_load_input05_s)
            1'b0 : i_cmp83_phi_decision29_replace_phi_load_input05_q = GND_q;
            1'b1 : i_cmp83_phi_decision29_replace_phi_load_input05_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_b;
            default : i_cmp83_phi_decision29_replace_phi_load_input05_q = 1'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08(BITJOIN,84)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_q = i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08(BITSELECT,85)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00(BITJOIN,92)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00(BITSELECT,93)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_q[0:0]);

    // i_phi_decision47_replace_phi_load_input01(MUX,27)@2
    assign i_phi_decision47_replace_phi_load_input01_s = sel_for_coalesced_delay_0_d;
    always @(i_phi_decision47_replace_phi_load_input01_s or VCC_q or bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_b)
    begin
        unique case (i_phi_decision47_replace_phi_load_input01_s)
            1'b0 : i_phi_decision47_replace_phi_load_input01_q = VCC_q;
            1'b1 : i_phi_decision47_replace_phi_load_input01_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_b;
            default : i_phi_decision47_replace_phi_load_input01_q = 1'b0;
        endcase
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_cmp83_phi_decision29_select52_load_input09(MUX,14)@2
    assign i_cmp83_phi_decision29_select52_load_input09_s = i_phi_decision47_replace_phi_load_input01_q;
    always @(i_cmp83_phi_decision29_select52_load_input09_s or bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_b or i_cmp83_phi_decision29_replace_phi_load_input05_q)
    begin
        unique case (i_cmp83_phi_decision29_select52_load_input09_s)
            1'b0 : i_cmp83_phi_decision29_select52_load_input09_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_b;
            1'b1 : i_cmp83_phi_decision29_select52_load_input09_q = i_cmp83_phi_decision29_replace_phi_load_input05_q;
            default : i_cmp83_phi_decision29_select52_load_input09_q = 1'b0;
        endcase
    end

    // i_not_phi_decision47_load_input06(LOGICAL,26)@2
    assign i_not_phi_decision47_load_input06_q = i_phi_decision47_replace_phi_load_input01_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_q = i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_q[0:0]);

    // i_cmp1779_phi_decision35_replace_phi_load_input03(MUX,11)@2
    assign i_cmp1779_phi_decision35_replace_phi_load_input03_s = sel_for_coalesced_delay_0_c;
    always @(i_cmp1779_phi_decision35_replace_phi_load_input03_s or VCC_q or bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_b)
    begin
        unique case (i_cmp1779_phi_decision35_replace_phi_load_input03_s)
            1'b0 : i_cmp1779_phi_decision35_replace_phi_load_input03_q = VCC_q;
            1'b1 : i_cmp1779_phi_decision35_replace_phi_load_input03_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_b;
            default : i_cmp1779_phi_decision35_replace_phi_load_input03_q = 1'b0;
        endcase
    end

    // i_cmp1779_phi_decision35_select_load_input07(LOGICAL,12)@2
    assign i_cmp1779_phi_decision35_select_load_input07_q = i_cmp1779_phi_decision35_replace_phi_load_input03_q | i_not_phi_decision47_load_input06_q;

    // SR_SE_i_cmp83_phi_decision29_select_load_input010(STALLREG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid <= 1'b0;
            SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data0 <= 1'bx;
            SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid <= SE_i_cmp83_phi_decision29_select_load_input010_backStall & (SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid | SR_SE_i_cmp83_phi_decision29_select_load_input010_i_valid);

            if (SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data0 <= i_cmp1779_phi_decision35_select_load_input07_q;
                SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data1 <= i_cmp83_phi_decision29_select52_load_input09_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_and0 = SE_i_cmp1779_phi_decision35_replace_phi_load_input03_V0;
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_i_valid = SE_i_cmp83_phi_decision29_replace_phi_load_input05_V0 & SR_SE_i_cmp83_phi_decision29_select_load_input010_and0;
    // Stall signal propagation
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_backStall = SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid | ~ (SR_SE_i_cmp83_phi_decision29_select_load_input010_i_valid);

    // Valid
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_V = SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid == 1'b1 ? SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid : SR_SE_i_cmp83_phi_decision29_select_load_input010_i_valid;

    // Data0
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_D0 = SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid == 1'b1 ? SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data0 : i_cmp1779_phi_decision35_select_load_input07_q;
    // Data1
    assign SR_SE_i_cmp83_phi_decision29_select_load_input010_D1 = SR_SE_i_cmp83_phi_decision29_select_load_input010_r_valid == 1'b1 ? SR_SE_i_cmp83_phi_decision29_select_load_input010_r_data1 : i_cmp83_phi_decision29_select52_load_input09_q;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08(STALLENABLE,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed1 = (~ (SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04(STALLENABLE,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed1 = (~ (SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_valid_out;

    // SE_i_cmp83_phi_decision29_replace_phi_load_input05(STALLENABLE,116)
    // Valid signal propagation
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_V0 = SE_i_cmp83_phi_decision29_replace_phi_load_input05_wireValid;
    // Backward Stall generation
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall = SR_SE_i_cmp83_phi_decision29_select_load_input010_backStall | ~ (SE_i_cmp83_phi_decision29_replace_phi_load_input05_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_and0 = SE_coalesced_delay_0_0_V1;
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_and1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V1 & SE_i_cmp83_phi_decision29_replace_phi_load_input05_and0;
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_and2 = SE_i_phi_decision47_replace_phi_load_input01_V0 & SE_i_cmp83_phi_decision29_replace_phi_load_input05_and1;
    assign SE_i_cmp83_phi_decision29_replace_phi_load_input05_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V1 & SE_i_cmp83_phi_decision29_replace_phi_load_input05_and2;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02(STALLENABLE,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed1 = (~ (SE_i_cmp1779_phi_decision35_replace_phi_load_input03_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_valid_out;

    // SE_i_cmp1779_phi_decision35_replace_phi_load_input03(STALLENABLE,114)
    // Valid signal propagation
    assign SE_i_cmp1779_phi_decision35_replace_phi_load_input03_V0 = SE_i_cmp1779_phi_decision35_replace_phi_load_input03_wireValid;
    // Backward Stall generation
    assign SE_i_cmp1779_phi_decision35_replace_phi_load_input03_backStall = SR_SE_i_cmp83_phi_decision29_select_load_input010_backStall | ~ (SE_i_cmp1779_phi_decision35_replace_phi_load_input03_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and0 = SE_coalesced_delay_0_0_V0;
    assign SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V1 & SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and0;
    assign SE_i_cmp1779_phi_decision35_replace_phi_load_input03_wireValid = SE_i_phi_decision47_replace_phi_load_input01_V1 & SE_i_cmp1779_phi_decision35_replace_phi_load_input03_and1;

    // SE_coalesced_delay_0_0(STALLENABLE,145)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_i_cmp1779_phi_decision35_replace_phi_load_input03_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = SE_i_cmp83_phi_decision29_replace_phi_load_input05_backStall & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = SE_i_phi_decision47_replace_phi_load_input01_backStall & SE_coalesced_delay_0_0_R_v_2;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1);
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

        end
    end

    // SR_SE_coalesced_delay_0_0(STALLREG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 3'bxxx;
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
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_load_input0_B20_merge_reg_aunroll_x_V7;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014(STALLENABLE,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed1 = (~ (SE_i_cmp_load_input015_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_wireValid = i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014(BLACKBOX,23)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000e_phi53_load_input00 thei_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V5),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013(STALLENABLE,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed1 = (~ (SE_i_cmp_load_input015_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_wireValid = i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013(BLACKBOX,22)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input00 thei_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V4),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00(BLACKBOX,21)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_19_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput058_load_input00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V3),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input00 thei_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V2),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input00 thei_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V1),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_11_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input00 thei_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V0),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,141)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_input0_B20_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,108)
    assign bubble_join_stall_entry_q = {in_phi_decision47_replace_phi_dir, in_cmp83_phi_decision29_replace_phi_dir, in_cmp1779_phi_decision35_replace_phi_dir};

    // bubble_select_stall_entry(BITSELECT,109)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);

    // load_input0_B20_merge_reg_aunroll_x(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_input0_B20_merge_reg theload_input0_B20_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_stall_in(SE_out_load_input0_B20_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_input0_B20_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_input0_B20_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(load_input0_B20_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_stall_out(load_input0_B20_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_input0_B20_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_input0_B20_merge_reg_aunroll_x(STALLENABLE,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg7 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg0 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg1 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg2 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg3 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg4 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg5 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg6 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg7 <= SE_out_load_input0_B20_merge_reg_aunroll_x_toReg7;
        end
    end
    // Input Stall processing
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg0;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg1;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg2;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg3;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg4;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg5;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_stall_out) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg6;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_consumed7 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg7;
    // Consuming
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid = SE_out_load_input0_B20_merge_reg_aunroll_x_backStall & SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg0 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg1 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed1;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg2 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed2;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg3 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed3;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg4 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed4;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg5 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed5;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg6 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed6;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_toReg7 = SE_out_load_input0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B20_merge_reg_aunroll_x_consumed7;
    // Backward Stall generation
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or0 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or1 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed1 & SE_out_load_input0_B20_merge_reg_aunroll_x_or0;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or2 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed2 & SE_out_load_input0_B20_merge_reg_aunroll_x_or1;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or3 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed3 & SE_out_load_input0_B20_merge_reg_aunroll_x_or2;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or4 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed4 & SE_out_load_input0_B20_merge_reg_aunroll_x_or3;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or5 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed5 & SE_out_load_input0_B20_merge_reg_aunroll_x_or4;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_or6 = SE_out_load_input0_B20_merge_reg_aunroll_x_consumed6 & SE_out_load_input0_B20_merge_reg_aunroll_x_or5;
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_wireStall = ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_consumed7 & SE_out_load_input0_B20_merge_reg_aunroll_x_or6);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_backStall = SE_out_load_input0_B20_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V0 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg0);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V1 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg1);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V2 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg2);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V3 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg3);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V4 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg4);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V5 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg5);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V6 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg6);
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_V7 = SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B20_merge_reg_aunroll_x_fromReg7);
    // Computing multiple Valid(s)
    assign SE_out_load_input0_B20_merge_reg_aunroll_x_wireValid = load_input0_B20_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011(BLACKBOX,24)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000e_phi54_load_input00 thei_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_backStall),
        .in_valid_in(SE_out_load_input0_B20_merge_reg_aunroll_x_V6),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011(STALLENABLE,134)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_wireValid = i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_valid_out;

    // c_i32_122(CONSTANT,8)
    assign c_i32_122_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011(BITJOIN,104)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_q = i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011(BITSELECT,105)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_q[31:0]);

    // i_inc106_load_input012(ADD,17)@2
    assign i_inc106_load_input012_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_b};
    assign i_inc106_load_input012_b = {1'b0, c_i32_122_q};
    assign i_inc106_load_input012_o = $unsigned(i_inc106_load_input012_a) + $unsigned(i_inc106_load_input012_b);
    assign i_inc106_load_input012_q = i_inc106_load_input012_o[32:0];

    // bgTrunc_i_inc106_load_input012_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_inc106_load_input012_sel_x_b = i_inc106_load_input012_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019(BLACKBOX,25)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_24_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000nput059_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(bgTrunc_i_inc106_load_input012_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi54_load_input011_V0),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_intel_reserved_ffwd_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg(STALLENABLE,218)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_v_s_0;
            end

        end
    end

    // SE_i_cmp83_phi_decision29_select_load_input010(STALLENABLE,118)
    // Valid signal propagation
    assign SE_i_cmp83_phi_decision29_select_load_input010_V0 = SE_i_cmp83_phi_decision29_select_load_input010_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp83_phi_decision29_select_load_input010_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & SE_i_cmp83_phi_decision29_select_load_input010_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp83_phi_decision29_select_load_input010_backEN = ~ (SE_i_cmp83_phi_decision29_select_load_input010_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp83_phi_decision29_select_load_input010_v_s_0 = SE_i_cmp83_phi_decision29_select_load_input010_backEN & SR_SE_i_cmp83_phi_decision29_select_load_input010_V;
    // Backward Stall generation
    assign SE_i_cmp83_phi_decision29_select_load_input010_backStall = ~ (SE_i_cmp83_phi_decision29_select_load_input010_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp83_phi_decision29_select_load_input010_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp83_phi_decision29_select_load_input010_backEN == 1'b0)
            begin
                SE_i_cmp83_phi_decision29_select_load_input010_R_v_0 <= SE_i_cmp83_phi_decision29_select_load_input010_R_v_0 & SE_i_cmp83_phi_decision29_select_load_input010_s_tv_0;
            end
            else
            begin
                SE_i_cmp83_phi_decision29_select_load_input010_R_v_0 <= SE_i_cmp83_phi_decision29_select_load_input010_v_s_0;
            end

        end
    end

    // SE_i_cmp_load_input015(STALLENABLE,119)
    // Valid signal propagation
    assign SE_i_cmp_load_input015_V0 = SE_i_cmp_load_input015_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp_load_input015_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & SE_i_cmp_load_input015_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp_load_input015_backEN = ~ (SE_i_cmp_load_input015_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp_load_input015_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V1 & SE_i_cmp_load_input015_backEN;
    assign SE_i_cmp_load_input015_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V1 & SE_i_cmp_load_input015_and0;
    // Backward Stall generation
    assign SE_i_cmp_load_input015_backStall = ~ (SE_i_cmp_load_input015_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp_load_input015_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp_load_input015_backEN == 1'b0)
            begin
                SE_i_cmp_load_input015_R_v_0 <= SE_i_cmp_load_input015_R_v_0 & SE_i_cmp_load_input015_s_tv_0;
            end
            else
            begin
                SE_i_cmp_load_input015_R_v_0 <= SE_i_cmp_load_input015_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg(STALLENABLE,212)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg(STALLENABLE,213)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg(STALLENABLE,214)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg(STALLENABLE,215)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg(STALLENABLE,216)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg(STALLENABLE,217)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall & bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1(STALLENABLE,199)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and0 = bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_reg_V0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and1 = bubble_out_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and2 = bubble_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input058_load_input00_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and3 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8339_load_input04_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp8338_load_input08_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp177944_load_input02_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and6 = SE_i_cmp_load_input015_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and7 = SE_i_cmp83_phi_decision29_select_load_input010_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_and7;

    // i_cmp83_phi_decision29_select_load_input010(LOGICAL,15)@2 + 1
    assign i_cmp83_phi_decision29_select_load_input010_qi = SR_SE_i_cmp83_phi_decision29_select_load_input010_D0 & SR_SE_i_cmp83_phi_decision29_select_load_input010_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp83_phi_decision29_select_load_input010_delay ( .xin(i_cmp83_phi_decision29_select_load_input010_qi), .xout(i_cmp83_phi_decision29_select_load_input010_q), .ena(SE_i_cmp83_phi_decision29_select_load_input010_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_unnamed_load_input017(LOGICAL,28)@3
    assign i_unnamed_load_input017_q = i_cmp83_phi_decision29_select_load_input010_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013(BITJOIN,96)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_q = i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013(BITSELECT,97)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014(BITJOIN,100)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_q = i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014(BITSELECT,101)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_q[31:0]);

    // i_cmp_load_input015(COMPARE,16)@2 + 1
    assign i_cmp_load_input015_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_b});
    assign i_cmp_load_input015_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num9231_load_input013_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp_load_input015_o <= 34'b0;
        end
        else if (SE_i_cmp_load_input015_backEN == 1'b1)
        begin
            i_cmp_load_input015_o <= $unsigned($signed(i_cmp_load_input015_a) - $signed(i_cmp_load_input015_b));
        end
    end
    assign i_cmp_load_input015_c[0] = i_cmp_load_input015_o[33];

    // i_unnamed_load_input018(LOGICAL,29)@3
    assign i_unnamed_load_input018_q = i_cmp_load_input015_c & i_unnamed_load_input017_q;

    // dupName_0_sync_out_x(GPOUT,3)@3
    assign out_unnamed_load_input057 = i_unnamed_load_input018_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_dest_i32_in_c_084_replace_phi53_load_input014_1_V0;

    // regfree_osync(GPOUT,54)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input059_load_input019_out_intel_reserved_ffwd_24_0;

    // sync_out(GPOUT,59)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
