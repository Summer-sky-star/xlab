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

// SystemVerilog created from cnn_top_bb_conv_process_B3_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B3_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_intel_reserved_ffwd_50_0,
    output wire [32:0] out_intel_reserved_ffwd_51_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_48_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_i80_conv_process3_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_conv_process11_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv_process9_sel_x_b;
    wire [31:0] c_i32_017_recast_x_q;
    wire [31:0] c_i32_116_recast_x_q;
    wire [32:0] i_unnamed_conv_process10_sel_x_b;
    wire [31:0] c_i32_118_q;
    wire [32:0] c_i33_119_q;
    wire [32:0] i_add_i80_conv_process3_a;
    wire [32:0] i_add_i80_conv_process3_b;
    logic [32:0] i_add_i80_conv_process3_o;
    wire [32:0] i_add_i80_conv_process3_q;
    wire [33:0] i_cmp2_i494_conv_process4_a;
    wire [33:0] i_cmp2_i494_conv_process4_b;
    logic [33:0] i_cmp2_i494_conv_process4_o;
    wire [0:0] i_cmp2_i494_conv_process4_c;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_dest_data_out_7_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_valid_out;
    wire [31:0] i_mul_i_conv_process1_vt_join_q;
    wire [30:0] i_mul_i_conv_process1_vt_select_31_b;
    wire [0:0] i_smax_conv_process8_s;
    reg [31:0] i_smax_conv_process8_q;
    wire [31:0] i_smax_conv_process8_vt_join_q;
    wire [30:0] i_smax_conv_process8_vt_select_30_b;
    wire [32:0] i_unnamed_conv_process10_vt_join_q;
    wire [31:0] i_unnamed_conv_process10_vt_select_31_b;
    wire [33:0] i_unnamed_conv_process11_a;
    wire [33:0] i_unnamed_conv_process11_b;
    logic [33:0] i_unnamed_conv_process11_o;
    wire [33:0] i_unnamed_conv_process11_q;
    wire [33:0] i_unnamed_conv_process6_a;
    wire [33:0] i_unnamed_conv_process6_b;
    logic [33:0] i_unnamed_conv_process6_o;
    wire [0:0] i_unnamed_conv_process6_c;
    wire [32:0] i_unnamed_conv_process9_a;
    wire [32:0] i_unnamed_conv_process9_b;
    logic [32:0] i_unnamed_conv_process9_o;
    wire [32:0] i_unnamed_conv_process9_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid79_i_mul_i_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_q;
    reg [31:0] redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_q;
    reg [30:0] redist1_i_smax_conv_process8_vt_select_30_b_1_0_q;
    reg [0:0] redist2_i_cmp2_i494_conv_process4_c_2_0_q;
    reg [31:0] redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_b;
    reg [0:0] SE_i_cmp2_i494_conv_process4_R_v_0;
    wire [0:0] SE_i_cmp2_i494_conv_process4_v_s_0;
    wire [0:0] SE_i_cmp2_i494_conv_process4_s_tv_0;
    wire [0:0] SE_i_cmp2_i494_conv_process4_backEN;
    wire [0:0] SE_i_cmp2_i494_conv_process4_backStall;
    wire [0:0] SE_i_cmp2_i494_conv_process4_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    reg [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0;
    reg [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_1;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_or0;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V0;
    wire [0:0] SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V1;
    reg [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_or0;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V0;
    wire [0:0] SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_i_valid;
    reg [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid;
    reg [31:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data0;
    reg [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data1;
    wire [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall;
    wire [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V;
    wire [31:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D0;
    wire [0:0] SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D1;


    // c_i32_017_recast_x(CONSTANT,5)
    assign c_i32_017_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp2_i494_conv_process4(COMPARE,26)@2 + 1
    assign i_cmp2_i494_conv_process4_a = $unsigned({{2{c_i32_017_recast_x_q[31]}}, c_i32_017_recast_x_q});
    assign i_cmp2_i494_conv_process4_b = $unsigned({{2{redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q[31]}}, redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2_i494_conv_process4_o <= 34'b0;
        end
        else if (SE_i_cmp2_i494_conv_process4_backEN == 1'b1)
        begin
            i_cmp2_i494_conv_process4_o <= $unsigned($signed(i_cmp2_i494_conv_process4_a) - $signed(i_cmp2_i494_conv_process4_b));
        end
    end
    assign i_cmp2_i494_conv_process4_c[0] = i_cmp2_i494_conv_process4_o[33];

    // c_i32_118(CONSTANT,21)
    assign c_i32_118_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_116_recast_x(CONSTANT,6)
    assign c_i32_116_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_conv_process6(COMPARE,45)@2
    assign i_unnamed_conv_process6_a = $unsigned({{2{c_i32_116_recast_x_q[31]}}, c_i32_116_recast_x_q});
    assign i_unnamed_conv_process6_b = $unsigned({{2{redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q[31]}}, redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q});
    assign i_unnamed_conv_process6_o = $unsigned($signed(i_unnamed_conv_process6_a) - $signed(i_unnamed_conv_process6_b));
    assign i_unnamed_conv_process6_c[0] = i_unnamed_conv_process6_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_smax_conv_process8(MUX,36)@2
    assign i_smax_conv_process8_s = i_unnamed_conv_process6_c;
    always @(i_smax_conv_process8_s or c_i32_116_recast_x_q or redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q)
    begin
        unique case (i_smax_conv_process8_s)
            1'b0 : i_smax_conv_process8_q = c_i32_116_recast_x_q;
            1'b1 : i_smax_conv_process8_q = redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q;
            default : i_smax_conv_process8_q = 32'b0;
        endcase
    end

    // i_smax_conv_process8_vt_select_30(BITSELECT,39)@2
    assign i_smax_conv_process8_vt_select_30_b = i_smax_conv_process8_q[30:0];

    // redist1_i_smax_conv_process8_vt_select_30_b_1_0(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_smax_conv_process8_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_i_cmp2_i494_conv_process4_backEN == 1'b1)
        begin
            redist1_i_smax_conv_process8_vt_select_30_b_1_0_q <= $unsigned(i_smax_conv_process8_vt_select_30_b);
        end
    end

    // i_smax_conv_process8_vt_join(BITJOIN,38)@3
    assign i_smax_conv_process8_vt_join_q = {GND_q, redist1_i_smax_conv_process8_vt_select_30_b_1_0_q};

    // i_unnamed_conv_process9(ADD,46)@3
    assign i_unnamed_conv_process9_a = {1'b0, i_smax_conv_process8_vt_join_q};
    assign i_unnamed_conv_process9_b = {1'b0, c_i32_118_q};
    assign i_unnamed_conv_process9_o = $unsigned(i_unnamed_conv_process9_a) + $unsigned(i_unnamed_conv_process9_b);
    assign i_unnamed_conv_process9_q = i_unnamed_conv_process9_o[32:0];

    // bgTrunc_i_unnamed_conv_process9_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_unnamed_conv_process9_sel_x_b = i_unnamed_conv_process9_q[31:0];

    // i_unnamed_conv_process10_sel_x(BITSELECT,15)@3
    assign i_unnamed_conv_process10_sel_x_b = {1'b0, bgTrunc_i_unnamed_conv_process9_sel_x_b[31:0]};

    // i_unnamed_conv_process10_vt_select_31(BITSELECT,43)@3
    assign i_unnamed_conv_process10_vt_select_31_b = i_unnamed_conv_process10_sel_x_b[31:0];

    // i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2(BLACKBOX,28)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_6_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract58_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_dest_data_out_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed1 & SE_stall_entry_or0);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0(BLACKBOX,27)@0
    // in in_stall_in@20000000
    // out out_dest_data_out_7_0@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract63_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_dest_data_out_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0(STALLENABLE,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_wireValid = i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x(BITSELECT,77)@1
    assign leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_in = bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_b[30:0];
    assign leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid79_i_mul_i_conv_process0_shift_x(BITJOIN,78)@1
    assign leftShiftStage0Idx1_uid79_i_mul_i_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid78_i_mul_i_conv_process0_shift_x_b, GND_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0(BITJOIN,91)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_q = i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_out_dest_data_out_7_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0(BITSELECT,92)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_q[31:0]);

    // leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x(MUX,80)@1
    assign leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_b or leftShiftStage0Idx1_uid79_i_mul_i_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_b;
            1'b1 : leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_q = leftShiftStage0Idx1_uid79_i_mul_i_conv_process0_shift_x_q;
            default : leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul_i_conv_process1_vt_select_31(BITSELECT,35)@1
    assign i_mul_i_conv_process1_vt_select_31_b = leftShiftStage0_uid81_i_mul_i_conv_process0_shift_x_q[31:1];

    // i_mul_i_conv_process1_vt_join(BITJOIN,34)@1
    assign i_mul_i_conv_process1_vt_join_q = {i_mul_i_conv_process1_vt_select_31_b, GND_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12(BLACKBOX,30)@1
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess55_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_48_0(i_mul_i_conv_process1_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V1),
        .out_intel_reserved_ffwd_48_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_intel_reserved_ffwd_48_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12(STALLENABLE,115)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg(STALLFIFO,159)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(4),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg(STALLFIFO,160)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1(STALLENABLE,152)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_and2;

    // redist2_i_cmp2_i494_conv_process4_c_2_0(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_cmp2_i494_conv_process4_c_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist2_i_cmp2_i494_conv_process4_c_2_0_q <= $unsigned(SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D1);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14(BLACKBOX,29)@4
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i1_unnam0000cess57_conv_process0 thei_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_50_0(redist2_i_cmp2_i494_conv_process4_c_2_0_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V1),
        .out_intel_reserved_ffwd_50_0(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_intel_reserved_ffwd_50_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_119(CONSTANT,22)
    assign c_i33_119_q = $unsigned(33'b111111111111111111111111111111111);

    // redist0_i_unnamed_conv_process10_vt_select_31_b_1_0(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_q <= $unsigned(SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D0);
        end
    end

    // i_unnamed_conv_process10_vt_join(BITJOIN,42)@4
    assign i_unnamed_conv_process10_vt_join_q = {GND_q, redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_q};

    // i_unnamed_conv_process11(ADD,44)@4
    assign i_unnamed_conv_process11_a = {1'b0, i_unnamed_conv_process10_vt_join_q};
    assign i_unnamed_conv_process11_b = {1'b0, c_i33_119_q};
    assign i_unnamed_conv_process11_o = $unsigned(i_unnamed_conv_process11_a) + $unsigned(i_unnamed_conv_process11_b);
    assign i_unnamed_conv_process11_q = i_unnamed_conv_process11_o[33:0];

    // bgTrunc_i_unnamed_conv_process11_sel_x(BITSELECT,3)@4
    assign bgTrunc_i_unnamed_conv_process11_sel_x_b = i_unnamed_conv_process11_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15(BLACKBOX,32)@4
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i33_unna0000cess58_conv_process0 thei_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_51_0(bgTrunc_i_unnamed_conv_process11_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_backStall),
        .in_valid_in(SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V0),
        .out_intel_reserved_ffwd_51_0(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_intel_reserved_ffwd_51_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0(STALLENABLE,135)
    // Valid signal propagation
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V0 = SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V1 = SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_stall_out & SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0;
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_stall_out & SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_or0 = SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_0;
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN = ~ (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_1 | SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_v_s_0 = SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN & SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V;
    // Backward Stall generation
    assign SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall = ~ (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0 <= 1'b0;
            SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0 & SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_0 <= SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_v_s_0;
            end

            if (SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1 & SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_R_v_1 <= SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0(STALLREG,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid <= 1'b0;
            SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid <= SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall & (SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid | SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_i_valid);

            if (SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data0 <= i_unnamed_conv_process10_vt_select_31_b;
                SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data1 <= i_cmp2_i494_conv_process4_c;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_i_valid = SE_i_cmp2_i494_conv_process4_V0;
    // Stall signal propagation
    assign SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall = SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid | ~ (SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_V = SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid : SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_i_valid;

    // Data0
    assign SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D0 = SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data0 : i_unnamed_conv_process10_vt_select_31_b;
    // Data1
    assign SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_D1 = SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_valid == 1'b1 ? SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_r_data1 : i_cmp2_i494_conv_process4_c;

    // SE_i_cmp2_i494_conv_process4(STALLENABLE,107)
    // Valid signal propagation
    assign SE_i_cmp2_i494_conv_process4_V0 = SE_i_cmp2_i494_conv_process4_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp2_i494_conv_process4_s_tv_0 = SR_SE_redist0_i_unnamed_conv_process10_vt_select_31_b_1_0_backStall & SE_i_cmp2_i494_conv_process4_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp2_i494_conv_process4_backEN = ~ (SE_i_cmp2_i494_conv_process4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp2_i494_conv_process4_v_s_0 = SE_i_cmp2_i494_conv_process4_backEN & SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V0;
    // Backward Stall generation
    assign SE_i_cmp2_i494_conv_process4_backStall = ~ (SE_i_cmp2_i494_conv_process4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp2_i494_conv_process4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp2_i494_conv_process4_backEN == 1'b0)
            begin
                SE_i_cmp2_i494_conv_process4_R_v_0 <= SE_i_cmp2_i494_conv_process4_R_v_0 & SE_i_cmp2_i494_conv_process4_s_tv_0;
            end
            else
            begin
                SE_i_cmp2_i494_conv_process4_R_v_0 <= SE_i_cmp2_i494_conv_process4_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2(STALLENABLE,111)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_backStall = SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_and0 = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract63_conv_process0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_and0;

    // SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0(STALLENABLE,138)
    // Valid signal propagation
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V0 = SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V1 = SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_0 = SE_i_cmp2_i494_conv_process4_backStall & SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0;
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_stall_out & SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_or0 = SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_0;
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN = ~ (SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_1 | SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_v_s_0 = SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_V0;
    // Backward Stall generation
    assign SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backStall = ~ (SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0 & SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_0 <= SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1 & SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_R_v_1 <= SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13(STALLENABLE,117)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_valid_out;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2(BITJOIN,94)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_q = i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_out_dest_data_out_6_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2(BITSELECT,95)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_q[31:0]);

    // i_add_i80_conv_process3(ADD,25)@1
    assign i_add_i80_conv_process3_a = {1'b0, i_mul_i_conv_process1_vt_join_q};
    assign i_add_i80_conv_process3_b = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_param_fca_9_extract58_conv_process2_b};
    assign i_add_i80_conv_process3_o = $unsigned(i_add_i80_conv_process3_a) + $unsigned(i_add_i80_conv_process3_b);
    assign i_add_i80_conv_process3_q = i_add_i80_conv_process3_o[32:0];

    // bgTrunc_i_add_i80_conv_process3_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_add_i80_conv_process3_sel_x_b = i_add_i80_conv_process3_q[31:0];

    // redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_add_i80_conv_process3_sel_x_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13(BLACKBOX,31)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000cess56_conv_process0 thei_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_49_0(redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_backStall),
        .in_valid_in(SE_redist3_bgTrunc_i_add_i80_conv_process3_sel_x_b_1_0_V1),
        .out_intel_reserved_ffwd_49_0(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_intel_reserved_ffwd_49_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,7)
    assign out_intel_reserved_ffwd_49_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_out_intel_reserved_ffwd_49_0;

    // dupName_0_sync_out_x(GPOUT,8)@4
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_conv_process56_conv_process13_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,9)
    assign out_intel_reserved_ffwd_50_0 = i_llvm_fpga_ffwd_source_i1_unnamed_conv_process57_conv_process14_out_intel_reserved_ffwd_50_0;

    // dupName_2_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_51_0 = i_llvm_fpga_ffwd_source_i33_unnamed_conv_process58_conv_process15_out_intel_reserved_ffwd_51_0;

    // regfree_osync(GPOUT,63)
    assign out_intel_reserved_ffwd_48_0 = i_llvm_fpga_ffwd_source_i32_unnamed_conv_process55_conv_process12_out_intel_reserved_ffwd_48_0;

    // sync_out(GPOUT,67)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
