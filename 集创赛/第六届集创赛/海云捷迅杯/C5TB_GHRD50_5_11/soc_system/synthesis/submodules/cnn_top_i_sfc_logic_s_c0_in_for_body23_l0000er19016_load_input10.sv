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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_body23_l0000er19016_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_body23_l0000er19016_load_input10 (
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [63:0] out_c0_exi7_2_tpl,
    output wire [0:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [0:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [31:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input120,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [31:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_input16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_input16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_16_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next21_load_input128_sel_x_b;
    wire [31:0] bgTrunc_i_inc_load_input124_sel_x_b;
    wire [0:0] i_first_cleanup_load_input13_sel_x_b;
    wire [0:0] i_last_initeration_load_input110_sel_x_b;
    wire [63:0] i_mptr_bitcast_index3_load_input10_dupName_0_trunc_sel_x_b;
    wire [64:0] i_mptr_bitcast_index3_load_input10_add_x_a;
    wire [64:0] i_mptr_bitcast_index3_load_input10_add_x_b;
    logic [64:0] i_mptr_bitcast_index3_load_input10_add_x_o;
    wire [64:0] i_mptr_bitcast_index3_load_input10_add_x_q;
    wire [3:0] i_mptr_bitcast_index3_load_input10_c_i4_01_x_q;
    wire [59:0] i_mptr_bitcast_index3_load_input10_narrow_x_b;
    wire [63:0] i_mptr_bitcast_index3_load_input10_shift_join_x_q;
    wire [63:0] i_unnamed_load_input119_sel_x_b;
    wire [1:0] c_i2_157_q;
    wire [31:0] c_i32_160_q;
    wire [32:0] c_i33_162_q;
    wire [32:0] c_i33_undef59_q;
    wire [1:0] i_cleanups_shl_load_input15_vt_join_q;
    wire [0:0] i_cleanups_shl_load_input15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_load_input14_q;
    wire [0:0] i_first_cleanup_xor_or_load_input123_q;
    wire [0:0] i_fpga_indvars_iv20_replace_phi_load_input114_s;
    reg [32:0] i_fpga_indvars_iv20_replace_phi_load_input114_q;
    wire [33:0] i_fpga_indvars_iv_next21_load_input128_a;
    wire [33:0] i_fpga_indvars_iv_next21_load_input128_b;
    logic [33:0] i_fpga_indvars_iv_next21_load_input128_o;
    wire [33:0] i_fpga_indvars_iv_next21_load_input128_q;
    wire [32:0] i_inc_load_input124_a;
    wire [32:0] i_inc_load_input124_b;
    logic [32:0] i_inc_load_input124_o;
    wire [32:0] i_inc_load_input124_q;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_host_3s_ddr_in19829_load_input120_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_load_input16_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_load_input115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop29_load_input115_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_feedback_stall_out_28;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_feedback_stall_out_26;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_push29_load_input116_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_push29_load_input116_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_valid_out_28;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_valid_out_26;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_valid_out_24;
    wire [0:0] i_masked_load_input136_q;
    wire [0:0] i_next_cleanups_load_input134_s;
    reg [1:0] i_next_cleanups_load_input134_q;
    wire [1:0] i_next_initerations_load_input18_vt_join_q;
    wire [0:0] i_next_initerations_load_input18_vt_select_0_b;
    wire [0:0] i_notcmp_load_input131_q;
    wire [0:0] i_or_load_input133_q;
    wire [0:0] i_unnamed_load_input117_qi;
    reg [0:0] i_unnamed_load_input117_q;
    wire [0:0] i_unnamed_load_input130_qi;
    reg [0:0] i_unnamed_load_input130_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid116_i_cleanups_shl_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_s;
    reg [1:0] leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid122_i_next_initerations_load_input10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid124_i_next_initerations_load_input10_shift_x_q;
    wire [0:0] rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_s;
    reg [1:0] rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_q;
    wire [0:0] i_exitcond22_load_input126_cmp_nsign_q;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q;
    reg [0:0] redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [31:0] redist2_sync_together83_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [0:0] redist3_sync_together83_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [31:0] redist4_sync_together83_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist5_sync_together83_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,95)@1 + 1
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

    // redist4_sync_together83_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together83_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together83_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // valid_fanout_reg7(REG,102)@1 + 1
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

    // valid_fanout_reg8(REG,103)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp60102_push30_load_input138(BLACKBOX,70)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp60102_push30_load_input10 thei_llvm_fpga_push_i1_notcmp60102_push30_load_input138 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_feedback_stall_out_30),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together83_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together83_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together83_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137(BLACKBOX,63)@2
    // out out_feedback_stall_out_30@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input10 thei_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137 (
        .in_data_in(redist3_sync_together83_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp60102_push30_load_input138_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together83_aunroll_x_in_i_valid_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together83_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist5_sync_together83_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x(BITSELECT,114)@2
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_b = leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid116_i_cleanups_shl_load_input10_shift_x(BITJOIN,115)@2
    assign leftShiftStage0Idx1_uid116_i_cleanups_shl_load_input10_shift_x_q = {leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_load_input10_shift_x_b, GND_q};

    // leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x(MUX,117)@2
    assign leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out or leftShiftStage0Idx1_uid116_i_cleanups_shl_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out;
            1'b1 : leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_q = leftShiftStage0Idx1_uid116_i_cleanups_shl_load_input10_shift_x_q;
            default : leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_load_input15_vt_select_1(BITSELECT,51)@2
    assign i_cleanups_shl_load_input15_vt_select_1_b = leftShiftStage0_uid118_i_cleanups_shl_load_input10_shift_x_q[1:1];

    // i_cleanups_shl_load_input15_vt_join(BITJOIN,50)@2
    assign i_cleanups_shl_load_input15_vt_join_q = {i_cleanups_shl_load_input15_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_load_input14(LOGICAL,54)@2
    assign i_first_cleanup_xor_load_input14_q = i_first_cleanup_load_input13_sel_x_b ^ VCC_q;

    // i_or_load_input133(LOGICAL,83)@2
    assign i_or_load_input133_q = i_notcmp_load_input131_q | i_first_cleanup_xor_load_input14_q;

    // i_next_cleanups_load_input134(MUX,78)@2
    assign i_next_cleanups_load_input134_s = i_or_load_input133_q;
    always @(i_next_cleanups_load_input134_s or i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out or i_cleanups_shl_load_input15_vt_join_q)
    begin
        unique case (i_next_cleanups_load_input134_s)
            1'b0 : i_next_cleanups_load_input134_q = i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out;
            1'b1 : i_next_cleanups_load_input134_q = i_cleanups_shl_load_input15_vt_join_q;
            default : i_next_cleanups_load_input134_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push28_load_input135(BLACKBOX,73)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups_push28_load_input10 thei_llvm_fpga_push_i2_cleanups_push28_load_input135 (
        .in_data_in(i_next_cleanups_load_input134_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_feedback_stall_out_28),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together83_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_157(CONSTANT,44)
    assign c_i2_157_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop28_load_input12(BLACKBOX,65)@2
    // out out_feedback_stall_out_28@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups_pop28_load_input10 thei_llvm_fpga_pop_i2_cleanups_pop28_load_input12 (
        .in_data_in(c_i2_157_q),
        .in_dir(redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_cleanups_push28_load_input135_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together83_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_load_input13_sel_x(BITSELECT,9)@2
    assign i_first_cleanup_load_input13_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop28_load_input12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112(BLACKBOX,60)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i33_unname0000nput138_load_input10 thei_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_notexitcond_load_input132(BLACKBOX,71)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond_load_input10 thei_llvm_fpga_push_i1_notexitcond_load_input132 (
        .in_data_in(i_unnamed_load_input130_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_load_input16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_load_input13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together83_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,98)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid122_i_next_initerations_load_input10_shift_x(BITSELECT,121)@2
    assign rightShiftStage0Idx1Rng1_uid122_i_next_initerations_load_input10_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid124_i_next_initerations_load_input10_shift_x(BITJOIN,123)@2
    assign rightShiftStage0Idx1_uid124_i_next_initerations_load_input10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid122_i_next_initerations_load_input10_shift_x_b};

    // valid_fanout_reg1(REG,96)@1 + 1
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

    // valid_fanout_reg2(REG,97)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push27_load_input19(BLACKBOX,74)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations_push27_load_input10 thei_llvm_fpga_push_i2_initerations_push27_load_input19 (
        .in_data_in(i_next_initerations_load_input18_vt_join_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_feedback_stall_out_27),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop27_load_input17(BLACKBOX,66)@2
    // out out_feedback_stall_out_27@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations_pop27_load_input10 thei_llvm_fpga_pop_i2_initerations_pop27_load_input17 (
        .in_data_in(c_i2_157_q),
        .in_dir(redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i2_initerations_push27_load_input19_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x(MUX,125)@2
    assign rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_data_out or rightShiftStage0Idx1_uid124_i_next_initerations_load_input10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_s)
            1'b0 : rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop27_load_input17_out_data_out;
            1'b1 : rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_q = rightShiftStage0Idx1_uid124_i_next_initerations_load_input10_shift_x_q;
            default : rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_load_input18_vt_select_0(BITSELECT,81)@2
    assign i_next_initerations_load_input18_vt_select_0_b = rightShiftStage0_uid126_i_next_initerations_load_input10_shift_x_q[0:0];

    // i_next_initerations_load_input18_vt_join(BITJOIN,80)@2
    assign i_next_initerations_load_input18_vt_join_q = {GND_q, i_next_initerations_load_input18_vt_select_0_b};

    // i_last_initeration_load_input110_sel_x(BITSELECT,10)@2
    assign i_last_initeration_load_input110_sel_x_b = i_next_initerations_load_input18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_load_input111(BLACKBOX,69)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration_load_input10 thei_llvm_fpga_push_i1_lastiniteration_load_input111 (
        .in_data_in(i_last_initeration_load_input110_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_load_input16_out_initeration_stall_out),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_load_input16(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going_load_input10 thei_llvm_fpga_pipeline_keep_going_load_input16 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_load_input111_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_load_input132_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_load_input16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_162(CONSTANT,46)
    assign c_i33_162_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next21_load_input128(ADD,57)@1
    assign i_fpga_indvars_iv_next21_load_input128_a = {1'b0, i_fpga_indvars_iv20_replace_phi_load_input114_q};
    assign i_fpga_indvars_iv_next21_load_input128_b = {1'b0, c_i33_162_q};
    assign i_fpga_indvars_iv_next21_load_input128_o = $unsigned(i_fpga_indvars_iv_next21_load_input128_a) + $unsigned(i_fpga_indvars_iv_next21_load_input128_b);
    assign i_fpga_indvars_iv_next21_load_input128_q = i_fpga_indvars_iv_next21_load_input128_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next21_load_input128_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next21_load_input128_sel_x_b = i_fpga_indvars_iv_next21_load_input128_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129(BLACKBOX,76)@1
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    cnn_top_i_llvm_fpga_push_i33_fpga_indvar0000_push24_load_input10 thei_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next21_load_input128_sel_x_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_feedback_stall_out_24),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef59(CONSTANT,47)
    assign c_i33_undef59_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113(BLACKBOX,68)@1
    // out out_feedback_stall_out_24@20000000
    cnn_top_i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input10 thei_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113 (
        .in_data_in(c_i33_undef59_q),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_24(i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i33_fpga_indvars_iv20_push24_load_input129_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv20_replace_phi_load_input114(MUX,56)@1
    assign i_fpga_indvars_iv20_replace_phi_load_input114_s = in_c0_eni5_1_tpl;
    always @(i_fpga_indvars_iv20_replace_phi_load_input114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112_out_dest_data_out_16_0)
    begin
        unique case (i_fpga_indvars_iv20_replace_phi_load_input114_s)
            1'b0 : i_fpga_indvars_iv20_replace_phi_load_input114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv20_pop24_load_input113_out_data_out;
            1'b1 : i_fpga_indvars_iv20_replace_phi_load_input114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_load_input138_load_input112_out_dest_data_out_16_0;
            default : i_fpga_indvars_iv20_replace_phi_load_input114_q = 33'b0;
        endcase
    end

    // i_exitcond22_load_input126_cmp_nsign(LOGICAL,128)@1
    assign i_exitcond22_load_input126_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv20_replace_phi_load_input114_q[32:32]));

    // i_llvm_fpga_push_i1_push29_load_input116(BLACKBOX,72)@1
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    cnn_top_i_llvm_fpga_push_i1_push29_load_input10 thei_llvm_fpga_push_i1_push29_load_input116 (
        .in_data_in(i_llvm_fpga_pop_i1_pop29_load_input115_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_pop29_load_input115_out_feedback_stall_out_29),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_push29_load_input116_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_push29_load_input116_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop29_load_input115(BLACKBOX,64)@1
    // out out_feedback_stall_out_29@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop29_load_input10 thei_llvm_fpga_pop_i1_pop29_load_input115 (
        .in_data_in(in_c0_eni5_2_tpl),
        .in_dir(in_c0_eni5_1_tpl),
        .in_feedback_in_29(i_llvm_fpga_push_i1_push29_load_input116_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_push29_load_input116_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop29_load_input115_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_pop29_load_input115_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input130(LOGICAL,87)@1 + 1
    assign i_unnamed_load_input130_qi = i_llvm_fpga_pop_i1_pop29_load_input115_out_data_out & i_exitcond22_load_input126_cmp_nsign_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_load_input130_delay ( .xin(i_unnamed_load_input130_qi), .xout(i_unnamed_load_input130_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_notcmp_load_input131(LOGICAL,82)@2
    assign i_notcmp_load_input131_q = i_unnamed_load_input130_q ^ VCC_q;

    // i_masked_load_input136(LOGICAL,77)@2
    assign i_masked_load_input136_q = i_notcmp_load_input131_q & i_first_cleanup_load_input13_sel_x_b;

    // i_unnamed_load_input117(LOGICAL,84)@1 + 1
    assign i_unnamed_load_input117_qi = i_llvm_fpga_pop_i1_pop29_load_input115_out_data_out ^ VCC_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_load_input117_delay ( .xin(i_unnamed_load_input117_qi), .xout(i_unnamed_load_input117_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_first_cleanup_xor_or_load_input123(LOGICAL,55)@2
    assign i_first_cleanup_xor_or_load_input123_q = i_unnamed_load_input117_q | i_first_cleanup_xor_load_input14_q;

    // valid_fanout_reg4(REG,99)@1 + 1
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

    // valid_fanout_reg6(REG,101)@1 + 1
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

    // c_i32_160(CONSTANT,45)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_load_input124(ADD,58)@2
    assign i_inc_load_input124_a = {1'b0, i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_data_out};
    assign i_inc_load_input124_b = {1'b0, c_i32_160_q};
    assign i_inc_load_input124_o = $unsigned(i_inc_load_input124_a) + $unsigned(i_inc_load_input124_b);
    assign i_inc_load_input124_q = i_inc_load_input124_o[32:0];

    // bgTrunc_i_inc_load_input124_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc_load_input124_sel_x_b = i_inc_load_input124_q[31:0];

    // i_llvm_fpga_push_i32_input_offset_186_push26_load_input125(BLACKBOX,75)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    cnn_top_i_llvm_fpga_push_i32_input_offse0000_push26_load_input10 thei_llvm_fpga_push_i32_input_offset_186_push26_load_input125 (
        .in_data_in(bgTrunc_i_inc_load_input124_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_feedback_stall_out_26),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together83_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together83_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together83_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118(BLACKBOX,67)@2
    // out out_feedback_stall_out_26@20000000
    cnn_top_i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input10 thei_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118 (
        .in_data_in(redist2_sync_together83_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_input_offset_186_push26_load_input125_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input119_sel_x(BITSELECT,21)@2
    assign i_unnamed_load_input119_sel_x_b = $unsigned({{32{i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_data_out[31]}}, i_llvm_fpga_pop_i32_input_offset_186_pop26_load_input118_out_data_out[31:0]});

    // i_mptr_bitcast_index3_load_input10_narrow_x(BITSELECT,15)@2
    assign i_mptr_bitcast_index3_load_input10_narrow_x_b = i_unnamed_load_input119_sel_x_b[59:0];

    // i_mptr_bitcast_index3_load_input10_c_i4_01_x(CONSTANT,14)
    assign i_mptr_bitcast_index3_load_input10_c_i4_01_x_q = $unsigned(4'b0000);

    // i_mptr_bitcast_index3_load_input10_shift_join_x(BITJOIN,16)@2
    assign i_mptr_bitcast_index3_load_input10_shift_join_x_q = {i_mptr_bitcast_index3_load_input10_narrow_x_b, i_mptr_bitcast_index3_load_input10_c_i4_01_x_q};

    // valid_fanout_reg5(REG,100)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_host_3s_ddr_in19829_load_input120(BLACKBOX,61)@2
    cnn_top_i_llvm_fpga_ffwd_dest_p1025s_cla0000in19829_load_input10 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_host_3s_ddr_in19829_load_input120 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_host_3s_ddr_in19829_load_input120_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index3_load_input10_add_x(ADD,13)@2
    assign i_mptr_bitcast_index3_load_input10_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_host_3s_ddr_in19829_load_input120_out_dest_data_out_0_0};
    assign i_mptr_bitcast_index3_load_input10_add_x_b = {1'b0, i_mptr_bitcast_index3_load_input10_shift_join_x_q};
    assign i_mptr_bitcast_index3_load_input10_add_x_o = $unsigned(i_mptr_bitcast_index3_load_input10_add_x_a) + $unsigned(i_mptr_bitcast_index3_load_input10_add_x_b);
    assign i_mptr_bitcast_index3_load_input10_add_x_q = i_mptr_bitcast_index3_load_input10_add_x_o[64:0];

    // i_mptr_bitcast_index3_load_input10_dupName_0_trunc_sel_x(BITSELECT,11)@2
    assign i_mptr_bitcast_index3_load_input10_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index3_load_input10_add_x_q[63:0];

    // redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,22)@2
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist0_i_llvm_fpga_pipeline_keep_going_load_input16_out_data_out_1_q;
    assign out_c0_exi7_2_tpl = i_mptr_bitcast_index3_load_input10_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_3_tpl = i_first_cleanup_xor_or_load_input123_q;
    assign out_c0_exi7_4_tpl = i_masked_load_input136_q;
    assign out_c0_exi7_5_tpl = i_llvm_fpga_pop_i1_notcmp60102_pop30_load_input137_out_data_out;
    assign out_c0_exi7_6_tpl = redist1_sync_together83_aunroll_x_in_c0_eni5_1_tpl_1_q;
    assign out_c0_exi7_7_tpl = redist4_sync_together83_aunroll_x_in_c0_eni5_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input120 = GND_q;

    // ext_sig_sync_out(GPOUT,48)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_input16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_input16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_load_input16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,91)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_load_input16_out_pipeline_valid_out;

endmodule
