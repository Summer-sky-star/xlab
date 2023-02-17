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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond20_p0000er18614_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond20_p0000er18614_load_input10 (
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [31:0] out_c0_exi5_1_tpl,
    output wire [0:0] out_c0_exi5_2_tpl,
    output wire [0:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [31:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input120,
    input wire [0:0] in_c0_eni1185_0_tpl,
    input wire [0:0] in_c0_eni1185_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_input12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_input12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_12_0,
    input wire [32:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_23_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next25_load_input120_sel_x_b;
    wire [31:0] bgTrunc_i_inc39_load_input123_sel_x_b;
    wire [31:0] bgTrunc_i_select25_load_input125_sel_x_b;
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_148_q;
    wire [32:0] c_i33_147_q;
    wire [32:0] c_i33_undef44_q;
    wire [0:0] i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_s;
    reg [31:0] i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_q;
    wire [0:0] i_fpga_indvars_iv24_replace_phi_load_input18_s;
    reg [32:0] i_fpga_indvars_iv24_replace_phi_load_input18_q;
    wire [33:0] i_fpga_indvars_iv_next25_load_input120_a;
    wire [33:0] i_fpga_indvars_iv_next25_load_input120_b;
    logic [33:0] i_fpga_indvars_iv_next25_load_input120_o;
    wire [33:0] i_fpga_indvars_iv_next25_load_input120_q;
    wire [32:0] i_inc39_load_input123_a;
    wire [32:0] i_inc39_load_input123_b;
    logic [32:0] i_inc39_load_input123_o;
    wire [32:0] i_inc39_load_input123_q;
    wire [0:0] i_input_offset_089_replace_phi_load_input15_s;
    reg [31:0] i_input_offset_089_replace_phi_load_input15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp178845_load_input116_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp178846_load_input19_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp218547_load_input110_out_dest_data_out_12_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add1556_load_input13_out_dest_data_out_23_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add337_load_input112_out_dest_data_out_6_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_input12_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_feedback_stall_out_18;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_valid_out_17;
    wire [0:0] i_notcmp60_load_input118_q;
    wire [32:0] i_select25_load_input125_a;
    wire [32:0] i_select25_load_input125_b;
    logic [32:0] i_select25_load_input125_o;
    wire [32:0] i_select25_load_input125_q;
    wire [0:0] i_unnamed_load_input111_qi;
    reg [0:0] i_unnamed_load_input111_q;
    wire [0:0] i_unnamed_load_input117_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond26_load_input114_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_load_input117_q_2_q;
    reg [0:0] redist0_i_unnamed_load_input117_q_2_delay_0;
    reg [0:0] redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q;
    reg [0:0] redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_delay_0;
    reg [0:0] redist2_sync_together65_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together65_aunroll_x_in_i_valid_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together65_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together65_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,67)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,73)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,74)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_148(CONSTANT,29)
    assign c_i32_148_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc39_load_input123(ADD,38)@3
    assign i_inc39_load_input123_a = {1'b0, i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_data_out};
    assign i_inc39_load_input123_b = {1'b0, c_i32_148_q};
    assign i_inc39_load_input123_o = $unsigned(i_inc39_load_input123_a) + $unsigned(i_inc39_load_input123_b);
    assign i_inc39_load_input123_q = i_inc39_load_input123_o[32:0];

    // bgTrunc_i_inc39_load_input123_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_inc39_load_input123_sel_x_b = i_inc39_load_input123_q[31:0];

    // i_llvm_fpga_push_i32_row_090_push18_load_input124(BLACKBOX,52)@3
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    cnn_top_i_llvm_fpga_push_i32_row_090_push18_load_input10 thei_llvm_fpga_push_i32_row_090_push18_load_input124 (
        .in_data_in(bgTrunc_i_inc39_load_input123_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_unnamed_load_input160(redist0_i_unnamed_load_input117_q_2_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_delay_0 <= '0;
            redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_delay_0 <= $unsigned(in_c0_eni1185_1_tpl);
            redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q <= redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_delay_0;
        end
    end

    // c_i32_045(CONSTANT,28)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_row_090_pop18_load_input122(BLACKBOX,48)@3
    // out out_feedback_stall_out_18@20000000
    cnn_top_i_llvm_fpga_pop_i32_row_090_pop18_load_input10 thei_llvm_fpga_pop_i32_row_090_pop18_load_input122 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_row_090_push18_load_input124_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp60_load_input118(LOGICAL,54)@3
    assign i_notcmp60_load_input118_q = redist0_i_unnamed_load_input117_q_2_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16(BLACKBOX,45)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000nput136_load_input10 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_147(CONSTANT,31)
    assign c_i33_147_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next25_load_input120(ADD,37)@1
    assign i_fpga_indvars_iv_next25_load_input120_a = {1'b0, i_fpga_indvars_iv24_replace_phi_load_input18_q};
    assign i_fpga_indvars_iv_next25_load_input120_b = {1'b0, c_i33_147_q};
    assign i_fpga_indvars_iv_next25_load_input120_o = $unsigned(i_fpga_indvars_iv_next25_load_input120_a) + $unsigned(i_fpga_indvars_iv_next25_load_input120_b);
    assign i_fpga_indvars_iv_next25_load_input120_q = i_fpga_indvars_iv_next25_load_input120_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next25_load_input120_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next25_load_input120_sel_x_b = i_fpga_indvars_iv_next25_load_input120_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121(BLACKBOX,53)@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000_push17_load_input10 thei_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next25_load_input120_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_unnamed_load_input160(i_unnamed_load_input117_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef44(CONSTANT,32)
    assign c_i33_undef44_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17(BLACKBOX,49)@1
    // out out_feedback_stall_out_17@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input10 thei_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17 (
        .in_data_in(c_i33_undef44_q),
        .in_dir(in_c0_eni1185_1_tpl),
        .in_feedback_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i33_fpga_indvars_iv24_push17_load_input121_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv24_replace_phi_load_input18(MUX,36)@1
    assign i_fpga_indvars_iv24_replace_phi_load_input18_s = in_c0_eni1185_1_tpl;
    always @(i_fpga_indvars_iv24_replace_phi_load_input18_s or i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16_out_dest_data_out_17_0)
    begin
        unique case (i_fpga_indvars_iv24_replace_phi_load_input18_s)
            1'b0 : i_fpga_indvars_iv24_replace_phi_load_input18_q = i_llvm_fpga_pop_i33_fpga_indvars_iv24_pop17_load_input17_out_data_out;
            1'b1 : i_fpga_indvars_iv24_replace_phi_load_input18_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_input136_load_input16_out_dest_data_out_17_0;
            default : i_fpga_indvars_iv24_replace_phi_load_input18_q = 33'b0;
        endcase
    end

    // i_exitcond26_load_input114_cmp_nsign(LOGICAL,80)@1
    assign i_exitcond26_load_input114_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv24_replace_phi_load_input18_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp178845_load_input116(BLACKBOX,40)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp178845_load_input10 thei_llvm_fpga_ffwd_dest_i1_cmp178845_load_input116 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp178845_load_input116_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input117(LOGICAL,57)@1
    assign i_unnamed_load_input117_q = i_llvm_fpga_ffwd_dest_i1_cmp178845_load_input116_out_dest_data_out_11_0 & i_exitcond26_load_input114_cmp_nsign_q;

    // redist0_i_unnamed_load_input117_q_2(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input117_q_2_delay_0 <= '0;
            redist0_i_unnamed_load_input117_q_2_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input117_q_2_delay_0 <= $unsigned(i_unnamed_load_input117_q);
            redist0_i_unnamed_load_input117_q_2_q <= redist0_i_unnamed_load_input117_q_2_delay_0;
        end
    end

    // valid_fanout_reg4(REG,71)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp218547_load_input110(BLACKBOX,42)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp218547_load_input10 thei_llvm_fpga_ffwd_dest_i1_cmp218547_load_input110 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i1_cmp218547_load_input110_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,70)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp178846_load_input19(BLACKBOX,41)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp178846_load_input10 thei_llvm_fpga_ffwd_dest_i1_cmp178846_load_input19 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i1_cmp178846_load_input19_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input111(LOGICAL,56)@2 + 1
    assign i_unnamed_load_input111_qi = i_llvm_fpga_ffwd_dest_i1_cmp178846_load_input19_out_dest_data_out_11_0 & i_llvm_fpga_ffwd_dest_i1_cmp218547_load_input110_out_dest_data_out_12_0;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_load_input111_delay ( .xin(i_unnamed_load_input111_qi), .xout(i_unnamed_load_input111_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg1(REG,68)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add1556_load_input13(BLACKBOX,43)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add1556_load_input10 thei_llvm_fpga_ffwd_dest_i32_add1556_load_input13 (
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_23_0(i_llvm_fpga_ffwd_dest_i32_add1556_load_input13_out_dest_data_out_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,69)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,75)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,72)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together65_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add337_load_input112(BLACKBOX,44)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add337_load_input10 thei_llvm_fpga_ffwd_dest_i32_add337_load_input112 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_add337_load_input112_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_do_directly_for_cond_cleanup22_loopexit_select_load_input113(MUX,34)@3
    assign i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_s = i_unnamed_load_input111_q;
    always @(i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_s or c_i32_045_q or i_llvm_fpga_ffwd_dest_i32_add337_load_input112_out_dest_data_out_6_0)
    begin
        unique case (i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_s)
            1'b0 : i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_q = c_i32_045_q;
            1'b1 : i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_q = i_llvm_fpga_ffwd_dest_i32_add337_load_input112_out_dest_data_out_6_0;
            default : i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_q = 32'b0;
        endcase
    end

    // i_select25_load_input125(ADD,55)@3
    assign i_select25_load_input125_a = {1'b0, i_input_offset_089_replace_phi_load_input15_q};
    assign i_select25_load_input125_b = {1'b0, i_do_directly_for_cond_cleanup22_loopexit_select_load_input113_q};
    assign i_select25_load_input125_o = $unsigned(i_select25_load_input125_a) + $unsigned(i_select25_load_input125_b);
    assign i_select25_load_input125_q = i_select25_load_input125_o[32:0];

    // bgTrunc_i_select25_load_input125_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_select25_load_input125_sel_x_b = i_select25_load_input125_q[31:0];

    // i_llvm_fpga_push_i32_input_offset_089_push19_load_input126(BLACKBOX,51)@3
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    cnn_top_i_llvm_fpga_push_i32_input_offse0000_push19_load_input10 thei_llvm_fpga_push_i32_input_offset_089_push19_load_input126 (
        .in_data_in(bgTrunc_i_select25_load_input125_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_unnamed_load_input160(redist0_i_unnamed_load_input117_q_2_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14(BLACKBOX,47)@3
    // out out_feedback_stall_out_19@20000000
    cnn_top_i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input10 thei_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_input_offset_089_push19_load_input126_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_input_offset_089_replace_phi_load_input15(MUX,39)@3
    assign i_input_offset_089_replace_phi_load_input15_s = redist1_sync_together65_aunroll_x_in_c0_eni1185_1_tpl_2_q;
    always @(i_input_offset_089_replace_phi_load_input15_s or i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_data_out or i_llvm_fpga_ffwd_dest_i32_add1556_load_input13_out_dest_data_out_23_0)
    begin
        unique case (i_input_offset_089_replace_phi_load_input15_s)
            1'b0 : i_input_offset_089_replace_phi_load_input15_q = i_llvm_fpga_pop_i32_input_offset_089_pop19_load_input14_out_data_out;
            1'b1 : i_input_offset_089_replace_phi_load_input15_q = i_llvm_fpga_ffwd_dest_i32_add1556_load_input13_out_dest_data_out_23_0;
            default : i_input_offset_089_replace_phi_load_input15_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@3
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = i_input_offset_089_replace_phi_load_input15_q;
    assign out_c0_exi5_2_tpl = i_unnamed_load_input111_q;
    assign out_c0_exi5_3_tpl = redist0_i_unnamed_load_input117_q_2_q;
    assign out_c0_exi5_4_tpl = i_notcmp60_load_input118_q;
    assign out_c0_exi5_5_tpl = i_llvm_fpga_pop_i32_row_090_pop18_load_input122_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input120 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond62_load_input119(BLACKBOX,50)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond62_load_input10 thei_llvm_fpga_push_i1_notexitcond62_load_input119 (
        .in_data_in(i_unnamed_load_input117_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going61_load_input12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_input12(BLACKBOX,46)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going61_load_input10 thei_llvm_fpga_pipeline_keep_going61_load_input12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond62_load_input119_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going61_load_input12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going61_load_input12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,33)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_input12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_input12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going61_load_input12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going61_load_input12_out_pipeline_valid_out;

endmodule
