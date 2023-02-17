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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond20_p0000nter183_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond20_p0000nter183_load_input10 (
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input120,
    output wire [0:0] out_unnamed_load_input135_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_intel_reserved_ffwd_5_0,
    input wire [31:0] in_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add13_load_input15_sel_x_b;
    wire [31:0] bgTrunc_i_add15_load_input19_sel_x_b;
    wire [63:0] bgTrunc_i_mul14_load_input17_sel_x_in;
    wire [31:0] bgTrunc_i_mul14_load_input17_sel_x_b;
    wire [63:0] bgTrunc_i_mul9_load_input13_sel_x_in;
    wire [31:0] bgTrunc_i_mul9_load_input13_sel_x_b;
    wire [32:0] i_add13_load_input15_a;
    wire [32:0] i_add13_load_input15_b;
    logic [32:0] i_add13_load_input15_o;
    wire [32:0] i_add13_load_input15_q;
    wire [32:0] i_add15_load_input19_a;
    wire [32:0] i_add15_load_input19_b;
    logic [32:0] i_add15_load_input19_o;
    wire [32:0] i_add15_load_input19_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add336_load_input16_out_dest_data_out_6_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add35_load_input11_out_dest_data_out_5_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12_out_dest_data_out_18_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul1243_load_input14_out_dest_data_out_10_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input18_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_input134_load_input110_out_intel_reserved_ffwd_23_0;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    wire [63:0] i_mul14_load_input17_sums_join_0_q;
    wire [50:0] i_mul14_load_input17_sums_align_1_q;
    wire [50:0] i_mul14_load_input17_sums_align_1_qint;
    wire [64:0] i_mul14_load_input17_sums_result_add_0_0_a;
    wire [64:0] i_mul14_load_input17_sums_result_add_0_0_b;
    logic [64:0] i_mul14_load_input17_sums_result_add_0_0_o;
    wire [64:0] i_mul14_load_input17_sums_result_add_0_0_q;
    wire [63:0] i_mul9_load_input13_sums_join_0_q;
    wire [50:0] i_mul9_load_input13_sums_align_1_q;
    wire [50:0] i_mul9_load_input13_sums_align_1_qint;
    wire [64:0] i_mul9_load_input13_sums_result_add_0_0_a;
    wire [64:0] i_mul9_load_input13_sums_result_add_0_0_b;
    logic [64:0] i_mul9_load_input13_sums_result_add_0_0_o;
    wire [64:0] i_mul9_load_input13_sums_result_add_0_0_q;
    wire i_mul14_load_input17_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul14_load_input17_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul14_load_input17_im0_cma_c0 [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_p [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_u [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_w [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_x [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_y [0:0];
    reg [35:0] i_mul14_load_input17_im0_cma_s [0:0];
    wire [35:0] i_mul14_load_input17_im0_cma_qq;
    wire [35:0] i_mul14_load_input17_im0_cma_q;
    wire i_mul14_load_input17_im0_cma_ena0;
    wire i_mul14_load_input17_im0_cma_ena1;
    wire i_mul14_load_input17_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul14_load_input17_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul14_load_input17_im8_cma_c0 [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_p [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_u [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_w [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_x [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_y [0:0];
    reg [27:0] i_mul14_load_input17_im8_cma_s [0:0];
    wire [27:0] i_mul14_load_input17_im8_cma_qq;
    wire [27:0] i_mul14_load_input17_im8_cma_q;
    wire i_mul14_load_input17_im8_cma_ena0;
    wire i_mul14_load_input17_im8_cma_ena1;
    wire i_mul9_load_input13_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul9_load_input13_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul9_load_input13_im0_cma_c0 [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_p [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_u [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_w [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_x [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_y [0:0];
    reg [35:0] i_mul9_load_input13_im0_cma_s [0:0];
    wire [35:0] i_mul9_load_input13_im0_cma_qq;
    wire [35:0] i_mul9_load_input13_im0_cma_q;
    wire i_mul9_load_input13_im0_cma_ena0;
    wire i_mul9_load_input13_im0_cma_ena1;
    wire i_mul9_load_input13_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul9_load_input13_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul9_load_input13_im8_cma_c0 [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_p [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_u [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_w [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_x [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_y [0:0];
    reg [27:0] i_mul9_load_input13_im8_cma_s [0:0];
    wire [27:0] i_mul9_load_input13_im8_cma_qq;
    wire [27:0] i_mul9_load_input13_im8_cma_q;
    wire i_mul9_load_input13_im8_cma_ena0;
    wire i_mul9_load_input13_im8_cma_ena1;
    wire i_mul14_load_input17_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul14_load_input17_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul14_load_input17_ma3_cma_c0 [0:1];
    wire [31:0] i_mul14_load_input17_ma3_cma_p [0:1];
    wire [32:0] i_mul14_load_input17_ma3_cma_u [0:1];
    wire [32:0] i_mul14_load_input17_ma3_cma_w [0:0];
    wire [32:0] i_mul14_load_input17_ma3_cma_x [0:0];
    wire [32:0] i_mul14_load_input17_ma3_cma_y [0:0];
    reg [32:0] i_mul14_load_input17_ma3_cma_s [0:0];
    wire [32:0] i_mul14_load_input17_ma3_cma_qq;
    wire [32:0] i_mul14_load_input17_ma3_cma_q;
    wire i_mul14_load_input17_ma3_cma_ena0;
    wire i_mul14_load_input17_ma3_cma_ena1;
    wire i_mul9_load_input13_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul9_load_input13_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul9_load_input13_ma3_cma_c0 [0:1];
    wire [31:0] i_mul9_load_input13_ma3_cma_p [0:1];
    wire [32:0] i_mul9_load_input13_ma3_cma_u [0:1];
    wire [32:0] i_mul9_load_input13_ma3_cma_w [0:0];
    wire [32:0] i_mul9_load_input13_ma3_cma_x [0:0];
    wire [32:0] i_mul9_load_input13_ma3_cma_y [0:0];
    reg [32:0] i_mul9_load_input13_ma3_cma_s [0:0];
    wire [32:0] i_mul9_load_input13_ma3_cma_qq;
    wire [32:0] i_mul9_load_input13_ma3_cma_q;
    wire i_mul9_load_input13_ma3_cma_ena0;
    wire i_mul9_load_input13_ma3_cma_ena1;
    wire [17:0] i_mul14_load_input17_bs1_merged_bit_select_b;
    wire [13:0] i_mul14_load_input17_bs1_merged_bit_select_c;
    wire [17:0] i_mul14_load_input17_bs2_merged_bit_select_b;
    wire [13:0] i_mul14_load_input17_bs2_merged_bit_select_c;
    wire [17:0] i_mul9_load_input13_bs2_merged_bit_select_b;
    wire [13:0] i_mul9_load_input13_bs2_merged_bit_select_c;
    wire [17:0] i_mul9_load_input13_bs1_merged_bit_select_b;
    wire [13:0] i_mul9_load_input13_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together24_in_i_valid_3_q;
    reg [0:0] redist0_sync_together24_in_i_valid_3_delay_0;
    reg [0:0] redist0_sync_together24_in_i_valid_3_delay_1;
    reg [0:0] redist1_sync_together24_in_i_valid_6_q;
    reg [0:0] redist1_sync_together24_in_i_valid_6_delay_0;
    reg [0:0] redist1_sync_together24_in_i_valid_6_delay_1;
    reg [31:0] redist2_bgTrunc_i_mul9_load_input13_sel_x_b_1_q;
    reg [31:0] redist3_bgTrunc_i_mul14_load_input17_sel_x_b_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together24_in_i_valid_3(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together24_in_i_valid_3_delay_0 <= '0;
            redist0_sync_together24_in_i_valid_3_delay_1 <= '0;
            redist0_sync_together24_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist0_sync_together24_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist0_sync_together24_in_i_valid_3_delay_1 <= redist0_sync_together24_in_i_valid_3_delay_0;
            redist0_sync_together24_in_i_valid_3_q <= redist0_sync_together24_in_i_valid_3_delay_1;
        end
    end

    // redist1_sync_together24_in_i_valid_6(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_in_i_valid_6_delay_0 <= '0;
            redist1_sync_together24_in_i_valid_6_delay_1 <= '0;
            redist1_sync_together24_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist1_sync_together24_in_i_valid_6_delay_0 <= $unsigned(redist0_sync_together24_in_i_valid_3_q);
            redist1_sync_together24_in_i_valid_6_delay_1 <= redist1_sync_together24_in_i_valid_6_delay_0;
            redist1_sync_together24_in_i_valid_6_q <= redist1_sync_together24_in_i_valid_6_delay_1;
        end
    end

    // valid_fanout_reg0(REG,35)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together24_in_i_valid_6_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,6)@7
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input120 = GND_q;
    assign out_unnamed_load_input135_0_tpl = GND_q;

    // valid_fanout_reg6(REG,41)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together24_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg5(REG,40)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together24_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input18(BLACKBOX,23)@7
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000tract32_load_input10 thei_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input18 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input18_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,39)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist0_sync_together24_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add336_load_input16(BLACKBOX,19)@4
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add336_load_input10 thei_llvm_fpga_ffwd_dest_i32_add336_load_input16 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i32_add336_load_input16_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul14_load_input17_bs2_merged_bit_select(BITSELECT,83)@4
    assign i_mul14_load_input17_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_add336_load_input16_out_dest_data_out_6_0[17:0];
    assign i_mul14_load_input17_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_add336_load_input16_out_dest_data_out_6_0[31:18];

    // valid_fanout_reg3(REG,38)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist0_sync_together24_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul1243_load_input14(BLACKBOX,22)@4
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul1243_load_input10 thei_llvm_fpga_ffwd_dest_i32_mul1243_load_input14 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_i32_mul1243_load_input14_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,36)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_add35_load_input11(BLACKBOX,20)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_add35_load_input10 thei_llvm_fpga_ffwd_dest_i32_add35_load_input11 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i32_add35_load_input11_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_load_input13_bs2_merged_bit_select(BITSELECT,84)@1
    assign i_mul9_load_input13_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_add35_load_input11_out_dest_data_out_5_0[17:0];
    assign i_mul9_load_input13_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_add35_load_input11_out_dest_data_out_5_0[31:18];

    // valid_fanout_reg2(REG,37)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12(BLACKBOX,21)@1
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000e_phi55_load_input10 thei_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul9_load_input13_bs1_merged_bit_select(BITSELECT,85)@1
    assign i_mul9_load_input13_bs1_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12_out_dest_data_out_18_0[17:0];
    assign i_mul9_load_input13_bs1_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_in_c_093_replace_phi55_load_input12_out_dest_data_out_18_0[31:18];

    // i_mul9_load_input13_ma3_cma(CHAINMULTADD,81)@1 + 2
    assign i_mul9_load_input13_ma3_cma_reset = ~ (resetn);
    assign i_mul9_load_input13_ma3_cma_ena0 = 1'b1;
    assign i_mul9_load_input13_ma3_cma_ena1 = i_mul9_load_input13_ma3_cma_ena0;
    assign i_mul9_load_input13_ma3_cma_p[0] = i_mul9_load_input13_ma3_cma_a0[0] * i_mul9_load_input13_ma3_cma_c0[0];
    assign i_mul9_load_input13_ma3_cma_p[1] = i_mul9_load_input13_ma3_cma_a0[1] * i_mul9_load_input13_ma3_cma_c0[1];
    assign i_mul9_load_input13_ma3_cma_u[0] = {1'b0, i_mul9_load_input13_ma3_cma_p[0][31:0]};
    assign i_mul9_load_input13_ma3_cma_u[1] = {1'b0, i_mul9_load_input13_ma3_cma_p[1][31:0]};
    assign i_mul9_load_input13_ma3_cma_w[0] = i_mul9_load_input13_ma3_cma_u[0] + i_mul9_load_input13_ma3_cma_u[1];
    assign i_mul9_load_input13_ma3_cma_x[0] = i_mul9_load_input13_ma3_cma_w[0];
    assign i_mul9_load_input13_ma3_cma_y[0] = i_mul9_load_input13_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_ma3_cma_a0 <= '{default: '0};
            i_mul9_load_input13_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_ma3_cma_ena0 == 1'b1)
            begin
                i_mul9_load_input13_ma3_cma_a0[0] <= i_mul9_load_input13_bs1_merged_bit_select_c;
                i_mul9_load_input13_ma3_cma_a0[1] <= i_mul9_load_input13_bs2_merged_bit_select_c;
                i_mul9_load_input13_ma3_cma_c0[0] <= i_mul9_load_input13_bs2_merged_bit_select_b;
                i_mul9_load_input13_ma3_cma_c0[1] <= i_mul9_load_input13_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_ma3_cma_ena1 == 1'b1)
            begin
                i_mul9_load_input13_ma3_cma_s[0] <= i_mul9_load_input13_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul9_load_input13_ma3_cma_delay ( .xin(i_mul9_load_input13_ma3_cma_s[0]), .xout(i_mul9_load_input13_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_load_input13_ma3_cma_q = $unsigned(i_mul9_load_input13_ma3_cma_qq[32:0]);

    // i_mul9_load_input13_sums_align_1(BITSHIFT,73)@3
    assign i_mul9_load_input13_sums_align_1_qint = { i_mul9_load_input13_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul9_load_input13_sums_align_1_q = i_mul9_load_input13_sums_align_1_qint[50:0];

    // i_mul9_load_input13_im8_cma(CHAINMULTADD,79)@1 + 2
    assign i_mul9_load_input13_im8_cma_reset = ~ (resetn);
    assign i_mul9_load_input13_im8_cma_ena0 = 1'b1;
    assign i_mul9_load_input13_im8_cma_ena1 = i_mul9_load_input13_im8_cma_ena0;
    assign i_mul9_load_input13_im8_cma_p[0] = i_mul9_load_input13_im8_cma_a0[0] * i_mul9_load_input13_im8_cma_c0[0];
    assign i_mul9_load_input13_im8_cma_u[0] = i_mul9_load_input13_im8_cma_p[0][27:0];
    assign i_mul9_load_input13_im8_cma_w[0] = i_mul9_load_input13_im8_cma_u[0];
    assign i_mul9_load_input13_im8_cma_x[0] = i_mul9_load_input13_im8_cma_w[0];
    assign i_mul9_load_input13_im8_cma_y[0] = i_mul9_load_input13_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_im8_cma_a0 <= '{default: '0};
            i_mul9_load_input13_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_im8_cma_ena0 == 1'b1)
            begin
                i_mul9_load_input13_im8_cma_a0[0] <= i_mul9_load_input13_bs1_merged_bit_select_c;
                i_mul9_load_input13_im8_cma_c0[0] <= i_mul9_load_input13_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_im8_cma_ena1 == 1'b1)
            begin
                i_mul9_load_input13_im8_cma_s[0] <= i_mul9_load_input13_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul9_load_input13_im8_cma_delay ( .xin(i_mul9_load_input13_im8_cma_s[0]), .xout(i_mul9_load_input13_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_load_input13_im8_cma_q = $unsigned(i_mul9_load_input13_im8_cma_qq[27:0]);

    // i_mul9_load_input13_im0_cma(CHAINMULTADD,78)@1 + 2
    assign i_mul9_load_input13_im0_cma_reset = ~ (resetn);
    assign i_mul9_load_input13_im0_cma_ena0 = 1'b1;
    assign i_mul9_load_input13_im0_cma_ena1 = i_mul9_load_input13_im0_cma_ena0;
    assign i_mul9_load_input13_im0_cma_p[0] = i_mul9_load_input13_im0_cma_a0[0] * i_mul9_load_input13_im0_cma_c0[0];
    assign i_mul9_load_input13_im0_cma_u[0] = i_mul9_load_input13_im0_cma_p[0][35:0];
    assign i_mul9_load_input13_im0_cma_w[0] = i_mul9_load_input13_im0_cma_u[0];
    assign i_mul9_load_input13_im0_cma_x[0] = i_mul9_load_input13_im0_cma_w[0];
    assign i_mul9_load_input13_im0_cma_y[0] = i_mul9_load_input13_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_im0_cma_a0 <= '{default: '0};
            i_mul9_load_input13_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_im0_cma_ena0 == 1'b1)
            begin
                i_mul9_load_input13_im0_cma_a0[0] <= i_mul9_load_input13_bs1_merged_bit_select_b;
                i_mul9_load_input13_im0_cma_c0[0] <= i_mul9_load_input13_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul9_load_input13_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul9_load_input13_im0_cma_ena1 == 1'b1)
            begin
                i_mul9_load_input13_im0_cma_s[0] <= i_mul9_load_input13_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul9_load_input13_im0_cma_delay ( .xin(i_mul9_load_input13_im0_cma_s[0]), .xout(i_mul9_load_input13_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul9_load_input13_im0_cma_q = $unsigned(i_mul9_load_input13_im0_cma_qq[35:0]);

    // i_mul9_load_input13_sums_join_0(BITJOIN,72)@3
    assign i_mul9_load_input13_sums_join_0_q = {i_mul9_load_input13_im8_cma_q, i_mul9_load_input13_im0_cma_q};

    // i_mul9_load_input13_sums_result_add_0_0(ADD,75)@3
    assign i_mul9_load_input13_sums_result_add_0_0_a = {1'b0, i_mul9_load_input13_sums_join_0_q};
    assign i_mul9_load_input13_sums_result_add_0_0_b = {14'b00000000000000, i_mul9_load_input13_sums_align_1_q};
    assign i_mul9_load_input13_sums_result_add_0_0_o = $unsigned(i_mul9_load_input13_sums_result_add_0_0_a) + $unsigned(i_mul9_load_input13_sums_result_add_0_0_b);
    assign i_mul9_load_input13_sums_result_add_0_0_q = i_mul9_load_input13_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul9_load_input13_sel_x(BITSELECT,5)@3
    assign bgTrunc_i_mul9_load_input13_sel_x_in = i_mul9_load_input13_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul9_load_input13_sel_x_b = bgTrunc_i_mul9_load_input13_sel_x_in[31:0];

    // redist2_bgTrunc_i_mul9_load_input13_sel_x_b_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_bgTrunc_i_mul9_load_input13_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist2_bgTrunc_i_mul9_load_input13_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul9_load_input13_sel_x_b);
        end
    end

    // i_add13_load_input15(ADD,17)@4
    assign i_add13_load_input15_a = {1'b0, redist2_bgTrunc_i_mul9_load_input13_sel_x_b_1_q};
    assign i_add13_load_input15_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_mul1243_load_input14_out_dest_data_out_10_0};
    assign i_add13_load_input15_o = $unsigned(i_add13_load_input15_a) + $unsigned(i_add13_load_input15_b);
    assign i_add13_load_input15_q = i_add13_load_input15_o[32:0];

    // bgTrunc_i_add13_load_input15_sel_x(BITSELECT,2)@4
    assign bgTrunc_i_add13_load_input15_sel_x_b = i_add13_load_input15_q[31:0];

    // i_mul14_load_input17_bs1_merged_bit_select(BITSELECT,82)@4
    assign i_mul14_load_input17_bs1_merged_bit_select_b = bgTrunc_i_add13_load_input15_sel_x_b[17:0];
    assign i_mul14_load_input17_bs1_merged_bit_select_c = bgTrunc_i_add13_load_input15_sel_x_b[31:18];

    // i_mul14_load_input17_ma3_cma(CHAINMULTADD,80)@4 + 2
    assign i_mul14_load_input17_ma3_cma_reset = ~ (resetn);
    assign i_mul14_load_input17_ma3_cma_ena0 = 1'b1;
    assign i_mul14_load_input17_ma3_cma_ena1 = i_mul14_load_input17_ma3_cma_ena0;
    assign i_mul14_load_input17_ma3_cma_p[0] = i_mul14_load_input17_ma3_cma_a0[0] * i_mul14_load_input17_ma3_cma_c0[0];
    assign i_mul14_load_input17_ma3_cma_p[1] = i_mul14_load_input17_ma3_cma_a0[1] * i_mul14_load_input17_ma3_cma_c0[1];
    assign i_mul14_load_input17_ma3_cma_u[0] = {1'b0, i_mul14_load_input17_ma3_cma_p[0][31:0]};
    assign i_mul14_load_input17_ma3_cma_u[1] = {1'b0, i_mul14_load_input17_ma3_cma_p[1][31:0]};
    assign i_mul14_load_input17_ma3_cma_w[0] = i_mul14_load_input17_ma3_cma_u[0] + i_mul14_load_input17_ma3_cma_u[1];
    assign i_mul14_load_input17_ma3_cma_x[0] = i_mul14_load_input17_ma3_cma_w[0];
    assign i_mul14_load_input17_ma3_cma_y[0] = i_mul14_load_input17_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_ma3_cma_a0 <= '{default: '0};
            i_mul14_load_input17_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_ma3_cma_ena0 == 1'b1)
            begin
                i_mul14_load_input17_ma3_cma_a0[0] <= i_mul14_load_input17_bs1_merged_bit_select_c;
                i_mul14_load_input17_ma3_cma_a0[1] <= i_mul14_load_input17_bs2_merged_bit_select_c;
                i_mul14_load_input17_ma3_cma_c0[0] <= i_mul14_load_input17_bs2_merged_bit_select_b;
                i_mul14_load_input17_ma3_cma_c0[1] <= i_mul14_load_input17_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_ma3_cma_ena1 == 1'b1)
            begin
                i_mul14_load_input17_ma3_cma_s[0] <= i_mul14_load_input17_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_load_input17_ma3_cma_delay ( .xin(i_mul14_load_input17_ma3_cma_s[0]), .xout(i_mul14_load_input17_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_load_input17_ma3_cma_q = $unsigned(i_mul14_load_input17_ma3_cma_qq[32:0]);

    // i_mul14_load_input17_sums_align_1(BITSHIFT,58)@6
    assign i_mul14_load_input17_sums_align_1_qint = { i_mul14_load_input17_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul14_load_input17_sums_align_1_q = i_mul14_load_input17_sums_align_1_qint[50:0];

    // i_mul14_load_input17_im8_cma(CHAINMULTADD,77)@4 + 2
    assign i_mul14_load_input17_im8_cma_reset = ~ (resetn);
    assign i_mul14_load_input17_im8_cma_ena0 = 1'b1;
    assign i_mul14_load_input17_im8_cma_ena1 = i_mul14_load_input17_im8_cma_ena0;
    assign i_mul14_load_input17_im8_cma_p[0] = i_mul14_load_input17_im8_cma_a0[0] * i_mul14_load_input17_im8_cma_c0[0];
    assign i_mul14_load_input17_im8_cma_u[0] = i_mul14_load_input17_im8_cma_p[0][27:0];
    assign i_mul14_load_input17_im8_cma_w[0] = i_mul14_load_input17_im8_cma_u[0];
    assign i_mul14_load_input17_im8_cma_x[0] = i_mul14_load_input17_im8_cma_w[0];
    assign i_mul14_load_input17_im8_cma_y[0] = i_mul14_load_input17_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_im8_cma_a0 <= '{default: '0};
            i_mul14_load_input17_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_im8_cma_ena0 == 1'b1)
            begin
                i_mul14_load_input17_im8_cma_a0[0] <= i_mul14_load_input17_bs1_merged_bit_select_c;
                i_mul14_load_input17_im8_cma_c0[0] <= i_mul14_load_input17_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_im8_cma_ena1 == 1'b1)
            begin
                i_mul14_load_input17_im8_cma_s[0] <= i_mul14_load_input17_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_load_input17_im8_cma_delay ( .xin(i_mul14_load_input17_im8_cma_s[0]), .xout(i_mul14_load_input17_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_load_input17_im8_cma_q = $unsigned(i_mul14_load_input17_im8_cma_qq[27:0]);

    // i_mul14_load_input17_im0_cma(CHAINMULTADD,76)@4 + 2
    assign i_mul14_load_input17_im0_cma_reset = ~ (resetn);
    assign i_mul14_load_input17_im0_cma_ena0 = 1'b1;
    assign i_mul14_load_input17_im0_cma_ena1 = i_mul14_load_input17_im0_cma_ena0;
    assign i_mul14_load_input17_im0_cma_p[0] = i_mul14_load_input17_im0_cma_a0[0] * i_mul14_load_input17_im0_cma_c0[0];
    assign i_mul14_load_input17_im0_cma_u[0] = i_mul14_load_input17_im0_cma_p[0][35:0];
    assign i_mul14_load_input17_im0_cma_w[0] = i_mul14_load_input17_im0_cma_u[0];
    assign i_mul14_load_input17_im0_cma_x[0] = i_mul14_load_input17_im0_cma_w[0];
    assign i_mul14_load_input17_im0_cma_y[0] = i_mul14_load_input17_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_im0_cma_a0 <= '{default: '0};
            i_mul14_load_input17_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_im0_cma_ena0 == 1'b1)
            begin
                i_mul14_load_input17_im0_cma_a0[0] <= i_mul14_load_input17_bs1_merged_bit_select_b;
                i_mul14_load_input17_im0_cma_c0[0] <= i_mul14_load_input17_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul14_load_input17_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul14_load_input17_im0_cma_ena1 == 1'b1)
            begin
                i_mul14_load_input17_im0_cma_s[0] <= i_mul14_load_input17_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul14_load_input17_im0_cma_delay ( .xin(i_mul14_load_input17_im0_cma_s[0]), .xout(i_mul14_load_input17_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul14_load_input17_im0_cma_q = $unsigned(i_mul14_load_input17_im0_cma_qq[35:0]);

    // i_mul14_load_input17_sums_join_0(BITJOIN,57)@6
    assign i_mul14_load_input17_sums_join_0_q = {i_mul14_load_input17_im8_cma_q, i_mul14_load_input17_im0_cma_q};

    // i_mul14_load_input17_sums_result_add_0_0(ADD,60)@6
    assign i_mul14_load_input17_sums_result_add_0_0_a = {1'b0, i_mul14_load_input17_sums_join_0_q};
    assign i_mul14_load_input17_sums_result_add_0_0_b = {14'b00000000000000, i_mul14_load_input17_sums_align_1_q};
    assign i_mul14_load_input17_sums_result_add_0_0_o = $unsigned(i_mul14_load_input17_sums_result_add_0_0_a) + $unsigned(i_mul14_load_input17_sums_result_add_0_0_b);
    assign i_mul14_load_input17_sums_result_add_0_0_q = i_mul14_load_input17_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul14_load_input17_sel_x(BITSELECT,4)@6
    assign bgTrunc_i_mul14_load_input17_sel_x_in = i_mul14_load_input17_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul14_load_input17_sel_x_b = bgTrunc_i_mul14_load_input17_sel_x_in[31:0];

    // redist3_bgTrunc_i_mul14_load_input17_sel_x_b_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_bgTrunc_i_mul14_load_input17_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist3_bgTrunc_i_mul14_load_input17_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul14_load_input17_sel_x_b);
        end
    end

    // i_add15_load_input19(ADD,18)@7
    assign i_add15_load_input19_a = {1'b0, redist3_bgTrunc_i_mul14_load_input17_sel_x_b_1_q};
    assign i_add15_load_input19_b = {1'b0, i_llvm_fpga_ffwd_dest_i32_param_fca_0_extract32_load_input18_out_dest_data_out_3_0};
    assign i_add15_load_input19_o = $unsigned(i_add15_load_input19_a) + $unsigned(i_add15_load_input19_b);
    assign i_add15_load_input19_q = i_add15_load_input19_o[32:0];

    // bgTrunc_i_add15_load_input19_sel_x(BITSELECT,3)@7
    assign bgTrunc_i_add15_load_input19_sel_x_b = i_add15_load_input19_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_input134_load_input110(BLACKBOX,24)@7
    // out out_intel_reserved_ffwd_23_0@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000nput134_load_input10 thei_llvm_fpga_ffwd_source_i32_unnamed_load_input134_load_input110 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(bgTrunc_i_add15_load_input19_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_input134_load_input110_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,32)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_input134_load_input110_out_intel_reserved_ffwd_23_0;

endmodule
