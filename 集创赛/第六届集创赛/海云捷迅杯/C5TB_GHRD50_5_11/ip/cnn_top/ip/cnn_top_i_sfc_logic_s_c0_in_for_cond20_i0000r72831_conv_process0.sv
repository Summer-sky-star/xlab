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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond20_i0000r72831_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond20_i0000r72831_conv_process0 (
    output wire [0:0] out_c0_exi14_0_tpl,
    output wire [31:0] out_c0_exi14_1_tpl,
    output wire [0:0] out_c0_exi14_2_tpl,
    output wire [0:0] out_c0_exi14_3_tpl,
    output wire [0:0] out_c0_exi14_4_tpl,
    output wire [31:0] out_c0_exi14_5_tpl,
    output wire [31:0] out_c0_exi14_6_tpl,
    output wire [31:0] out_c0_exi14_7_tpl,
    output wire [0:0] out_c0_exi14_8_tpl,
    output wire [0:0] out_c0_exi14_9_tpl,
    output wire [31:0] out_c0_exi14_10_tpl,
    output wire [31:0] out_c0_exi14_11_tpl,
    output wire [0:0] out_c0_exi14_12_tpl,
    output wire [0:0] out_c0_exi14_13_tpl,
    output wire [31:0] out_c0_exi14_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [31:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_51_0,
    input wire [31:0] in_intel_reserved_ffwd_64_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next38_conv_process20_sel_x_b;
    wire [31:0] bgTrunc_i_inc69_i_conv_process22_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_conv_process25_sel_x_b;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_161_q;
    wire [31:0] c_i32_462_q;
    wire [32:0] c_i33_160_q;
    wire [32:0] c_i33_undef57_q;
    wire [33:0] i_cmp53_i_conv_process8_a;
    wire [33:0] i_cmp53_i_conv_process8_b;
    logic [33:0] i_cmp53_i_conv_process8_o;
    wire [0:0] i_cmp53_i_conv_process8_n;
    wire [33:0] i_cmp56_i_conv_process11_a;
    wire [33:0] i_cmp56_i_conv_process11_b;
    logic [33:0] i_cmp56_i_conv_process11_o;
    wire [0:0] i_cmp56_i_conv_process11_c;
    wire [0:0] i_fpga_indvars_iv37_replace_phi_conv_process5_s;
    reg [32:0] i_fpga_indvars_iv37_replace_phi_conv_process5_q;
    wire [33:0] i_fpga_indvars_iv_next38_conv_process20_a;
    wire [33:0] i_fpga_indvars_iv_next38_conv_process20_b;
    logic [33:0] i_fpga_indvars_iv_next38_conv_process20_o;
    wire [33:0] i_fpga_indvars_iv_next38_conv_process20_q;
    wire [32:0] i_inc69_i_conv_process22_a;
    wire [32:0] i_inc69_i_conv_process22_b;
    logic [32:0] i_inc69_i_conv_process22_o;
    wire [32:0] i_inc69_i_conv_process22_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process92_conv_process16_out_dest_data_out_73_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10_out_dest_data_out_64_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6_out_dest_data_out_7_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3_out_dest_data_out_51_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going166_conv_process2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_feedback_stall_out_80;
    wire [0:0] i_llvm_fpga_pop_i1_pop79_conv_process29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop79_conv_process29_out_feedback_stall_out_79;
    wire [31:0] i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_feedback_stall_out_76;
    wire [31:0] i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_feedback_stall_out_78;
    wire [31:0] i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_feedback_stall_out_77;
    wire [31:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_feedback_stall_out_81;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_feedback_stall_out_75;
    wire [0:0] i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_out_80;
    wire [0:0] i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_valid_out_80;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_out_79;
    wire [0:0] i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_valid_out_79;
    wire [31:0] i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_valid_out_76;
    wire [31:0] i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_out_78;
    wire [0:0] i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_valid_out_78;
    wire [31:0] i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_valid_out_77;
    wire [31:0] i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_out_81;
    wire [0:0] i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_valid_out_81;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_valid_out_75;
    wire [0:0] i_notcmp165_conv_process18_q;
    wire [0:0] i_or_cond189_conv_process13_q;
    wire [0:0] i_unnamed_conv_process17_q;
    wire [32:0] i_unnamed_conv_process25_a;
    wire [32:0] i_unnamed_conv_process25_b;
    logic [32:0] i_unnamed_conv_process25_o;
    wire [32:0] i_unnamed_conv_process25_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    wire [0:0] i_exitcond39_conv_process14_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_conv_process17_q_2_q;
    reg [0:0] redist0_i_unnamed_conv_process17_q_2_delay_0;
    reg [31:0] redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q;
    reg [0:0] redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q;
    reg [31:0] redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q;
    reg [31:0] redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_delay_0;
    reg [0:0] redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_q;
    reg [0:0] redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_delay_0;
    reg [0:0] redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_q;
    reg [0:0] redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_delay_0;
    reg [31:0] redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_q;
    reg [31:0] redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_delay_0;
    reg [0:0] redist8_sync_together86_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together86_aunroll_x_in_i_valid_1(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together86_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together86_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,82)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_delay_0 <= '0;
            redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_q <= '0;
        end
        else
        begin
            redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_delay_0 <= $unsigned(in_c0_eni5_5_tpl);
            redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_q <= redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_delay_0;
        end
    end

    // redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_delay_0 <= '0;
            redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_delay_0 <= $unsigned(in_c0_eni5_4_tpl);
            redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_q <= redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_delay_0;
        end
    end

    // redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_delay_0 <= '0;
            redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_delay_0 <= $unsigned(in_c0_eni5_3_tpl);
            redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_q <= redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_delay_0;
        end
    end

    // redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_delay_0 <= '0;
            redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q <= '0;
        end
        else
        begin
            redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_delay_0 <= $unsigned(in_c0_eni5_2_tpl);
            redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q <= redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg13(REG,95)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34(BLACKBOX,64)@3
    // out out_feedback_out_81@20000000
    // out out_feedback_valid_out_81@20000000
    cnn_top_i_llvm_fpga_push_i32_r_0_i1064760000push81_conv_process0 thei_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34 (
        .in_data_in(i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_data_out),
        .in_feedback_stall_in_81(i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_feedback_stall_out_81),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_81(i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_out_81),
        .out_feedback_valid_out_81(i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_valid_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q <= $unsigned(redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33(BLACKBOX,56)@3
    // out out_feedback_stall_out_81@20000000
    cnn_top_i_llvm_fpga_pop_i32_r_0_i106476_0000_pop81_conv_process0 thei_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33 (
        .in_data_in(redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_q),
        .in_dir(redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_81(i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_out_81),
        .in_feedback_valid_in_81(i_llvm_fpga_push_i32_r_0_i106476_pop65290_push81_conv_process34_out_feedback_valid_out_81),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_data_out),
        .out_feedback_stall_out_81(i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_feedback_stall_out_81),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,93)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32(BLACKBOX,58)@3
    // out out_feedback_out_80@20000000
    // out out_feedback_valid_out_80@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp169288_push80_conv_process0 thei_llvm_fpga_push_i1_notcmp169288_push80_conv_process32 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_data_out),
        .in_feedback_stall_in_80(i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_feedback_stall_out_80),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_80(i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_out_80),
        .out_feedback_valid_out_80(i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_valid_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31(BLACKBOX,51)@3
    // out out_feedback_stall_out_80@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process0 thei_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31 (
        .in_data_in(redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_q),
        .in_dir(redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_80(i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_out_80),
        .in_feedback_valid_in_80(i_llvm_fpga_push_i1_notcmp169288_push80_conv_process32_out_feedback_valid_out_80),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_data_out),
        .out_feedback_stall_out_80(i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_feedback_stall_out_80),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,91)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,92)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_push79_conv_process30(BLACKBOX,60)@3
    // out out_feedback_out_79@20000000
    // out out_feedback_valid_out_79@20000000
    cnn_top_i_llvm_fpga_push_i1_push79_conv_process0 thei_llvm_fpga_push_i1_push79_conv_process30 (
        .in_data_in(i_llvm_fpga_pop_i1_pop79_conv_process29_out_data_out),
        .in_feedback_stall_in_79(i_llvm_fpga_pop_i1_pop79_conv_process29_out_feedback_stall_out_79),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_79(i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_out_79),
        .out_feedback_valid_out_79(i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_valid_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop79_conv_process29(BLACKBOX,52)@3
    // out out_feedback_stall_out_79@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop79_conv_process0 thei_llvm_fpga_pop_i1_pop79_conv_process29 (
        .in_data_in(redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_q),
        .in_dir(redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_79(i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_out_79),
        .in_feedback_valid_in_79(i_llvm_fpga_push_i1_push79_conv_process30_out_feedback_valid_out_79),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop79_conv_process29_out_data_out),
        .out_feedback_stall_out_79(i_llvm_fpga_pop_i1_pop79_conv_process29_out_feedback_stall_out_79),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,89)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg8(REG,90)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28(BLACKBOX,62)@3
    // out out_feedback_out_78@20000000
    // out out_feedback_valid_out_78@20000000
    cnn_top_i_llvm_fpga_push_i32_offset_0_i40000push78_conv_process0 thei_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28 (
        .in_data_in(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_data_out),
        .in_feedback_stall_in_78(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_feedback_stall_out_78),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_78(i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_out_78),
        .out_feedback_valid_out_78(i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_valid_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27(BLACKBOX,54)@3
    // out out_feedback_stall_out_78@20000000
    cnn_top_i_llvm_fpga_pop_i32_offset_0_i470000_pop78_conv_process0 thei_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27 (
        .in_data_in(redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q),
        .in_dir(redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_78(i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_out_78),
        .in_feedback_valid_in_78(i_llvm_fpga_push_i32_offset_0_i475_replace_phi286_push78_conv_process28_out_feedback_valid_out_78),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_data_out),
        .out_feedback_stall_out_78(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_feedback_stall_out_78),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_462(CONSTANT,36)
    assign c_i32_462_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_conv_process25(ADD,69)@3
    assign i_unnamed_conv_process25_a = {1'b0, i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_data_out};
    assign i_unnamed_conv_process25_b = {1'b0, c_i32_462_q};
    assign i_unnamed_conv_process25_o = $unsigned(i_unnamed_conv_process25_a) + $unsigned(i_unnamed_conv_process25_b);
    assign i_unnamed_conv_process25_q = i_unnamed_conv_process25_o[32:0];

    // bgTrunc_i_unnamed_conv_process25_sel_x(BITSELECT,4)@3
    assign bgTrunc_i_unnamed_conv_process25_sel_x_b = i_unnamed_conv_process25_q[31:0];

    // valid_fanout_reg5(REG,87)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg6(REG,88)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26(BLACKBOX,63)@3
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    cnn_top_i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process0 thei_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26 (
        .in_data_in(bgTrunc_i_unnamed_conv_process25_sel_x_b),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_feedback_stall_out_77),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24(BLACKBOX,55)@3
    // out out_feedback_stall_out_77@20000000
    cnn_top_i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process0 thei_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24 (
        .in_data_in(redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q),
        .in_dir(redist3_sync_together86_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_77(i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i32_offset_1_i469_push77_conv_process26_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp165_conv_process18(LOGICAL,66)@3
    assign i_notcmp165_conv_process18_q = redist0_i_unnamed_conv_process17_q_2_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3(BLACKBOX,49)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000cess91_conv_process0 thei_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3 (
        .in_intel_reserved_ffwd_51_0(in_intel_reserved_ffwd_51_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_51_0(i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3_out_dest_data_out_51_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_160(CONSTANT,37)
    assign c_i33_160_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next38_conv_process20(ADD,44)@1
    assign i_fpga_indvars_iv_next38_conv_process20_a = {1'b0, i_fpga_indvars_iv37_replace_phi_conv_process5_q};
    assign i_fpga_indvars_iv_next38_conv_process20_b = {1'b0, c_i33_160_q};
    assign i_fpga_indvars_iv_next38_conv_process20_o = $unsigned(i_fpga_indvars_iv_next38_conv_process20_a) + $unsigned(i_fpga_indvars_iv_next38_conv_process20_b);
    assign i_fpga_indvars_iv_next38_conv_process20_q = i_fpga_indvars_iv_next38_conv_process20_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next38_conv_process20_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next38_conv_process20_sel_x_b = i_fpga_indvars_iv_next38_conv_process20_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21(BLACKBOX,65)@1
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push75_conv_process0 thei_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next38_conv_process20_sel_x_b),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_feedback_stall_out_75),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(i_unnamed_conv_process17_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef57(CONSTANT,38)
    assign c_i33_undef57_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4(BLACKBOX,57)@1
    // out out_feedback_stall_out_75@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop75_conv_process0 thei_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4 (
        .in_data_in(c_i33_undef57_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_75(i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i33_fpga_indvars_iv37_push75_conv_process21_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv37_replace_phi_conv_process5(MUX,43)@1
    assign i_fpga_indvars_iv37_replace_phi_conv_process5_s = in_c0_eni5_1_tpl;
    always @(i_fpga_indvars_iv37_replace_phi_conv_process5_s or i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3_out_dest_data_out_51_0)
    begin
        unique case (i_fpga_indvars_iv37_replace_phi_conv_process5_s)
            1'b0 : i_fpga_indvars_iv37_replace_phi_conv_process5_q = i_llvm_fpga_pop_i33_fpga_indvars_iv37_pop75_conv_process4_out_data_out;
            1'b1 : i_fpga_indvars_iv37_replace_phi_conv_process5_q = i_llvm_fpga_ffwd_dest_i33_unnamed_conv_process91_conv_process3_out_dest_data_out_51_0;
            default : i_fpga_indvars_iv37_replace_phi_conv_process5_q = 33'b0;
        endcase
    end

    // i_exitcond39_conv_process14_cmp_nsign(LOGICAL,101)@1
    assign i_exitcond39_conv_process14_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv37_replace_phi_conv_process5_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process92_conv_process16(BLACKBOX,46)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000cess92_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process92_conv_process16 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process92_conv_process16_out_dest_data_out_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process17(LOGICAL,68)@1
    assign i_unnamed_conv_process17_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process92_conv_process16_out_dest_data_out_73_0 & i_exitcond39_conv_process14_cmp_nsign_q;

    // redist0_i_unnamed_conv_process17_q_2(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_conv_process17_q_2_delay_0 <= '0;
            redist0_i_unnamed_conv_process17_q_2_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_conv_process17_q_2_delay_0 <= $unsigned(i_unnamed_conv_process17_q);
            redist0_i_unnamed_conv_process17_q_2_q <= redist0_i_unnamed_conv_process17_q_2_delay_0;
        end
    end

    // valid_fanout_reg3(REG,85)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10(BLACKBOX,47)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process0 thei_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10 (
        .in_intel_reserved_ffwd_64_0(in_intel_reserved_ffwd_64_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_64_0(i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10_out_dest_data_out_64_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp56_i_conv_process11(COMPARE,41)@3
    assign i_cmp56_i_conv_process11_a = $unsigned({{2{redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q[31]}}, redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q});
    assign i_cmp56_i_conv_process11_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10_out_dest_data_out_64_0[31]}}, i_llvm_fpga_ffwd_dest_i32_add55_i140_conv_process10_out_dest_data_out_64_0});
    assign i_cmp56_i_conv_process11_o = $unsigned($signed(i_cmp56_i_conv_process11_a) - $signed(i_cmp56_i_conv_process11_b));
    assign i_cmp56_i_conv_process11_c[0] = i_cmp56_i_conv_process11_o[33];

    // valid_fanout_reg1(REG,83)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6(BLACKBOX,48)@3
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract60_conv_process0 thei_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp53_i_conv_process8(COMPARE,40)@3
    assign i_cmp53_i_conv_process8_a = $unsigned({{2{redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q[31]}}, redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q});
    assign i_cmp53_i_conv_process8_b = $unsigned({{2{i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6_out_dest_data_out_7_0[31]}}, i_llvm_fpga_ffwd_dest_i32_param_fca_12_extract60_conv_process6_out_dest_data_out_7_0});
    assign i_cmp53_i_conv_process8_o = $unsigned($signed(i_cmp53_i_conv_process8_a) - $signed(i_cmp53_i_conv_process8_b));
    assign i_cmp53_i_conv_process8_n[0] = ~ (i_cmp53_i_conv_process8_o[33]);

    // i_or_cond189_conv_process13(LOGICAL,67)@3
    assign i_or_cond189_conv_process13_q = i_cmp53_i_conv_process8_n & i_cmp56_i_conv_process11_c;

    // valid_fanout_reg2(REG,84)@1 + 1
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

    // valid_fanout_reg4(REG,86)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together86_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_161(CONSTANT,35)
    assign c_i32_161_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc69_i_conv_process22(ADD,45)@3
    assign i_inc69_i_conv_process22_a = {1'b0, redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q};
    assign i_inc69_i_conv_process22_b = {1'b0, c_i32_161_q};
    assign i_inc69_i_conv_process22_o = $unsigned(i_inc69_i_conv_process22_a) + $unsigned(i_inc69_i_conv_process22_b);
    assign i_inc69_i_conv_process22_q = i_inc69_i_conv_process22_o[32:0];

    // bgTrunc_i_inc69_i_conv_process22_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_inc69_i_conv_process22_sel_x_b = i_inc69_i_conv_process22_q[31:0];

    // i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23(BLACKBOX,61)@3
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    cnn_top_i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process0 thei_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23 (
        .in_data_in(bgTrunc_i_inc69_i_conv_process22_sel_x_b),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_feedback_stall_out_76),
        .in_stall_in(GND_q),
        .in_unnamed_conv_process125(redist0_i_unnamed_conv_process17_q_2_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_058(CONSTANT,34)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7(BLACKBOX,53)@2
    // out out_feedback_stall_out_76@20000000
    cnn_top_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process0 thei_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist2_sync_together86_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_76(i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i32_c_0_i110470_push76_conv_process23_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@3
    assign out_c0_exi14_0_tpl = GND_q;
    assign out_c0_exi14_1_tpl = redist1_i_llvm_fpga_pop_i32_c_0_i110470_pop76_conv_process7_out_data_out_1_q;
    assign out_c0_exi14_2_tpl = i_or_cond189_conv_process13_q;
    assign out_c0_exi14_3_tpl = redist0_i_unnamed_conv_process17_q_2_q;
    assign out_c0_exi14_4_tpl = i_notcmp165_conv_process18_q;
    assign out_c0_exi14_5_tpl = i_llvm_fpga_pop_i32_offset_1_i469_pop77_conv_process24_out_data_out;
    assign out_c0_exi14_6_tpl = bgTrunc_i_unnamed_conv_process25_sel_x_b;
    assign out_c0_exi14_7_tpl = i_llvm_fpga_pop_i32_offset_0_i475_replace_phi286_pop78_conv_process27_out_data_out;
    assign out_c0_exi14_8_tpl = i_llvm_fpga_pop_i1_pop79_conv_process29_out_data_out;
    assign out_c0_exi14_9_tpl = i_llvm_fpga_pop_i1_notcmp169288_pop80_conv_process31_out_data_out;
    assign out_c0_exi14_10_tpl = i_llvm_fpga_pop_i32_r_0_i106476_pop65290_pop81_conv_process33_out_data_out;
    assign out_c0_exi14_11_tpl = redist4_sync_together86_aunroll_x_in_c0_eni5_2_tpl_2_q;
    assign out_c0_exi14_12_tpl = redist5_sync_together86_aunroll_x_in_c0_eni5_3_tpl_2_q;
    assign out_c0_exi14_13_tpl = redist6_sync_together86_aunroll_x_in_c0_eni5_4_tpl_2_q;
    assign out_c0_exi14_14_tpl = redist7_sync_together86_aunroll_x_in_c0_eni5_5_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond167_conv_process19(BLACKBOX,59)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond167_conv_process0 thei_llvm_fpga_push_i1_notexitcond167_conv_process19 (
        .in_data_in(i_unnamed_conv_process17_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going166_conv_process2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going166_conv_process2(BLACKBOX,50)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going166_conv_process0 thei_llvm_fpga_pipeline_keep_going166_conv_process2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond167_conv_process19_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going166_conv_process2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going166_conv_process2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going166_conv_process2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,74)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going166_conv_process2_out_pipeline_valid_out;

endmodule
