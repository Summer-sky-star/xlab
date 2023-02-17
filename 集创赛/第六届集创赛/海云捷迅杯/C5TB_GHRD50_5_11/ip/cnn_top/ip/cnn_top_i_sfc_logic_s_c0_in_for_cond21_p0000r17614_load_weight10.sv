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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond21_p0000r17614_load_weight10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond21_p0000r17614_load_weight10 (
    output wire [0:0] out_c0_exi4_0_tpl,
    output wire [31:0] out_c0_exi4_1_tpl,
    output wire [0:0] out_c0_exi4_2_tpl,
    output wire [0:0] out_c0_exi4_3_tpl,
    output wire [31:0] out_c0_exi4_4_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight119,
    input wire [0:0] in_c0_eni1175_0_tpl,
    input wire [0:0] in_c0_eni1175_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight12_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight12_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next23_load_weight111_sel_x_b;
    wire [31:0] bgTrunc_i_inc40_load_weight114_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_load_weight117_sel_x_b;
    wire [31:0] c_i32_035_q;
    wire [31:0] c_i32_136_q;
    wire [4:0] c_i5_134_q;
    wire [4:0] c_i5_1432_q;
    wire [5:0] i_fpga_indvars_iv_next23_load_weight111_a;
    wire [5:0] i_fpga_indvars_iv_next23_load_weight111_b;
    logic [5:0] i_fpga_indvars_iv_next23_load_weight111_o;
    wire [5:0] i_fpga_indvars_iv_next23_load_weight111_q;
    wire [32:0] i_inc40_load_weight114_a;
    wire [32:0] i_inc40_load_weight114_b;
    logic [32:0] i_inc40_load_weight114_o;
    wire [32:0] i_inc40_load_weight114_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_acl_33_load_weight116_out_dest_data_out_6_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight12_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going54_load_weight12_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_feedback_stall_out_19;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_valid_out_19;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_valid_out_17;
    wire [0:0] i_notcmp53_load_weight19_q;
    wire [32:0] i_unnamed_load_weight117_a;
    wire [32:0] i_unnamed_load_weight117_b;
    logic [32:0] i_unnamed_load_weight117_o;
    wire [32:0] i_unnamed_load_weight117_q;
    wire [0:0] i_weight_offset_180_replace_phi_load_weight15_s;
    reg [31:0] i_weight_offset_180_replace_phi_load_weight15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [0:0] i_exitcond24_load_weight17_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,52)@1 + 1
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

    // valid_fanout_reg3(REG,55)@1 + 1
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

    // valid_fanout_reg4(REG,56)@1 + 1
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

    // c_i32_136(CONSTANT,25)
    assign c_i32_136_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc40_load_weight114(ADD,32)@2
    assign i_inc40_load_weight114_a = {1'b0, i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_data_out};
    assign i_inc40_load_weight114_b = {1'b0, c_i32_136_q};
    assign i_inc40_load_weight114_o = $unsigned(i_inc40_load_weight114_a) + $unsigned(i_inc40_load_weight114_b);
    assign i_inc40_load_weight114_q = i_inc40_load_weight114_o[32:0];

    // bgTrunc_i_inc40_load_weight114_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc40_load_weight114_sel_x_b = i_inc40_load_weight114_q[31:0];

    // i_llvm_fpga_push_i32_tii_081_push18_load_weight115(BLACKBOX,40)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    cnn_top_i_llvm_fpga_push_i32_tii_081_push18_load_weight10 thei_llvm_fpga_push_i32_tii_081_push18_load_weight115 (
        .in_data_in(bgTrunc_i_inc40_load_weight114_sel_x_b),
        .in_exitcond24(redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q <= $unsigned(in_c0_eni1175_1_tpl);
        end
    end

    // c_i32_035(CONSTANT,24)
    assign c_i32_035_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113(BLACKBOX,36)@2
    // out out_feedback_stall_out_18@20000000
    cnn_top_i_llvm_fpga_pop_i32_tii_081_pop18_load_weight10 thei_llvm_fpga_pop_i32_tii_081_pop18_load_weight113 (
        .in_data_in(c_i32_035_q),
        .in_dir(redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_tii_081_push18_load_weight115_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp53_load_weight19(LOGICAL,43)@2
    assign i_notcmp53_load_weight19_q = redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q ^ VCC_q;

    // c_i5_134(CONSTANT,27)
    assign c_i5_134_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next23_load_weight111(ADD,31)@1
    assign i_fpga_indvars_iv_next23_load_weight111_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_data_out};
    assign i_fpga_indvars_iv_next23_load_weight111_b = {1'b0, c_i5_134_q};
    assign i_fpga_indvars_iv_next23_load_weight111_o = $unsigned(i_fpga_indvars_iv_next23_load_weight111_a) + $unsigned(i_fpga_indvars_iv_next23_load_weight111_b);
    assign i_fpga_indvars_iv_next23_load_weight111_q = i_fpga_indvars_iv_next23_load_weight111_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next23_load_weight111_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next23_load_weight111_sel_x_b = i_fpga_indvars_iv_next23_load_weight111_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112(BLACKBOX,42)@1
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    cnn_top_i_llvm_fpga_push_i5_fpga_indvars0000push17_load_weight10 thei_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next23_load_weight111_sel_x_b),
        .in_exitcond24(i_exitcond24_load_weight17_cmp_nsign_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_1432(CONSTANT,28)
    assign c_i5_1432_q = $unsigned(5'b01110);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16(BLACKBOX,38)@1
    // out out_feedback_stall_out_17@20000000
    cnn_top_i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight10 thei_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16 (
        .in_data_in(c_i5_1432_q),
        .in_dir(in_c0_eni1175_1_tpl),
        .in_feedback_in_17(i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i5_fpga_indvars_iv22_push17_load_weight112_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond24_load_weight17_cmp_nsign(LOGICAL,63)@1
    assign i_exitcond24_load_weight17_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv22_pop17_load_weight16_out_data_out[4:4]));

    // redist0_i_exitcond24_load_weight17_cmp_nsign_q_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q <= $unsigned(i_exitcond24_load_weight17_cmp_nsign_q);
        end
    end

    // valid_fanout_reg1(REG,53)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13(BLACKBOX,34)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_unname0000ght132_load_weight10 thei_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,54)@1 + 1
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

    // valid_fanout_reg6(REG,58)@1 + 1
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

    // valid_fanout_reg5(REG,57)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_acl_33_load_weight116(BLACKBOX,33)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_acl_33_load_weight10 thei_llvm_fpga_ffwd_dest_i32_acl_33_load_weight116 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_acl_33_load_weight116_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_weight117(ADD,44)@2
    assign i_unnamed_load_weight117_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_acl_33_load_weight116_out_dest_data_out_6_0};
    assign i_unnamed_load_weight117_b = {1'b0, i_weight_offset_180_replace_phi_load_weight15_q};
    assign i_unnamed_load_weight117_o = $unsigned(i_unnamed_load_weight117_a) + $unsigned(i_unnamed_load_weight117_b);
    assign i_unnamed_load_weight117_q = i_unnamed_load_weight117_o[32:0];

    // bgTrunc_i_unnamed_load_weight117_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_unnamed_load_weight117_sel_x_b = i_unnamed_load_weight117_q[31:0];

    // i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118(BLACKBOX,41)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    cnn_top_i_llvm_fpga_push_i32_weight_offs0000push19_load_weight10 thei_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118 (
        .in_data_in(bgTrunc_i_unnamed_load_weight117_sel_x_b),
        .in_exitcond24(redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14(BLACKBOX,37)@2
    // out out_feedback_stall_out_19@20000000
    cnn_top_i_llvm_fpga_pop_i32_weight_offse0000_pop19_load_weight10 thei_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14 (
        .in_data_in(c_i32_035_q),
        .in_dir(redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_weight_offset_180_push19_load_weight118_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_weight_offset_180_replace_phi_load_weight15(MUX,45)@2
    assign i_weight_offset_180_replace_phi_load_weight15_s = redist1_sync_together50_aunroll_x_in_c0_eni1175_1_tpl_1_q;
    always @(i_weight_offset_180_replace_phi_load_weight15_s or i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_data_out or i_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13_out_dest_data_out_21_0)
    begin
        unique case (i_weight_offset_180_replace_phi_load_weight15_s)
            1'b0 : i_weight_offset_180_replace_phi_load_weight15_q = i_llvm_fpga_pop_i32_weight_offset_180_pop19_load_weight14_out_data_out;
            1'b1 : i_weight_offset_180_replace_phi_load_weight15_q = i_llvm_fpga_ffwd_dest_i32_unnamed_load_weight132_load_weight13_out_dest_data_out_21_0;
            default : i_weight_offset_180_replace_phi_load_weight15_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,6)@2
    assign out_c0_exi4_0_tpl = GND_q;
    assign out_c0_exi4_1_tpl = i_weight_offset_180_replace_phi_load_weight15_q;
    assign out_c0_exi4_2_tpl = redist0_i_exitcond24_load_weight17_cmp_nsign_q_1_q;
    assign out_c0_exi4_3_tpl = i_notcmp53_load_weight19_q;
    assign out_c0_exi4_4_tpl = i_llvm_fpga_pop_i32_tii_081_pop18_load_weight113_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_weight119 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond55_load_weight110(BLACKBOX,39)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond55_load_weight10 thei_llvm_fpga_push_i1_notexitcond55_load_weight110 (
        .in_data_in(i_exitcond24_load_weight17_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going54_load_weight12_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going54_load_weight12(BLACKBOX,35)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going54_load_weight10 thei_llvm_fpga_pipeline_keep_going54_load_weight12 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond55_load_weight110_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going54_load_weight12_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going54_load_weight12_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,29)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight12_exiting_valid_out = i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going54_load_weight12_exiting_stall_out = i_llvm_fpga_pipeline_keep_going54_load_weight12_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,48)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going54_load_weight12_out_pipeline_valid_out;

endmodule
