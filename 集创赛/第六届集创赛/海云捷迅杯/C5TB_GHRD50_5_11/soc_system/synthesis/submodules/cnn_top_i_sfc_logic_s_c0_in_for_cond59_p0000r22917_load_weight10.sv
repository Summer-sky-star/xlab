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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000r22917_load_weight10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000r22917_load_weight10 (
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [0:0] out_c0_exi14_1_tpl,
    output wire [31:0] out_c0_exi14_2_tpl,
    output wire [31:0] out_c0_exi14_3_tpl,
    output wire [0:0] out_c0_exi14_4_tpl,
    output wire [0:0] out_c0_exi14_5_tpl,
    output wire [31:0] out_c0_exi14_6_tpl,
    output wire [0:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [31:0] out_c0_exi14_9_tpl,
    output wire [0:0] out_c0_exi14_10_tpl,
    output wire [31:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [31:0] out_c0_exi14_13_tpl,
    output wire [0:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight119,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [31:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [31:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_10_0,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add79_load_weight111_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next11_load_weight119_sel_x_b;
    wire [31:0] bgTrunc_i_inc105_load_weight121_sel_x_b;
    wire [31:0] c_i32_050_q;
    wire [31:0] c_i32_153_q;
    wire [32:0] c_i33_152_q;
    wire [32:0] c_i33_undef49_q;
    wire [32:0] i_add79_load_weight111_a;
    wire [32:0] i_add79_load_weight111_b;
    logic [32:0] i_add79_load_weight111_o;
    wire [32:0] i_add79_load_weight111_q;
    wire [0:0] i_fpga_indvars_iv10_replace_phi_load_weight15_s;
    reg [32:0] i_fpga_indvars_iv10_replace_phi_load_weight15_q;
    wire [33:0] i_fpga_indvars_iv_next11_load_weight119_a;
    wire [33:0] i_fpga_indvars_iv_next11_load_weight119_b;
    logic [33:0] i_fpga_indvars_iv_next11_load_weight119_o;
    wire [33:0] i_fpga_indvars_iv_next11_load_weight119_q;
    wire [32:0] i_inc105_load_weight121_a;
    wire [32:0] i_inc105_load_weight121_b;
    logic [32:0] i_inc105_load_weight121_o;
    wire [32:0] i_inc105_load_weight121_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight16_out_dest_data_out_10_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight142_load_weight17_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight143_load_weight114_out_dest_data_out_19_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_load_weight12_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_pop34_load_weight125_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop34_load_weight125_out_feedback_stall_out_34;
    wire [31:0] i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_feedback_stall_out_35;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_valid_out_34;
    wire [31:0] i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_valid_out_35;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_valid_out_31;
    wire [0:0] i_notcmp78_load_weight117_q;
    wire [0:0] i_unnamed_load_weight115_q;
    wire [0:0] i_unnamed_load_weight18_q;
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
    wire [0:0] i_exitcond12_load_weight112_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_load_weight115_q_1_q;
    reg [0:0] redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [31:0] redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [31:0] redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [0:0] redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [31:0] redist6_sync_together74_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist7_sync_together74_aunroll_x_in_c0_eni7_7_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,70)@1 + 1
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

    // redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // redist7_sync_together74_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together74_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together74_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // redist6_sync_together74_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together74_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together74_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // valid_fanout_reg11(REG,81)@1 + 1
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

    // valid_fanout_reg12(REG,82)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128(BLACKBOX,53)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp82100_push36_load_weight10 thei_llvm_fpga_push_i1_notcmp82100_push36_load_weight128 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(redist0_i_unnamed_load_weight115_q_1_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127(BLACKBOX,47)@2
    // out out_feedback_stall_out_36@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight10 thei_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127 (
        .in_data_in(redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_notcmp82100_push36_load_weight128_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,79)@1 + 1
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

    // valid_fanout_reg10(REG,80)@1 + 1
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

    // i_llvm_fpga_push_i1_push34_load_weight126(BLACKBOX,55)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    cnn_top_i_llvm_fpga_push_i1_push34_load_weight10 thei_llvm_fpga_push_i1_push34_load_weight126 (
        .in_data_in(i_llvm_fpga_pop_i1_pop34_load_weight125_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_pop34_load_weight125_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(redist0_i_unnamed_load_weight115_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop34_load_weight125(BLACKBOX,48)@2
    // out out_feedback_stall_out_34@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop34_load_weight10 thei_llvm_fpga_pop_i1_pop34_load_weight125 (
        .in_data_in(redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_push34_load_weight126_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop34_load_weight125_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_pop34_load_weight125_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,77)@1 + 1
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

    // valid_fanout_reg8(REG,78)@1 + 1
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

    // i_llvm_fpga_push_i32_li_07592_push33_load_weight124(BLACKBOX,57)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    cnn_top_i_llvm_fpga_push_i32_li_07592_push33_load_weight10 thei_llvm_fpga_push_i32_li_07592_push33_load_weight124 (
        .in_data_in(i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(redist0_i_unnamed_load_weight115_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123(BLACKBOX,50)@2
    // out out_feedback_stall_out_33@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_07592_pop33_load_weight10 thei_llvm_fpga_pop_i32_li_07592_pop33_load_weight123 (
        .in_data_in(redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_li_07592_push33_load_weight124_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp78_load_weight117(LOGICAL,60)@2
    assign i_notcmp78_load_weight117_q = redist0_i_unnamed_load_weight115_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13(BLACKBOX,45)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000ght141_load_weight10 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_152(CONSTANT,34)
    assign c_i33_152_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next11_load_weight119(ADD,40)@1
    assign i_fpga_indvars_iv_next11_load_weight119_a = {1'b0, i_fpga_indvars_iv10_replace_phi_load_weight15_q};
    assign i_fpga_indvars_iv_next11_load_weight119_b = {1'b0, c_i33_152_q};
    assign i_fpga_indvars_iv_next11_load_weight119_o = $unsigned(i_fpga_indvars_iv_next11_load_weight119_a) + $unsigned(i_fpga_indvars_iv_next11_load_weight119_b);
    assign i_fpga_indvars_iv_next11_load_weight119_q = i_fpga_indvars_iv_next11_load_weight119_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next11_load_weight119_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next11_load_weight119_sel_x_b = i_fpga_indvars_iv_next11_load_weight119_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120(BLACKBOX,59)@1
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push31_load_weight10 thei_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_load_weight119_sel_x_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_feedback_stall_out_31),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(i_unnamed_load_weight115_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef49(CONSTANT,35)
    assign c_i33_undef49_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14(BLACKBOX,52)@1
    // out out_feedback_stall_out_31@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop31_load_weight10 thei_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14 (
        .in_data_in(c_i33_undef49_q),
        .in_dir(in_c0_eni7_1_tpl),
        .in_feedback_in_31(i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i33_fpga_indvars_iv10_push31_load_weight120_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv10_replace_phi_load_weight15(MUX,39)@1
    assign i_fpga_indvars_iv10_replace_phi_load_weight15_s = in_c0_eni7_1_tpl;
    always @(i_fpga_indvars_iv10_replace_phi_load_weight15_s or i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13_out_dest_data_out_15_0)
    begin
        unique case (i_fpga_indvars_iv10_replace_phi_load_weight15_s)
            1'b0 : i_fpga_indvars_iv10_replace_phi_load_weight15_q = i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop31_load_weight14_out_data_out;
            1'b1 : i_fpga_indvars_iv10_replace_phi_load_weight15_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight141_load_weight13_out_dest_data_out_15_0;
            default : i_fpga_indvars_iv10_replace_phi_load_weight15_q = 33'b0;
        endcase
    end

    // i_exitcond12_load_weight112_cmp_nsign(LOGICAL,87)@1
    assign i_exitcond12_load_weight112_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv10_replace_phi_load_weight15_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight143_load_weight114(BLACKBOX,44)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght143_load_weight10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight143_load_weight114 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight143_load_weight114_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_weight115(LOGICAL,61)@1
    assign i_unnamed_load_weight115_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight143_load_weight114_out_dest_data_out_19_0 & i_exitcond12_load_weight112_cmp_nsign_q;

    // redist0_i_unnamed_load_weight115_q_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_weight115_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_weight115_q_1_q <= $unsigned(i_unnamed_load_weight115_q);
        end
    end

    // valid_fanout_reg3(REG,73)@1 + 1
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

    // valid_fanout_reg6(REG,76)@1 + 1
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

    // c_i32_153(CONSTANT,33)
    assign c_i32_153_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc105_load_weight121(ADD,41)@2
    assign i_inc105_load_weight121_a = {1'b0, i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_data_out};
    assign i_inc105_load_weight121_b = {1'b0, c_i32_153_q};
    assign i_inc105_load_weight121_o = $unsigned(i_inc105_load_weight121_a) + $unsigned(i_inc105_load_weight121_b);
    assign i_inc105_load_weight121_q = i_inc105_load_weight121_o[32:0];

    // bgTrunc_i_inc105_load_weight121_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc105_load_weight121_sel_x_b = i_inc105_load_weight121_q[31:0];

    // i_llvm_fpga_push_i32_kw_070_push32_load_weight122(BLACKBOX,56)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    cnn_top_i_llvm_fpga_push_i32_kw_070_push32_load_weight10 thei_llvm_fpga_push_i32_kw_070_push32_load_weight122 (
        .in_data_in(bgTrunc_i_inc105_load_weight121_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(redist0_i_unnamed_load_weight115_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_050(CONSTANT,32)
    assign c_i32_050_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19(BLACKBOX,49)@2
    // out out_feedback_stall_out_32@20000000
    cnn_top_i_llvm_fpga_pop_i32_kw_070_pop32_load_weight10 thei_llvm_fpga_pop_i32_kw_070_pop32_load_weight19 (
        .in_data_in(c_i32_050_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i32_kw_070_push32_load_weight122_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add79_load_weight111(ADD,37)@2
    assign i_add79_load_weight111_a = {1'b0, i_llvm_fpga_pop_i32_kw_070_pop32_load_weight19_out_data_out};
    assign i_add79_load_weight111_b = {1'b0, i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_data_out};
    assign i_add79_load_weight111_o = $unsigned(i_add79_load_weight111_a) + $unsigned(i_add79_load_weight111_b);
    assign i_add79_load_weight111_q = i_add79_load_weight111_o[32:0];

    // bgTrunc_i_add79_load_weight111_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_add79_load_weight111_sel_x_b = i_add79_load_weight111_q[31:0];

    // valid_fanout_reg4(REG,74)@1 + 1
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

    // valid_fanout_reg5(REG,75)@1 + 1
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

    // i_llvm_fpga_push_i32_mul7897_push35_load_weight116(BLACKBOX,58)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    cnn_top_i_llvm_fpga_push_i32_mul7897_push35_load_weight10 thei_llvm_fpga_push_i32_mul7897_push35_load_weight116 (
        .in_data_in(i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight156(redist0_i_unnamed_load_weight115_q_1_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110(BLACKBOX,51)@2
    // out out_feedback_stall_out_35@20000000
    cnn_top_i_llvm_fpga_pop_i32_mul7897_pop35_load_weight10 thei_llvm_fpga_pop_i32_mul7897_pop35_load_weight110 (
        .in_data_in(redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist1_sync_together74_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_mul7897_push35_load_weight116_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,71)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight16(BLACKBOX,42)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight10 thei_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight16 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight16_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,72)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight142_load_weight17(BLACKBOX,43)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght142_load_weight10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight142_load_weight17 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight142_load_weight17_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_weight18(LOGICAL,62)@2
    assign i_unnamed_load_weight18_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight142_load_weight17_out_dest_data_out_19_0 & i_llvm_fpga_ffwd_dest_i1_cmp606740_load_weight16_out_dest_data_out_10_0;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@2
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = i_unnamed_load_weight18_q;
    assign out_c0_exi14_2_tpl = i_llvm_fpga_pop_i32_mul7897_pop35_load_weight110_out_data_out;
    assign out_c0_exi14_3_tpl = bgTrunc_i_add79_load_weight111_sel_x_b;
    assign out_c0_exi14_4_tpl = redist0_i_unnamed_load_weight115_q_1_q;
    assign out_c0_exi14_5_tpl = i_notcmp78_load_weight117_q;
    assign out_c0_exi14_6_tpl = i_llvm_fpga_pop_i32_li_07592_pop33_load_weight123_out_data_out;
    assign out_c0_exi14_7_tpl = i_llvm_fpga_pop_i1_pop34_load_weight125_out_data_out;
    assign out_c0_exi14_8_tpl = i_llvm_fpga_pop_i1_notcmp82100_pop36_load_weight127_out_data_out;
    assign out_c0_exi14_9_tpl = redist6_sync_together74_aunroll_x_in_c0_eni7_6_tpl_1_q;
    assign out_c0_exi14_10_tpl = redist7_sync_together74_aunroll_x_in_c0_eni7_7_tpl_1_q;
    assign out_c0_exi14_11_tpl = redist2_sync_together74_aunroll_x_in_c0_eni7_2_tpl_1_q;
    assign out_c0_exi14_12_tpl = redist5_sync_together74_aunroll_x_in_c0_eni7_5_tpl_1_q;
    assign out_c0_exi14_13_tpl = redist3_sync_together74_aunroll_x_in_c0_eni7_3_tpl_1_q;
    assign out_c0_exi14_14_tpl = redist4_sync_together74_aunroll_x_in_c0_eni7_4_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_weight119 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond80_load_weight118(BLACKBOX,54)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond80_load_weight10 thei_llvm_fpga_push_i1_notexitcond80_load_weight118 (
        .in_data_in(i_unnamed_load_weight115_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going79_load_weight12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going79_load_weight12(BLACKBOX,46)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going79_load_weight10 thei_llvm_fpga_pipeline_keep_going79_load_weight12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond80_load_weight118_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going79_load_weight12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going79_load_weight12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,36)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going79_load_weight12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going79_load_weight12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,65)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going79_load_weight12_out_pipeline_valid_out;

endmodule
