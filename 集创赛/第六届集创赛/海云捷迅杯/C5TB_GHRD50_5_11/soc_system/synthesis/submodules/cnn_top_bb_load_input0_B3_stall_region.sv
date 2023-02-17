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

// SystemVerilog created from cnn_top_bb_load_input0_B3_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B3_stall_region (
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [0:0] out_unnamed_load_input022,
    output wire [0:0] out_valid_out,
    input wire [15:0] in_iord_bl_input_ctrl0_i_fifodata,
    input wire [0:0] in_iord_bl_input_ctrl0_i_fifovalid,
    output wire [0:0] out_iord_bl_input_ctrl0_o_fifoready,
    output wire [0:0] out_iord_bl_input_ctrl0_o_fifoalmost_full,
    input wire [0:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_24_0,
    input wire [0:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_0_tpl;
    wire [7:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_1_tpl;
    wire [0:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoready;
    wire [0:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_valid;
    wire [0:0] i_tobool41_load_input09_sel_x_b;
    wire [0:0] i_tobool_load_input06_sel_x_b;
    wire [0:0] load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] load_input0_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_input0_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_in_c_084_replace_phi_load_input02_s;
    reg [31:0] i_in_c_084_replace_phi_load_input02_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_dest_data_out_24_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_valid_out;
    wire [0:0] i_unnamed_load_input011_q;
    wire [0:0] i_unnamed_load_input08_q;
    reg [0:0] redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    wire [15:0] bubble_join_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_b;
    wire [7:0] bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_c;
    wire [0:0] bubble_join_load_input0_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_input0_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V1;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_load_input0_B3_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    wire [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
    wire [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN;
    wire [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall;
    wire [0:0] SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0;


    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01(BITJOIN,79)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_q = i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01(BITSELECT,80)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00(BITJOIN,82)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_q = i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_dest_data_out_24_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00(BITSELECT,83)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_q[31:0]);

    // bubble_join_load_input0_B3_merge_reg_aunroll_x(BITJOIN,61)
    assign bubble_join_load_input0_B3_merge_reg_aunroll_x_q = load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_load_input0_B3_merge_reg_aunroll_x(BITSELECT,62)
    assign bubble_select_load_input0_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_input0_B3_merge_reg_aunroll_x_q[0:0]);

    // redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b1)
        begin
            redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q <= $unsigned(bubble_select_load_input0_B3_merge_reg_aunroll_x_b);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_in_c_084_replace_phi_load_input02(MUX,13)@2
    assign i_in_c_084_replace_phi_load_input02_s = redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_q;
    always @(i_in_c_084_replace_phi_load_input02_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_b)
    begin
        unique case (i_in_c_084_replace_phi_load_input02_s)
            1'b0 : i_in_c_084_replace_phi_load_input02_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_b;
            1'b1 : i_in_c_084_replace_phi_load_input02_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_b;
            default : i_in_c_084_replace_phi_load_input02_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000nput026_load_input00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(i_in_c_084_replace_phi_load_input02_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_V0),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_intel_reserved_ffwd_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00(STALLENABLE,106)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and0 = i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and1 = i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_wireValid = SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_and1;

    // SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0(STALLENABLE,115)
    // Valid signal propagation
    assign SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_V0 = SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_backStall & SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN = ~ (SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0 = SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN & SE_out_load_input0_B3_merge_reg_aunroll_x_V5;
    // Backward Stall generation
    assign SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall = ~ (SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 & SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_R_v_0 <= SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_24_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00 thei_llvm_fpga_ffwd_dest_i32_inc10658_load_input00 (
        .in_intel_reserved_ffwd_24_0(in_intel_reserved_ffwd_24_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_backStall),
        .in_valid_in(SE_out_load_input0_B3_merge_reg_aunroll_x_V4),
        .out_dest_data_out_24_0(i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_dest_data_out_24_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input00 thei_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_backStall),
        .in_valid_in(SE_out_load_input0_B3_merge_reg_aunroll_x_V3),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_13_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput024_load_input00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall),
        .in_valid_in(SE_out_load_input0_B3_merge_reg_aunroll_x_V1),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,113)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_input0_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,87)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,88)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // load_input0_B3_merge_reg_aunroll_x(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_input0_B3_merge_reg theload_input0_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_load_input0_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(load_input0_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_input0_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_input0_B3_merge_reg_aunroll_x(STALLENABLE,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg3 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg4 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg5 <= SE_out_load_input0_B3_merge_reg_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_stall_out) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_stall_out) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_stall_out) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg2;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_start9130_load_input01_out_stall_out) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg3;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_inc10658_load_input00_out_stall_out) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg4;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_consumed5 = (~ (SE_redist0_load_input0_B3_merge_reg_aunroll_x_out_data_out_0_tpl_1_0_backStall) & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid) | SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid = SE_out_load_input0_B3_merge_reg_aunroll_x_backStall & SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg0 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg1 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg2 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed2;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg3 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed3;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg4 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed4;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_toReg5 = SE_out_load_input0_B3_merge_reg_aunroll_x_StallValid & SE_out_load_input0_B3_merge_reg_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_or0 = SE_out_load_input0_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_or1 = SE_out_load_input0_B3_merge_reg_aunroll_x_consumed1 & SE_out_load_input0_B3_merge_reg_aunroll_x_or0;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_or2 = SE_out_load_input0_B3_merge_reg_aunroll_x_consumed2 & SE_out_load_input0_B3_merge_reg_aunroll_x_or1;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_or3 = SE_out_load_input0_B3_merge_reg_aunroll_x_consumed3 & SE_out_load_input0_B3_merge_reg_aunroll_x_or2;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_or4 = SE_out_load_input0_B3_merge_reg_aunroll_x_consumed4 & SE_out_load_input0_B3_merge_reg_aunroll_x_or3;
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_consumed5 & SE_out_load_input0_B3_merge_reg_aunroll_x_or4);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_backStall = SE_out_load_input0_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V0 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V1 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V2 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg2);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V3 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg3);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V4 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg4);
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_V5 = SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_input0_B3_merge_reg_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_load_input0_B3_merge_reg_aunroll_x_wireValid = load_input0_B3_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03(BLACKBOX,14)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input00 thei_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_backStall),
        .in_valid_in(SE_out_load_input0_B3_merge_reg_aunroll_x_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_backStall = i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03(BITJOIN,69)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_q = i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03(BITSELECT,70)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_q[0:0]);

    // i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x(BLACKBOX,4)@2
    // in in_i_stall@20000000
    // out out_iord_bl_input_ctrl0_o_fifoalmost_full@20000000
    // out out_iord_bl_input_ctrl0_o_fifoready@20000000
    // out out_o_stall@20000000
    cnn_top_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input00 thei_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x (
        .in_cmp8340(bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_b),
        .in_i_stall(SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp8340_load_input03_V0),
        .in_iord_bl_input_ctrl0_i_fifodata(in_iord_bl_input_ctrl0_i_fifodata),
        .in_iord_bl_input_ctrl0_i_fifovalid(in_iord_bl_input_ctrl0_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_1_tpl),
        .out_iord_bl_input_ctrl0_o_fifoalmost_full(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoalmost_full),
        .out_iord_bl_input_ctrl0_o_fifoready(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoready),
        .out_o_stall(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x(STALLENABLE,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg0 <= SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg1 <= SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_backStall) & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid) | SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall) & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid) | SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_StallValid = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_backStall & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg0 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_StallValid & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_toReg1 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_StallValid & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_or0 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_consumed1 & SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_or0);
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_backStall = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V0 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V1 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_wireValid = i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_valid;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_13_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput025_load_input00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_backStall),
        .in_valid_in(SE_out_load_input0_B3_merge_reg_aunroll_x_V2),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010(STALLENABLE,102)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_wireValid = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and1 = SE_out_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_V1 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_and2;

    // bubble_join_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x(BITJOIN,58)
    assign bubble_join_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_q = {i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_1_tpl, i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x(BITSELECT,59)
    assign bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_q[15:8]);

    // i_tobool41_load_input09_sel_x(BITSELECT,5)@2
    assign i_tobool41_load_input09_sel_x_b = bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_c[0:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010(BITJOIN,76)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010(BITSELECT,77)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_q[0:0]);

    // i_unnamed_load_input011(LOGICAL,23)@2
    assign i_unnamed_load_input011_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_b & i_tobool41_load_input09_sel_x_b;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013(BLACKBOX,19)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000nput027_load_input00 thei_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(i_unnamed_load_input011_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input025_load_input010_V0),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,2)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i1_unnamed_load_input027_load_input013_out_intel_reserved_ffwd_19_0;

    // i_tobool_load_input06_sel_x(BITSELECT,6)@2
    assign i_tobool_load_input06_sel_x_b = bubble_select_i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_b[0:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07(BITJOIN,72)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07(BITSELECT,73)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_q[0:0]);

    // i_unnamed_load_input08(LOGICAL,24)@2
    assign i_unnamed_load_input08_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_b & i_tobool_load_input06_sel_x_b;

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_unnamed_load_input022 = i_unnamed_load_input08_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_input024_load_input07_V0;

    // ext_sig_sync_out(GPOUT,12)
    assign out_iord_bl_input_ctrl0_o_fifoready = i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoready;
    assign out_iord_bl_input_ctrl0_o_fifoalmost_full = i_iord_bl_input_ctrl0_unnamed_load_input023_load_input04_aunroll_x_out_iord_bl_input_ctrl0_o_fifoalmost_full;

    // regfree_osync(GPOUT,47)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input026_load_input012_out_intel_reserved_ffwd_18_0;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
