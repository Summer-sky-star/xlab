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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond2_i_0000r78730_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond2_i_0000r78730_conv_process0 (
    output wire [0:0] out_c0_exi4793_0_tpl,
    output wire [0:0] out_c0_exi4793_1_tpl,
    output wire [0:0] out_c0_exi4793_2_tpl,
    output wire [0:0] out_c0_exi4793_3_tpl,
    output wire [0:0] out_c0_exi4793_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni2786_0_tpl,
    input wire [0:0] in_c0_eni2786_1_tpl,
    input wire [0:0] in_c0_eni2786_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_52_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] bgTrunc_i_fpga_indvars_iv_next32_conv_process10_sel_x_b;
    wire [1:0] c_i2_023_q;
    wire [1:0] c_i2_124_q;
    wire [2:0] i_fpga_indvars_iv_next32_conv_process10_a;
    wire [2:0] i_fpga_indvars_iv_next32_conv_process10_b;
    logic [2:0] i_fpga_indvars_iv_next32_conv_process10_o;
    wire [2:0] i_fpga_indvars_iv_next32_conv_process10_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process6_out_dest_data_out_52_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going208_conv_process2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_feedback_stall_out_74;
    wire [1:0] i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_feedback_stall_out_73;
    wire [0:0] i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_valid_out_74;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_valid_out_73;
    wire [0:0] i_notcmp206_conv_process8_q;
    wire [0:0] i_unnamed_conv_process7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond33_conv_process4_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_conv_process7_q_1_q;
    reg [0:0] redist1_sync_together35_aunroll_x_in_c0_eni2786_1_tpl_1_q;
    reg [0:0] redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,36)@1 + 1
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

    // redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1_q <= $unsigned(in_c0_eni2786_2_tpl);
        end
    end

    // valid_fanout_reg1(REG,37)@1 + 1
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

    // valid_fanout_reg2(REG,38)@1 + 1
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

    // i_llvm_fpga_push_i1_lnot281_push74_conv_process13(BLACKBOX,26)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    cnn_top_i_llvm_fpga_push_i1_lnot281_push74_conv_process0 thei_llvm_fpga_push_i1_lnot281_push74_conv_process13 (
        .in_data_in(i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_data_out),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_feedback_stall_out_74),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process126(redist0_i_unnamed_conv_process7_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together35_aunroll_x_in_c0_eni2786_1_tpl_1(DELAY,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni2786_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni2786_1_tpl_1_q <= $unsigned(in_c0_eni2786_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12(BLACKBOX,24)@2
    // out out_feedback_stall_out_74@20000000
    cnn_top_i_llvm_fpga_pop_i1_lnot281_pop74_conv_process0 thei_llvm_fpga_pop_i1_lnot281_pop74_conv_process12 (
        .in_data_in(redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1_q),
        .in_dir(redist1_sync_together35_aunroll_x_in_c0_eni2786_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i1_lnot281_push74_conv_process13_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp206_conv_process8(LOGICAL,29)@2
    assign i_notcmp206_conv_process8_q = redist0_i_unnamed_conv_process7_q_1_q ^ VCC_q;

    // c_i2_124(CONSTANT,18)
    assign c_i2_124_q = $unsigned(2'b11);

    // i_fpga_indvars_iv_next32_conv_process10(ADD,21)@1
    assign i_fpga_indvars_iv_next32_conv_process10_a = {1'b0, i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_data_out};
    assign i_fpga_indvars_iv_next32_conv_process10_b = {1'b0, c_i2_124_q};
    assign i_fpga_indvars_iv_next32_conv_process10_o = $unsigned(i_fpga_indvars_iv_next32_conv_process10_a) + $unsigned(i_fpga_indvars_iv_next32_conv_process10_b);
    assign i_fpga_indvars_iv_next32_conv_process10_q = i_fpga_indvars_iv_next32_conv_process10_o[2:0];

    // bgTrunc_i_fpga_indvars_iv_next32_conv_process10_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next32_conv_process10_sel_x_b = i_fpga_indvars_iv_next32_conv_process10_q[1:0];

    // i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11(BLACKBOX,28)@1
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    cnn_top_i_llvm_fpga_push_i2_fpga_indvars0000push73_conv_process0 thei_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next32_conv_process10_sel_x_b),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_feedback_stall_out_73),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process126(i_unnamed_conv_process7_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_023(CONSTANT,17)
    assign c_i2_023_q = $unsigned(2'b00);

    // i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3(BLACKBOX,25)@1
    // out out_feedback_stall_out_73@20000000
    cnn_top_i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process0 thei_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3 (
        .in_data_in(c_i2_023_q),
        .in_dir(in_c0_eni2786_1_tpl),
        .in_feedback_in_73(i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i2_fpga_indvars_iv31_push73_conv_process11_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond33_conv_process4_cmp_nsign(LOGICAL,41)@1
    assign i_exitcond33_conv_process4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i2_fpga_indvars_iv31_pop73_conv_process3_out_data_out[1:1]));

    // i_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process6(BLACKBOX,22)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process6 (
        .in_intel_reserved_ffwd_52_0(in_intel_reserved_ffwd_52_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_52_0(i_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process6_out_dest_data_out_52_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process7(LOGICAL,30)@1
    assign i_unnamed_conv_process7_q = i_llvm_fpga_ffwd_dest_i1_cmp24489117_conv_process6_out_dest_data_out_52_0 & i_exitcond33_conv_process4_cmp_nsign_q;

    // redist0_i_unnamed_conv_process7_q_1(DELAY,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_conv_process7_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_conv_process7_q_1_q <= $unsigned(i_unnamed_conv_process7_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@2
    assign out_c0_exi4793_0_tpl = GND_q;
    assign out_c0_exi4793_1_tpl = redist0_i_unnamed_conv_process7_q_1_q;
    assign out_c0_exi4793_2_tpl = i_notcmp206_conv_process8_q;
    assign out_c0_exi4793_3_tpl = i_llvm_fpga_pop_i1_lnot281_pop74_conv_process12_out_data_out;
    assign out_c0_exi4793_4_tpl = redist2_sync_together35_aunroll_x_in_c0_eni2786_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond209_conv_process9(BLACKBOX,27)@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond209_conv_process0 thei_llvm_fpga_push_i1_notexitcond209_conv_process9 (
        .in_data_in(i_unnamed_conv_process7_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pipeline_keep_going208_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going208_conv_process2(BLACKBOX,23)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going208_conv_process0 thei_llvm_fpga_pipeline_keep_going208_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_out_17),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond209_conv_process9_out_feedback_valid_out_17),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going208_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,19)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going208_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going208_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,33)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going208_conv_process2_out_pipeline_valid_out;

endmodule
