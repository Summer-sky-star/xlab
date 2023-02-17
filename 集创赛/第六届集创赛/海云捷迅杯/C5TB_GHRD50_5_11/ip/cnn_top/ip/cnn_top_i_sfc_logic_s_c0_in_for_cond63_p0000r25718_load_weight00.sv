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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond63_p0000r25718_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond63_p0000r25718_load_weight00 (
    output wire [0:0] out_c0_exi22_0_tpl,
    output wire [0:0] out_c0_exi22_1_tpl,
    output wire [0:0] out_c0_exi22_2_tpl,
    output wire [0:0] out_c0_exi22_3_tpl,
    output wire [31:0] out_c0_exi22_4_tpl,
    output wire [0:0] out_c0_exi22_5_tpl,
    output wire [31:0] out_c0_exi22_6_tpl,
    output wire [0:0] out_c0_exi22_7_tpl,
    output wire [31:0] out_c0_exi22_8_tpl,
    output wire [0:0] out_c0_exi22_9_tpl,
    output wire [31:0] out_c0_exi22_10_tpl,
    output wire [0:0] out_c0_exi22_11_tpl,
    output wire [31:0] out_c0_exi22_12_tpl,
    output wire [0:0] out_c0_exi22_13_tpl,
    output wire [31:0] out_c0_exi22_14_tpl,
    output wire [0:0] out_c0_exi22_15_tpl,
    output wire [0:0] out_c0_exi22_16_tpl,
    output wire [31:0] out_c0_exi22_17_tpl,
    output wire [31:0] out_c0_exi22_18_tpl,
    output wire [0:0] out_c0_exi22_19_tpl,
    output wire [31:0] out_c0_exi22_20_tpl,
    output wire [0:0] out_c0_exi22_21_tpl,
    output wire [0:0] out_c0_exi22_22_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight019,
    input wire [0:0] in_c0_eni14_0_tpl,
    input wire [0:0] in_c0_eni14_1_tpl,
    input wire [0:0] in_c0_eni14_2_tpl,
    input wire [31:0] in_c0_eni14_3_tpl,
    input wire [0:0] in_c0_eni14_4_tpl,
    input wire [31:0] in_c0_eni14_5_tpl,
    input wire [0:0] in_c0_eni14_6_tpl,
    input wire [31:0] in_c0_eni14_7_tpl,
    input wire [0:0] in_c0_eni14_8_tpl,
    input wire [31:0] in_c0_eni14_9_tpl,
    input wire [0:0] in_c0_eni14_10_tpl,
    input wire [31:0] in_c0_eni14_11_tpl,
    input wire [0:0] in_c0_eni14_12_tpl,
    input wire [31:0] in_c0_eni14_13_tpl,
    input wire [0:0] in_c0_eni14_14_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_14_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next7_load_weight013_sel_x_b;
    wire [32:0] c_i33_150_q;
    wire [32:0] c_i33_undef48_q;
    wire [0:0] i_fpga_indvars_iv6_replace_phi_load_weight05_s;
    reg [32:0] i_fpga_indvars_iv6_replace_phi_load_weight05_q;
    wire [33:0] i_fpga_indvars_iv_next7_load_weight013_a;
    wire [33:0] i_fpga_indvars_iv_next7_load_weight013_b;
    logic [33:0] i_fpga_indvars_iv_next7_load_weight013_o;
    wire [33:0] i_fpga_indvars_iv_next7_load_weight013_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_load_weight02_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_pop39_load_weight017_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop39_load_weight017_out_feedback_stall_out_39;
    wire [0:0] i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop42_load_weight08_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_feedback_stall_out_43;
    wire [31:0] i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_feedback_stall_out_38;
    wire [31:0] i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_feedback_stall_out_40;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_feedback_stall_out_37;
    wire [0:0] i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_valid_out_39;
    wire [0:0] i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_valid_out_43;
    wire [31:0] i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_valid_out_38;
    wire [31:0] i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_valid_out_40;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_valid_out_37;
    wire [0:0] i_notcmp74_load_weight011_q;
    wire [0:0] i_unnamed_load_weight09_q;
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
    wire [0:0] i_exitcond8_load_weight06_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_load_weight09_q_1_q;
    reg [0:0] redist1_i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out_1_q;
    reg [0:0] redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q;
    reg [0:0] redist3_sync_together74_aunroll_x_in_c0_eni14_2_tpl_1_q;
    reg [31:0] redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1_q;
    reg [0:0] redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1_q;
    reg [31:0] redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1_q;
    reg [0:0] redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1_q;
    reg [31:0] redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1_q;
    reg [0:0] redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1_q;
    reg [31:0] redist10_sync_together74_aunroll_x_in_c0_eni14_9_tpl_1_q;
    reg [0:0] redist11_sync_together74_aunroll_x_in_c0_eni14_10_tpl_1_q;
    reg [31:0] redist12_sync_together74_aunroll_x_in_c0_eni14_11_tpl_1_q;
    reg [0:0] redist13_sync_together74_aunroll_x_in_c0_eni14_12_tpl_1_q;
    reg [31:0] redist14_sync_together74_aunroll_x_in_c0_eni14_13_tpl_1_q;
    reg [0:0] redist15_sync_together74_aunroll_x_in_c0_eni14_14_tpl_1_q;


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

    // redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1_q <= $unsigned(in_c0_eni14_6_tpl);
        end
    end

    // redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1_q <= $unsigned(in_c0_eni14_4_tpl);
        end
    end

    // redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1_q <= $unsigned(in_c0_eni14_3_tpl);
        end
    end

    // redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1_q <= $unsigned(in_c0_eni14_8_tpl);
        end
    end

    // redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1_q <= $unsigned(in_c0_eni14_7_tpl);
        end
    end

    // redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1_q <= $unsigned(in_c0_eni14_5_tpl);
        end
    end

    // redist3_sync_together74_aunroll_x_in_c0_eni14_2_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together74_aunroll_x_in_c0_eni14_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together74_aunroll_x_in_c0_eni14_2_tpl_1_q <= $unsigned(in_c0_eni14_2_tpl);
        end
    end

    // redist15_sync_together74_aunroll_x_in_c0_eni14_14_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together74_aunroll_x_in_c0_eni14_14_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together74_aunroll_x_in_c0_eni14_14_tpl_1_q <= $unsigned(in_c0_eni14_14_tpl);
        end
    end

    // redist14_sync_together74_aunroll_x_in_c0_eni14_13_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together74_aunroll_x_in_c0_eni14_13_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together74_aunroll_x_in_c0_eni14_13_tpl_1_q <= $unsigned(in_c0_eni14_13_tpl);
        end
    end

    // redist13_sync_together74_aunroll_x_in_c0_eni14_12_tpl_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together74_aunroll_x_in_c0_eni14_12_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together74_aunroll_x_in_c0_eni14_12_tpl_1_q <= $unsigned(in_c0_eni14_12_tpl);
        end
    end

    // redist12_sync_together74_aunroll_x_in_c0_eni14_11_tpl_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together74_aunroll_x_in_c0_eni14_11_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together74_aunroll_x_in_c0_eni14_11_tpl_1_q <= $unsigned(in_c0_eni14_11_tpl);
        end
    end

    // redist11_sync_together74_aunroll_x_in_c0_eni14_10_tpl_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together74_aunroll_x_in_c0_eni14_10_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together74_aunroll_x_in_c0_eni14_10_tpl_1_q <= $unsigned(in_c0_eni14_10_tpl);
        end
    end

    // redist10_sync_together74_aunroll_x_in_c0_eni14_9_tpl_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together74_aunroll_x_in_c0_eni14_9_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together74_aunroll_x_in_c0_eni14_9_tpl_1_q <= $unsigned(in_c0_eni14_9_tpl);
        end
    end

    // valid_fanout_reg11(REG,72)@1 + 1
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

    // valid_fanout_reg12(REG,73)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026(BLACKBOX,45)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp78105_push44_load_weight00 thei_llvm_fpga_push_i1_notcmp78105_push44_load_weight026 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_feedback_stall_out_44),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q <= $unsigned(in_c0_eni14_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025(BLACKBOX,37)@2
    // out out_feedback_stall_out_44@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight00 thei_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025 (
        .in_data_in(redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_notcmp78105_push44_load_weight026_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

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

    // i_llvm_fpga_push_i32_add79103_push43_load_weight024(BLACKBOX,50)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    cnn_top_i_llvm_fpga_push_i32_add79103_push43_load_weight00 thei_llvm_fpga_push_i32_add79103_push43_load_weight024 (
        .in_data_in(i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_feedback_stall_out_43),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add79103_pop43_load_weight023(BLACKBOX,41)@2
    // out out_feedback_stall_out_43@20000000
    cnn_top_i_llvm_fpga_pop_i32_add79103_pop43_load_weight00 thei_llvm_fpga_pop_i32_add79103_pop43_load_weight023 (
        .in_data_in(redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_add79103_push43_load_weight024_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_feedback_stall_out_43),
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

    // i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022(BLACKBOX,46)@2
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp82101_push41_load_weight00 thei_llvm_fpga_push_i1_notcmp82101_push41_load_weight022 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_data_out),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_feedback_stall_out_41),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021(BLACKBOX,38)@2
    // out out_feedback_stall_out_41@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight00 thei_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021 (
        .in_data_in(redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_notcmp82101_push41_load_weight022_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_feedback_stall_out_41),
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

    // i_llvm_fpga_push_i32_mul7898_push40_load_weight020(BLACKBOX,52)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    cnn_top_i_llvm_fpga_push_i32_mul7898_push40_load_weight00 thei_llvm_fpga_push_i32_mul7898_push40_load_weight020 (
        .in_data_in(i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_feedback_stall_out_40),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019(BLACKBOX,43)@2
    // out out_feedback_stall_out_40@20000000
    cnn_top_i_llvm_fpga_pop_i32_mul7898_pop40_load_weight00 thei_llvm_fpga_pop_i32_mul7898_pop40_load_weight019 (
        .in_data_in(redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_mul7898_push40_load_weight020_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_feedback_stall_out_40),
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

    // i_llvm_fpga_push_i1_push39_load_weight018(BLACKBOX,48)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    cnn_top_i_llvm_fpga_push_i1_push39_load_weight00 thei_llvm_fpga_push_i1_push39_load_weight018 (
        .in_data_in(i_llvm_fpga_pop_i1_pop39_load_weight017_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i1_pop39_load_weight017_out_feedback_stall_out_39),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop39_load_weight017(BLACKBOX,39)@2
    // out out_feedback_stall_out_39@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop39_load_weight00 thei_llvm_fpga_pop_i1_pop39_load_weight017 (
        .in_data_in(redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i1_push39_load_weight018_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop39_load_weight017_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i1_pop39_load_weight017_out_feedback_stall_out_39),
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

    // i_llvm_fpga_push_i32_li_07593_push38_load_weight016(BLACKBOX,51)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    cnn_top_i_llvm_fpga_push_i32_li_07593_push38_load_weight00 thei_llvm_fpga_push_i32_li_07593_push38_load_weight016 (
        .in_data_in(i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_data_out),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_feedback_stall_out_38),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(redist0_i_unnamed_load_weight09_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015(BLACKBOX,42)@2
    // out out_feedback_stall_out_38@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_07593_pop38_load_weight00 thei_llvm_fpga_pop_i32_li_07593_pop38_load_weight015 (
        .in_data_in(redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1_q),
        .in_dir(redist2_sync_together74_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i32_li_07593_push38_load_weight016_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp74_load_weight011(LOGICAL,54)@2
    assign i_notcmp74_load_weight011_q = redist0_i_unnamed_load_weight09_q_1_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03(BLACKBOX,35)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000ght046_load_weight00 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03_out_dest_data_out_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_150(CONSTANT,29)
    assign c_i33_150_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next7_load_weight013(ADD,34)@1
    assign i_fpga_indvars_iv_next7_load_weight013_a = {1'b0, i_fpga_indvars_iv6_replace_phi_load_weight05_q};
    assign i_fpga_indvars_iv_next7_load_weight013_b = {1'b0, c_i33_150_q};
    assign i_fpga_indvars_iv_next7_load_weight013_o = $unsigned(i_fpga_indvars_iv_next7_load_weight013_a) + $unsigned(i_fpga_indvars_iv_next7_load_weight013_b);
    assign i_fpga_indvars_iv_next7_load_weight013_q = i_fpga_indvars_iv_next7_load_weight013_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next7_load_weight013_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next7_load_weight013_sel_x_b = i_fpga_indvars_iv_next7_load_weight013_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014(BLACKBOX,53)@1
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000push37_load_weight00 thei_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next7_load_weight013_sel_x_b),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_feedback_stall_out_37),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(i_unnamed_load_weight09_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef48(CONSTANT,30)
    assign c_i33_undef48_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04(BLACKBOX,44)@1
    // out out_feedback_stall_out_37@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight00 thei_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04 (
        .in_data_in(c_i33_undef48_q),
        .in_dir(in_c0_eni14_1_tpl),
        .in_feedback_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i33_fpga_indvars_iv6_push37_load_weight014_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv6_replace_phi_load_weight05(MUX,33)@1
    assign i_fpga_indvars_iv6_replace_phi_load_weight05_s = in_c0_eni14_1_tpl;
    always @(i_fpga_indvars_iv6_replace_phi_load_weight05_s or i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03_out_dest_data_out_14_0)
    begin
        unique case (i_fpga_indvars_iv6_replace_phi_load_weight05_s)
            1'b0 : i_fpga_indvars_iv6_replace_phi_load_weight05_q = i_llvm_fpga_pop_i33_fpga_indvars_iv6_pop37_load_weight04_out_data_out;
            1'b1 : i_fpga_indvars_iv6_replace_phi_load_weight05_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_weight046_load_weight03_out_dest_data_out_14_0;
            default : i_fpga_indvars_iv6_replace_phi_load_weight05_q = 33'b0;
        endcase
    end

    // i_exitcond8_load_weight06_cmp_nsign(LOGICAL,76)@1
    assign i_exitcond8_load_weight06_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv6_replace_phi_load_weight05_q[32:32]));

    // i_llvm_fpga_push_i1_push42_load_weight010(BLACKBOX,49)@1
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    cnn_top_i_llvm_fpga_push_i1_push42_load_weight00 thei_llvm_fpga_push_i1_push42_load_weight010 (
        .in_data_in(i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_pop42_load_weight08_out_feedback_stall_out_42),
        .in_stall_in(GND_q),
        .in_unnamed_load_weight057(i_unnamed_load_weight09_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop42_load_weight08(BLACKBOX,40)@1
    // out out_feedback_stall_out_42@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop42_load_weight00 thei_llvm_fpga_pop_i1_pop42_load_weight08 (
        .in_data_in(in_c0_eni14_2_tpl),
        .in_dir(in_c0_eni14_1_tpl),
        .in_feedback_in_42(i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_push42_load_weight010_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_pop42_load_weight08_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_weight09(LOGICAL,55)@1
    assign i_unnamed_load_weight09_q = i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out & i_exitcond8_load_weight06_cmp_nsign_q;

    // redist0_i_unnamed_load_weight09_q_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_load_weight09_q_1_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_load_weight09_q_1_q <= $unsigned(i_unnamed_load_weight09_q);
        end
    end

    // redist1_i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,4)@2
    assign out_c0_exi22_0_tpl = GND_q;
    assign out_c0_exi22_1_tpl = redist1_i_llvm_fpga_pop_i1_pop42_load_weight08_out_data_out_1_q;
    assign out_c0_exi22_2_tpl = redist0_i_unnamed_load_weight09_q_1_q;
    assign out_c0_exi22_3_tpl = i_notcmp74_load_weight011_q;
    assign out_c0_exi22_4_tpl = i_llvm_fpga_pop_i32_li_07593_pop38_load_weight015_out_data_out;
    assign out_c0_exi22_5_tpl = i_llvm_fpga_pop_i1_pop39_load_weight017_out_data_out;
    assign out_c0_exi22_6_tpl = i_llvm_fpga_pop_i32_mul7898_pop40_load_weight019_out_data_out;
    assign out_c0_exi22_7_tpl = i_llvm_fpga_pop_i1_notcmp82101_pop41_load_weight021_out_data_out;
    assign out_c0_exi22_8_tpl = i_llvm_fpga_pop_i32_add79103_pop43_load_weight023_out_data_out;
    assign out_c0_exi22_9_tpl = i_llvm_fpga_pop_i1_notcmp78105_pop44_load_weight025_out_data_out;
    assign out_c0_exi22_10_tpl = redist10_sync_together74_aunroll_x_in_c0_eni14_9_tpl_1_q;
    assign out_c0_exi22_11_tpl = redist11_sync_together74_aunroll_x_in_c0_eni14_10_tpl_1_q;
    assign out_c0_exi22_12_tpl = redist12_sync_together74_aunroll_x_in_c0_eni14_11_tpl_1_q;
    assign out_c0_exi22_13_tpl = redist13_sync_together74_aunroll_x_in_c0_eni14_12_tpl_1_q;
    assign out_c0_exi22_14_tpl = redist14_sync_together74_aunroll_x_in_c0_eni14_13_tpl_1_q;
    assign out_c0_exi22_15_tpl = redist15_sync_together74_aunroll_x_in_c0_eni14_14_tpl_1_q;
    assign out_c0_exi22_16_tpl = redist3_sync_together74_aunroll_x_in_c0_eni14_2_tpl_1_q;
    assign out_c0_exi22_17_tpl = redist6_sync_together74_aunroll_x_in_c0_eni14_5_tpl_1_q;
    assign out_c0_exi22_18_tpl = redist8_sync_together74_aunroll_x_in_c0_eni14_7_tpl_1_q;
    assign out_c0_exi22_19_tpl = redist9_sync_together74_aunroll_x_in_c0_eni14_8_tpl_1_q;
    assign out_c0_exi22_20_tpl = redist4_sync_together74_aunroll_x_in_c0_eni14_3_tpl_1_q;
    assign out_c0_exi22_21_tpl = redist5_sync_together74_aunroll_x_in_c0_eni14_4_tpl_1_q;
    assign out_c0_exi22_22_tpl = redist7_sync_together74_aunroll_x_in_c0_eni14_6_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_weight019 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond76_load_weight012(BLACKBOX,47)@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond76_load_weight00 thei_llvm_fpga_push_i1_notexitcond76_load_weight012 (
        .in_data_in(i_unnamed_load_weight09_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going75_load_weight02_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_load_weight02(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going75_load_weight00 thei_llvm_fpga_pipeline_keep_going75_load_weight02 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond76_load_weight012_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going75_load_weight02_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,31)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_valid_out = i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going75_load_weight02_exiting_stall_out = i_llvm_fpga_pipeline_keep_going75_load_weight02_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,58)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going75_load_weight02_out_pipeline_valid_out;

endmodule
