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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body18_i0000r91836_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body18_i0000r91836_conv_process0 (
    output wire [0:0] out_c1_exi23_0_tpl,
    output wire [0:0] out_c1_exi23_1_tpl,
    output wire [0:0] out_c1_exi23_2_tpl,
    output wire [0:0] out_c1_exi23_3_tpl,
    output wire [0:0] out_c1_exi23_4_tpl,
    output wire [0:0] out_c1_exi23_5_tpl,
    output wire [0:0] out_c1_exi23_6_tpl,
    output wire [0:0] out_c1_exi23_7_tpl,
    output wire [0:0] out_c1_exi23_8_tpl,
    output wire [0:0] out_c1_exi23_9_tpl,
    output wire [0:0] out_c1_exi23_10_tpl,
    output wire [0:0] out_c1_exi23_11_tpl,
    output wire [0:0] out_c1_exi23_12_tpl,
    output wire [0:0] out_c1_exi23_13_tpl,
    output wire [0:0] out_c1_exi23_14_tpl,
    output wire [0:0] out_c1_exi23_15_tpl,
    output wire [0:0] out_c1_exi23_16_tpl,
    output wire [0:0] out_c1_exi23_17_tpl,
    output wire [0:0] out_c1_exi23_18_tpl,
    output wire [0:0] out_c1_exi23_19_tpl,
    output wire [0:0] out_c1_exi23_20_tpl,
    output wire [0:0] out_c1_exi23_21_tpl,
    output wire [0:0] out_c1_exi23_22_tpl,
    output wire [31:0] out_c1_exi23_23_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c1_eni17_0_tpl,
    input wire [0:0] in_c1_eni17_1_tpl,
    input wire [0:0] in_c1_eni17_2_tpl,
    input wire [0:0] in_c1_eni17_3_tpl,
    input wire [0:0] in_c1_eni17_4_tpl,
    input wire [0:0] in_c1_eni17_5_tpl,
    input wire [0:0] in_c1_eni17_6_tpl,
    input wire [0:0] in_c1_eni17_7_tpl,
    input wire [0:0] in_c1_eni17_8_tpl,
    input wire [0:0] in_c1_eni17_9_tpl,
    input wire [0:0] in_c1_eni17_10_tpl,
    input wire [0:0] in_c1_eni17_11_tpl,
    input wire [0:0] in_c1_eni17_12_tpl,
    input wire [0:0] in_c1_eni17_13_tpl,
    input wire [0:0] in_c1_eni17_14_tpl,
    input wire [0:0] in_c1_eni17_15_tpl,
    input wire [0:0] in_c1_eni17_16_tpl,
    input wire [31:0] in_c1_eni17_17_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_75_0,
    input wire [0:0] in_intel_reserved_ffwd_77_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next18_conv_process27_sel_x_b;
    wire [0:0] i_first_cleanup182_conv_process3_sel_x_b;
    wire [0:0] i_last_initeration178_conv_process10_sel_x_b;
    wire [1:0] c_i2_174_q;
    wire [3:0] c_i4_178_q;
    wire [3:0] c_i4_376_q;
    wire [1:0] i_cleanups_shl181_conv_process5_vt_join_q;
    wire [0:0] i_cleanups_shl181_conv_process5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor183_conv_process4_q;
    wire [0:0] i_first_cleanup_xor183_or190_conv_process19_q;
    wire [0:0] i_first_cleanup_xor183_or192_conv_process21_q;
    wire [0:0] i_first_cleanup_xor183_or193_conv_process23_q;
    wire [0:0] i_first_cleanup_xor183_or_conv_process18_q;
    wire [4:0] i_fpga_indvars_iv_next18_conv_process27_a;
    wire [4:0] i_fpga_indvars_iv_next18_conv_process27_b;
    logic [4:0] i_fpga_indvars_iv_next18_conv_process27_o;
    wire [4:0] i_fpga_indvars_iv_next18_conv_process27_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process13_out_dest_data_out_75_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_lnot160_conv_process16_out_dest_data_out_77_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor122_conv_process22_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor123_conv_process20_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor124_conv_process12_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor125_conv_process15_out_dest_data_out_56_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process116_conv_process29_out_dest_data_out_55_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going177_conv_process6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_feedback_stall_out_112;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_feedback_stall_out_116;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_feedback_stall_out_115;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_feedback_stall_out_114;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_feedback_stall_out_113;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_feedback_stall_out_111;
    wire [1:0] i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_feedback_stall_out_110;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_feedback_stall_out_108;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_data_out;
    wire [0:0] i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_out_112;
    wire [0:0] i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_valid_out_112;
    wire [0:0] i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_out_116;
    wire [0:0] i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_valid_out_116;
    wire [0:0] i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_out_115;
    wire [0:0] i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_valid_out_115;
    wire [0:0] i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_out_114;
    wire [0:0] i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_valid_out_114;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_out_113;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_valid_out_113;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_out_111;
    wire [0:0] i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_valid_out_111;
    wire [7:0] i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_out_110;
    wire [0:0] i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_valid_out_110;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_out_108;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_valid_out_108;
    wire [0:0] i_masked186_conv_process36_q;
    wire [0:0] i_next_cleanups185_conv_process34_s;
    reg [1:0] i_next_cleanups185_conv_process34_q;
    wire [1:0] i_next_initerations176_conv_process8_vt_join_q;
    wire [0:0] i_next_initerations176_conv_process8_vt_select_0_b;
    wire [0:0] i_notcmp173_conv_process31_q;
    wire [0:0] i_or184_conv_process33_q;
    wire [0:0] i_phi_decision143_xor145_or_conv_process14_q;
    wire [0:0] i_phi_decision143_xor_or_conv_process17_q;
    wire [0:0] i_unnamed_conv_process30_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid134_i_cleanups_shl181_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_s;
    reg [1:0] leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid140_i_next_initerations176_conv_process0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid142_i_next_initerations176_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_s;
    reg [1:0] rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_q;
    wire [0:0] i_exitcond19_conv_process25_cmp_nsign_qi;
    reg [0:0] i_exitcond19_conv_process25_cmp_nsign_q;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q;
    reg [0:0] redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q;
    reg [0:0] redist2_sync_together105_aunroll_x_in_c1_eni17_2_tpl_1_q;
    reg [0:0] redist3_sync_together105_aunroll_x_in_c1_eni17_3_tpl_1_q;
    reg [0:0] redist4_sync_together105_aunroll_x_in_c1_eni17_4_tpl_1_q;
    reg [0:0] redist5_sync_together105_aunroll_x_in_c1_eni17_5_tpl_1_q;
    reg [0:0] redist6_sync_together105_aunroll_x_in_c1_eni17_6_tpl_1_q;
    reg [0:0] redist7_sync_together105_aunroll_x_in_c1_eni17_7_tpl_1_q;
    reg [0:0] redist8_sync_together105_aunroll_x_in_c1_eni17_8_tpl_1_q;
    reg [0:0] redist9_sync_together105_aunroll_x_in_c1_eni17_9_tpl_1_q;
    reg [0:0] redist10_sync_together105_aunroll_x_in_c1_eni17_10_tpl_1_q;
    reg [0:0] redist11_sync_together105_aunroll_x_in_c1_eni17_11_tpl_1_q;
    reg [0:0] redist12_sync_together105_aunroll_x_in_c1_eni17_12_tpl_1_q;
    reg [0:0] redist13_sync_together105_aunroll_x_in_c1_eni17_13_tpl_1_q;
    reg [0:0] redist14_sync_together105_aunroll_x_in_c1_eni17_14_tpl_1_q;
    reg [0:0] redist15_sync_together105_aunroll_x_in_c1_eni17_15_tpl_1_q;
    reg [0:0] redist16_sync_together105_aunroll_x_in_c1_eni17_16_tpl_1_q;
    reg [31:0] redist17_sync_together105_aunroll_x_in_c1_eni17_17_tpl_1_q;
    reg [0:0] redist18_sync_together105_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,104)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist17_sync_together105_aunroll_x_in_c1_eni17_17_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together105_aunroll_x_in_c1_eni17_17_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together105_aunroll_x_in_c1_eni17_17_tpl_1_q <= $unsigned(in_c1_eni17_17_tpl);
        end
    end

    // redist16_sync_together105_aunroll_x_in_c1_eni17_16_tpl_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together105_aunroll_x_in_c1_eni17_16_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together105_aunroll_x_in_c1_eni17_16_tpl_1_q <= $unsigned(in_c1_eni17_16_tpl);
        end
    end

    // redist15_sync_together105_aunroll_x_in_c1_eni17_15_tpl_1(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together105_aunroll_x_in_c1_eni17_15_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together105_aunroll_x_in_c1_eni17_15_tpl_1_q <= $unsigned(in_c1_eni17_15_tpl);
        end
    end

    // redist14_sync_together105_aunroll_x_in_c1_eni17_14_tpl_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together105_aunroll_x_in_c1_eni17_14_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together105_aunroll_x_in_c1_eni17_14_tpl_1_q <= $unsigned(in_c1_eni17_14_tpl);
        end
    end

    // redist13_sync_together105_aunroll_x_in_c1_eni17_13_tpl_1(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together105_aunroll_x_in_c1_eni17_13_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together105_aunroll_x_in_c1_eni17_13_tpl_1_q <= $unsigned(in_c1_eni17_13_tpl);
        end
    end

    // redist12_sync_together105_aunroll_x_in_c1_eni17_12_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together105_aunroll_x_in_c1_eni17_12_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together105_aunroll_x_in_c1_eni17_12_tpl_1_q <= $unsigned(in_c1_eni17_12_tpl);
        end
    end

    // redist11_sync_together105_aunroll_x_in_c1_eni17_11_tpl_1(DELAY,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together105_aunroll_x_in_c1_eni17_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together105_aunroll_x_in_c1_eni17_11_tpl_1_q <= $unsigned(in_c1_eni17_11_tpl);
        end
    end

    // redist10_sync_together105_aunroll_x_in_c1_eni17_10_tpl_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together105_aunroll_x_in_c1_eni17_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together105_aunroll_x_in_c1_eni17_10_tpl_1_q <= $unsigned(in_c1_eni17_10_tpl);
        end
    end

    // redist9_sync_together105_aunroll_x_in_c1_eni17_9_tpl_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together105_aunroll_x_in_c1_eni17_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together105_aunroll_x_in_c1_eni17_9_tpl_1_q <= $unsigned(in_c1_eni17_9_tpl);
        end
    end

    // redist8_sync_together105_aunroll_x_in_c1_eni17_8_tpl_1(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together105_aunroll_x_in_c1_eni17_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together105_aunroll_x_in_c1_eni17_8_tpl_1_q <= $unsigned(in_c1_eni17_8_tpl);
        end
    end

    // redist7_sync_together105_aunroll_x_in_c1_eni17_7_tpl_1(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together105_aunroll_x_in_c1_eni17_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together105_aunroll_x_in_c1_eni17_7_tpl_1_q <= $unsigned(in_c1_eni17_7_tpl);
        end
    end

    // redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q <= $unsigned(in_c1_eni17_1_tpl);
        end
    end

    // valid_fanout_reg18(REG,122)@1 + 1
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

    // valid_fanout_reg19(REG,123)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46(BLACKBOX,78)@2
    // out out_feedback_out_116@20000000
    // out out_feedback_valid_out_116@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp194304_push116_conv_process0 thei_llvm_fpga_push_i1_notcmp194304_push116_conv_process46 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_data_out),
        .in_feedback_stall_in_116(i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_feedback_stall_out_116),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_116(i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_out_116),
        .out_feedback_valid_out_116(i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_valid_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together105_aunroll_x_in_c1_eni17_6_tpl_1(DELAY,153)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together105_aunroll_x_in_c1_eni17_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together105_aunroll_x_in_c1_eni17_6_tpl_1_q <= $unsigned(in_c1_eni17_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45(BLACKBOX,69)@2
    // out out_feedback_stall_out_116@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process0 thei_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45 (
        .in_data_in(redist6_sync_together105_aunroll_x_in_c1_eni17_6_tpl_1_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_116(i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_out_116),
        .in_feedback_valid_in_116(i_llvm_fpga_push_i1_notcmp194304_push116_conv_process46_out_feedback_valid_out_116),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_data_out),
        .out_feedback_stall_out_116(i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_feedback_stall_out_116),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg16(REG,120)@1 + 1
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

    // valid_fanout_reg17(REG,121)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44(BLACKBOX,79)@2
    // out out_feedback_out_115@20000000
    // out out_feedback_valid_out_115@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp198303_push115_conv_process0 thei_llvm_fpga_push_i1_notcmp198303_push115_conv_process44 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_data_out),
        .in_feedback_stall_in_115(i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_feedback_stall_out_115),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_115(i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_out_115),
        .out_feedback_valid_out_115(i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_valid_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together105_aunroll_x_in_c1_eni17_5_tpl_1(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together105_aunroll_x_in_c1_eni17_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together105_aunroll_x_in_c1_eni17_5_tpl_1_q <= $unsigned(in_c1_eni17_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43(BLACKBOX,70)@2
    // out out_feedback_stall_out_115@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process0 thei_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43 (
        .in_data_in(redist5_sync_together105_aunroll_x_in_c1_eni17_5_tpl_1_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_115(i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_out_115),
        .in_feedback_valid_in_115(i_llvm_fpga_push_i1_notcmp198303_push115_conv_process44_out_feedback_valid_out_115),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_data_out),
        .out_feedback_stall_out_115(i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_feedback_stall_out_115),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,118)@1 + 1
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

    // valid_fanout_reg15(REG,119)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42(BLACKBOX,80)@2
    // out out_feedback_out_114@20000000
    // out out_feedback_valid_out_114@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp202301_push114_conv_process0 thei_llvm_fpga_push_i1_notcmp202301_push114_conv_process42 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_data_out),
        .in_feedback_stall_in_114(i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_feedback_stall_out_114),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_114(i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_out_114),
        .out_feedback_valid_out_114(i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_valid_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together105_aunroll_x_in_c1_eni17_4_tpl_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together105_aunroll_x_in_c1_eni17_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together105_aunroll_x_in_c1_eni17_4_tpl_1_q <= $unsigned(in_c1_eni17_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41(BLACKBOX,71)@2
    // out out_feedback_stall_out_114@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process0 thei_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41 (
        .in_data_in(redist4_sync_together105_aunroll_x_in_c1_eni17_4_tpl_1_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_114(i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_out_114),
        .in_feedback_valid_in_114(i_llvm_fpga_push_i1_notcmp202301_push114_conv_process42_out_feedback_valid_out_114),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_data_out),
        .out_feedback_stall_out_114(i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_feedback_stall_out_114),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,116)@1 + 1
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

    // valid_fanout_reg13(REG,117)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40(BLACKBOX,81)@2
    // out out_feedback_out_113@20000000
    // out out_feedback_valid_out_113@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp206295_push113_conv_process0 thei_llvm_fpga_push_i1_notcmp206295_push113_conv_process40 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_data_out),
        .in_feedback_stall_in_113(i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_feedback_stall_out_113),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_113(i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_out_113),
        .out_feedback_valid_out_113(i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_valid_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together105_aunroll_x_in_c1_eni17_3_tpl_1(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together105_aunroll_x_in_c1_eni17_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together105_aunroll_x_in_c1_eni17_3_tpl_1_q <= $unsigned(in_c1_eni17_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39(BLACKBOX,72)@2
    // out out_feedback_stall_out_113@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process0 thei_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39 (
        .in_data_in(redist3_sync_together105_aunroll_x_in_c1_eni17_3_tpl_1_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_113(i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_out_113),
        .in_feedback_valid_in_113(i_llvm_fpga_push_i1_notcmp206295_push113_conv_process40_out_feedback_valid_out_113),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_data_out),
        .out_feedback_stall_out_113(i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_feedback_stall_out_113),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,115)@1 + 1
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

    // valid_fanout_reg10(REG,114)@1 + 1
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

    // redist2_sync_together105_aunroll_x_in_c1_eni17_2_tpl_1(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together105_aunroll_x_in_c1_eni17_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together105_aunroll_x_in_c1_eni17_2_tpl_1_q <= $unsigned(in_c1_eni17_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37(BLACKBOX,68)@2
    // out out_feedback_stall_out_112@20000000
    cnn_top_i_llvm_fpga_pop_i1_lnot285_pop112_conv_process0 thei_llvm_fpga_pop_i1_lnot285_pop112_conv_process37 (
        .in_data_in(redist2_sync_together105_aunroll_x_in_c1_eni17_2_tpl_1_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_112(i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_out_112),
        .in_feedback_valid_in_112(i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_valid_out_112),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_data_out),
        .out_feedback_stall_out_112(i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_feedback_stall_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_lnot285_push112_conv_process38(BLACKBOX,77)@2
    // out out_feedback_out_112@20000000
    // out out_feedback_valid_out_112@20000000
    cnn_top_i_llvm_fpga_push_i1_lnot285_push112_conv_process0 thei_llvm_fpga_push_i1_lnot285_push112_conv_process38 (
        .in_data_in(i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_data_out),
        .in_feedback_stall_in_112(i_llvm_fpga_pop_i1_lnot285_pop112_conv_process37_out_feedback_stall_out_112),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_data_out),
        .out_feedback_out_112(i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_out_112),
        .out_feedback_valid_out_112(i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_feedback_valid_out_112),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together105_aunroll_x_in_i_valid_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together105_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist18_sync_together105_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x(BITSELECT,132)@2
    assign leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_in = i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid134_i_cleanups_shl181_conv_process0_shift_x(BITJOIN,133)@2
    assign leftShiftStage0Idx1_uid134_i_cleanups_shl181_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid133_i_cleanups_shl181_conv_process0_shift_x_b, GND_q};

    // leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x(MUX,135)@2
    assign leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out or leftShiftStage0Idx1_uid134_i_cleanups_shl181_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out;
            1'b1 : leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_q = leftShiftStage0Idx1_uid134_i_cleanups_shl181_conv_process0_shift_x_q;
            default : leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl181_conv_process5_vt_select_1(BITSELECT,50)@2
    assign i_cleanups_shl181_conv_process5_vt_select_1_b = leftShiftStage0_uid136_i_cleanups_shl181_conv_process0_shift_x_q[1:1];

    // i_cleanups_shl181_conv_process5_vt_join(BITJOIN,49)@2
    assign i_cleanups_shl181_conv_process5_vt_join_q = {i_cleanups_shl181_conv_process5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor183_conv_process4(LOGICAL,53)@2
    assign i_first_cleanup_xor183_conv_process4_q = i_first_cleanup182_conv_process3_sel_x_b ^ VCC_q;

    // i_or184_conv_process33(LOGICAL,92)@2
    assign i_or184_conv_process33_q = i_notcmp173_conv_process31_q | i_first_cleanup_xor183_conv_process4_q;

    // i_next_cleanups185_conv_process34(MUX,87)@2
    assign i_next_cleanups185_conv_process34_s = i_or184_conv_process33_q;
    always @(i_next_cleanups185_conv_process34_s or i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out or i_cleanups_shl181_conv_process5_vt_join_q)
    begin
        unique case (i_next_cleanups185_conv_process34_s)
            1'b0 : i_next_cleanups185_conv_process34_q = i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out;
            1'b1 : i_next_cleanups185_conv_process34_q = i_cleanups_shl181_conv_process5_vt_join_q;
            default : i_next_cleanups185_conv_process34_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups180_push111_conv_process35(BLACKBOX,83)@2
    // out out_feedback_out_111@20000000
    // out out_feedback_valid_out_111@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups180_push111_conv_process0 thei_llvm_fpga_push_i2_cleanups180_push111_conv_process35 (
        .in_data_in(i_next_cleanups185_conv_process34_q),
        .in_feedback_stall_in_111(i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_feedback_stall_out_111),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist18_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_111(i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_out_111),
        .out_feedback_valid_out_111(i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_valid_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_174(CONSTANT,44)
    assign c_i2_174_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2(BLACKBOX,73)@2
    // out out_feedback_stall_out_111@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process0 thei_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2 (
        .in_data_in(c_i2_174_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_111(i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_out_111),
        .in_feedback_valid_in_111(i_llvm_fpga_push_i2_cleanups180_push111_conv_process35_out_feedback_valid_out_111),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist18_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out),
        .out_feedback_stall_out_111(i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_feedback_stall_out_111),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup182_conv_process3_sel_x(BITSELECT,8)@2
    assign i_first_cleanup182_conv_process3_sel_x_b = i_llvm_fpga_pop_i2_cleanups180_pop111_conv_process2_out_data_out[0:0];

    // i_llvm_fpga_push_i1_notexitcond187_conv_process32(BLACKBOX,82)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond187_conv_process0 thei_llvm_fpga_push_i1_notexitcond187_conv_process32 (
        .in_data_in(i_unnamed_conv_process30_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_not_exitcond_stall_out),
        .in_first_cleanup182(i_first_cleanup182_conv_process3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist18_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,107)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid140_i_next_initerations176_conv_process0_shift_x(BITSELECT,139)@2
    assign rightShiftStage0Idx1Rng1_uid140_i_next_initerations176_conv_process0_shift_x_b = i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid142_i_next_initerations176_conv_process0_shift_x(BITJOIN,141)@2
    assign rightShiftStage0Idx1_uid142_i_next_initerations176_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid140_i_next_initerations176_conv_process0_shift_x_b};

    // valid_fanout_reg1(REG,105)@1 + 1
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

    // valid_fanout_reg2(REG,106)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations175_push110_conv_process9(BLACKBOX,84)@2
    // out out_feedback_out_110@20000000
    // out out_feedback_valid_out_110@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations0000ush110_conv_process0 thei_llvm_fpga_push_i2_initerations175_push110_conv_process9 (
        .in_data_in(i_next_initerations176_conv_process8_vt_join_q),
        .in_feedback_stall_in_110(i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_feedback_stall_out_110),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_110(i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_out_110),
        .out_feedback_valid_out_110(i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_valid_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7(BLACKBOX,74)@2
    // out out_feedback_stall_out_110@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations175_pop110_conv_process0 thei_llvm_fpga_pop_i2_initerations175_pop110_conv_process7 (
        .in_data_in(c_i2_174_q),
        .in_dir(redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q),
        .in_feedback_in_110(i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_out_110),
        .in_feedback_valid_in_110(i_llvm_fpga_push_i2_initerations175_push110_conv_process9_out_feedback_valid_out_110),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_data_out),
        .out_feedback_stall_out_110(i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_feedback_stall_out_110),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x(MUX,143)@2
    assign rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_data_out or rightShiftStage0Idx1_uid142_i_next_initerations176_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_initerations175_pop110_conv_process7_out_data_out;
            1'b1 : rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_q = rightShiftStage0Idx1_uid142_i_next_initerations176_conv_process0_shift_x_q;
            default : rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations176_conv_process8_vt_select_0(BITSELECT,90)@2
    assign i_next_initerations176_conv_process8_vt_select_0_b = rightShiftStage0_uid144_i_next_initerations176_conv_process0_shift_x_q[0:0];

    // i_next_initerations176_conv_process8_vt_join(BITJOIN,89)@2
    assign i_next_initerations176_conv_process8_vt_join_q = {GND_q, i_next_initerations176_conv_process8_vt_select_0_b};

    // i_last_initeration178_conv_process10_sel_x(BITSELECT,9)@2
    assign i_last_initeration178_conv_process10_sel_x_b = i_next_initerations176_conv_process8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration179_conv_process11(BLACKBOX,76)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration179_conv_process0 thei_llvm_fpga_push_i1_lastiniteration179_conv_process11 (
        .in_data_in(i_last_initeration178_conv_process10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_initeration_stall_out),
        .in_keep_going177(redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going177_conv_process6(BLACKBOX,67)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going177_conv_process0 thei_llvm_fpga_pipeline_keep_going177_conv_process6 (
        .in_data_in(in_c1_eni17_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration179_conv_process11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond187_conv_process32_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_178(CONSTANT,45)
    assign c_i4_178_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next18_conv_process27(ADD,58)@1
    assign i_fpga_indvars_iv_next18_conv_process27_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_data_out};
    assign i_fpga_indvars_iv_next18_conv_process27_b = {1'b0, c_i4_178_q};
    assign i_fpga_indvars_iv_next18_conv_process27_o = $unsigned(i_fpga_indvars_iv_next18_conv_process27_a) + $unsigned(i_fpga_indvars_iv_next18_conv_process27_b);
    assign i_fpga_indvars_iv_next18_conv_process27_q = i_fpga_indvars_iv_next18_conv_process27_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next18_conv_process27_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next18_conv_process27_sel_x_b = i_fpga_indvars_iv_next18_conv_process27_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28(BLACKBOX,85)@1
    // out out_feedback_out_108@20000000
    // out out_feedback_valid_out_108@20000000
    cnn_top_i_llvm_fpga_push_i4_fpga_indvars0000ush108_conv_process0 thei_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next18_conv_process27_sel_x_b),
        .in_feedback_stall_in_108(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_feedback_stall_out_108),
        .in_keep_going177(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_108(i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_out_108),
        .out_feedback_valid_out_108(i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_valid_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_376(CONSTANT,46)
    assign c_i4_376_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24(BLACKBOX,75)@1
    // out out_feedback_stall_out_108@20000000
    cnn_top_i_llvm_fpga_pop_i4_fpga_indvars_0000pop108_conv_process0 thei_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24 (
        .in_data_in(c_i4_376_q),
        .in_dir(in_c1_eni17_1_tpl),
        .in_feedback_in_108(i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_out_108),
        .in_feedback_valid_in_108(i_llvm_fpga_push_i4_fpga_indvars_iv17_push108_conv_process28_out_feedback_valid_out_108),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_data_out),
        .out_feedback_stall_out_108(i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_feedback_stall_out_108),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond19_conv_process25_cmp_nsign(LOGICAL,146)@1 + 1
    assign i_exitcond19_conv_process25_cmp_nsign_qi = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv17_pop108_conv_process24_out_data_out[3:3]));
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_exitcond19_conv_process25_cmp_nsign_delay ( .xin(i_exitcond19_conv_process25_cmp_nsign_qi), .xout(i_exitcond19_conv_process25_cmp_nsign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process116_conv_process29(BLACKBOX,66)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ess116_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process116_conv_process29 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist18_sync_together105_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process116_conv_process29_out_dest_data_out_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process30(LOGICAL,95)@2
    assign i_unnamed_conv_process30_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process116_conv_process29_out_dest_data_out_55_0 & i_exitcond19_conv_process25_cmp_nsign_q;

    // i_notcmp173_conv_process31(LOGICAL,91)@2
    assign i_notcmp173_conv_process31_q = i_unnamed_conv_process30_q ^ VCC_q;

    // i_masked186_conv_process36(LOGICAL,86)@2
    assign i_masked186_conv_process36_q = i_notcmp173_conv_process31_q & i_first_cleanup182_conv_process3_sel_x_b;

    // valid_fanout_reg9(REG,113)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor122_conv_process22(BLACKBOX,62)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_phi_dec0000xor122_conv_process0 thei_llvm_fpga_ffwd_dest_i1_phi_decision143_xor122_conv_process22 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor122_conv_process22_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor183_or193_conv_process23(LOGICAL,56)@2
    assign i_first_cleanup_xor183_or193_conv_process23_q = i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor122_conv_process22_out_dest_data_out_56_0 | i_first_cleanup_xor183_conv_process4_q;

    // valid_fanout_reg8(REG,112)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor123_conv_process20(BLACKBOX,63)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_phi_dec0000xor123_conv_process0 thei_llvm_fpga_ffwd_dest_i1_phi_decision143_xor123_conv_process20 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor123_conv_process20_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor183_or192_conv_process21(LOGICAL,55)@2
    assign i_first_cleanup_xor183_or192_conv_process21_q = i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor123_conv_process20_out_dest_data_out_56_0 | i_first_cleanup_xor183_conv_process4_q;

    // valid_fanout_reg4(REG,108)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor124_conv_process12(BLACKBOX,64)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_phi_dec0000xor124_conv_process0 thei_llvm_fpga_ffwd_dest_i1_phi_decision143_xor124_conv_process12 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor124_conv_process12_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,109)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process13(BLACKBOX,60)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process0 thei_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process13 (
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_75_0(i_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process13_out_dest_data_out_75_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision143_xor145_or_conv_process14(LOGICAL,93)@2
    assign i_phi_decision143_xor145_or_conv_process14_q = i_llvm_fpga_ffwd_dest_i1_l_0_off0492158_conv_process13_out_dest_data_out_75_0 | i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor124_conv_process12_out_dest_data_out_56_0;

    // i_first_cleanup_xor183_or190_conv_process19(LOGICAL,54)@2
    assign i_first_cleanup_xor183_or190_conv_process19_q = i_phi_decision143_xor145_or_conv_process14_q | i_first_cleanup_xor183_conv_process4_q;

    // valid_fanout_reg6(REG,110)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor125_conv_process15(BLACKBOX,65)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_phi_dec0000xor125_conv_process0 thei_llvm_fpga_ffwd_dest_i1_phi_decision143_xor125_conv_process15 (
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_56_0(i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor125_conv_process15_out_dest_data_out_56_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,111)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_lnot160_conv_process16(BLACKBOX,61)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_lnot160_conv_process0 thei_llvm_fpga_ffwd_dest_i1_lnot160_conv_process16 (
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_77_0(i_llvm_fpga_ffwd_dest_i1_lnot160_conv_process16_out_dest_data_out_77_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision143_xor_or_conv_process17(LOGICAL,94)@2
    assign i_phi_decision143_xor_or_conv_process17_q = i_llvm_fpga_ffwd_dest_i1_lnot160_conv_process16_out_dest_data_out_77_0 | i_llvm_fpga_ffwd_dest_i1_phi_decision143_xor125_conv_process15_out_dest_data_out_56_0;

    // i_first_cleanup_xor183_or_conv_process18(LOGICAL,57)@2
    assign i_first_cleanup_xor183_or_conv_process18_q = i_phi_decision143_xor_or_conv_process17_q | i_first_cleanup_xor183_conv_process4_q;

    // redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,14)@2
    assign out_c1_exi23_0_tpl = GND_q;
    assign out_c1_exi23_1_tpl = redist0_i_llvm_fpga_pipeline_keep_going177_conv_process6_out_data_out_1_q;
    assign out_c1_exi23_2_tpl = i_first_cleanup_xor183_or_conv_process18_q;
    assign out_c1_exi23_3_tpl = i_first_cleanup_xor183_or190_conv_process19_q;
    assign out_c1_exi23_4_tpl = i_first_cleanup_xor183_or192_conv_process21_q;
    assign out_c1_exi23_5_tpl = i_first_cleanup_xor183_or193_conv_process23_q;
    assign out_c1_exi23_6_tpl = i_masked186_conv_process36_q;
    assign out_c1_exi23_7_tpl = i_llvm_fpga_push_i1_lnot285_push112_conv_process38_out_data_out;
    assign out_c1_exi23_8_tpl = i_llvm_fpga_pop_i1_notcmp206295_pop113_conv_process39_out_data_out;
    assign out_c1_exi23_9_tpl = i_llvm_fpga_pop_i1_notcmp202301_pop114_conv_process41_out_data_out;
    assign out_c1_exi23_10_tpl = i_llvm_fpga_pop_i1_notcmp198303_pop115_conv_process43_out_data_out;
    assign out_c1_exi23_11_tpl = i_llvm_fpga_pop_i1_notcmp194304_pop116_conv_process45_out_data_out;
    assign out_c1_exi23_12_tpl = redist1_sync_together105_aunroll_x_in_c1_eni17_1_tpl_1_q;
    assign out_c1_exi23_13_tpl = redist7_sync_together105_aunroll_x_in_c1_eni17_7_tpl_1_q;
    assign out_c1_exi23_14_tpl = redist8_sync_together105_aunroll_x_in_c1_eni17_8_tpl_1_q;
    assign out_c1_exi23_15_tpl = redist9_sync_together105_aunroll_x_in_c1_eni17_9_tpl_1_q;
    assign out_c1_exi23_16_tpl = redist10_sync_together105_aunroll_x_in_c1_eni17_10_tpl_1_q;
    assign out_c1_exi23_17_tpl = redist11_sync_together105_aunroll_x_in_c1_eni17_11_tpl_1_q;
    assign out_c1_exi23_18_tpl = redist12_sync_together105_aunroll_x_in_c1_eni17_12_tpl_1_q;
    assign out_c1_exi23_19_tpl = redist13_sync_together105_aunroll_x_in_c1_eni17_13_tpl_1_q;
    assign out_c1_exi23_20_tpl = redist14_sync_together105_aunroll_x_in_c1_eni17_14_tpl_1_q;
    assign out_c1_exi23_21_tpl = redist15_sync_together105_aunroll_x_in_c1_eni17_15_tpl_1_q;
    assign out_c1_exi23_22_tpl = redist16_sync_together105_aunroll_x_in_c1_eni17_16_tpl_1_q;
    assign out_c1_exi23_23_tpl = redist17_sync_together105_aunroll_x_in_c1_eni17_17_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // ext_sig_sync_out(GPOUT,47)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going177_conv_process6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going177_conv_process6_out_pipeline_valid_out;

endmodule
