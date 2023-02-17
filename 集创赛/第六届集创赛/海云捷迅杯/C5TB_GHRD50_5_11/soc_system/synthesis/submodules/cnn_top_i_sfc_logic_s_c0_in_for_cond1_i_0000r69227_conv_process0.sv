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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond1_i_0000r69227_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond1_i_0000r69227_conv_process0 (
    output wire [0:0] out_c0_exi3696_0_tpl,
    output wire [0:0] out_c0_exi3696_1_tpl,
    output wire [0:0] out_c0_exi3696_2_tpl,
    output wire [31:0] out_c0_exi3696_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni1691_0_tpl,
    input wire [0:0] in_c0_eni1691_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going228_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going228_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next15_conv_process8_sel_x_b;
    wire [31:0] bgTrunc_i_inc17_i_conv_process11_sel_x_b;
    wire [31:0] c_i32_024_q;
    wire [31:0] c_i32_125_q;
    wire [3:0] c_i4_123_q;
    wire [3:0] c_i4_321_q;
    wire [4:0] i_fpga_indvars_iv_next15_conv_process8_a;
    wire [4:0] i_fpga_indvars_iv_next15_conv_process8_b;
    logic [4:0] i_fpga_indvars_iv_next15_conv_process8_o;
    wire [4:0] i_fpga_indvars_iv_next15_conv_process8_q;
    wire [32:0] i_inc17_i_conv_process11_a;
    wire [32:0] i_inc17_i_conv_process11_b;
    logic [32:0] i_inc17_i_conv_process11_o;
    wire [32:0] i_inc17_i_conv_process11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going228_conv_process2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_feedback_stall_out_63;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_feedback_stall_out_62;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_out_63;
    wire [0:0] i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_valid_out_63;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_valid_out_62;
    wire [0:0] i_notcmp226_conv_process6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond16_conv_process4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together35_aunroll_x_in_c0_eni1691_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,37)@1 + 1
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

    // valid_fanout_reg1(REG,38)@1 + 1
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

    // valid_fanout_reg2(REG,39)@1 + 1
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

    // c_i32_125(CONSTANT,19)
    assign c_i32_125_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc17_i_conv_process11(ADD,25)@2
    assign i_inc17_i_conv_process11_a = {1'b0, i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_data_out};
    assign i_inc17_i_conv_process11_b = {1'b0, c_i32_125_q};
    assign i_inc17_i_conv_process11_o = $unsigned(i_inc17_i_conv_process11_a) + $unsigned(i_inc17_i_conv_process11_b);
    assign i_inc17_i_conv_process11_q = i_inc17_i_conv_process11_o[32:0];

    // bgTrunc_i_inc17_i_conv_process11_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc17_i_conv_process11_sel_x_b = i_inc17_i_conv_process11_q[31:0];

    // i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12(BLACKBOX,30)@2
    // out out_feedback_out_63@20000000
    // out out_feedback_valid_out_63@20000000
    cnn_top_i_llvm_fpga_push_i32_r_0_i496_push63_conv_process0 thei_llvm_fpga_push_i32_r_0_i496_push63_conv_process12 (
        .in_data_in(bgTrunc_i_inc17_i_conv_process11_sel_x_b),
        .in_exitcond16(redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_63(i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_feedback_stall_out_63),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_63(i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_out_63),
        .out_feedback_valid_out_63(i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_valid_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together35_aunroll_x_in_c0_eni1691_1_tpl_1(DELAY,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni1691_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni1691_1_tpl_1_q <= $unsigned(in_c0_eni1691_1_tpl);
        end
    end

    // c_i32_024(CONSTANT,18)
    assign c_i32_024_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10(BLACKBOX,27)@2
    // out out_feedback_stall_out_63@20000000
    cnn_top_i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process0 thei_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10 (
        .in_data_in(c_i32_024_q),
        .in_dir(redist1_sync_together35_aunroll_x_in_c0_eni1691_1_tpl_1_q),
        .in_feedback_in_63(i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_out_63),
        .in_feedback_valid_in_63(i_llvm_fpga_push_i32_r_0_i496_push63_conv_process12_out_feedback_valid_out_63),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_data_out),
        .out_feedback_stall_out_63(i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_feedback_stall_out_63),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp226_conv_process6(LOGICAL,32)@2
    assign i_notcmp226_conv_process6_q = redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q ^ VCC_q;

    // c_i4_123(CONSTANT,20)
    assign c_i4_123_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next15_conv_process8(ADD,24)@1
    assign i_fpga_indvars_iv_next15_conv_process8_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_data_out};
    assign i_fpga_indvars_iv_next15_conv_process8_b = {1'b0, c_i4_123_q};
    assign i_fpga_indvars_iv_next15_conv_process8_o = $unsigned(i_fpga_indvars_iv_next15_conv_process8_a) + $unsigned(i_fpga_indvars_iv_next15_conv_process8_b);
    assign i_fpga_indvars_iv_next15_conv_process8_q = i_fpga_indvars_iv_next15_conv_process8_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next15_conv_process8_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next15_conv_process8_sel_x_b = i_fpga_indvars_iv_next15_conv_process8_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9(BLACKBOX,31)@1
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    cnn_top_i_llvm_fpga_push_i4_fpga_indvars0000push62_conv_process0 thei_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_conv_process8_sel_x_b),
        .in_exitcond16(i_exitcond16_conv_process4_cmp_nsign_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_feedback_stall_out_62),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_321(CONSTANT,21)
    assign c_i4_321_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3(BLACKBOX,28)@1
    // out out_feedback_stall_out_62@20000000
    cnn_top_i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process0 thei_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3 (
        .in_data_in(c_i4_321_q),
        .in_dir(in_c0_eni1691_1_tpl),
        .in_feedback_in_62(i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i4_fpga_indvars_iv14_push62_conv_process9_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond16_conv_process4_cmp_nsign(LOGICAL,43)@1
    assign i_exitcond16_conv_process4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv14_pop62_conv_process3_out_data_out[3:3]));

    // redist0_i_exitcond16_conv_process4_cmp_nsign_q_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q <= $unsigned(i_exitcond16_conv_process4_cmp_nsign_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi3696_0_tpl = GND_q;
    assign out_c0_exi3696_1_tpl = redist0_i_exitcond16_conv_process4_cmp_nsign_q_1_q;
    assign out_c0_exi3696_2_tpl = i_notcmp226_conv_process6_q;
    assign out_c0_exi3696_3_tpl = i_llvm_fpga_pop_i32_r_0_i496_pop63_conv_process10_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond229_conv_process7(BLACKBOX,29)@1
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond229_conv_process0 thei_llvm_fpga_push_i1_notexitcond229_conv_process7 (
        .in_data_in(i_exitcond16_conv_process4_cmp_nsign_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pipeline_keep_going228_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going228_conv_process2(BLACKBOX,26)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going228_conv_process0 thei_llvm_fpga_pipeline_keep_going228_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_out_21),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond229_conv_process7_out_feedback_valid_out_21),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going228_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,22)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going228_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going228_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going228_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,35)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going228_conv_process2_out_pipeline_valid_out;

endmodule
