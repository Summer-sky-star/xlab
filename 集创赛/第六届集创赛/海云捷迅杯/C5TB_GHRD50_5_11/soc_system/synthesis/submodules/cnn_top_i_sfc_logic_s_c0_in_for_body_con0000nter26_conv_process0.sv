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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_body_con0000nter26_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_body_con0000nter26_conv_process0 (
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [63:0] out_c0_exi6_3_tpl,
    output wire [63:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_conv_process36_sel_x_b;
    wire [31:0] bgTrunc_i_inc14_conv_process24_sel_x_b;
    wire [31:0] bgTrunc_i_inc_conv_process22_sel_x_b;
    wire [0:0] i_first_cleanup239_conv_process3_sel_x_b;
    wire [0:0] i_last_initeration235_conv_process10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index865_conv_process0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index865_conv_process0_add_x_a;
    wire [64:0] i_mptr_bitcast_index865_conv_process0_add_x_b;
    logic [64:0] i_mptr_bitcast_index865_conv_process0_add_x_o;
    wire [64:0] i_mptr_bitcast_index865_conv_process0_add_x_q;
    wire [1:0] i_mptr_bitcast_index865_conv_process0_c_i2_01_x_q;
    wire [61:0] i_mptr_bitcast_index865_conv_process0_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index865_conv_process0_shift_join_x_q;
    wire [63:0] i_mptr_bitcast_index867_conv_process0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index867_conv_process0_add_x_a;
    wire [64:0] i_mptr_bitcast_index867_conv_process0_add_x_b;
    logic [64:0] i_mptr_bitcast_index867_conv_process0_add_x_o;
    wire [64:0] i_mptr_bitcast_index867_conv_process0_add_x_q;
    wire [61:0] i_mptr_bitcast_index867_conv_process0_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index867_conv_process0_shift_join_x_q;
    wire [63:0] i_unnamed_conv_process20_sel_x_b;
    wire [63:0] i_unnamed_conv_process26_sel_x_b;
    wire [31:0] c_i32_160_q;
    wire [31:0] c_i32_undef59_q;
    wire [3:0] c_i4_756_q;
    wire [4:0] c_i5_1461_q;
    wire [4:0] c_i5_163_q;
    wire [0:0] i_bias_offset_0499_replace_phi_conv_process14_s;
    reg [31:0] i_bias_offset_0499_replace_phi_conv_process14_q;
    wire [3:0] i_cleanups_shl238_conv_process5_vt_join_q;
    wire [2:0] i_cleanups_shl238_conv_process5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor240_conv_process4_q;
    wire [5:0] i_fpga_indvars_iv_next_conv_process36_a;
    wire [5:0] i_fpga_indvars_iv_next_conv_process36_b;
    logic [5:0] i_fpga_indvars_iv_next_conv_process36_o;
    wire [5:0] i_fpga_indvars_iv_next_conv_process36_q;
    wire [32:0] i_inc14_conv_process24_a;
    wire [32:0] i_inc14_conv_process24_b;
    logic [32:0] i_inc14_conv_process24_o;
    wire [32:0] i_inc14_conv_process24_q;
    wire [32:0] i_inc_conv_process22_a;
    wire [32:0] i_inc_conv_process22_b;
    logic [32:0] i_inc_conv_process22_o;
    wire [32:0] i_inc_conv_process22_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add578_conv_process12_out_dest_data_out_15_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add77_conv_process15_out_dest_data_out_14_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going234_conv_process6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_feedback_stall_out_41;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_feedback_stall_out_61;
    wire [3:0] i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_feedback_stall_out_60;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_valid_out_41;
    wire [7:0] i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_valid_out_61;
    wire [7:0] i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_valid_out_60;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_valid_out_24;
    wire [0:0] i_masked243_conv_process38_q;
    wire [0:0] i_next_cleanups242_conv_process34_s;
    reg [3:0] i_next_cleanups242_conv_process34_q;
    wire [3:0] i_next_initerations233_conv_process8_vt_join_q;
    wire [2:0] i_next_initerations233_conv_process8_vt_select_2_b;
    wire [0:0] i_notcmp231_conv_process31_q;
    wire [0:0] i_or241_conv_process33_q;
    wire [0:0] i_scale_offset_0501_replace_phi_conv_process17_s;
    reg [31:0] i_scale_offset_0501_replace_phi_conv_process17_q;
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
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid132_i_cleanups_shl238_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_s;
    reg [3:0] leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid138_i_next_initerations233_conv_process0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid140_i_next_initerations233_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_s;
    reg [3:0] rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_q;
    wire [0:0] i_exitcond_conv_process29_cmp_nsign_q;
    reg [31:0] redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1_q;
    reg [31:0] redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q;
    reg [0:0] redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q;
    reg [0:0] redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together82_aunroll_x_in_i_valid_1(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,107)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // redist7_sync_together82_aunroll_x_in_i_valid_2(DELAY,152)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_2_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x(BITSELECT,130)@3
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_in = i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid132_i_cleanups_shl238_conv_process0_shift_x(BITJOIN,131)@3
    assign leftShiftStage0Idx1_uid132_i_cleanups_shl238_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid131_i_cleanups_shl238_conv_process0_shift_x_b, GND_q};

    // leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x(MUX,133)@3
    assign leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_s or i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out or leftShiftStage0Idx1_uid132_i_cleanups_shl238_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_q = i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out;
            1'b1 : leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_q = leftShiftStage0Idx1_uid132_i_cleanups_shl238_conv_process0_shift_x_q;
            default : leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl238_conv_process5_vt_select_3(BITSELECT,63)@3
    assign i_cleanups_shl238_conv_process5_vt_select_3_b = leftShiftStage0_uid134_i_cleanups_shl238_conv_process0_shift_x_q[3:1];

    // i_cleanups_shl238_conv_process5_vt_join(BITJOIN,62)@3
    assign i_cleanups_shl238_conv_process5_vt_join_q = {i_cleanups_shl238_conv_process5_vt_select_3_b, GND_q};

    // i_or241_conv_process33(LOGICAL,93)@3
    assign i_or241_conv_process33_q = i_notcmp231_conv_process31_q | i_first_cleanup_xor240_conv_process4_q;

    // i_next_cleanups242_conv_process34(MUX,88)@3
    assign i_next_cleanups242_conv_process34_s = i_or241_conv_process33_q;
    always @(i_next_cleanups242_conv_process34_s or i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out or i_cleanups_shl238_conv_process5_vt_join_q)
    begin
        unique case (i_next_cleanups242_conv_process34_s)
            1'b0 : i_next_cleanups242_conv_process34_q = i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out;
            1'b1 : i_next_cleanups242_conv_process34_q = i_cleanups_shl238_conv_process5_vt_join_q;
            default : i_next_cleanups242_conv_process34_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups237_push61_conv_process35(BLACKBOX,84)@3
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    cnn_top_i_llvm_fpga_push_i4_cleanups237_push61_conv_process0 thei_llvm_fpga_push_i4_cleanups237_push61_conv_process35 (
        .in_data_in(i_next_cleanups242_conv_process34_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_feedback_stall_out_61),
        .in_keep_going234(redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together82_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_756(CONSTANT,56)
    assign c_i4_756_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2(BLACKBOX,77)@3
    // out out_feedback_stall_out_61@20000000
    cnn_top_i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process0 thei_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2 (
        .in_data_in(c_i4_756_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_61(i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i4_cleanups237_push61_conv_process35_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together82_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup239_conv_process3_sel_x(BITSELECT,11)@3
    assign i_first_cleanup239_conv_process3_sel_x_b = i_llvm_fpga_pop_i4_cleanups237_pop61_conv_process2_out_data_out[0:0];

    // c_i5_163(CONSTANT,58)
    assign c_i5_163_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_conv_process36(ADD,67)@3
    assign i_fpga_indvars_iv_next_conv_process36_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_data_out};
    assign i_fpga_indvars_iv_next_conv_process36_b = {1'b0, c_i5_163_q};
    assign i_fpga_indvars_iv_next_conv_process36_o = $unsigned(i_fpga_indvars_iv_next_conv_process36_a) + $unsigned(i_fpga_indvars_iv_next_conv_process36_b);
    assign i_fpga_indvars_iv_next_conv_process36_q = i_fpga_indvars_iv_next_conv_process36_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_conv_process36_sel_x(BITSELECT,2)@3
    assign bgTrunc_i_fpga_indvars_iv_next_conv_process36_sel_x_b = i_fpga_indvars_iv_next_conv_process36_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37(BLACKBOX,86)@3
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    cnn_top_i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_conv_process36_sel_x_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_feedback_stall_out_24),
        .in_keep_going234(redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together82_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1461(CONSTANT,57)
    assign c_i5_1461_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28(BLACKBOX,79)@3
    // out out_feedback_stall_out_24@20000000
    cnn_top_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28 (
        .in_data_in(c_i5_1461_q),
        .in_dir(redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i5_fpga_indvars_iv_push24_conv_process37_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together82_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_conv_process29_cmp_nsign(LOGICAL,144)@3
    assign i_exitcond_conv_process29_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop24_conv_process28_out_data_out[4:4]));

    // i_notcmp231_conv_process31(LOGICAL,92)@3
    assign i_notcmp231_conv_process31_q = i_exitcond_conv_process29_cmp_nsign_q ^ VCC_q;

    // i_masked243_conv_process38(LOGICAL,87)@3
    assign i_masked243_conv_process38_q = i_notcmp231_conv_process31_q & i_first_cleanup239_conv_process3_sel_x_b;

    // valid_fanout_reg4(REG,111)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add578_conv_process12(BLACKBOX,71)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add578_conv_process0 thei_llvm_fpga_ffwd_dest_i32_add578_conv_process12 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i32_add578_conv_process12_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,112)@1 + 1
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

    // valid_fanout_reg10(REG,117)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_160(CONSTANT,53)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc14_conv_process24(ADD,68)@3
    assign i_inc14_conv_process24_a = {1'b0, i_bias_offset_0499_replace_phi_conv_process14_q};
    assign i_inc14_conv_process24_b = {1'b0, c_i32_160_q};
    assign i_inc14_conv_process24_o = $unsigned(i_inc14_conv_process24_a) + $unsigned(i_inc14_conv_process24_b);
    assign i_inc14_conv_process24_q = i_inc14_conv_process24_o[32:0];

    // bgTrunc_i_inc14_conv_process24_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_inc14_conv_process24_sel_x_b = i_inc14_conv_process24_q[31:0];

    // i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25(BLACKBOX,82)@3
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    cnn_top_i_llvm_fpga_push_i32_bias_offset0000push59_conv_process0 thei_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25 (
        .in_data_in(bgTrunc_i_inc14_conv_process24_sel_x_b),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_feedback_stall_out_59),
        .in_keep_going234(redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef59(CONSTANT,54)
    assign c_i32_undef59_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13(BLACKBOX,75)@2
    // out out_feedback_stall_out_59@20000000
    cnn_top_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process0 thei_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13 (
        .in_data_in(c_i32_undef59_q),
        .in_dir(redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i32_bias_offset_0499_push59_conv_process25_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out);
        end
    end

    // i_bias_offset_0499_replace_phi_conv_process14(MUX,60)@3
    assign i_bias_offset_0499_replace_phi_conv_process14_s = redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_bias_offset_0499_replace_phi_conv_process14_s or redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1_q or i_llvm_fpga_ffwd_dest_i32_add578_conv_process12_out_dest_data_out_15_0)
    begin
        unique case (i_bias_offset_0499_replace_phi_conv_process14_s)
            1'b0 : i_bias_offset_0499_replace_phi_conv_process14_q = redist1_i_llvm_fpga_pop_i32_bias_offset_0499_pop59_conv_process13_out_data_out_1_q;
            1'b1 : i_bias_offset_0499_replace_phi_conv_process14_q = i_llvm_fpga_ffwd_dest_i32_add578_conv_process12_out_dest_data_out_15_0;
            default : i_bias_offset_0499_replace_phi_conv_process14_q = 32'b0;
        endcase
    end

    // i_unnamed_conv_process26_sel_x(BITSELECT,30)@3
    assign i_unnamed_conv_process26_sel_x_b = $unsigned({{32{i_bias_offset_0499_replace_phi_conv_process14_q[31]}}, i_bias_offset_0499_replace_phi_conv_process14_q[31:0]});

    // i_mptr_bitcast_index865_conv_process0_narrow_x(BITSELECT,17)@3
    assign i_mptr_bitcast_index865_conv_process0_narrow_x_b = i_unnamed_conv_process26_sel_x_b[61:0];

    // i_mptr_bitcast_index865_conv_process0_c_i2_01_x(CONSTANT,16)
    assign i_mptr_bitcast_index865_conv_process0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index865_conv_process0_shift_join_x(BITJOIN,18)@3
    assign i_mptr_bitcast_index865_conv_process0_shift_join_x_q = {i_mptr_bitcast_index865_conv_process0_narrow_x_b, i_mptr_bitcast_index865_conv_process0_c_i2_01_x_q};

    // valid_fanout_reg8(REG,115)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18(BLACKBOX,73)@3
    cnn_top_i_llvm_fpga_ffwd_dest_p1029s_cla0000e87947_conv_process0 thei_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index865_conv_process0_add_x(ADD,15)@3
    assign i_mptr_bitcast_index865_conv_process0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18_out_dest_data_out_1_0};
    assign i_mptr_bitcast_index865_conv_process0_add_x_b = {1'b0, i_mptr_bitcast_index865_conv_process0_shift_join_x_q};
    assign i_mptr_bitcast_index865_conv_process0_add_x_o = $unsigned(i_mptr_bitcast_index865_conv_process0_add_x_a) + $unsigned(i_mptr_bitcast_index865_conv_process0_add_x_b);
    assign i_mptr_bitcast_index865_conv_process0_add_x_q = i_mptr_bitcast_index865_conv_process0_add_x_o[64:0];

    // i_mptr_bitcast_index865_conv_process0_dupName_0_trunc_sel_x(BITSELECT,13)@3
    assign i_mptr_bitcast_index865_conv_process0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index865_conv_process0_add_x_q[63:0];

    // valid_fanout_reg6(REG,113)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add77_conv_process15(BLACKBOX,72)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add77_conv_process0 thei_llvm_fpga_ffwd_dest_i32_add77_conv_process15 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i32_add77_conv_process15_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,114)@1 + 1
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

    // valid_fanout_reg9(REG,116)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_inc_conv_process22(ADD,69)@3
    assign i_inc_conv_process22_a = {1'b0, i_scale_offset_0501_replace_phi_conv_process17_q};
    assign i_inc_conv_process22_b = {1'b0, c_i32_160_q};
    assign i_inc_conv_process22_o = $unsigned(i_inc_conv_process22_a) + $unsigned(i_inc_conv_process22_b);
    assign i_inc_conv_process22_q = i_inc_conv_process22_o[32:0];

    // bgTrunc_i_inc_conv_process22_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_inc_conv_process22_sel_x_b = i_inc_conv_process22_q[31:0];

    // i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23(BLACKBOX,83)@3
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    cnn_top_i_llvm_fpga_push_i32_scale_offse0000push41_conv_process0 thei_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23 (
        .in_data_in(bgTrunc_i_inc_conv_process22_sel_x_b),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_feedback_stall_out_41),
        .in_keep_going234(redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16(BLACKBOX,76)@2
    // out out_feedback_stall_out_41@20000000
    cnn_top_i_llvm_fpga_pop_i32_scale_offset0000_pop41_conv_process0 thei_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16 (
        .in_data_in(c_i32_undef59_q),
        .in_dir(redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_scale_offset_0501_push41_conv_process23_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out);
        end
    end

    // i_scale_offset_0501_replace_phi_conv_process17(MUX,94)@3
    assign i_scale_offset_0501_replace_phi_conv_process17_s = redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_scale_offset_0501_replace_phi_conv_process17_s or redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1_q or i_llvm_fpga_ffwd_dest_i32_add77_conv_process15_out_dest_data_out_14_0)
    begin
        unique case (i_scale_offset_0501_replace_phi_conv_process17_s)
            1'b0 : i_scale_offset_0501_replace_phi_conv_process17_q = redist0_i_llvm_fpga_pop_i32_scale_offset_0501_pop41_conv_process16_out_data_out_1_q;
            1'b1 : i_scale_offset_0501_replace_phi_conv_process17_q = i_llvm_fpga_ffwd_dest_i32_add77_conv_process15_out_dest_data_out_14_0;
            default : i_scale_offset_0501_replace_phi_conv_process17_q = 32'b0;
        endcase
    end

    // i_unnamed_conv_process20_sel_x(BITSELECT,29)@3
    assign i_unnamed_conv_process20_sel_x_b = $unsigned({{32{i_scale_offset_0501_replace_phi_conv_process17_q[31]}}, i_scale_offset_0501_replace_phi_conv_process17_q[31:0]});

    // i_mptr_bitcast_index867_conv_process0_narrow_x(BITSELECT,23)@3
    assign i_mptr_bitcast_index867_conv_process0_narrow_x_b = i_unnamed_conv_process20_sel_x_b[61:0];

    // i_mptr_bitcast_index867_conv_process0_shift_join_x(BITJOIN,24)@3
    assign i_mptr_bitcast_index867_conv_process0_shift_join_x_q = {i_mptr_bitcast_index867_conv_process0_narrow_x_b, i_mptr_bitcast_index865_conv_process0_c_i2_01_x_q};

    // i_mptr_bitcast_index867_conv_process0_add_x(ADD,21)@3
    assign i_mptr_bitcast_index867_conv_process0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1029s_class_ihc_mm_host_11s_ddr_scale87947_conv_process18_out_dest_data_out_1_0};
    assign i_mptr_bitcast_index867_conv_process0_add_x_b = {1'b0, i_mptr_bitcast_index867_conv_process0_shift_join_x_q};
    assign i_mptr_bitcast_index867_conv_process0_add_x_o = $unsigned(i_mptr_bitcast_index867_conv_process0_add_x_a) + $unsigned(i_mptr_bitcast_index867_conv_process0_add_x_b);
    assign i_mptr_bitcast_index867_conv_process0_add_x_q = i_mptr_bitcast_index867_conv_process0_add_x_o[64:0];

    // i_mptr_bitcast_index867_conv_process0_dupName_0_trunc_sel_x(BITSELECT,19)@3
    assign i_mptr_bitcast_index867_conv_process0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index867_conv_process0_add_x_q[63:0];

    // i_llvm_fpga_push_i1_notexitcond244_conv_process32(BLACKBOX,81)@3
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond244_conv_process0 thei_llvm_fpga_push_i1_notexitcond244_conv_process32 (
        .in_data_in(i_exitcond_conv_process29_cmp_nsign_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_not_exitcond_stall_out),
        .in_first_cleanup239(i_first_cleanup239_conv_process3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together82_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,110)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid138_i_next_initerations233_conv_process0_shift_x(BITSELECT,137)@2
    assign rightShiftStage0Idx1Rng1_uid138_i_next_initerations233_conv_process0_shift_x_b = i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid140_i_next_initerations233_conv_process0_shift_x(BITJOIN,139)@2
    assign rightShiftStage0Idx1_uid140_i_next_initerations233_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid138_i_next_initerations233_conv_process0_shift_x_b};

    // valid_fanout_reg1(REG,108)@1 + 1
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

    // valid_fanout_reg2(REG,109)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations232_push60_conv_process9(BLACKBOX,85)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    cnn_top_i_llvm_fpga_push_i4_initerations232_push60_conv_process0 thei_llvm_fpga_push_i4_initerations232_push60_conv_process9 (
        .in_data_in(i_next_initerations233_conv_process8_vt_join_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_feedback_stall_out_60),
        .in_keep_going234(redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7(BLACKBOX,78)@2
    // out out_feedback_stall_out_60@20000000
    cnn_top_i_llvm_fpga_pop_i4_initerations232_pop60_conv_process0 thei_llvm_fpga_pop_i4_initerations232_pop60_conv_process7 (
        .in_data_in(c_i4_756_q),
        .in_dir(redist4_sync_together82_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i4_initerations232_push60_conv_process9_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x(MUX,141)@2
    assign rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_s or i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_data_out or rightShiftStage0Idx1_uid140_i_next_initerations233_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_q = i_llvm_fpga_pop_i4_initerations232_pop60_conv_process7_out_data_out;
            1'b1 : rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_q = rightShiftStage0Idx1_uid140_i_next_initerations233_conv_process0_shift_x_q;
            default : rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations233_conv_process8_vt_select_2(BITSELECT,91)@2
    assign i_next_initerations233_conv_process8_vt_select_2_b = rightShiftStage0_uid142_i_next_initerations233_conv_process0_shift_x_q[2:0];

    // i_next_initerations233_conv_process8_vt_join(BITJOIN,90)@2
    assign i_next_initerations233_conv_process8_vt_join_q = {GND_q, i_next_initerations233_conv_process8_vt_select_2_b};

    // i_last_initeration235_conv_process10_sel_x(BITSELECT,12)@2
    assign i_last_initeration235_conv_process10_sel_x_b = i_next_initerations233_conv_process8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration236_conv_process11(BLACKBOX,80)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration236_conv_process0 thei_llvm_fpga_push_i1_lastiniteration236_conv_process11 (
        .in_data_in(i_last_initeration235_conv_process10_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_initeration_stall_out),
        .in_keep_going234(redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going234_conv_process6(BLACKBOX,74)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going234_conv_process0 thei_llvm_fpga_pipeline_keep_going234_conv_process6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_out_22),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration236_conv_process11_out_feedback_valid_out_22),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_out_23),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond244_conv_process32_out_feedback_valid_out_23),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out);
        end
    end

    // redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2(DELAY,148)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q <= $unsigned(redist2_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_1_q);
        end
    end

    // i_first_cleanup_xor240_conv_process4(LOGICAL,66)@3
    assign i_first_cleanup_xor240_conv_process4_q = i_first_cleanup239_conv_process3_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,31)@3
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_first_cleanup_xor240_conv_process4_q;
    assign out_c0_exi6_2_tpl = redist3_i_llvm_fpga_pipeline_keep_going234_conv_process6_out_data_out_2_q;
    assign out_c0_exi6_3_tpl = i_mptr_bitcast_index867_conv_process0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_4_tpl = i_mptr_bitcast_index865_conv_process0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_5_tpl = i_masked243_conv_process38_q;
    assign out_c0_exi6_6_tpl = redist5_sync_together82_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // ext_sig_sync_out(GPOUT,59)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going234_conv_process6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going234_conv_process6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,102)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going234_conv_process6_out_pipeline_valid_out;

endmodule
