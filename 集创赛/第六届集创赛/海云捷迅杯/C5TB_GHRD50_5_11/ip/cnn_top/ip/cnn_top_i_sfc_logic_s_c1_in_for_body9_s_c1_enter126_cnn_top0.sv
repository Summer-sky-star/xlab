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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c1_in_for_body9_s_c1_enter126_cnn_top0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c1_in_for_body9_s_c1_enter126_cnn_top0 (
    output wire [31:0] out_intel_reserved_ffwd_44_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cnn_top1,
    output wire [0:0] out_unnamed_cnn_top83_0_tpl,
    input wire [0:0] in_c1_eni6125_0_tpl,
    input wire [0:0] in_c1_eni6125_1_tpl,
    input wire [0:0] in_c1_eni6125_2_tpl,
    input wire [31:0] in_c1_eni6125_3_tpl,
    input wire [0:0] in_c1_eni6125_4_tpl,
    input wire [0:0] in_c1_eni6125_5_tpl,
    input wire [0:0] in_c1_eni6125_6_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_43_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_float_undef13_q;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top81_cnn_top8_out_intel_reserved_ffwd_43_0;
    wire [31:0] i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top82_cnn_top9_out_intel_reserved_ffwd_44_0;
    wire [31:0] i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_valid_out_29;
    wire [0:0] i_spec_select95_cnn_top3_s;
    reg [31:0] i_spec_select95_cnn_top3_q;
    wire [0:0] i_unnamed_cnn_top6_s;
    reg [31:0] i_unnamed_cnn_top6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    reg [0:0] redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1_q;
    reg [0:0] redist1_sync_together18_aunroll_x_in_c1_eni6125_2_tpl_1_q;
    reg [31:0] redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q;
    reg [0:0] redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1_q;
    reg [0:0] redist4_sync_together18_aunroll_x_in_c1_eni6125_5_tpl_1_q;
    reg [0:0] redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // valid_fanout_reg6(REG,30)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,37)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q <= $unsigned(in_c1_eni6125_3_tpl);
        end
    end

    // valid_fanout_reg3(REG,27)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg4(REG,28)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1_q <= $unsigned(in_c1_eni6125_4_tpl);
        end
    end

    // i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7(BLACKBOX,19)@79
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    cnn_top_i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_0 thei_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7 (
        .in_c1_ene4130(redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1_q),
        .in_data_in(i_unnamed_cnn_top6_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_feedback_stall_out_29),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1(DELAY,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1_q <= $unsigned(in_c1_eni6125_1_tpl);
        end
    end

    // c_float_undef13(FLOATCONSTANT,10)
    assign c_float_undef13_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5(BLACKBOX,17)@79
    // out out_feedback_stall_out_29@20000000
    cnn_top_i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_0 thei_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5 (
        .in_data_in(c_float_undef13_q),
        .in_dir(redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_f32_scale_temp_sroa_4_0_push29_cnn_top7_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together18_aunroll_x_in_c1_eni6125_5_tpl_1(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together18_aunroll_x_in_c1_eni6125_5_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together18_aunroll_x_in_c1_eni6125_5_tpl_1_q <= $unsigned(in_c1_eni6125_5_tpl);
        end
    end

    // i_unnamed_cnn_top6(MUX,21)@79
    assign i_unnamed_cnn_top6_s = redist4_sync_together18_aunroll_x_in_c1_eni6125_5_tpl_1_q;
    always @(i_unnamed_cnn_top6_s or i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_data_out or redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q)
    begin
        unique case (i_unnamed_cnn_top6_s)
            1'b0 : i_unnamed_cnn_top6_q = i_llvm_fpga_pop_f32_scale_temp_sroa_4_0_pop29_cnn_top5_out_data_out;
            1'b1 : i_unnamed_cnn_top6_q = redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q;
            default : i_unnamed_cnn_top6_q = 32'b0;
        endcase
    end

    // redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1(DELAY,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1_q <= $unsigned(in_c1_eni6125_6_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top82_cnn_top9(BLACKBOX,15)@79
    // out out_intel_reserved_ffwd_44_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unnamed_82_cnn_top0 thei_llvm_fpga_ffwd_source_f32_unnamed_cnn_top82_cnn_top9 (
        .in_predicate_in(redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1_q),
        .in_src_data_in_44_0(i_unnamed_cnn_top6_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_44_0(i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top82_cnn_top9_out_intel_reserved_ffwd_44_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_intel_reserved_ffwd_44_0 = i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top82_cnn_top9_out_intel_reserved_ffwd_44_0;

    // valid_fanout_reg0(REG,24)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@79
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cnn_top1 = GND_q;
    assign out_unnamed_cnn_top83_0_tpl = GND_q;

    // valid_fanout_reg5(REG,29)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,25)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,26)@78 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4(BLACKBOX,18)@79
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    cnn_top_i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_0 thei_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4 (
        .in_c1_ene4130(redist3_sync_together18_aunroll_x_in_c1_eni6125_4_tpl_1_q),
        .in_data_in(i_spec_select95_cnn_top3_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_feedback_stall_out_30),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2(BLACKBOX,16)@79
    // out out_feedback_stall_out_30@20000000
    cnn_top_i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_0 thei_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2 (
        .in_data_in(c_float_undef13_q),
        .in_dir(redist0_sync_together18_aunroll_x_in_c1_eni6125_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_f32_scale_temp_sroa_0_0_push30_cnn_top4_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together18_aunroll_x_in_c1_eni6125_2_tpl_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together18_aunroll_x_in_c1_eni6125_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together18_aunroll_x_in_c1_eni6125_2_tpl_1_q <= $unsigned(in_c1_eni6125_2_tpl);
        end
    end

    // i_spec_select95_cnn_top3(MUX,20)@79
    assign i_spec_select95_cnn_top3_s = redist1_sync_together18_aunroll_x_in_c1_eni6125_2_tpl_1_q;
    always @(i_spec_select95_cnn_top3_s or i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_data_out or redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q)
    begin
        unique case (i_spec_select95_cnn_top3_s)
            1'b0 : i_spec_select95_cnn_top3_q = i_llvm_fpga_pop_f32_scale_temp_sroa_0_0_pop30_cnn_top2_out_data_out;
            1'b1 : i_spec_select95_cnn_top3_q = redist2_sync_together18_aunroll_x_in_c1_eni6125_3_tpl_1_q;
            default : i_spec_select95_cnn_top3_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top81_cnn_top8(BLACKBOX,14)@79
    // out out_intel_reserved_ffwd_43_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_f32_unnamed_81_cnn_top0 thei_llvm_fpga_ffwd_source_f32_unnamed_cnn_top81_cnn_top8 (
        .in_predicate_in(redist5_sync_together18_aunroll_x_in_c1_eni6125_6_tpl_1_q),
        .in_src_data_in_43_0(i_spec_select95_cnn_top3_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_43_0(i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top81_cnn_top8_out_intel_reserved_ffwd_43_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,22)
    assign out_intel_reserved_ffwd_43_0 = i_llvm_fpga_ffwd_source_f32_unnamed_cnn_top81_cnn_top8_out_intel_reserved_ffwd_43_0;

endmodule
