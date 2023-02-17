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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond15_i0000r87235_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond15_i0000r87235_conv_process0 (
    output wire [0:0] out_c0_exi17_0_tpl,
    output wire [0:0] out_c0_exi17_1_tpl,
    output wire [0:0] out_c0_exi17_2_tpl,
    output wire [31:0] out_c0_exi17_3_tpl,
    output wire [0:0] out_c0_exi17_4_tpl,
    output wire [0:0] out_c0_exi17_5_tpl,
    output wire [0:0] out_c0_exi17_6_tpl,
    output wire [0:0] out_c0_exi17_7_tpl,
    output wire [0:0] out_c0_exi17_8_tpl,
    output wire [0:0] out_c0_exi17_9_tpl,
    output wire [0:0] out_c0_exi17_10_tpl,
    output wire [0:0] out_c0_exi17_11_tpl,
    output wire [0:0] out_c0_exi17_12_tpl,
    output wire [0:0] out_c0_exi17_13_tpl,
    output wire [0:0] out_c0_exi17_14_tpl,
    output wire [0:0] out_c0_exi17_15_tpl,
    output wire [0:0] out_c0_exi17_16_tpl,
    output wire [0:0] out_c0_exi17_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni11871_0_tpl,
    input wire [0:0] in_c0_eni11871_1_tpl,
    input wire [0:0] in_c0_eni11871_2_tpl,
    input wire [0:0] in_c0_eni11871_3_tpl,
    input wire [0:0] in_c0_eni11871_4_tpl,
    input wire [0:0] in_c0_eni11871_5_tpl,
    input wire [0:0] in_c0_eni11871_6_tpl,
    input wire [0:0] in_c0_eni11871_7_tpl,
    input wire [0:0] in_c0_eni11871_8_tpl,
    input wire [0:0] in_c0_eni11871_9_tpl,
    input wire [0:0] in_c0_eni11871_10_tpl,
    input wire [0:0] in_c0_eni11871_11_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [32:0] in_intel_reserved_ffwd_57_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next22_conv_process12_sel_x_b;
    wire [31:0] bgTrunc_i_inc50_i_conv_process15_sel_x_b;
    wire [31:0] c_i32_046_q;
    wire [31:0] c_i32_147_q;
    wire [32:0] c_i33_145_q;
    wire [32:0] c_i33_undef43_q;
    wire [0:0] i_fpga_indvars_iv21_replace_phi_conv_process5_s;
    reg [32:0] i_fpga_indvars_iv21_replace_phi_conv_process5_q;
    wire [33:0] i_fpga_indvars_iv_next22_conv_process12_a;
    wire [33:0] i_fpga_indvars_iv_next22_conv_process12_b;
    logic [33:0] i_fpga_indvars_iv_next22_conv_process12_o;
    wire [33:0] i_fpga_indvars_iv_next22_conv_process12_q;
    wire [32:0] i_inc50_i_conv_process15_a;
    wire [32:0] i_inc50_i_conv_process15_b;
    logic [32:0] i_inc50_i_conv_process15_o;
    wire [32:0] i_inc50_i_conv_process15_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process115_conv_process8_out_dest_data_out_55_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3_out_dest_data_out_57_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going195_conv_process2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_feedback_stall_out_104;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_feedback_stall_out_107;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_feedback_stall_out_106;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_feedback_stall_out_105;
    wire [31:0] i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_feedback_stall_out_103;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_feedback_stall_out_102;
    wire [0:0] i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_out_104;
    wire [0:0] i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_valid_out_104;
    wire [0:0] i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_out_107;
    wire [0:0] i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_valid_out_107;
    wire [0:0] i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_out_106;
    wire [0:0] i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_valid_out_106;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_out_105;
    wire [0:0] i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_valid_out_105;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_out_103;
    wire [0:0] i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_valid_out_103;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_out_102;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_valid_out_102;
    wire [0:0] i_notcmp194_conv_process10_q;
    wire [0:0] i_unnamed_conv_process9_q;
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
    wire [0:0] i_exitcond23_conv_process6_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_conv_process9_q_1_q;
    reg [0:0] redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q;
    reg [0:0] redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1_q;
    reg [0:0] redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1_q;
    reg [0:0] redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1_q;
    reg [0:0] redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1_q;
    reg [0:0] redist6_sync_together67_aunroll_x_in_c0_eni11871_6_tpl_1_q;
    reg [0:0] redist7_sync_together67_aunroll_x_in_c0_eni11871_7_tpl_1_q;
    reg [0:0] redist8_sync_together67_aunroll_x_in_c0_eni11871_8_tpl_1_q;
    reg [0:0] redist9_sync_together67_aunroll_x_in_c0_eni11871_9_tpl_1_q;
    reg [0:0] redist10_sync_together67_aunroll_x_in_c0_eni11871_10_tpl_1_q;
    reg [0:0] redist11_sync_together67_aunroll_x_in_c0_eni11871_11_tpl_1_q;


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

    // redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1_q <= $unsigned(in_c0_eni11871_4_tpl);
        end
    end

    // redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1_q <= $unsigned(in_c0_eni11871_3_tpl);
        end
    end

    // redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1_q <= $unsigned(in_c0_eni11871_2_tpl);
        end
    end

    // redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1_q <= $unsigned(in_c0_eni11871_5_tpl);
        end
    end

    // redist11_sync_together67_aunroll_x_in_c0_eni11871_11_tpl_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together67_aunroll_x_in_c0_eni11871_11_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together67_aunroll_x_in_c0_eni11871_11_tpl_1_q <= $unsigned(in_c0_eni11871_11_tpl);
        end
    end

    // redist10_sync_together67_aunroll_x_in_c0_eni11871_10_tpl_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together67_aunroll_x_in_c0_eni11871_10_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together67_aunroll_x_in_c0_eni11871_10_tpl_1_q <= $unsigned(in_c0_eni11871_10_tpl);
        end
    end

    // redist9_sync_together67_aunroll_x_in_c0_eni11871_9_tpl_1(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together67_aunroll_x_in_c0_eni11871_9_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together67_aunroll_x_in_c0_eni11871_9_tpl_1_q <= $unsigned(in_c0_eni11871_9_tpl);
        end
    end

    // redist8_sync_together67_aunroll_x_in_c0_eni11871_8_tpl_1(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together67_aunroll_x_in_c0_eni11871_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together67_aunroll_x_in_c0_eni11871_8_tpl_1_q <= $unsigned(in_c0_eni11871_8_tpl);
        end
    end

    // redist7_sync_together67_aunroll_x_in_c0_eni11871_7_tpl_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together67_aunroll_x_in_c0_eni11871_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together67_aunroll_x_in_c0_eni11871_7_tpl_1_q <= $unsigned(in_c0_eni11871_7_tpl);
        end
    end

    // redist6_sync_together67_aunroll_x_in_c0_eni11871_6_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together67_aunroll_x_in_c0_eni11871_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together67_aunroll_x_in_c0_eni11871_6_tpl_1_q <= $unsigned(in_c0_eni11871_6_tpl);
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

    // i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24(BLACKBOX,47)@2
    // out out_feedback_out_107@20000000
    // out out_feedback_valid_out_107@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp198302_push107_conv_process0 thei_llvm_fpga_push_i1_notcmp198302_push107_conv_process24 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_data_out),
        .in_feedback_stall_in_107(i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_feedback_stall_out_107),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_107(i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_out_107),
        .out_feedback_valid_out_107(i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_valid_out_107),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q <= $unsigned(in_c0_eni11871_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23(BLACKBOX,41)@2
    // out out_feedback_stall_out_107@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process0 thei_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23 (
        .in_data_in(redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q),
        .in_feedback_in_107(i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_out_107),
        .in_feedback_valid_in_107(i_llvm_fpga_push_i1_notcmp198302_push107_conv_process24_out_feedback_valid_out_107),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_data_out),
        .out_feedback_stall_out_107(i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_feedback_stall_out_107),
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

    // i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22(BLACKBOX,48)@2
    // out out_feedback_out_106@20000000
    // out out_feedback_valid_out_106@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp202300_push106_conv_process0 thei_llvm_fpga_push_i1_notcmp202300_push106_conv_process22 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_data_out),
        .in_feedback_stall_in_106(i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_feedback_stall_out_106),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_106(i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_out_106),
        .out_feedback_valid_out_106(i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_valid_out_106),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21(BLACKBOX,42)@2
    // out out_feedback_stall_out_106@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process0 thei_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21 (
        .in_data_in(redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q),
        .in_feedback_in_106(i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_out_106),
        .in_feedback_valid_in_106(i_llvm_fpga_push_i1_notcmp202300_push106_conv_process22_out_feedback_valid_out_106),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_data_out),
        .out_feedback_stall_out_106(i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_feedback_stall_out_106),
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

    // i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20(BLACKBOX,49)@2
    // out out_feedback_out_105@20000000
    // out out_feedback_valid_out_105@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp206294_push105_conv_process0 thei_llvm_fpga_push_i1_notcmp206294_push105_conv_process20 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_data_out),
        .in_feedback_stall_in_105(i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_feedback_stall_out_105),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_105(i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_out_105),
        .out_feedback_valid_out_105(i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_valid_out_105),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19(BLACKBOX,43)@2
    // out out_feedback_stall_out_105@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process0 thei_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19 (
        .in_data_in(redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q),
        .in_feedback_in_105(i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_out_105),
        .in_feedback_valid_in_105(i_llvm_fpga_push_i1_notcmp206294_push105_conv_process20_out_feedback_valid_out_105),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_data_out),
        .out_feedback_stall_out_105(i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_feedback_stall_out_105),
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

    // i_llvm_fpga_push_i1_lnot284_push104_conv_process18(BLACKBOX,46)@2
    // out out_feedback_out_104@20000000
    // out out_feedback_valid_out_104@20000000
    cnn_top_i_llvm_fpga_push_i1_lnot284_push104_conv_process0 thei_llvm_fpga_push_i1_lnot284_push104_conv_process18 (
        .in_data_in(i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_data_out),
        .in_feedback_stall_in_104(i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_feedback_stall_out_104),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_104(i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_out_104),
        .out_feedback_valid_out_104(i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_valid_out_104),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17(BLACKBOX,40)@2
    // out out_feedback_stall_out_104@20000000
    cnn_top_i_llvm_fpga_pop_i1_lnot284_pop104_conv_process0 thei_llvm_fpga_pop_i1_lnot284_pop104_conv_process17 (
        .in_data_in(redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q),
        .in_feedback_in_104(i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_out_104),
        .in_feedback_valid_in_104(i_llvm_fpga_push_i1_lnot284_push104_conv_process18_out_feedback_valid_out_104),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_data_out),
        .out_feedback_stall_out_104(i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_feedback_stall_out_104),
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

    // i_inc50_i_conv_process15(ADD,36)@2
    assign i_inc50_i_conv_process15_a = {1'b0, i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_data_out};
    assign i_inc50_i_conv_process15_b = {1'b0, c_i32_147_q};
    assign i_inc50_i_conv_process15_o = $unsigned(i_inc50_i_conv_process15_a) + $unsigned(i_inc50_i_conv_process15_b);
    assign i_inc50_i_conv_process15_q = i_inc50_i_conv_process15_o[32:0];

    // bgTrunc_i_inc50_i_conv_process15_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc50_i_conv_process15_sel_x_b = i_inc50_i_conv_process15_q[31:0];

    // i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16(BLACKBOX,51)@2
    // out out_feedback_out_103@20000000
    // out out_feedback_valid_out_103@20000000
    cnn_top_i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process0 thei_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16 (
        .in_data_in(bgTrunc_i_inc50_i_conv_process15_sel_x_b),
        .in_feedback_stall_in_103(i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_feedback_stall_out_103),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(redist0_i_unnamed_conv_process9_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_103(i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_out_103),
        .out_feedback_valid_out_103(i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_valid_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_046(CONSTANT,28)
    assign c_i32_046_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14(BLACKBOX,44)@2
    // out out_feedback_stall_out_103@20000000
    cnn_top_i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process0 thei_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14 (
        .in_data_in(c_i32_046_q),
        .in_dir(redist1_sync_together67_aunroll_x_in_c0_eni11871_1_tpl_1_q),
        .in_feedback_in_103(i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_out_103),
        .in_feedback_valid_in_103(i_llvm_fpga_push_i32_tcc_0_i483_push103_conv_process16_out_feedback_valid_out_103),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_data_out),
        .out_feedback_stall_out_103(i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_feedback_stall_out_103),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp194_conv_process10(LOGICAL,53)@2
    assign i_notcmp194_conv_process10_q = redist0_i_unnamed_conv_process9_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3(BLACKBOX,38)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000ess114_conv_process0 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3 (
        .in_intel_reserved_ffwd_57_0(in_intel_reserved_ffwd_57_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_57_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3_out_dest_data_out_57_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_145(CONSTANT,30)
    assign c_i33_145_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next22_conv_process12(ADD,35)@1
    assign i_fpga_indvars_iv_next22_conv_process12_a = {1'b0, i_fpga_indvars_iv21_replace_phi_conv_process5_q};
    assign i_fpga_indvars_iv_next22_conv_process12_b = {1'b0, c_i33_145_q};
    assign i_fpga_indvars_iv_next22_conv_process12_o = $unsigned(i_fpga_indvars_iv_next22_conv_process12_a) + $unsigned(i_fpga_indvars_iv_next22_conv_process12_b);
    assign i_fpga_indvars_iv_next22_conv_process12_q = i_fpga_indvars_iv_next22_conv_process12_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next22_conv_process12_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next22_conv_process12_sel_x_b = i_fpga_indvars_iv_next22_conv_process12_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13(BLACKBOX,52)@1
    // out out_feedback_out_102@20000000
    // out out_feedback_valid_out_102@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000ush102_conv_process0 thei_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next22_conv_process12_sel_x_b),
        .in_feedback_stall_in_102(i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_feedback_stall_out_102),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process129(i_unnamed_conv_process9_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_102(i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_out_102),
        .out_feedback_valid_out_102(i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_valid_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef43(CONSTANT,31)
    assign c_i33_undef43_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4(BLACKBOX,45)@1
    // out out_feedback_stall_out_102@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000pop102_conv_process0 thei_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4 (
        .in_data_in(c_i33_undef43_q),
        .in_dir(in_c0_eni11871_1_tpl),
        .in_feedback_in_102(i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_out_102),
        .in_feedback_valid_in_102(i_llvm_fpga_push_i33_fpga_indvars_iv21_push102_conv_process13_out_feedback_valid_out_102),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_data_out),
        .out_feedback_stall_out_102(i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_feedback_stall_out_102),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv21_replace_phi_conv_process5(MUX,34)@1
    assign i_fpga_indvars_iv21_replace_phi_conv_process5_s = in_c0_eni11871_1_tpl;
    always @(i_fpga_indvars_iv21_replace_phi_conv_process5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3_out_dest_data_out_57_0)
    begin
        unique case (i_fpga_indvars_iv21_replace_phi_conv_process5_s)
            1'b0 : i_fpga_indvars_iv21_replace_phi_conv_process5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv21_pop102_conv_process4_out_data_out;
            1'b1 : i_fpga_indvars_iv21_replace_phi_conv_process5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process114_conv_process3_out_dest_data_out_57_0;
            default : i_fpga_indvars_iv21_replace_phi_conv_process5_q = 33'b0;
        endcase
    end

    // i_exitcond23_conv_process6_cmp_nsign(LOGICAL,75)@1
    assign i_exitcond23_conv_process6_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv21_replace_phi_conv_process5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process115_conv_process8(BLACKBOX,37)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ess115_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process115_conv_process8 (
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_55_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process115_conv_process8_out_dest_data_out_55_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process9(LOGICAL,54)@1
    assign i_unnamed_conv_process9_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process115_conv_process8_out_dest_data_out_55_0 & i_exitcond23_conv_process6_cmp_nsign_q;

    // redist0_i_unnamed_conv_process9_q_1(DELAY,76)
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
    assign out_c0_exi17_0_tpl = GND_q;
    assign out_c0_exi17_1_tpl = redist0_i_unnamed_conv_process9_q_1_q;
    assign out_c0_exi17_2_tpl = i_notcmp194_conv_process10_q;
    assign out_c0_exi17_3_tpl = i_llvm_fpga_pop_i32_tcc_0_i483_pop103_conv_process14_out_data_out;
    assign out_c0_exi17_4_tpl = i_llvm_fpga_pop_i1_lnot284_pop104_conv_process17_out_data_out;
    assign out_c0_exi17_5_tpl = i_llvm_fpga_pop_i1_notcmp206294_pop105_conv_process19_out_data_out;
    assign out_c0_exi17_6_tpl = i_llvm_fpga_pop_i1_notcmp202300_pop106_conv_process21_out_data_out;
    assign out_c0_exi17_7_tpl = i_llvm_fpga_pop_i1_notcmp198302_pop107_conv_process23_out_data_out;
    assign out_c0_exi17_8_tpl = redist6_sync_together67_aunroll_x_in_c0_eni11871_6_tpl_1_q;
    assign out_c0_exi17_9_tpl = redist7_sync_together67_aunroll_x_in_c0_eni11871_7_tpl_1_q;
    assign out_c0_exi17_10_tpl = redist8_sync_together67_aunroll_x_in_c0_eni11871_8_tpl_1_q;
    assign out_c0_exi17_11_tpl = redist9_sync_together67_aunroll_x_in_c0_eni11871_9_tpl_1_q;
    assign out_c0_exi17_12_tpl = redist10_sync_together67_aunroll_x_in_c0_eni11871_10_tpl_1_q;
    assign out_c0_exi17_13_tpl = redist11_sync_together67_aunroll_x_in_c0_eni11871_11_tpl_1_q;
    assign out_c0_exi17_14_tpl = redist5_sync_together67_aunroll_x_in_c0_eni11871_5_tpl_1_q;
    assign out_c0_exi17_15_tpl = redist2_sync_together67_aunroll_x_in_c0_eni11871_2_tpl_1_q;
    assign out_c0_exi17_16_tpl = redist3_sync_together67_aunroll_x_in_c0_eni11871_3_tpl_1_q;
    assign out_c0_exi17_17_tpl = redist4_sync_together67_aunroll_x_in_c0_eni11871_4_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond196_conv_process11(BLACKBOX,50)@1
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond196_conv_process0 thei_llvm_fpga_push_i1_notexitcond196_conv_process11 (
        .in_data_in(i_unnamed_conv_process9_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going195_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going195_conv_process2(BLACKBOX,39)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going195_conv_process0 thei_llvm_fpga_pipeline_keep_going195_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond196_conv_process11_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going195_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going195_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going195_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,57)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going195_conv_process2_out_pipeline_valid_out;

endmodule
