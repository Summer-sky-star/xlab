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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000r20615_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond59_p0000r20615_load_weight00 (
    output wire [0:0] out_c0_exi7216_0_tpl,
    output wire [31:0] out_c0_exi7216_1_tpl,
    output wire [0:0] out_c0_exi7216_2_tpl,
    output wire [0:0] out_c0_exi7216_3_tpl,
    output wire [31:0] out_c0_exi7216_4_tpl,
    output wire [0:0] out_c0_exi7216_5_tpl,
    output wire [31:0] out_c0_exi7216_6_tpl,
    output wire [0:0] out_c0_exi7216_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight019,
    input wire [0:0] in_c0_eni3205_0_tpl,
    input wire [0:0] in_c0_eni3205_1_tpl,
    input wire [31:0] in_c0_eni3205_2_tpl,
    input wire [0:0] in_c0_eni3205_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight02_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight02_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next14_load_weight015_sel_x_b;
    wire [31:0] bgTrunc_i_inc108_load_weight017_sel_x_b;
    wire [63:0] bgTrunc_i_mul78_load_weight08_sel_x_in;
    wire [31:0] bgTrunc_i_mul78_load_weight08_sel_x_b;
    wire [31:0] c_i32_039_q;
    wire [31:0] c_i32_142_q;
    wire [32:0] c_i33_141_q;
    wire [32:0] c_i33_undef38_q;
    wire [0:0] i_fpga_indvars_iv13_replace_phi_load_weight05_s;
    reg [32:0] i_fpga_indvars_iv13_replace_phi_load_weight05_q;
    wire [33:0] i_fpga_indvars_iv_next14_load_weight015_a;
    wire [33:0] i_fpga_indvars_iv_next14_load_weight015_b;
    logic [33:0] i_fpga_indvars_iv_next14_load_weight015_o;
    wire [33:0] i_fpga_indvars_iv_next14_load_weight015_q;
    wire [32:0] i_inc108_load_weight017_a;
    wire [32:0] i_inc108_load_weight017_b;
    logic [32:0] i_inc108_load_weight017_o;
    wire [32:0] i_inc108_load_weight017_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight039_load_weight011_out_dest_data_out_19_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06_out_dest_data_out_4_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_load_weight02_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_load_weight021_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_load_weight021_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_feedback_stall_out_22;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_valid_out_20;
    wire [0:0] i_notcmp82_load_weight013_q;
    wire [0:0] i_unnamed_load_weight012_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond15_load_weight09_cmp_nsign_q;
    wire [63:0] i_mul78_load_weight08_sums_join_0_q;
    wire [50:0] i_mul78_load_weight08_sums_align_1_q;
    wire [50:0] i_mul78_load_weight08_sums_align_1_qint;
    wire [64:0] i_mul78_load_weight08_sums_result_add_0_0_a;
    wire [64:0] i_mul78_load_weight08_sums_result_add_0_0_b;
    logic [64:0] i_mul78_load_weight08_sums_result_add_0_0_o;
    wire [64:0] i_mul78_load_weight08_sums_result_add_0_0_q;
    wire i_mul78_load_weight08_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul78_load_weight08_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul78_load_weight08_im0_cma_c0 [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_p [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_u [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_w [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_x [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_y [0:0];
    reg [35:0] i_mul78_load_weight08_im0_cma_s [0:0];
    wire [35:0] i_mul78_load_weight08_im0_cma_qq;
    wire [35:0] i_mul78_load_weight08_im0_cma_q;
    wire i_mul78_load_weight08_im0_cma_ena0;
    wire i_mul78_load_weight08_im0_cma_ena1;
    wire i_mul78_load_weight08_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul78_load_weight08_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul78_load_weight08_im8_cma_c0 [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_p [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_u [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_w [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_x [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_y [0:0];
    reg [27:0] i_mul78_load_weight08_im8_cma_s [0:0];
    wire [27:0] i_mul78_load_weight08_im8_cma_qq;
    wire [27:0] i_mul78_load_weight08_im8_cma_q;
    wire i_mul78_load_weight08_im8_cma_ena0;
    wire i_mul78_load_weight08_im8_cma_ena1;
    wire i_mul78_load_weight08_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul78_load_weight08_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul78_load_weight08_ma3_cma_c0 [0:1];
    wire [31:0] i_mul78_load_weight08_ma3_cma_p [0:1];
    wire [32:0] i_mul78_load_weight08_ma3_cma_u [0:1];
    wire [32:0] i_mul78_load_weight08_ma3_cma_w [0:0];
    wire [32:0] i_mul78_load_weight08_ma3_cma_x [0:0];
    wire [32:0] i_mul78_load_weight08_ma3_cma_y [0:0];
    reg [32:0] i_mul78_load_weight08_ma3_cma_s [0:0];
    wire [32:0] i_mul78_load_weight08_ma3_cma_qq;
    wire [32:0] i_mul78_load_weight08_ma3_cma_q;
    wire i_mul78_load_weight08_ma3_cma_ena0;
    wire i_mul78_load_weight08_ma3_cma_ena1;
    wire [17:0] i_mul78_load_weight08_bs2_merged_bit_select_b;
    wire [13:0] i_mul78_load_weight08_bs2_merged_bit_select_c;
    wire [17:0] i_mul78_load_weight08_bs1_merged_bit_select_b;
    wire [13:0] i_mul78_load_weight08_bs1_merged_bit_select_c;
    reg [0:0] redist0_i_unnamed_load_weight012_q_1_q;
    reg [0:0] redist1_i_unnamed_load_weight012_q_3_q;
    reg [0:0] redist1_i_unnamed_load_weight012_q_3_delay_0;
    reg [0:0] redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1_q;
    reg [0:0] redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_q;
    reg [0:0] redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_delay_0;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_q;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_delay_0;
    reg [0:0] redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_q;
    reg [0:0] redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_0;
    reg [0:0] redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_1;
    reg [0:0] redist6_sync_together59_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist6_sync_together59_aunroll_x_in_i_valid_2_delay_0;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist6_sync_together59_aunroll_x_in_i_valid_2(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together59_aunroll_x_in_i_valid_2_delay_0 <= '0;
            redist6_sync_together59_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist6_sync_together59_aunroll_x_in_i_valid_2_delay_0 <= $unsigned(in_i_valid);
            redist6_sync_together59_aunroll_x_in_i_valid_2_q <= redist6_sync_together59_aunroll_x_in_i_valid_2_delay_0;
        end
    end

    // valid_fanout_reg0(REG,59)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_0 <= '0;
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_1 <= '0;
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_q <= '0;
        end
        else
        begin
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_0 <= $unsigned(in_c0_eni3205_3_tpl);
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_1 <= redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_0;
            redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_q <= redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_delay_1;
        end
    end

    // redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_delay_0 <= '0;
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_q <= '0;
        end
        else
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_delay_0 <= $unsigned(in_c0_eni3205_2_tpl);
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_q <= redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_delay_0;
        end
    end

    // redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0_q <= $unsigned(redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_q);
        end
    end

    // valid_fanout_reg6(REG,65)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,66)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_push23_load_weight022(BLACKBOX,45)@4
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    cnn_top_i_llvm_fpga_push_i1_push23_load_weight00 thei_llvm_fpga_push_i1_push23_load_weight022 (
        .in_data_in(i_llvm_fpga_pop_i1_pop23_load_weight021_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_pop23_load_weight021_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight055(redist1_i_unnamed_load_weight012_q_3_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1_q <= $unsigned(in_c0_eni3205_1_tpl);
        end
    end

    // redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_delay_0 <= '0;
            redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_delay_0 <= $unsigned(redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1_q);
            redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_q <= redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_pop23_load_weight021(BLACKBOX,40)@4
    // out out_feedback_stall_out_23@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop23_load_weight00 thei_llvm_fpga_pop_i1_pop23_load_weight021 (
        .in_data_in(redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_q),
        .in_dir(redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_push23_load_weight022_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop23_load_weight021_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_pop23_load_weight021_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,63)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg5(REG,64)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist6_sync_together59_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i32_li_07591_push22_load_weight020(BLACKBOX,47)@4
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    cnn_top_i_llvm_fpga_push_i32_li_07591_push22_load_weight00 thei_llvm_fpga_push_i32_li_07591_push22_load_weight020 (
        .in_data_in(i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight055(redist1_i_unnamed_load_weight012_q_3_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019(BLACKBOX,42)@4
    // out out_feedback_stall_out_22@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_07591_pop22_load_weight00 thei_llvm_fpga_pop_i32_li_07591_pop22_load_weight019 (
        .in_data_in(redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0_q),
        .in_dir(redist3_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_3_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_li_07591_push22_load_weight020_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp82_load_weight013(LOGICAL,50)@4
    assign i_notcmp82_load_weight013_q = redist1_i_unnamed_load_weight012_q_3_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03(BLACKBOX,38)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000ght038_load_weight00 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_141(CONSTANT,29)
    assign c_i33_141_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next14_load_weight015(ADD,34)@1
    assign i_fpga_indvars_iv_next14_load_weight015_a = {1'b0, i_fpga_indvars_iv13_replace_phi_load_weight05_q};
    assign i_fpga_indvars_iv_next14_load_weight015_b = {1'b0, c_i33_141_q};
    assign i_fpga_indvars_iv_next14_load_weight015_o = $unsigned(i_fpga_indvars_iv_next14_load_weight015_a) + $unsigned(i_fpga_indvars_iv_next14_load_weight015_b);
    assign i_fpga_indvars_iv_next14_load_weight015_q = i_fpga_indvars_iv_next14_load_weight015_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next14_load_weight015_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next14_load_weight015_sel_x_b = i_fpga_indvars_iv_next14_load_weight015_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016(BLACKBOX,48)@1
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push20_load_weight00 thei_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next14_load_weight015_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight055(i_unnamed_load_weight012_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef38(CONSTANT,30)
    assign c_i33_undef38_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04(BLACKBOX,43)@1
    // out out_feedback_stall_out_20@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars0000_pop20_load_weight00 thei_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04 (
        .in_data_in(c_i33_undef38_q),
        .in_dir(in_c0_eni3205_1_tpl),
        .in_feedback_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_weight016_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv13_replace_phi_load_weight05(MUX,33)@1
    assign i_fpga_indvars_iv13_replace_phi_load_weight05_s = in_c0_eni3205_1_tpl;
    always @(i_fpga_indvars_iv13_replace_phi_load_weight05_s or i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03_out_dest_data_out_15_0)
    begin
        unique case (i_fpga_indvars_iv13_replace_phi_load_weight05_s)
            1'b0 : i_fpga_indvars_iv13_replace_phi_load_weight05_q = i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_weight04_out_data_out;
            1'b1 : i_fpga_indvars_iv13_replace_phi_load_weight05_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight038_load_weight03_out_dest_data_out_15_0;
            default : i_fpga_indvars_iv13_replace_phi_load_weight05_q = 33'b0;
        endcase
    end

    // i_exitcond15_load_weight09_cmp_nsign(LOGICAL,71)@1
    assign i_exitcond15_load_weight09_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv13_replace_phi_load_weight05_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight039_load_weight011(BLACKBOX,36)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght039_load_weight00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight039_load_weight011 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight039_load_weight011_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_weight012(LOGICAL,51)@1
    assign i_unnamed_load_weight012_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight039_load_weight011_out_dest_data_out_19_0 & i_exitcond15_load_weight09_cmp_nsign_q;

    // redist0_i_unnamed_load_weight012_q_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_weight012_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_weight012_q_1_q <= $unsigned(i_unnamed_load_weight012_q);
        end
    end

    // redist1_i_unnamed_load_weight012_q_3(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_load_weight012_q_3_delay_0 <= '0;
            redist1_i_unnamed_load_weight012_q_3_q <= '0;
        end
        else
        begin
            redist1_i_unnamed_load_weight012_q_3_delay_0 <= $unsigned(redist0_i_unnamed_load_weight012_q_1_q);
            redist1_i_unnamed_load_weight012_q_3_q <= redist1_i_unnamed_load_weight012_q_3_delay_0;
        end
    end

    // valid_fanout_reg1(REG,60)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06(BLACKBOX,37)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000ract31_load_weight00 thei_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul78_load_weight08_bs2_merged_bit_select(BITSELECT,90)@2
    assign i_mul78_load_weight08_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06_out_dest_data_out_4_0[17:0];
    assign i_mul78_load_weight08_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_param_fca_10_extract31_load_weight06_out_dest_data_out_4_0[31:18];

    // valid_fanout_reg2(REG,61)@1 + 1
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

    // valid_fanout_reg3(REG,62)@1 + 1
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

    // c_i32_142(CONSTANT,28)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc108_load_weight017(ADD,35)@2
    assign i_inc108_load_weight017_a = {1'b0, i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_data_out};
    assign i_inc108_load_weight017_b = {1'b0, c_i32_142_q};
    assign i_inc108_load_weight017_o = $unsigned(i_inc108_load_weight017_a) + $unsigned(i_inc108_load_weight017_b);
    assign i_inc108_load_weight017_q = i_inc108_load_weight017_o[32:0];

    // bgTrunc_i_inc108_load_weight017_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc108_load_weight017_sel_x_b = i_inc108_load_weight017_q[31:0];

    // i_llvm_fpga_push_i32_kh_073_push21_load_weight018(BLACKBOX,46)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    cnn_top_i_llvm_fpga_push_i32_kh_073_push21_load_weight00 thei_llvm_fpga_push_i32_kh_073_push21_load_weight018 (
        .in_data_in(bgTrunc_i_inc108_load_weight017_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight055(redist0_i_unnamed_load_weight012_q_1_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_039(CONSTANT,27)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07(BLACKBOX,41)@2
    // out out_feedback_stall_out_21@20000000
    cnn_top_i_llvm_fpga_pop_i32_kh_073_pop21_load_weight00 thei_llvm_fpga_pop_i32_kh_073_pop21_load_weight07 (
        .in_data_in(c_i32_039_q),
        .in_dir(redist2_sync_together59_aunroll_x_in_c0_eni3205_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_kh_073_push21_load_weight018_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul78_load_weight08_bs1_merged_bit_select(BITSELECT,91)@2
    assign i_mul78_load_weight08_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_data_out[17:0];
    assign i_mul78_load_weight08_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_kh_073_pop21_load_weight07_out_data_out[31:18];

    // i_mul78_load_weight08_ma3_cma(CHAINMULTADD,89)@2 + 2
    assign i_mul78_load_weight08_ma3_cma_reset = ~ (resetn);
    assign i_mul78_load_weight08_ma3_cma_ena0 = 1'b1;
    assign i_mul78_load_weight08_ma3_cma_ena1 = i_mul78_load_weight08_ma3_cma_ena0;
    assign i_mul78_load_weight08_ma3_cma_p[0] = i_mul78_load_weight08_ma3_cma_a0[0] * i_mul78_load_weight08_ma3_cma_c0[0];
    assign i_mul78_load_weight08_ma3_cma_p[1] = i_mul78_load_weight08_ma3_cma_a0[1] * i_mul78_load_weight08_ma3_cma_c0[1];
    assign i_mul78_load_weight08_ma3_cma_u[0] = {1'b0, i_mul78_load_weight08_ma3_cma_p[0][31:0]};
    assign i_mul78_load_weight08_ma3_cma_u[1] = {1'b0, i_mul78_load_weight08_ma3_cma_p[1][31:0]};
    assign i_mul78_load_weight08_ma3_cma_w[0] = i_mul78_load_weight08_ma3_cma_u[0] + i_mul78_load_weight08_ma3_cma_u[1];
    assign i_mul78_load_weight08_ma3_cma_x[0] = i_mul78_load_weight08_ma3_cma_w[0];
    assign i_mul78_load_weight08_ma3_cma_y[0] = i_mul78_load_weight08_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_ma3_cma_a0 <= '{default: '0};
            i_mul78_load_weight08_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_ma3_cma_ena0 == 1'b1)
            begin
                i_mul78_load_weight08_ma3_cma_a0[0] <= i_mul78_load_weight08_bs1_merged_bit_select_c;
                i_mul78_load_weight08_ma3_cma_a0[1] <= i_mul78_load_weight08_bs2_merged_bit_select_c;
                i_mul78_load_weight08_ma3_cma_c0[0] <= i_mul78_load_weight08_bs2_merged_bit_select_b;
                i_mul78_load_weight08_ma3_cma_c0[1] <= i_mul78_load_weight08_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_ma3_cma_ena1 == 1'b1)
            begin
                i_mul78_load_weight08_ma3_cma_s[0] <= i_mul78_load_weight08_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul78_load_weight08_ma3_cma_delay ( .xin(i_mul78_load_weight08_ma3_cma_s[0]), .xout(i_mul78_load_weight08_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_load_weight08_ma3_cma_q = $unsigned(i_mul78_load_weight08_ma3_cma_qq[32:0]);

    // i_mul78_load_weight08_sums_align_1(BITSHIFT,84)@4
    assign i_mul78_load_weight08_sums_align_1_qint = { i_mul78_load_weight08_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul78_load_weight08_sums_align_1_q = i_mul78_load_weight08_sums_align_1_qint[50:0];

    // i_mul78_load_weight08_im8_cma(CHAINMULTADD,88)@2 + 2
    assign i_mul78_load_weight08_im8_cma_reset = ~ (resetn);
    assign i_mul78_load_weight08_im8_cma_ena0 = 1'b1;
    assign i_mul78_load_weight08_im8_cma_ena1 = i_mul78_load_weight08_im8_cma_ena0;
    assign i_mul78_load_weight08_im8_cma_p[0] = i_mul78_load_weight08_im8_cma_a0[0] * i_mul78_load_weight08_im8_cma_c0[0];
    assign i_mul78_load_weight08_im8_cma_u[0] = i_mul78_load_weight08_im8_cma_p[0][27:0];
    assign i_mul78_load_weight08_im8_cma_w[0] = i_mul78_load_weight08_im8_cma_u[0];
    assign i_mul78_load_weight08_im8_cma_x[0] = i_mul78_load_weight08_im8_cma_w[0];
    assign i_mul78_load_weight08_im8_cma_y[0] = i_mul78_load_weight08_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_im8_cma_a0 <= '{default: '0};
            i_mul78_load_weight08_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_im8_cma_ena0 == 1'b1)
            begin
                i_mul78_load_weight08_im8_cma_a0[0] <= i_mul78_load_weight08_bs1_merged_bit_select_c;
                i_mul78_load_weight08_im8_cma_c0[0] <= i_mul78_load_weight08_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_im8_cma_ena1 == 1'b1)
            begin
                i_mul78_load_weight08_im8_cma_s[0] <= i_mul78_load_weight08_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul78_load_weight08_im8_cma_delay ( .xin(i_mul78_load_weight08_im8_cma_s[0]), .xout(i_mul78_load_weight08_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_load_weight08_im8_cma_q = $unsigned(i_mul78_load_weight08_im8_cma_qq[27:0]);

    // i_mul78_load_weight08_im0_cma(CHAINMULTADD,87)@2 + 2
    assign i_mul78_load_weight08_im0_cma_reset = ~ (resetn);
    assign i_mul78_load_weight08_im0_cma_ena0 = 1'b1;
    assign i_mul78_load_weight08_im0_cma_ena1 = i_mul78_load_weight08_im0_cma_ena0;
    assign i_mul78_load_weight08_im0_cma_p[0] = i_mul78_load_weight08_im0_cma_a0[0] * i_mul78_load_weight08_im0_cma_c0[0];
    assign i_mul78_load_weight08_im0_cma_u[0] = i_mul78_load_weight08_im0_cma_p[0][35:0];
    assign i_mul78_load_weight08_im0_cma_w[0] = i_mul78_load_weight08_im0_cma_u[0];
    assign i_mul78_load_weight08_im0_cma_x[0] = i_mul78_load_weight08_im0_cma_w[0];
    assign i_mul78_load_weight08_im0_cma_y[0] = i_mul78_load_weight08_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_im0_cma_a0 <= '{default: '0};
            i_mul78_load_weight08_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_im0_cma_ena0 == 1'b1)
            begin
                i_mul78_load_weight08_im0_cma_a0[0] <= i_mul78_load_weight08_bs1_merged_bit_select_b;
                i_mul78_load_weight08_im0_cma_c0[0] <= i_mul78_load_weight08_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul78_load_weight08_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul78_load_weight08_im0_cma_ena1 == 1'b1)
            begin
                i_mul78_load_weight08_im0_cma_s[0] <= i_mul78_load_weight08_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul78_load_weight08_im0_cma_delay ( .xin(i_mul78_load_weight08_im0_cma_s[0]), .xout(i_mul78_load_weight08_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul78_load_weight08_im0_cma_q = $unsigned(i_mul78_load_weight08_im0_cma_qq[35:0]);

    // i_mul78_load_weight08_sums_join_0(BITJOIN,83)@4
    assign i_mul78_load_weight08_sums_join_0_q = {i_mul78_load_weight08_im8_cma_q, i_mul78_load_weight08_im0_cma_q};

    // i_mul78_load_weight08_sums_result_add_0_0(ADD,86)@4
    assign i_mul78_load_weight08_sums_result_add_0_0_a = {1'b0, i_mul78_load_weight08_sums_join_0_q};
    assign i_mul78_load_weight08_sums_result_add_0_0_b = {14'b00000000000000, i_mul78_load_weight08_sums_align_1_q};
    assign i_mul78_load_weight08_sums_result_add_0_0_o = $unsigned(i_mul78_load_weight08_sums_result_add_0_0_a) + $unsigned(i_mul78_load_weight08_sums_result_add_0_0_b);
    assign i_mul78_load_weight08_sums_result_add_0_0_q = i_mul78_load_weight08_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul78_load_weight08_sel_x(BITSELECT,4)@4
    assign bgTrunc_i_mul78_load_weight08_sel_x_in = i_mul78_load_weight08_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul78_load_weight08_sel_x_b = bgTrunc_i_mul78_load_weight08_sel_x_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@4
    assign out_c0_exi7216_0_tpl = GND_q;
    assign out_c0_exi7216_1_tpl = bgTrunc_i_mul78_load_weight08_sel_x_b;
    assign out_c0_exi7216_2_tpl = redist1_i_unnamed_load_weight012_q_3_q;
    assign out_c0_exi7216_3_tpl = i_notcmp82_load_weight013_q;
    assign out_c0_exi7216_4_tpl = i_llvm_fpga_pop_i32_li_07591_pop22_load_weight019_out_data_out;
    assign out_c0_exi7216_5_tpl = i_llvm_fpga_pop_i1_pop23_load_weight021_out_data_out;
    assign out_c0_exi7216_6_tpl = redist4_sync_together59_aunroll_x_in_c0_eni3205_2_tpl_3_outputreg0_q;
    assign out_c0_exi7216_7_tpl = redist5_sync_together59_aunroll_x_in_c0_eni3205_3_tpl_3_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_weight019 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond84_load_weight014(BLACKBOX,44)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond84_load_weight00 thei_llvm_fpga_push_i1_notexitcond84_load_weight014 (
        .in_data_in(i_unnamed_load_weight012_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going83_load_weight02_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_load_weight02(BLACKBOX,39)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going83_load_weight00 thei_llvm_fpga_pipeline_keep_going83_load_weight02 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond84_load_weight014_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going83_load_weight02_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight02_exiting_valid_out = i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going83_load_weight02_exiting_stall_out = i_llvm_fpga_pipeline_keep_going83_load_weight02_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,54)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going83_load_weight02_out_pipeline_valid_out;

endmodule
