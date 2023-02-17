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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond13_i0000r71428_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond13_i0000r71428_conv_process0 (
    output wire [0:0] out_c0_exi4719_0_tpl,
    output wire [0:0] out_c0_exi4719_1_tpl,
    output wire [0:0] out_c0_exi4719_2_tpl,
    output wire [31:0] out_c0_exi4719_3_tpl,
    output wire [0:0] out_c0_exi4719_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni1713_0_tpl,
    input wire [0:0] in_c0_eni1713_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_60_0,
    input wire [32:0] in_intel_reserved_ffwd_74_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next42_conv_process12_sel_x_b;
    wire [31:0] bgTrunc_i_inc72_i_conv_process15_sel_x_b;
    wire [31:0] c_i32_030_q;
    wire [31:0] c_i32_131_q;
    wire [32:0] c_i33_129_q;
    wire [32:0] c_i33_undef27_q;
    wire [0:0] i_fpga_indvars_iv41_replace_phi_conv_process5_s;
    reg [32:0] i_fpga_indvars_iv41_replace_phi_conv_process5_q;
    wire [33:0] i_fpga_indvars_iv_next42_conv_process12_a;
    wire [33:0] i_fpga_indvars_iv_next42_conv_process12_b;
    logic [33:0] i_fpga_indvars_iv_next42_conv_process12_o;
    wire [33:0] i_fpga_indvars_iv_next42_conv_process12_q;
    wire [32:0] i_inc72_i_conv_process15_a;
    wire [32:0] i_inc72_i_conv_process15_b;
    logic [32:0] i_inc72_i_conv_process15_o;
    wire [32:0] i_inc72_i_conv_process15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process8_out_dest_data_out_60_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3_out_dest_data_out_74_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going170_conv_process2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_feedback_stall_out_65;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_feedback_stall_out_64;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_out_65;
    wire [0:0] i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_valid_out_65;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_out_64;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_valid_out_64;
    wire [0:0] i_notcmp169_conv_process10_q;
    wire [0:0] i_unnamed_conv_process9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond43_conv_process6_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_conv_process9_q_1_q;
    reg [0:0] redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,45)@1 + 1
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

    // redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1_q <= $unsigned(in_c0_eni1713_1_tpl);
        end
    end

    // valid_fanout_reg1(REG,46)@1 + 1
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

    // valid_fanout_reg2(REG,47)@1 + 1
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

    // c_i32_131(CONSTANT,21)
    assign c_i32_131_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc72_i_conv_process15(ADD,28)@2
    assign i_inc72_i_conv_process15_a = {1'b0, i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_data_out};
    assign i_inc72_i_conv_process15_b = {1'b0, c_i32_131_q};
    assign i_inc72_i_conv_process15_o = $unsigned(i_inc72_i_conv_process15_a) + $unsigned(i_inc72_i_conv_process15_b);
    assign i_inc72_i_conv_process15_q = i_inc72_i_conv_process15_o[32:0];

    // bgTrunc_i_inc72_i_conv_process15_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc72_i_conv_process15_sel_x_b = i_inc72_i_conv_process15_q[31:0];

    // i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16(BLACKBOX,35)@2
    // out out_feedback_out_65@20000000
    // out out_feedback_valid_out_65@20000000
    cnn_top_i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process0 thei_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16 (
        .in_data_in(bgTrunc_i_inc72_i_conv_process15_sel_x_b),
        .in_feedback_stall_in_65(i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_feedback_stall_out_65),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process124(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_65(i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_out_65),
        .out_feedback_valid_out_65(i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_valid_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_030(CONSTANT,20)
    assign c_i32_030_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14(BLACKBOX,32)@2
    // out out_feedback_stall_out_65@20000000
    cnn_top_i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process0 thei_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14 (
        .in_data_in(c_i32_030_q),
        .in_dir(redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1_q),
        .in_feedback_in_65(i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_out_65),
        .in_feedback_valid_in_65(i_llvm_fpga_push_i32_r_0_i106476_push65_conv_process16_out_feedback_valid_out_65),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_data_out),
        .out_feedback_stall_out_65(i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_feedback_stall_out_65),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp169_conv_process10(LOGICAL,37)@2
    assign i_notcmp169_conv_process10_q = redist0_i_unnamed_conv_process9_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3(BLACKBOX,30)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000cess89_conv_process0 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3 (
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_74_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3_out_dest_data_out_74_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_129(CONSTANT,22)
    assign c_i33_129_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next42_conv_process12(ADD,27)@1
    assign i_fpga_indvars_iv_next42_conv_process12_a = {1'b0, i_fpga_indvars_iv41_replace_phi_conv_process5_q};
    assign i_fpga_indvars_iv_next42_conv_process12_b = {1'b0, c_i33_129_q};
    assign i_fpga_indvars_iv_next42_conv_process12_o = $unsigned(i_fpga_indvars_iv_next42_conv_process12_a) + $unsigned(i_fpga_indvars_iv_next42_conv_process12_b);
    assign i_fpga_indvars_iv_next42_conv_process12_q = i_fpga_indvars_iv_next42_conv_process12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next42_conv_process12_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next42_conv_process12_sel_x_b = i_fpga_indvars_iv_next42_conv_process12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13(BLACKBOX,36)@1
    // out out_feedback_out_64@20000000
    // out out_feedback_valid_out_64@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push64_conv_process0 thei_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next42_conv_process12_sel_x_b),
        .in_feedback_stall_in_64(i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_feedback_stall_out_64),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process124(i_unnamed_conv_process9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_64(i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_out_64),
        .out_feedback_valid_out_64(i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_valid_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef27(CONSTANT,23)
    assign c_i33_undef27_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4(BLACKBOX,33)@1
    // out out_feedback_stall_out_64@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop64_conv_process0 thei_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4 (
        .in_data_in(c_i33_undef27_q),
        .in_dir(in_c0_eni1713_1_tpl),
        .in_feedback_in_64(i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_out_64),
        .in_feedback_valid_in_64(i_llvm_fpga_push_i33_fpga_indvars_iv41_push64_conv_process13_out_feedback_valid_out_64),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_data_out),
        .out_feedback_stall_out_64(i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_feedback_stall_out_64),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv41_replace_phi_conv_process5(MUX,26)@1
    assign i_fpga_indvars_iv41_replace_phi_conv_process5_s = in_c0_eni1713_1_tpl;
    always @(i_fpga_indvars_iv41_replace_phi_conv_process5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3_out_dest_data_out_74_0)
    begin
        unique case (i_fpga_indvars_iv41_replace_phi_conv_process5_s)
            1'b0 : i_fpga_indvars_iv41_replace_phi_conv_process5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv41_pop64_conv_process4_out_data_out;
            1'b1 : i_fpga_indvars_iv41_replace_phi_conv_process5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process89_conv_process3_out_dest_data_out_74_0;
            default : i_fpga_indvars_iv41_replace_phi_conv_process5_q = 33'b0;
        endcase
    end

    // i_exitcond43_conv_process6_cmp_nsign(LOGICAL,51)@1
    assign i_exitcond43_conv_process6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv41_replace_phi_conv_process5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process8(BLACKBOX,29)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process8 (
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_60_0(i_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process8_out_dest_data_out_60_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process9(LOGICAL,38)@1
    assign i_unnamed_conv_process9_q = i_llvm_fpga_ffwd_dest_i1_cmp_i107473129_conv_process8_out_dest_data_out_60_0 & i_exitcond43_conv_process6_cmp_nsign_q;

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

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi4719_0_tpl = GND_q;
    assign out_c0_exi4719_1_tpl = redist0_i_unnamed_conv_process9_q_1_q;
    assign out_c0_exi4719_2_tpl = i_notcmp169_conv_process10_q;
    assign out_c0_exi4719_3_tpl = i_llvm_fpga_pop_i32_r_0_i106476_pop65_conv_process14_out_data_out;
    assign out_c0_exi4719_4_tpl = redist1_sync_together43_aunroll_x_in_c0_eni1713_1_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond171_conv_process11(BLACKBOX,34)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond171_conv_process0 thei_llvm_fpga_push_i1_notexitcond171_conv_process11 (
        .in_data_in(i_unnamed_conv_process9_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going170_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going170_conv_process2(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going170_conv_process0 thei_llvm_fpga_pipeline_keep_going170_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond171_conv_process11_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going170_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going170_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,41)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going170_conv_process2_out_pipeline_valid_out;

endmodule
