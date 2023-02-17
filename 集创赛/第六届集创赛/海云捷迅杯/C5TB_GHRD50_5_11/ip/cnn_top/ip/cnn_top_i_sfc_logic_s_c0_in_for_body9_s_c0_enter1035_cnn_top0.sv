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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_body9_s_c0_enter1035_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_body9_s_c0_enter1035_cnn_top0 (
    output wire [0:0] out_c0_exi7111_0_tpl,
    output wire [0:0] out_c0_exi7111_1_tpl,
    output wire [0:0] out_c0_exi7111_2_tpl,
    output wire [0:0] out_c0_exi7111_3_tpl,
    output wire [0:0] out_c0_exi7111_4_tpl,
    output wire [0:0] out_c0_exi7111_5_tpl,
    output wire [31:0] out_c0_exi7111_6_tpl,
    output wire [0:0] out_c0_exi7111_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn_top1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] bgTrunc_i_fpga_indvars_iv_next3_cnn_top20_sel_x_b;
    wire [31:0] c_i32_043_recast_x_q;
    wire [31:0] c_i32_142_recast_x_q;
    wire [0:0] i_first_cleanup_cnn_top3_sel_x_b;
    wire [0:0] i_last_initeration_cnn_top10_sel_x_b;
    wire [1:0] c_i2_040_q;
    wire [1:0] c_i2_141_q;
    wire [3:0] c_i4_737_q;
    wire [3:0] i_cleanups_shl_cnn_top5_vt_join_q;
    wire [2:0] i_cleanups_shl_cnn_top5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_cnn_top4_q;
    wire [2:0] i_fpga_indvars_iv_next3_cnn_top20_a;
    wire [2:0] i_fpga_indvars_iv_next3_cnn_top20_b;
    logic [2:0] i_fpga_indvars_iv_next3_cnn_top20_o;
    wire [2:0] i_fpga_indvars_iv_next3_cnn_top20_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_cnn_top6_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_feedback_stall_out_28;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_feedback_stall_out_32;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_valid_out_32;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_valid_out_31;
    wire [0:0] i_masked_cnn_top26_q;
    wire [0:0] i_next_cleanups_cnn_top18_s;
    reg [3:0] i_next_cleanups_cnn_top18_q;
    wire [3:0] i_next_initerations_cnn_top8_vt_join_q;
    wire [2:0] i_next_initerations_cnn_top8_vt_select_2_b;
    wire [0:0] i_notexit_cnn_top15_q;
    wire [0:0] i_or_cnn_top17_q;
    wire [0:0] i_unnamed_cnn_top22_q;
    wire [0:0] i_unnamed_cnn_top24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid80_i_cleanups_shl_cnn_top0_shift_x_q;
    wire [0:0] leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_s;
    reg [3:0] leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid86_i_next_initerations_cnn_top0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid88_i_next_initerations_cnn_top0_shift_x_q;
    wire [0:0] rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_s;
    reg [3:0] rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_q;
    wire [0:0] i_exitcond4_cnn_top13_cmp_sign_q;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q;
    reg [0:0] redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q;
    reg [0:0] redist3_sync_together55_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,66)@1 + 1
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

    // redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // redist3_sync_together55_aunroll_x_in_i_valid_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together55_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist3_sync_together55_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x(BITSELECT,78)@2
    assign leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_b = leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid80_i_cleanups_shl_cnn_top0_shift_x(BITJOIN,79)@2
    assign leftShiftStage0Idx1_uid80_i_cleanups_shl_cnn_top0_shift_x_q = {leftShiftStage0Idx1Rng1_uid79_i_cleanups_shl_cnn_top0_shift_x_b, GND_q};

    // leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x(MUX,81)@2
    assign leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out or leftShiftStage0Idx1_uid80_i_cleanups_shl_cnn_top0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_s)
            1'b0 : leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out;
            1'b1 : leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_q = leftShiftStage0Idx1_uid80_i_cleanups_shl_cnn_top0_shift_x_q;
            default : leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_cnn_top5_vt_select_3(BITSELECT,36)@2
    assign i_cleanups_shl_cnn_top5_vt_select_3_b = leftShiftStage0_uid82_i_cleanups_shl_cnn_top0_shift_x_q[3:1];

    // i_cleanups_shl_cnn_top5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_cnn_top5_vt_join_q = {i_cleanups_shl_cnn_top5_vt_select_3_b, GND_q};

    // i_or_cnn_top17(LOGICAL,57)@2
    assign i_or_cnn_top17_q = i_exitcond4_cnn_top13_cmp_sign_q | i_first_cleanup_xor_cnn_top4_q;

    // i_next_cleanups_cnn_top18(MUX,52)@2
    assign i_next_cleanups_cnn_top18_s = i_or_cnn_top17_q;
    always @(i_next_cleanups_cnn_top18_s or i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out or i_cleanups_shl_cnn_top5_vt_join_q)
    begin
        unique case (i_next_cleanups_cnn_top18_s)
            1'b0 : i_next_cleanups_cnn_top18_q = i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out;
            1'b1 : i_next_cleanups_cnn_top18_q = i_cleanups_shl_cnn_top5_vt_join_q;
            default : i_next_cleanups_cnn_top18_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push32_cnn_top19(BLACKBOX,49)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    cnn_top_i_llvm_fpga_push_i4_cleanups_push32_0 thei_llvm_fpga_push_i4_cleanups_push32_cnn_top19 (
        .in_data_in(i_next_cleanups_cnn_top18_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_feedback_stall_out_32),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together55_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_737(CONSTANT,32)
    assign c_i4_737_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2(BLACKBOX,44)@2
    // out out_feedback_stall_out_32@20000000
    cnn_top_i_llvm_fpga_pop_i4_cleanups_pop32_0 thei_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2 (
        .in_data_in(c_i4_737_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i4_cleanups_push32_cnn_top19_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together55_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_cnn_top3_sel_x(BITSELECT,10)@2
    assign i_first_cleanup_cnn_top3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop32_cnn_top2_out_data_out[0:0];

    // c_i2_141(CONSTANT,30)
    assign c_i2_141_q = $unsigned(2'b11);

    // i_fpga_indvars_iv_next3_cnn_top20(ADD,40)@2
    assign i_fpga_indvars_iv_next3_cnn_top20_a = {1'b0, i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_data_out};
    assign i_fpga_indvars_iv_next3_cnn_top20_b = {1'b0, c_i2_141_q};
    assign i_fpga_indvars_iv_next3_cnn_top20_o = $unsigned(i_fpga_indvars_iv_next3_cnn_top20_a) + $unsigned(i_fpga_indvars_iv_next3_cnn_top20_b);
    assign i_fpga_indvars_iv_next3_cnn_top20_q = i_fpga_indvars_iv_next3_cnn_top20_o[2:0];

    // bgTrunc_i_fpga_indvars_iv_next3_cnn_top20_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next3_cnn_top20_sel_x_b = i_fpga_indvars_iv_next3_cnn_top20_q[1:0];

    // i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21(BLACKBOX,48)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    cnn_top_i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_0 thei_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next3_cnn_top20_sel_x_b),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_feedback_stall_out_28),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together55_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_040(CONSTANT,29)
    assign c_i2_040_q = $unsigned(2'b00);

    // i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12(BLACKBOX,43)@2
    // out out_feedback_stall_out_28@20000000
    cnn_top_i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_0 thei_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12 (
        .in_data_in(c_i2_040_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_fpga_indvars_iv2_push28_cnn_top21_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together55_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond4_cnn_top13_cmp_sign(LOGICAL,91)@2
    assign i_exitcond4_cnn_top13_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i2_fpga_indvars_iv2_pop28_cnn_top12_out_data_out[1:1]);

    // i_masked_cnn_top26(LOGICAL,51)@2
    assign i_masked_cnn_top26_q = i_exitcond4_cnn_top13_cmp_sign_q & i_first_cleanup_cnn_top3_sel_x_b;

    // c_i32_043_recast_x(CONSTANT,4)
    assign c_i32_043_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_cnn_top24(LOGICAL,59)@2
    assign i_unnamed_cnn_top24_q = $unsigned(redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q == c_i32_043_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_142_recast_x(CONSTANT,5)
    assign c_i32_142_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_cnn_top22(LOGICAL,58)@2
    assign i_unnamed_cnn_top22_q = $unsigned(redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q == c_i32_142_recast_x_q ? 1'b1 : 1'b0);

    // i_notexit_cnn_top15(LOGICAL,56)@2
    assign i_notexit_cnn_top15_q = i_exitcond4_cnn_top13_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_cnn_top16(BLACKBOX,47)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_cnn_top16 (
        .in_data_in(i_notexit_cnn_top15_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_cnn_top3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together55_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,69)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid86_i_next_initerations_cnn_top0_shift_x(BITSELECT,85)@2
    assign rightShiftStage0Idx1Rng1_uid86_i_next_initerations_cnn_top0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid88_i_next_initerations_cnn_top0_shift_x(BITJOIN,87)@2
    assign rightShiftStage0Idx1_uid88_i_next_initerations_cnn_top0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid86_i_next_initerations_cnn_top0_shift_x_b};

    // valid_fanout_reg1(REG,67)@1 + 1
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

    // valid_fanout_reg2(REG,68)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push31_cnn_top9(BLACKBOX,50)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    cnn_top_i_llvm_fpga_push_i4_initerations_push31_0 thei_llvm_fpga_push_i4_initerations_push31_cnn_top9 (
        .in_data_in(i_next_initerations_cnn_top8_vt_join_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_feedback_stall_out_31),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7(BLACKBOX,45)@2
    // out out_feedback_stall_out_31@20000000
    cnn_top_i_llvm_fpga_pop_i4_initerations_pop31_0 thei_llvm_fpga_pop_i4_initerations_pop31_cnn_top7 (
        .in_data_in(c_i4_737_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i4_initerations_push31_cnn_top9_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x(MUX,89)@2
    assign rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_data_out or rightShiftStage0Idx1_uid88_i_next_initerations_cnn_top0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_s)
            1'b0 : rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop31_cnn_top7_out_data_out;
            1'b1 : rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_q = rightShiftStage0Idx1_uid88_i_next_initerations_cnn_top0_shift_x_q;
            default : rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_cnn_top8_vt_select_2(BITSELECT,55)@2
    assign i_next_initerations_cnn_top8_vt_select_2_b = rightShiftStage0_uid90_i_next_initerations_cnn_top0_shift_x_q[2:0];

    // i_next_initerations_cnn_top8_vt_join(BITJOIN,54)@2
    assign i_next_initerations_cnn_top8_vt_join_q = {GND_q, i_next_initerations_cnn_top8_vt_select_2_b};

    // i_last_initeration_cnn_top10_sel_x(BITSELECT,11)@2
    assign i_last_initeration_cnn_top10_sel_x_b = i_next_initerations_cnn_top8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_cnn_top11(BLACKBOX,46)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_cnn_top11 (
        .in_data_in(i_last_initeration_cnn_top10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_initeration_stall_out),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_cnn_top6(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_cnn_top6 (
        .in_data_in(in_c0_eni2_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_cnn_top11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_cnn_top16_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out);
        end
    end

    // i_first_cleanup_xor_cnn_top4(LOGICAL,39)@2
    assign i_first_cleanup_xor_cnn_top4_q = i_first_cleanup_cnn_top3_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,16)@2
    assign out_c0_exi7111_0_tpl = GND_q;
    assign out_c0_exi7111_1_tpl = i_first_cleanup_xor_cnn_top4_q;
    assign out_c0_exi7111_2_tpl = redist0_i_llvm_fpga_pipeline_keep_going_cnn_top6_out_data_out_1_q;
    assign out_c0_exi7111_3_tpl = i_unnamed_cnn_top22_q;
    assign out_c0_exi7111_4_tpl = i_unnamed_cnn_top24_q;
    assign out_c0_exi7111_5_tpl = i_masked_cnn_top26_q;
    assign out_c0_exi7111_6_tpl = redist2_sync_together55_aunroll_x_in_c0_eni2_2_tpl_1_q;
    assign out_c0_exi7111_7_tpl = redist1_sync_together55_aunroll_x_in_c0_eni2_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn_top1 = GND_q;

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_cnn_top6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_cnn_top6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,64)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_cnn_top6_out_pipeline_valid_out;

endmodule
