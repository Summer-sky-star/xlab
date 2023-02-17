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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond11_i0000r80332_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond11_i0000r80332_conv_process0 (
    output wire [0:0] out_c0_exi7814_0_tpl,
    output wire [0:0] out_c0_exi7814_1_tpl,
    output wire [0:0] out_c0_exi7814_2_tpl,
    output wire [0:0] out_c0_exi7814_3_tpl,
    output wire [0:0] out_c0_exi7814_4_tpl,
    output wire [0:0] out_c0_exi7814_5_tpl,
    output wire [0:0] out_c0_exi7814_6_tpl,
    output wire [0:0] out_c0_exi7814_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni4802_0_tpl,
    input wire [0:0] in_c0_eni4802_1_tpl,
    input wire [0:0] in_c0_eni4802_2_tpl,
    input wire [0:0] in_c0_eni4802_3_tpl,
    input wire [0:0] in_c0_eni4802_4_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going203_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going203_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_54_0,
    input wire [32:0] in_intel_reserved_ffwd_58_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next29_conv_process12_sel_x_b;
    wire [32:0] c_i33_132_q;
    wire [32:0] c_i33_undef30_q;
    wire [0:0] i_fpga_indvars_iv28_replace_phi_conv_process5_s;
    reg [32:0] i_fpga_indvars_iv28_replace_phi_conv_process5_q;
    wire [33:0] i_fpga_indvars_iv_next29_conv_process12_a;
    wire [33:0] i_fpga_indvars_iv_next29_conv_process12_b;
    logic [33:0] i_fpga_indvars_iv_next29_conv_process12_o;
    wire [33:0] i_fpga_indvars_iv_next29_conv_process12_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process111_conv_process8_out_dest_data_out_54_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3_out_dest_data_out_58_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going203_conv_process2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_feedback_stall_out_83;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_feedback_stall_out_84;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_feedback_stall_out_82;
    wire [0:0] i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_out_83;
    wire [0:0] i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_valid_out_83;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_out_84;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_valid_out_84;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_out_82;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_valid_out_82;
    wire [0:0] i_notcmp202_conv_process10_q;
    wire [0:0] i_unnamed_conv_process9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond30_conv_process6_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_conv_process9_q_1_q;
    reg [0:0] redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1_q;
    reg [0:0] redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1_q;
    reg [0:0] redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1_q;
    reg [0:0] redist4_sync_together46_aunroll_x_in_c0_eni4802_4_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,44)@1 + 1
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

    // redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1(DELAY,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1_q <= $unsigned(in_c0_eni4802_2_tpl);
        end
    end

    // redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1(DELAY,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1_q <= $unsigned(in_c0_eni4802_3_tpl);
        end
    end

    // redist4_sync_together46_aunroll_x_in_c0_eni4802_4_tpl_1(DELAY,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together46_aunroll_x_in_c0_eni4802_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together46_aunroll_x_in_c0_eni4802_4_tpl_1_q <= $unsigned(in_c0_eni4802_4_tpl);
        end
    end

    // valid_fanout_reg3(REG,47)@1 + 1
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

    // valid_fanout_reg4(REG,48)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17(BLACKBOX,33)@2
    // out out_feedback_out_84@20000000
    // out out_feedback_valid_out_84@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp206292_push84_conv_process0 thei_llvm_fpga_push_i1_notcmp206292_push84_conv_process17 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_data_out),
        .in_feedback_stall_in_84(i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_feedback_stall_out_84),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process127(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_84(i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_out_84),
        .out_feedback_valid_out_84(i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_valid_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1_q <= $unsigned(in_c0_eni4802_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16(BLACKBOX,30)@2
    // out out_feedback_stall_out_84@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process0 thei_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16 (
        .in_data_in(redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1_q),
        .in_dir(redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1_q),
        .in_feedback_in_84(i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_out_84),
        .in_feedback_valid_in_84(i_llvm_fpga_push_i1_notcmp206292_push84_conv_process17_out_feedback_valid_out_84),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_data_out),
        .out_feedback_stall_out_84(i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_feedback_stall_out_84),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,45)@1 + 1
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

    // valid_fanout_reg2(REG,46)@1 + 1
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

    // i_llvm_fpga_push_i1_lnot282_push83_conv_process15(BLACKBOX,32)@2
    // out out_feedback_out_83@20000000
    // out out_feedback_valid_out_83@20000000
    cnn_top_i_llvm_fpga_push_i1_lnot282_push83_conv_process0 thei_llvm_fpga_push_i1_lnot282_push83_conv_process15 (
        .in_data_in(i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_data_out),
        .in_feedback_stall_in_83(i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_feedback_stall_out_83),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process127(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_83(i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_out_83),
        .out_feedback_valid_out_83(i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_valid_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14(BLACKBOX,29)@2
    // out out_feedback_stall_out_83@20000000
    cnn_top_i_llvm_fpga_pop_i1_lnot282_pop83_conv_process0 thei_llvm_fpga_pop_i1_lnot282_pop83_conv_process14 (
        .in_data_in(redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1_q),
        .in_dir(redist1_sync_together46_aunroll_x_in_c0_eni4802_1_tpl_1_q),
        .in_feedback_in_83(i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_out_83),
        .in_feedback_valid_in_83(i_llvm_fpga_push_i1_lnot282_push83_conv_process15_out_feedback_valid_out_83),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_data_out),
        .out_feedback_stall_out_83(i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_feedback_stall_out_83),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp202_conv_process10(LOGICAL,36)@2
    assign i_notcmp202_conv_process10_q = redist0_i_unnamed_conv_process9_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3(BLACKBOX,27)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000ess110_conv_process0 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3 (
        .in_intel_reserved_ffwd_58_0(in_intel_reserved_ffwd_58_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_58_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3_out_dest_data_out_58_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_132(CONSTANT,20)
    assign c_i33_132_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next29_conv_process12(ADD,25)@1
    assign i_fpga_indvars_iv_next29_conv_process12_a = {1'b0, i_fpga_indvars_iv28_replace_phi_conv_process5_q};
    assign i_fpga_indvars_iv_next29_conv_process12_b = {1'b0, c_i33_132_q};
    assign i_fpga_indvars_iv_next29_conv_process12_o = $unsigned(i_fpga_indvars_iv_next29_conv_process12_a) + $unsigned(i_fpga_indvars_iv_next29_conv_process12_b);
    assign i_fpga_indvars_iv_next29_conv_process12_q = i_fpga_indvars_iv_next29_conv_process12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next29_conv_process12_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next29_conv_process12_sel_x_b = i_fpga_indvars_iv_next29_conv_process12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13(BLACKBOX,35)@1
    // out out_feedback_out_82@20000000
    // out out_feedback_valid_out_82@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push82_conv_process0 thei_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next29_conv_process12_sel_x_b),
        .in_feedback_stall_in_82(i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_feedback_stall_out_82),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process127(i_unnamed_conv_process9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_82(i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_out_82),
        .out_feedback_valid_out_82(i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_valid_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef30(CONSTANT,21)
    assign c_i33_undef30_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4(BLACKBOX,31)@1
    // out out_feedback_stall_out_82@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop82_conv_process0 thei_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4 (
        .in_data_in(c_i33_undef30_q),
        .in_dir(in_c0_eni4802_1_tpl),
        .in_feedback_in_82(i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_out_82),
        .in_feedback_valid_in_82(i_llvm_fpga_push_i33_fpga_indvars_iv28_push82_conv_process13_out_feedback_valid_out_82),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_data_out),
        .out_feedback_stall_out_82(i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_feedback_stall_out_82),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv28_replace_phi_conv_process5(MUX,24)@1
    assign i_fpga_indvars_iv28_replace_phi_conv_process5_s = in_c0_eni4802_1_tpl;
    always @(i_fpga_indvars_iv28_replace_phi_conv_process5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3_out_dest_data_out_58_0)
    begin
        unique case (i_fpga_indvars_iv28_replace_phi_conv_process5_s)
            1'b0 : i_fpga_indvars_iv28_replace_phi_conv_process5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv28_pop82_conv_process4_out_data_out;
            1'b1 : i_fpga_indvars_iv28_replace_phi_conv_process5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process110_conv_process3_out_dest_data_out_58_0;
            default : i_fpga_indvars_iv28_replace_phi_conv_process5_q = 33'b0;
        endcase
    end

    // i_exitcond30_conv_process6_cmp_nsign(LOGICAL,51)@1
    assign i_exitcond30_conv_process6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv28_replace_phi_conv_process5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process111_conv_process8(BLACKBOX,26)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ess111_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process111_conv_process8 (
        .in_intel_reserved_ffwd_54_0(in_intel_reserved_ffwd_54_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_54_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process111_conv_process8_out_dest_data_out_54_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process9(LOGICAL,37)@1
    assign i_unnamed_conv_process9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process111_conv_process8_out_dest_data_out_54_0 & i_exitcond30_conv_process6_cmp_nsign_q;

    // redist0_i_unnamed_conv_process9_q_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_conv_process9_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_conv_process9_q_1_q <= $unsigned(i_unnamed_conv_process9_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@2
    assign out_c0_exi7814_0_tpl = GND_q;
    assign out_c0_exi7814_1_tpl = redist0_i_unnamed_conv_process9_q_1_q;
    assign out_c0_exi7814_2_tpl = i_notcmp202_conv_process10_q;
    assign out_c0_exi7814_3_tpl = i_llvm_fpga_pop_i1_lnot282_pop83_conv_process14_out_data_out;
    assign out_c0_exi7814_4_tpl = i_llvm_fpga_pop_i1_notcmp206292_pop84_conv_process16_out_data_out;
    assign out_c0_exi7814_5_tpl = redist4_sync_together46_aunroll_x_in_c0_eni4802_4_tpl_1_q;
    assign out_c0_exi7814_6_tpl = redist3_sync_together46_aunroll_x_in_c0_eni4802_3_tpl_1_q;
    assign out_c0_exi7814_7_tpl = redist2_sync_together46_aunroll_x_in_c0_eni4802_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond204_conv_process11(BLACKBOX,34)@1
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond204_conv_process0 thei_llvm_fpga_push_i1_notexitcond204_conv_process11 (
        .in_data_in(i_unnamed_conv_process9_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pipeline_keep_going203_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going203_conv_process2(BLACKBOX,28)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going203_conv_process0 thei_llvm_fpga_pipeline_keep_going203_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_out_15),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond204_conv_process11_out_feedback_valid_out_15),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going203_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,22)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going203_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going203_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going203_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going203_conv_process2_out_pipeline_valid_out;

endmodule
