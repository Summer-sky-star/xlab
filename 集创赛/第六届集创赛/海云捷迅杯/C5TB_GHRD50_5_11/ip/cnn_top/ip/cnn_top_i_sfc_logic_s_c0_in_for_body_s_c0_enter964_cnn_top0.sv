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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_body_s_c0_enter964_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_body_s_c0_enter964_cnn_top0 (
    output wire [0:0] out_c0_exi21_0_tpl,
    output wire [0:0] out_c0_exi21_1_tpl,
    output wire [0:0] out_c0_exi21_2_tpl,
    output wire [63:0] out_c0_exi21_3_tpl,
    output wire [0:0] out_c0_exi21_4_tpl,
    output wire [0:0] out_c0_exi21_5_tpl,
    output wire [0:0] out_c0_exi21_6_tpl,
    output wire [0:0] out_c0_exi21_7_tpl,
    output wire [0:0] out_c0_exi21_8_tpl,
    output wire [0:0] out_c0_exi21_9_tpl,
    output wire [0:0] out_c0_exi21_10_tpl,
    output wire [0:0] out_c0_exi21_11_tpl,
    output wire [0:0] out_c0_exi21_12_tpl,
    output wire [0:0] out_c0_exi21_13_tpl,
    output wire [0:0] out_c0_exi21_14_tpl,
    output wire [0:0] out_c0_exi21_15_tpl,
    output wire [0:0] out_c0_exi21_16_tpl,
    output wire [0:0] out_c0_exi21_17_tpl,
    output wire [0:0] out_c0_exi21_18_tpl,
    output wire [0:0] out_c0_exi21_19_tpl,
    output wire [0:0] out_c0_exi21_20_tpl,
    output wire [0:0] out_c0_exi21_21_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn_top1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_cnn_top58_sel_x_b;
    wire [31:0] bgTrunc_i_inc_cnn_top48_sel_x_b;
    wire [31:0] c_i32_077_recast_x_q;
    wire [31:0] c_i32_1083_recast_x_q;
    wire [31:0] c_i32_1182_recast_x_q;
    wire [31:0] c_i32_1281_recast_x_q;
    wire [31:0] c_i32_1380_recast_x_q;
    wire [31:0] c_i32_1479_recast_x_q;
    wire [31:0] c_i32_1578_recast_x_q;
    wire [31:0] c_i32_192_recast_x_q;
    wire [31:0] c_i32_291_recast_x_q;
    wire [31:0] c_i32_390_recast_x_q;
    wire [31:0] c_i32_489_recast_x_q;
    wire [31:0] c_i32_588_recast_x_q;
    wire [31:0] c_i32_687_recast_x_q;
    wire [31:0] c_i32_786_recast_x_q;
    wire [31:0] c_i32_885_recast_x_q;
    wire [31:0] c_i32_984_recast_x_q;
    wire [0:0] i_first_cleanup68_cnn_top3_sel_x_b;
    wire [0:0] i_last_initeration64_cnn_top10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index_cnn_top0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index_cnn_top0_add_x_a;
    wire [64:0] i_mptr_bitcast_index_cnn_top0_add_x_b;
    logic [64:0] i_mptr_bitcast_index_cnn_top0_add_x_o;
    wire [64:0] i_mptr_bitcast_index_cnn_top0_add_x_q;
    wire [1:0] i_mptr_bitcast_index_cnn_top0_c_i2_01_x_q;
    wire [61:0] i_mptr_bitcast_index_cnn_top0_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index_cnn_top0_shift_join_x_q;
    wire [63:0] i_unnamed_cnn_top13_sel_x_b;
    wire [3:0] c_i4_774_q;
    wire [4:0] c_i5_1493_q;
    wire [4:0] c_i5_195_q;
    wire [3:0] i_cleanups_shl67_cnn_top5_vt_join_q;
    wire [2:0] i_cleanups_shl67_cnn_top5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor69_cnn_top4_q;
    wire [5:0] i_fpga_indvars_iv_next_cnn_top58_a;
    wire [5:0] i_fpga_indvars_iv_next_cnn_top58_b;
    logic [5:0] i_fpga_indvars_iv_next_cnn_top58_o;
    wire [5:0] i_fpga_indvars_iv_next_cnn_top58_q;
    wire [32:0] i_inc_cnn_top48_a;
    wire [32:0] i_inc_cnn_top48_b;
    logic [32:0] i_inc_cnn_top48_o;
    wire [32:0] i_inc_cnn_top48_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_cnn_top14_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_feedback_stall_out_25;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_feedback_stall_out_27;
    wire [3:0] i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_feedback_stall_out_26;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_valid_out_27;
    wire [7:0] i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_valid_out_8;
    wire [0:0] i_masked72_cnn_top60_q;
    wire [0:0] i_next_cleanups71_cnn_top56_s;
    reg [3:0] i_next_cleanups71_cnn_top56_q;
    wire [3:0] i_next_initerations62_cnn_top8_vt_join_q;
    wire [2:0] i_next_initerations62_cnn_top8_vt_select_2_b;
    wire [0:0] i_notcmp_cnn_top53_q;
    wire [0:0] i_or70_cnn_top55_q;
    wire [63:0] i_unnamed_cnn_top13_vt_join_q;
    wire [31:0] i_unnamed_cnn_top13_vt_select_31_b;
    wire [0:0] i_unnamed_cnn_top16_q;
    wire [0:0] i_unnamed_cnn_top18_q;
    wire [0:0] i_unnamed_cnn_top20_q;
    wire [0:0] i_unnamed_cnn_top22_q;
    wire [0:0] i_unnamed_cnn_top24_q;
    wire [0:0] i_unnamed_cnn_top26_q;
    wire [0:0] i_unnamed_cnn_top28_q;
    wire [0:0] i_unnamed_cnn_top30_q;
    wire [0:0] i_unnamed_cnn_top32_q;
    wire [0:0] i_unnamed_cnn_top34_q;
    wire [0:0] i_unnamed_cnn_top36_q;
    wire [0:0] i_unnamed_cnn_top38_q;
    wire [0:0] i_unnamed_cnn_top40_q;
    wire [0:0] i_unnamed_cnn_top42_q;
    wire [0:0] i_unnamed_cnn_top44_q;
    wire [0:0] i_unnamed_cnn_top46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid150_i_cleanups_shl67_cnn_top0_shift_x_q;
    wire [0:0] leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_s;
    reg [3:0] leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid156_i_next_initerations62_cnn_top0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid158_i_next_initerations62_cnn_top0_shift_x_q;
    wire [0:0] rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_s;
    reg [3:0] rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_q;
    wire [0:0] i_exitcond_cnn_top51_cmp_nsign_q;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q;
    reg [0:0] redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist2_sync_together110_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,131)@1 + 1
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

    // redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist2_sync_together110_aunroll_x_in_i_valid_1(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together110_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together110_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x(BITSELECT,148)@2
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_in = i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_b = leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid150_i_cleanups_shl67_cnn_top0_shift_x(BITJOIN,149)@2
    assign leftShiftStage0Idx1_uid150_i_cleanups_shl67_cnn_top0_shift_x_q = {leftShiftStage0Idx1Rng1_uid149_i_cleanups_shl67_cnn_top0_shift_x_b, GND_q};

    // leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x(MUX,151)@2
    assign leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_s or i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out or leftShiftStage0Idx1_uid150_i_cleanups_shl67_cnn_top0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_s)
            1'b0 : leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_q = i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out;
            1'b1 : leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_q = leftShiftStage0Idx1_uid150_i_cleanups_shl67_cnn_top0_shift_x_q;
            default : leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl67_cnn_top5_vt_select_3(BITSELECT,64)@2
    assign i_cleanups_shl67_cnn_top5_vt_select_3_b = leftShiftStage0_uid152_i_cleanups_shl67_cnn_top0_shift_x_q[3:1];

    // i_cleanups_shl67_cnn_top5_vt_join(BITJOIN,63)@2
    assign i_cleanups_shl67_cnn_top5_vt_join_q = {i_cleanups_shl67_cnn_top5_vt_select_3_b, GND_q};

    // i_or70_cnn_top55(LOGICAL,89)@2
    assign i_or70_cnn_top55_q = i_notcmp_cnn_top53_q | i_first_cleanup_xor69_cnn_top4_q;

    // i_next_cleanups71_cnn_top56(MUX,84)@2
    assign i_next_cleanups71_cnn_top56_s = i_or70_cnn_top55_q;
    always @(i_next_cleanups71_cnn_top56_s or i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out or i_cleanups_shl67_cnn_top5_vt_join_q)
    begin
        unique case (i_next_cleanups71_cnn_top56_s)
            1'b0 : i_next_cleanups71_cnn_top56_q = i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out;
            1'b1 : i_next_cleanups71_cnn_top56_q = i_cleanups_shl67_cnn_top5_vt_join_q;
            default : i_next_cleanups71_cnn_top56_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57(BLACKBOX,80)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    cnn_top_i_llvm_fpga_push_i4_cleanups66_push27_0 thei_llvm_fpga_push_i4_cleanups66_push27_cnn_top57 (
        .in_data_in(i_next_cleanups71_cnn_top56_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_feedback_stall_out_27),
        .in_keep_going63(redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_774(CONSTANT,58)
    assign c_i4_774_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2(BLACKBOX,74)@2
    // out out_feedback_stall_out_27@20000000
    cnn_top_i_llvm_fpga_pop_i4_cleanups66_pop27_0 thei_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2 (
        .in_data_in(c_i4_774_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i4_cleanups66_push27_cnn_top57_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup68_cnn_top3_sel_x(BITSELECT,25)@2
    assign i_first_cleanup68_cnn_top3_sel_x_b = i_llvm_fpga_pop_i4_cleanups66_pop27_cnn_top2_out_data_out[0:0];

    // c_i5_195(CONSTANT,60)
    assign c_i5_195_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_cnn_top58(ADD,68)@2
    assign i_fpga_indvars_iv_next_cnn_top58_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_data_out};
    assign i_fpga_indvars_iv_next_cnn_top58_b = {1'b0, c_i5_195_q};
    assign i_fpga_indvars_iv_next_cnn_top58_o = $unsigned(i_fpga_indvars_iv_next_cnn_top58_a) + $unsigned(i_fpga_indvars_iv_next_cnn_top58_b);
    assign i_fpga_indvars_iv_next_cnn_top58_q = i_fpga_indvars_iv_next_cnn_top58_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_cnn_top58_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next_cnn_top58_sel_x_b = i_fpga_indvars_iv_next_cnn_top58_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59(BLACKBOX,82)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    cnn_top_i_llvm_fpga_push_i5_fpga_indvars_iv_push8_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_cnn_top58_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_feedback_stall_out_8),
        .in_keep_going63(redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1493(CONSTANT,59)
    assign c_i5_1493_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50(BLACKBOX,76)@2
    // out out_feedback_stall_out_8@20000000
    cnn_top_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50 (
        .in_data_in(c_i5_1493_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i5_fpga_indvars_iv_push8_cnn_top59_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_cnn_top51_cmp_nsign(LOGICAL,162)@2
    assign i_exitcond_cnn_top51_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop8_cnn_top50_out_data_out[4:4]));

    // i_notcmp_cnn_top53(LOGICAL,88)@2
    assign i_notcmp_cnn_top53_q = i_exitcond_cnn_top51_cmp_nsign_q ^ VCC_q;

    // i_masked72_cnn_top60(LOGICAL,83)@2
    assign i_masked72_cnn_top60_q = i_notcmp_cnn_top53_q & i_first_cleanup68_cnn_top3_sel_x_b;

    // c_i32_077_recast_x(CONSTANT,4)
    assign c_i32_077_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,135)@1 + 1
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

    // valid_fanout_reg6(REG,137)@1 + 1
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

    // c_i32_192_recast_x(CONSTANT,11)
    assign c_i32_192_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_cnn_top48(ADD,69)@2
    assign i_inc_cnn_top48_a = {1'b0, i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out};
    assign i_inc_cnn_top48_b = {1'b0, c_i32_192_recast_x_q};
    assign i_inc_cnn_top48_o = $unsigned(i_inc_cnn_top48_a) + $unsigned(i_inc_cnn_top48_b);
    assign i_inc_cnn_top48_q = i_inc_cnn_top48_o[32:0];

    // bgTrunc_i_inc_cnn_top48_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc_cnn_top48_sel_x_b = i_inc_cnn_top48_q[31:0];

    // i_llvm_fpga_push_i32_i_0120_push25_cnn_top49(BLACKBOX,79)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    cnn_top_i_llvm_fpga_push_i32_i_0120_push25_0 thei_llvm_fpga_push_i32_i_0120_push25_cnn_top49 (
        .in_data_in(bgTrunc_i_inc_cnn_top48_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_feedback_stall_out_25),
        .in_keep_going63(redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12(BLACKBOX,73)@2
    // out out_feedback_stall_out_25@20000000
    cnn_top_i_llvm_fpga_pop_i32_i_0120_pop25_0 thei_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12 (
        .in_data_in(c_i32_077_recast_x_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_i_0120_push25_cnn_top49_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_cnn_top46(LOGICAL,109)@2
    assign i_unnamed_cnn_top46_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_077_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_cnn_top44(LOGICAL,108)@2
    assign i_unnamed_cnn_top44_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_192_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_291_recast_x(CONSTANT,12)
    assign c_i32_291_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_cnn_top42(LOGICAL,107)@2
    assign i_unnamed_cnn_top42_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_291_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_390_recast_x(CONSTANT,13)
    assign c_i32_390_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_cnn_top40(LOGICAL,106)@2
    assign i_unnamed_cnn_top40_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_390_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_489_recast_x(CONSTANT,14)
    assign c_i32_489_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_cnn_top38(LOGICAL,105)@2
    assign i_unnamed_cnn_top38_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_489_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_588_recast_x(CONSTANT,15)
    assign c_i32_588_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_cnn_top36(LOGICAL,104)@2
    assign i_unnamed_cnn_top36_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_588_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_687_recast_x(CONSTANT,16)
    assign c_i32_687_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_cnn_top34(LOGICAL,103)@2
    assign i_unnamed_cnn_top34_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_687_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_786_recast_x(CONSTANT,17)
    assign c_i32_786_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_cnn_top32(LOGICAL,102)@2
    assign i_unnamed_cnn_top32_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_786_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_885_recast_x(CONSTANT,18)
    assign c_i32_885_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_cnn_top30(LOGICAL,101)@2
    assign i_unnamed_cnn_top30_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_885_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_984_recast_x(CONSTANT,19)
    assign c_i32_984_recast_x_q = $unsigned(32'b00000000000000000000000000001001);

    // i_unnamed_cnn_top28(LOGICAL,100)@2
    assign i_unnamed_cnn_top28_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_984_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1083_recast_x(CONSTANT,5)
    assign c_i32_1083_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_unnamed_cnn_top26(LOGICAL,99)@2
    assign i_unnamed_cnn_top26_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1083_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1182_recast_x(CONSTANT,6)
    assign c_i32_1182_recast_x_q = $unsigned(32'b00000000000000000000000000001011);

    // i_unnamed_cnn_top24(LOGICAL,98)@2
    assign i_unnamed_cnn_top24_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1182_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1281_recast_x(CONSTANT,7)
    assign c_i32_1281_recast_x_q = $unsigned(32'b00000000000000000000000000001100);

    // i_unnamed_cnn_top22(LOGICAL,97)@2
    assign i_unnamed_cnn_top22_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1281_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1380_recast_x(CONSTANT,8)
    assign c_i32_1380_recast_x_q = $unsigned(32'b00000000000000000000000000001101);

    // i_unnamed_cnn_top20(LOGICAL,96)@2
    assign i_unnamed_cnn_top20_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1380_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1479_recast_x(CONSTANT,9)
    assign c_i32_1479_recast_x_q = $unsigned(32'b00000000000000000000000000001110);

    // i_unnamed_cnn_top18(LOGICAL,95)@2
    assign i_unnamed_cnn_top18_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1479_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_1578_recast_x(CONSTANT,10)
    assign c_i32_1578_recast_x_q = $unsigned(32'b00000000000000000000000000001111);

    // i_unnamed_cnn_top16(LOGICAL,94)@2
    assign i_unnamed_cnn_top16_q = $unsigned(i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out == c_i32_1578_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_cnn_top13_sel_x(BITSELECT,37)@2
    assign i_unnamed_cnn_top13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_0120_pop25_cnn_top12_out_data_out[31:0]};

    // i_unnamed_cnn_top13_vt_select_31(BITSELECT,93)@2
    assign i_unnamed_cnn_top13_vt_select_31_b = i_unnamed_cnn_top13_sel_x_b[31:0];

    // i_unnamed_cnn_top13_vt_join(BITJOIN,92)@2
    assign i_unnamed_cnn_top13_vt_join_q = {c_i32_077_recast_x_q, i_unnamed_cnn_top13_vt_select_31_b};

    // i_mptr_bitcast_index_cnn_top0_narrow_x(BITSELECT,31)@2
    assign i_mptr_bitcast_index_cnn_top0_narrow_x_b = i_unnamed_cnn_top13_vt_join_q[61:0];

    // i_mptr_bitcast_index_cnn_top0_c_i2_01_x(CONSTANT,30)
    assign i_mptr_bitcast_index_cnn_top0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_cnn_top0_shift_join_x(BITJOIN,32)@2
    assign i_mptr_bitcast_index_cnn_top0_shift_join_x_q = {i_mptr_bitcast_index_cnn_top0_narrow_x_b, i_mptr_bitcast_index_cnn_top0_c_i2_01_x_q};

    // valid_fanout_reg5(REG,136)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_cnn_top14(BLACKBOX,71)@2
    cnn_top_i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_0 thei_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_cnn_top14 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_cnn_top14_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_cnn_top0_add_x(ADD,29)@2
    assign i_mptr_bitcast_index_cnn_top0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1028i32_mptr_bitcast12312_cnn_top14_out_dest_data_out_4_0};
    assign i_mptr_bitcast_index_cnn_top0_add_x_b = {1'b0, i_mptr_bitcast_index_cnn_top0_shift_join_x_q};
    assign i_mptr_bitcast_index_cnn_top0_add_x_o = $unsigned(i_mptr_bitcast_index_cnn_top0_add_x_a) + $unsigned(i_mptr_bitcast_index_cnn_top0_add_x_b);
    assign i_mptr_bitcast_index_cnn_top0_add_x_q = i_mptr_bitcast_index_cnn_top0_add_x_o[64:0];

    // i_mptr_bitcast_index_cnn_top0_dupName_0_trunc_sel_x(BITSELECT,27)@2
    assign i_mptr_bitcast_index_cnn_top0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_cnn_top0_add_x_q[63:0];

    // i_llvm_fpga_push_i1_notexitcond73_cnn_top54(BLACKBOX,78)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond73_0 thei_llvm_fpga_push_i1_notexitcond73_cnn_top54 (
        .in_data_in(i_exitcond_cnn_top51_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_not_exitcond_stall_out),
        .in_first_cleanup68(i_first_cleanup68_cnn_top3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together110_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,134)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid156_i_next_initerations62_cnn_top0_shift_x(BITSELECT,155)@2
    assign rightShiftStage0Idx1Rng1_uid156_i_next_initerations62_cnn_top0_shift_x_b = i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid158_i_next_initerations62_cnn_top0_shift_x(BITJOIN,157)@2
    assign rightShiftStage0Idx1_uid158_i_next_initerations62_cnn_top0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid156_i_next_initerations62_cnn_top0_shift_x_b};

    // valid_fanout_reg1(REG,132)@1 + 1
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

    // valid_fanout_reg2(REG,133)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations61_push26_cnn_top9(BLACKBOX,81)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    cnn_top_i_llvm_fpga_push_i4_initerations61_push26_0 thei_llvm_fpga_push_i4_initerations61_push26_cnn_top9 (
        .in_data_in(i_next_initerations62_cnn_top8_vt_join_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_feedback_stall_out_26),
        .in_keep_going63(redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7(BLACKBOX,75)@2
    // out out_feedback_stall_out_26@20000000
    cnn_top_i_llvm_fpga_pop_i4_initerations61_pop26_0 thei_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7 (
        .in_data_in(c_i4_774_q),
        .in_dir(redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i4_initerations61_push26_cnn_top9_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x(MUX,159)@2
    assign rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_s or i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_data_out or rightShiftStage0Idx1_uid158_i_next_initerations62_cnn_top0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_s)
            1'b0 : rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_q = i_llvm_fpga_pop_i4_initerations61_pop26_cnn_top7_out_data_out;
            1'b1 : rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_q = rightShiftStage0Idx1_uid158_i_next_initerations62_cnn_top0_shift_x_q;
            default : rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations62_cnn_top8_vt_select_2(BITSELECT,87)@2
    assign i_next_initerations62_cnn_top8_vt_select_2_b = rightShiftStage0_uid160_i_next_initerations62_cnn_top0_shift_x_q[2:0];

    // i_next_initerations62_cnn_top8_vt_join(BITJOIN,86)@2
    assign i_next_initerations62_cnn_top8_vt_join_q = {GND_q, i_next_initerations62_cnn_top8_vt_select_2_b};

    // i_last_initeration64_cnn_top10_sel_x(BITSELECT,26)@2
    assign i_last_initeration64_cnn_top10_sel_x_b = i_next_initerations62_cnn_top8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration65_cnn_top11(BLACKBOX,77)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration65_0 thei_llvm_fpga_push_i1_lastiniteration65_cnn_top11 (
        .in_data_in(i_last_initeration64_cnn_top10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_initeration_stall_out),
        .in_keep_going63(redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_cnn_top6(BLACKBOX,72)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going63_0 thei_llvm_fpga_pipeline_keep_going63_cnn_top6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration65_cnn_top11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond73_cnn_top54_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out);
        end
    end

    // i_first_cleanup_xor69_cnn_top4(LOGICAL,67)@2
    assign i_first_cleanup_xor69_cnn_top4_q = i_first_cleanup68_cnn_top3_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,38)@2
    assign out_c0_exi21_0_tpl = GND_q;
    assign out_c0_exi21_1_tpl = i_first_cleanup_xor69_cnn_top4_q;
    assign out_c0_exi21_2_tpl = redist0_i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_data_out_1_q;
    assign out_c0_exi21_3_tpl = i_mptr_bitcast_index_cnn_top0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi21_4_tpl = i_unnamed_cnn_top16_q;
    assign out_c0_exi21_5_tpl = i_unnamed_cnn_top18_q;
    assign out_c0_exi21_6_tpl = i_unnamed_cnn_top20_q;
    assign out_c0_exi21_7_tpl = i_unnamed_cnn_top22_q;
    assign out_c0_exi21_8_tpl = i_unnamed_cnn_top24_q;
    assign out_c0_exi21_9_tpl = i_unnamed_cnn_top26_q;
    assign out_c0_exi21_10_tpl = i_unnamed_cnn_top28_q;
    assign out_c0_exi21_11_tpl = i_unnamed_cnn_top30_q;
    assign out_c0_exi21_12_tpl = i_unnamed_cnn_top32_q;
    assign out_c0_exi21_13_tpl = i_unnamed_cnn_top34_q;
    assign out_c0_exi21_14_tpl = i_unnamed_cnn_top36_q;
    assign out_c0_exi21_15_tpl = i_unnamed_cnn_top38_q;
    assign out_c0_exi21_16_tpl = i_unnamed_cnn_top40_q;
    assign out_c0_exi21_17_tpl = i_unnamed_cnn_top42_q;
    assign out_c0_exi21_18_tpl = i_unnamed_cnn_top44_q;
    assign out_c0_exi21_19_tpl = i_unnamed_cnn_top46_q;
    assign out_c0_exi21_20_tpl = i_masked72_cnn_top60_q;
    assign out_c0_exi21_21_tpl = redist1_sync_together110_aunroll_x_in_c0_eni1_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn_top1 = GND_q;

    // ext_sig_sync_out(GPOUT,61)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going63_cnn_top6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,128)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going63_cnn_top6_out_pipeline_valid_out;

endmodule
