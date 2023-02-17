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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond58_p0000er21815_load_input00
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond58_p0000er21815_load_input00 (
    output wire [0:0] out_c0_exi7228_0_tpl,
    output wire [0:0] out_c0_exi7228_1_tpl,
    output wire [0:0] out_c0_exi7228_2_tpl,
    output wire [31:0] out_c0_exi7228_3_tpl,
    output wire [31:0] out_c0_exi7228_4_tpl,
    output wire [0:0] out_c0_exi7228_5_tpl,
    output wire [31:0] out_c0_exi7228_6_tpl,
    output wire [0:0] out_c0_exi7228_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input020,
    input wire [0:0] in_c0_eni3217_0_tpl,
    input wire [0:0] in_c0_eni3217_1_tpl,
    input wire [31:0] in_c0_eni3217_2_tpl,
    input wire [0:0] in_c0_eni3217_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input02_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input02_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_15_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next14_load_input012_sel_x_b;
    wire [31:0] bgTrunc_i_inc99_load_input015_sel_x_b;
    wire [31:0] c_i32_038_q;
    wire [31:0] c_i32_139_q;
    wire [32:0] c_i33_137_q;
    wire [32:0] c_i33_undef35_q;
    wire [0:0] i_fpga_indvars_iv13_replace_phi_load_input05_s;
    reg [32:0] i_fpga_indvars_iv13_replace_phi_load_input05_q;
    wire [33:0] i_fpga_indvars_iv_next14_load_input012_a;
    wire [33:0] i_fpga_indvars_iv_next14_load_input012_b;
    logic [33:0] i_fpga_indvars_iv_next14_load_input012_o;
    wire [33:0] i_fpga_indvars_iv_next14_load_input012_q;
    wire [32:0] i_inc99_load_input015_a;
    wire [32:0] i_inc99_load_input015_b;
    logic [32:0] i_inc99_load_input015_o;
    wire [32:0] i_inc99_load_input015_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input044_load_input08_out_dest_data_out_20_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going90_load_input02_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_load_input019_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop23_load_input019_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_feedback_stall_out_22;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_valid_out_13;
    wire [0:0] i_llvm_fpga_push_i1_push23_load_input020_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_push23_load_input020_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_valid_out_22;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_valid_out_20;
    wire [0:0] i_notcmp89_load_input010_q;
    wire [0:0] i_unnamed_load_input09_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond15_load_input06_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_load_input09_q_1_q;
    reg [0:0] redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q;
    reg [31:0] redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1_q;
    reg [0:0] redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,53)@1 + 1
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

    // redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1_q <= $unsigned(in_c0_eni3217_3_tpl);
        end
    end

    // redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1_q <= $unsigned(in_c0_eni3217_2_tpl);
        end
    end

    // valid_fanout_reg5(REG,58)@1 + 1
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

    // valid_fanout_reg6(REG,59)@1 + 1
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

    // i_llvm_fpga_push_i1_push23_load_input020(BLACKBOX,41)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    cnn_top_i_llvm_fpga_push_i1_push23_load_input00 thei_llvm_fpga_push_i1_push23_load_input020 (
        .in_data_in(i_llvm_fpga_pop_i1_pop23_load_input019_out_data_out),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_pop23_load_input019_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_unnamed_load_input061(redist0_i_unnamed_load_input09_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_push23_load_input020_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_push23_load_input020_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q <= $unsigned(in_c0_eni3217_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop23_load_input019(BLACKBOX,36)@2
    // out out_feedback_stall_out_23@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop23_load_input00 thei_llvm_fpga_pop_i1_pop23_load_input019 (
        .in_data_in(redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_push23_load_input020_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_push23_load_input020_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop23_load_input019_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_pop23_load_input019_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,56)@1 + 1
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

    // valid_fanout_reg4(REG,57)@1 + 1
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

    // i_llvm_fpga_push_i32_li_07398_push22_load_input018(BLACKBOX,43)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    cnn_top_i_llvm_fpga_push_i32_li_07398_push22_load_input00 thei_llvm_fpga_push_i32_li_07398_push22_load_input018 (
        .in_data_in(i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_unnamed_load_input061(redist0_i_unnamed_load_input09_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_07398_pop22_load_input017(BLACKBOX,38)@2
    // out out_feedback_stall_out_22@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_07398_pop22_load_input00 thei_llvm_fpga_pop_i32_li_07398_pop22_load_input017 (
        .in_data_in(redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_li_07398_push22_load_input018_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,54)@1 + 1
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

    // valid_fanout_reg2(REG,55)@1 + 1
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

    // c_i32_139(CONSTANT,25)
    assign c_i32_139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc99_load_input015(ADD,32)@2
    assign i_inc99_load_input015_a = {1'b0, i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_data_out};
    assign i_inc99_load_input015_b = {1'b0, c_i32_139_q};
    assign i_inc99_load_input015_o = $unsigned(i_inc99_load_input015_a) + $unsigned(i_inc99_load_input015_b);
    assign i_inc99_load_input015_q = i_inc99_load_input015_o[32:0];

    // bgTrunc_i_inc99_load_input015_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc99_load_input015_sel_x_b = i_inc99_load_input015_q[31:0];

    // i_llvm_fpga_push_i32_kh_071_push21_load_input016(BLACKBOX,42)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    cnn_top_i_llvm_fpga_push_i32_kh_071_push21_load_input00 thei_llvm_fpga_push_i32_kh_071_push21_load_input016 (
        .in_data_in(bgTrunc_i_inc99_load_input015_sel_x_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_unnamed_load_input061(redist0_i_unnamed_load_input09_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_038(CONSTANT,24)
    assign c_i32_038_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_kh_071_pop21_load_input014(BLACKBOX,37)@2
    // out out_feedback_stall_out_21@20000000
    cnn_top_i_llvm_fpga_pop_i32_kh_071_pop21_load_input00 thei_llvm_fpga_pop_i32_kh_071_pop21_load_input014 (
        .in_data_in(c_i32_038_q),
        .in_dir(redist1_sync_together55_aunroll_x_in_c0_eni3217_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_kh_071_push21_load_input016_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp89_load_input010(LOGICAL,45)@2
    assign i_notcmp89_load_input010_q = redist0_i_unnamed_load_input09_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03(BLACKBOX,34)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000nput043_load_input00 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_137(CONSTANT,26)
    assign c_i33_137_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next14_load_input012(ADD,31)@1
    assign i_fpga_indvars_iv_next14_load_input012_a = {1'b0, i_fpga_indvars_iv13_replace_phi_load_input05_q};
    assign i_fpga_indvars_iv_next14_load_input012_b = {1'b0, c_i33_137_q};
    assign i_fpga_indvars_iv_next14_load_input012_o = $unsigned(i_fpga_indvars_iv_next14_load_input012_a) + $unsigned(i_fpga_indvars_iv_next14_load_input012_b);
    assign i_fpga_indvars_iv_next14_load_input012_q = i_fpga_indvars_iv_next14_load_input012_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next14_load_input012_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next14_load_input012_sel_x_b = i_fpga_indvars_iv_next14_load_input012_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013(BLACKBOX,44)@1
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000_push20_load_input00 thei_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next14_load_input012_sel_x_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_feedback_stall_out_20),
        .in_stall_in(GND_q),
        .in_unnamed_load_input061(i_unnamed_load_input09_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef35(CONSTANT,27)
    assign c_i33_undef35_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04(BLACKBOX,39)@1
    // out out_feedback_stall_out_20@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input00 thei_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04 (
        .in_data_in(c_i33_undef35_q),
        .in_dir(in_c0_eni3217_1_tpl),
        .in_feedback_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i33_fpga_indvars_iv13_push20_load_input013_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv13_replace_phi_load_input05(MUX,30)@1
    assign i_fpga_indvars_iv13_replace_phi_load_input05_s = in_c0_eni3217_1_tpl;
    always @(i_fpga_indvars_iv13_replace_phi_load_input05_s or i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03_out_dest_data_out_15_0)
    begin
        unique case (i_fpga_indvars_iv13_replace_phi_load_input05_s)
            1'b0 : i_fpga_indvars_iv13_replace_phi_load_input05_q = i_llvm_fpga_pop_i33_fpga_indvars_iv13_pop20_load_input04_out_data_out;
            1'b1 : i_fpga_indvars_iv13_replace_phi_load_input05_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_input043_load_input03_out_dest_data_out_15_0;
            default : i_fpga_indvars_iv13_replace_phi_load_input05_q = 33'b0;
        endcase
    end

    // i_exitcond15_load_input06_cmp_nsign(LOGICAL,63)@1
    assign i_exitcond15_load_input06_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv13_replace_phi_load_input05_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input044_load_input08(BLACKBOX,33)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput044_load_input00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input044_load_input08 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input044_load_input08_out_dest_data_out_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input09(LOGICAL,46)@1
    assign i_unnamed_load_input09_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input044_load_input08_out_dest_data_out_20_0 & i_exitcond15_load_input06_cmp_nsign_q;

    // redist0_i_unnamed_load_input09_q_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_input09_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_input09_q_1_q <= $unsigned(i_unnamed_load_input09_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi7228_0_tpl = GND_q;
    assign out_c0_exi7228_1_tpl = redist0_i_unnamed_load_input09_q_1_q;
    assign out_c0_exi7228_2_tpl = i_notcmp89_load_input010_q;
    assign out_c0_exi7228_3_tpl = i_llvm_fpga_pop_i32_kh_071_pop21_load_input014_out_data_out;
    assign out_c0_exi7228_4_tpl = i_llvm_fpga_pop_i32_li_07398_pop22_load_input017_out_data_out;
    assign out_c0_exi7228_5_tpl = i_llvm_fpga_pop_i1_pop23_load_input019_out_data_out;
    assign out_c0_exi7228_6_tpl = redist2_sync_together55_aunroll_x_in_c0_eni3217_2_tpl_1_q;
    assign out_c0_exi7228_7_tpl = redist3_sync_together55_aunroll_x_in_c0_eni3217_3_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input020 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond91_load_input011(BLACKBOX,40)@1
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond91_load_input00 thei_llvm_fpga_push_i1_notexitcond91_load_input011 (
        .in_data_in(i_unnamed_load_input09_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pipeline_keep_going90_load_input02_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going90_load_input02(BLACKBOX,35)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going90_load_input00 thei_llvm_fpga_pipeline_keep_going90_load_input02 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_out_13),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond91_load_input011_out_feedback_valid_out_13),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going90_load_input02_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going90_load_input02_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,28)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input02_exiting_valid_out = i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going90_load_input02_exiting_stall_out = i_llvm_fpga_pipeline_keep_going90_load_input02_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,49)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going90_load_input02_out_pipeline_valid_out;

endmodule
