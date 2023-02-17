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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000er24217_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000er24217_load_input10 (
    output wire [0:0] out_c0_exi13_0_tpl,
    output wire [0:0] out_c0_exi13_1_tpl,
    output wire [0:0] out_c0_exi13_2_tpl,
    output wire [31:0] out_c0_exi13_3_tpl,
    output wire [31:0] out_c0_exi13_4_tpl,
    output wire [0:0] out_c0_exi13_5_tpl,
    output wire [0:0] out_c0_exi13_6_tpl,
    output wire [31:0] out_c0_exi13_7_tpl,
    output wire [31:0] out_c0_exi13_8_tpl,
    output wire [0:0] out_c0_exi13_9_tpl,
    output wire [0:0] out_c0_exi13_10_tpl,
    output wire [31:0] out_c0_exi13_11_tpl,
    output wire [31:0] out_c0_exi13_12_tpl,
    output wire [0:0] out_c0_exi13_13_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input120,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [31:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [31:0] in_c0_eni7_5_tpl,
    input wire [31:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next11_load_input112_sel_x_b;
    wire [31:0] bgTrunc_i_inc97_load_input115_sel_x_b;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_147_q;
    wire [32:0] c_i33_145_q;
    wire [32:0] c_i33_undef43_q;
    wire [0:0] i_fpga_indvars_iv10_replace_phi_load_input15_s;
    reg [32:0] i_fpga_indvars_iv10_replace_phi_load_input15_q;
    wire [33:0] i_fpga_indvars_iv_next11_load_input112_a;
    wire [33:0] i_fpga_indvars_iv_next11_load_input112_b;
    logic [33:0] i_fpga_indvars_iv_next11_load_input112_o;
    wire [33:0] i_fpga_indvars_iv_next11_load_input112_q;
    wire [32:0] i_inc97_load_input115_a;
    wire [32:0] i_inc97_load_input115_b;
    logic [32:0] i_inc97_load_input115_o;
    wire [32:0] i_inc97_load_input115_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input147_load_input18_out_dest_data_out_20_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going86_load_input12_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_feedback_stall_out_36;
    wire [0:0] i_llvm_fpga_pop_i1_pop35_load_input119_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop35_load_input119_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_feedback_stall_out_33;
    wire [31:0] i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_feedback_stall_out_34;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_valid_out_36;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_push35_load_input120_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_push35_load_input120_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_valid_out_33;
    wire [31:0] i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_valid_out_34;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_valid_out_32;
    wire [0:0] i_notcmp85_load_input110_q;
    wire [0:0] i_unnamed_load_input19_q;
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
    wire [0:0] i_exitcond12_load_input16_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_load_input19_q_1_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [31:0] redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [31:0] redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [31:0] redist6_sync_together67_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist7_sync_together67_aunroll_x_in_c0_eni7_7_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,61)@1 + 1
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

    // redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // redist7_sync_together67_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together67_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together67_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // redist6_sync_together67_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together67_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together67_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // valid_fanout_reg9(REG,70)@1 + 1
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

    // valid_fanout_reg10(REG,71)@1 + 1
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

    // i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124(BLACKBOX,49)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    cnn_top_i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input10 thei_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124 (
        .in_data_in(i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_data_out),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(redist0_i_unnamed_load_input19_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123(BLACKBOX,42)@2
    // out out_feedback_stall_out_37@20000000
    cnn_top_i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input10 thei_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123 (
        .in_data_in(redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i32_kh_080_pop21107_push37_load_input124_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,68)@1 + 1
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

    // valid_fanout_reg8(REG,69)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp89104_push36_load_input122(BLACKBOX,46)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp89104_push36_load_input10 thei_llvm_fpga_push_i1_notcmp89104_push36_load_input122 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_feedback_stall_out_36),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(redist0_i_unnamed_load_input19_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121(BLACKBOX,40)@2
    // out out_feedback_stall_out_36@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input10 thei_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121 (
        .in_data_in(redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i1_notcmp89104_push36_load_input122_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,66)@1 + 1
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

    // valid_fanout_reg6(REG,67)@1 + 1
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

    // i_llvm_fpga_push_i1_push35_load_input120(BLACKBOX,48)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    cnn_top_i_llvm_fpga_push_i1_push35_load_input10 thei_llvm_fpga_push_i1_push35_load_input120 (
        .in_data_in(i_llvm_fpga_pop_i1_pop35_load_input119_out_data_out),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_pop35_load_input119_out_feedback_stall_out_35),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(redist0_i_unnamed_load_input19_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_push35_load_input120_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_push35_load_input120_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop35_load_input119(BLACKBOX,41)@2
    // out out_feedback_stall_out_35@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop35_load_input10 thei_llvm_fpga_pop_i1_pop35_load_input119 (
        .in_data_in(redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_push35_load_input120_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_push35_load_input120_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop35_load_input119_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_pop35_load_input119_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,64)@1 + 1
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

    // valid_fanout_reg4(REG,65)@1 + 1
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

    // i_llvm_fpga_push_i32_li_08299_push34_load_input118(BLACKBOX,51)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    cnn_top_i_llvm_fpga_push_i32_li_08299_push34_load_input10 thei_llvm_fpga_push_i32_li_08299_push34_load_input118 (
        .in_data_in(i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_data_out),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_feedback_stall_out_34),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(redist0_i_unnamed_load_input19_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_08299_pop34_load_input117(BLACKBOX,44)@2
    // out out_feedback_stall_out_34@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_08299_pop34_load_input10 thei_llvm_fpga_pop_i32_li_08299_pop34_load_input117 (
        .in_data_in(redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i32_li_08299_push34_load_input118_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,62)@1 + 1
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

    // valid_fanout_reg2(REG,63)@1 + 1
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

    // c_i32_147(CONSTANT,29)
    assign c_i32_147_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc97_load_input115(ADD,36)@2
    assign i_inc97_load_input115_a = {1'b0, i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_data_out};
    assign i_inc97_load_input115_b = {1'b0, c_i32_147_q};
    assign i_inc97_load_input115_o = $unsigned(i_inc97_load_input115_a) + $unsigned(i_inc97_load_input115_b);
    assign i_inc97_load_input115_q = i_inc97_load_input115_o[32:0];

    // bgTrunc_i_inc97_load_input115_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc97_load_input115_sel_x_b = i_inc97_load_input115_q[31:0];

    // i_llvm_fpga_push_i32_kw_077_push33_load_input116(BLACKBOX,50)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    cnn_top_i_llvm_fpga_push_i32_kw_077_push33_load_input10 thei_llvm_fpga_push_i32_kw_077_push33_load_input116 (
        .in_data_in(bgTrunc_i_inc97_load_input115_sel_x_b),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_feedback_stall_out_33),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(redist0_i_unnamed_load_input19_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_046(CONSTANT,28)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_kw_077_pop33_load_input114(BLACKBOX,43)@2
    // out out_feedback_stall_out_33@20000000
    cnn_top_i_llvm_fpga_pop_i32_kw_077_pop33_load_input10 thei_llvm_fpga_pop_i32_kw_077_pop33_load_input114 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i32_kw_077_push33_load_input116_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp85_load_input110(LOGICAL,53)@2
    assign i_notcmp85_load_input110_q = redist0_i_unnamed_load_input19_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13(BLACKBOX,38)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000nput146_load_input10 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_145(CONSTANT,30)
    assign c_i33_145_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next11_load_input112(ADD,35)@1
    assign i_fpga_indvars_iv_next11_load_input112_a = {1'b0, i_fpga_indvars_iv10_replace_phi_load_input15_q};
    assign i_fpga_indvars_iv_next11_load_input112_b = {1'b0, c_i33_145_q};
    assign i_fpga_indvars_iv_next11_load_input112_o = $unsigned(i_fpga_indvars_iv_next11_load_input112_a) + $unsigned(i_fpga_indvars_iv_next11_load_input112_b);
    assign i_fpga_indvars_iv_next11_load_input112_q = i_fpga_indvars_iv_next11_load_input112_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next11_load_input112_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next11_load_input112_sel_x_b = i_fpga_indvars_iv_next11_load_input112_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113(BLACKBOX,52)@1
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000_push32_load_input10 thei_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_load_input112_sel_x_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_feedback_stall_out_32),
        .in_stall_in(GND_q),
        .in_unnamed_load_input162(i_unnamed_load_input19_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef43(CONSTANT,31)
    assign c_i33_undef43_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14(BLACKBOX,45)@1
    // out out_feedback_stall_out_32@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input10 thei_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14 (
        .in_data_in(c_i33_undef43_q),
        .in_dir(in_c0_eni7_1_tpl),
        .in_feedback_in_32(i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i33_fpga_indvars_iv10_push32_load_input113_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv10_replace_phi_load_input15(MUX,34)@1
    assign i_fpga_indvars_iv10_replace_phi_load_input15_s = in_c0_eni7_1_tpl;
    always @(i_fpga_indvars_iv10_replace_phi_load_input15_s or i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13_out_dest_data_out_15_0)
    begin
        unique case (i_fpga_indvars_iv10_replace_phi_load_input15_s)
            1'b0 : i_fpga_indvars_iv10_replace_phi_load_input15_q = i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop32_load_input14_out_data_out;
            1'b1 : i_fpga_indvars_iv10_replace_phi_load_input15_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_input146_load_input13_out_dest_data_out_15_0;
            default : i_fpga_indvars_iv10_replace_phi_load_input15_q = 33'b0;
        endcase
    end

    // i_exitcond12_load_input16_cmp_nsign(LOGICAL,75)@1
    assign i_exitcond12_load_input16_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv10_replace_phi_load_input15_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input147_load_input18(BLACKBOX,37)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput147_load_input10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input147_load_input18 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input147_load_input18_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input19(LOGICAL,54)@1
    assign i_unnamed_load_input19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input147_load_input18_out_dest_data_out_20_0 & i_exitcond12_load_input16_cmp_nsign_q;

    // redist0_i_unnamed_load_input19_q_1(DELAY,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input19_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input19_q_1_q <= $unsigned(i_unnamed_load_input19_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi13_0_tpl = GND_q;
    assign out_c0_exi13_1_tpl = redist0_i_unnamed_load_input19_q_1_q;
    assign out_c0_exi13_2_tpl = i_notcmp85_load_input110_q;
    assign out_c0_exi13_3_tpl = i_llvm_fpga_pop_i32_kw_077_pop33_load_input114_out_data_out;
    assign out_c0_exi13_4_tpl = i_llvm_fpga_pop_i32_li_08299_pop34_load_input117_out_data_out;
    assign out_c0_exi13_5_tpl = i_llvm_fpga_pop_i1_pop35_load_input119_out_data_out;
    assign out_c0_exi13_6_tpl = i_llvm_fpga_pop_i1_notcmp89104_pop36_load_input121_out_data_out;
    assign out_c0_exi13_7_tpl = i_llvm_fpga_pop_i32_kh_080_pop21107_pop37_load_input123_out_data_out;
    assign out_c0_exi13_8_tpl = redist6_sync_together67_aunroll_x_in_c0_eni7_6_tpl_1_q;
    assign out_c0_exi13_9_tpl = redist7_sync_together67_aunroll_x_in_c0_eni7_7_tpl_1_q;
    assign out_c0_exi13_10_tpl = redist4_sync_together67_aunroll_x_in_c0_eni7_4_tpl_1_q;
    assign out_c0_exi13_11_tpl = redist5_sync_together67_aunroll_x_in_c0_eni7_5_tpl_1_q;
    assign out_c0_exi13_12_tpl = redist2_sync_together67_aunroll_x_in_c0_eni7_2_tpl_1_q;
    assign out_c0_exi13_13_tpl = redist3_sync_together67_aunroll_x_in_c0_eni7_3_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input120 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond87_load_input111(BLACKBOX,47)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond87_load_input10 thei_llvm_fpga_push_i1_notexitcond87_load_input111 (
        .in_data_in(i_unnamed_load_input19_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going86_load_input12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going86_load_input12(BLACKBOX,39)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going86_load_input10 thei_llvm_fpga_pipeline_keep_going86_load_input12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond87_load_input111_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going86_load_input12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going86_load_input12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going86_load_input12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going86_load_input12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going86_load_input12_out_pipeline_valid_out;

endmodule
