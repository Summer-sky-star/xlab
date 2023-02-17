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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond49_p0000r19313_load_weight10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond49_p0000r19313_load_weight10 (
    output wire [0:0] out_c0_exi3198_0_tpl,
    output wire [0:0] out_c0_exi3198_1_tpl,
    output wire [0:0] out_c0_exi3198_2_tpl,
    output wire [31:0] out_c0_exi3198_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight119,
    input wire [0:0] in_c0_eni2192_0_tpl,
    input wire [0:0] in_c0_eni2192_1_tpl,
    input wire [31:0] in_c0_eni2192_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] bgTrunc_i_fpga_indvars_iv_next17_load_weight110_sel_x_b;
    wire [1:0] c_i2_019_q;
    wire [1:0] c_i2_120_q;
    wire [2:0] i_fpga_indvars_iv_next17_load_weight110_a;
    wire [2:0] i_fpga_indvars_iv_next17_load_weight110_b;
    logic [2:0] i_fpga_indvars_iv_next17_load_weight110_o;
    wire [2:0] i_fpga_indvars_iv_next17_load_weight110_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight136_load_weight16_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going87_load_weight12_out_pipeline_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_valid_out_16;
    wire [0:0] i_notexit89_load_weight18_q;
    wire [0:0] i_unnamed_load_weight17_q;
    wire [0:0] i_exitcond18_load_weight14_cmp_sign_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_notexit89_load_weight18(LOGICAL,25)@1
    assign i_notexit89_load_weight18_q = i_unnamed_load_weight17_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight136_load_weight16(BLACKBOX,20)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght136_load_weight10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight136_load_weight16 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight136_load_weight16_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_120(CONSTANT,16)
    assign c_i2_120_q = $unsigned(2'b11);

    // i_fpga_indvars_iv_next17_load_weight110(ADD,19)@1
    assign i_fpga_indvars_iv_next17_load_weight110_a = {1'b0, i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_data_out};
    assign i_fpga_indvars_iv_next17_load_weight110_b = {1'b0, c_i2_120_q};
    assign i_fpga_indvars_iv_next17_load_weight110_o = $unsigned(i_fpga_indvars_iv_next17_load_weight110_a) + $unsigned(i_fpga_indvars_iv_next17_load_weight110_b);
    assign i_fpga_indvars_iv_next17_load_weight110_q = i_fpga_indvars_iv_next17_load_weight110_o[2:0];

    // bgTrunc_i_fpga_indvars_iv_next17_load_weight110_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next17_load_weight110_sel_x_b = i_fpga_indvars_iv_next17_load_weight110_q[1:0];

    // i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111(BLACKBOX,24)@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    cnn_top_i_llvm_fpga_push_i2_fpga_indvars0000push16_load_weight10 thei_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_load_weight110_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_feedback_stall_out_16),
        .in_notexit89(i_notexit89_load_weight18_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_019(CONSTANT,15)
    assign c_i2_019_q = $unsigned(2'b00);

    // i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13(BLACKBOX,22)@1
    // out out_feedback_stall_out_16@20000000
    cnn_top_i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight10 thei_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13 (
        .in_data_in(c_i2_019_q),
        .in_dir(in_c0_eni2192_1_tpl),
        .in_feedback_in_16(i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_fpga_indvars_iv16_push16_load_weight111_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond18_load_weight14_cmp_sign(LOGICAL,33)@1
    assign i_exitcond18_load_weight14_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i2_fpga_indvars_iv16_pop16_load_weight13_out_data_out[1:1]);

    // i_unnamed_load_weight17(LOGICAL,26)@1
    assign i_unnamed_load_weight17_q = i_exitcond18_load_weight14_cmp_sign_q | i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight136_load_weight16_out_dest_data_out_20_0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@1
    assign out_c0_exi3198_0_tpl = GND_q;
    assign out_c0_exi3198_1_tpl = i_unnamed_load_weight17_q;
    assign out_c0_exi3198_2_tpl = i_notexit89_load_weight18_q;
    assign out_c0_exi3198_3_tpl = in_c0_eni2192_2_tpl;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_load_weight119 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond88_load_weight19(BLACKBOX,23)@1
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond88_load_weight10 thei_llvm_fpga_push_i1_notexitcond88_load_weight19 (
        .in_data_in(i_notexit89_load_weight18_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pipeline_keep_going87_load_weight12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going87_load_weight12(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going87_load_weight10 thei_llvm_fpga_pipeline_keep_going87_load_weight12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_out_15),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond88_load_weight19_out_feedback_valid_out_15),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going87_load_weight12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going87_load_weight12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going87_load_weight12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going87_load_weight12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,29)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going87_load_weight12_out_pipeline_valid_out;

endmodule
