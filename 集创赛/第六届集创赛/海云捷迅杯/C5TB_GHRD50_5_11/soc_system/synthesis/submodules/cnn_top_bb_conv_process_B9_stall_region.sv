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

// SystemVerilog created from cnn_top_bb_conv_process_B9_stall_region
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B9_stall_region (
    output wire [0:0] out_c0_exe1721,
    output wire [0:0] out_c0_exe2722,
    output wire [31:0] out_c0_exe3723,
    output wire [31:0] out_offset_0_i475_replace_phi,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out,
    input wire [31:0] in_feedback_in_66,
    output wire [0:0] out_feedback_stall_out_66,
    input wire [0:0] in_feedback_valid_in_66,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_60_0,
    input wire [31:0] in_intel_reserved_ffwd_61_0,
    input wire [32:0] in_intel_reserved_ffwd_74_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked130,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] conv_process_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] conv_process_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] conv_process_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] c_i32_undef8_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_dest_data_out_61_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_feedback_stall_out_66;
    wire [0:0] i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_valid_out;
    wire [0:0] i_offset_0_i475_replace_phi_conv_process5_s;
    reg [31:0] i_offset_0_i475_replace_phi_conv_process5_q;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    reg [34:0] coalesced_delay_0_0_q;
    wire [0:0] bubble_join_conv_process_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_conv_process_B9_merge_reg_aunroll_x_b;
    wire [34:0] bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_e;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_conv_process_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_conv_process_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_conv_process_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,71)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = conv_process_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = in_forked130;

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // conv_process_B9_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_conv_process_B9_merge_reg theconv_process_B9_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_conv_process_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(conv_process_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(conv_process_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(conv_process_B9_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_conv_process_B9_merge_reg_aunroll_x(STALLENABLE,63)
    // Valid signal propagation
    assign SE_out_conv_process_B9_merge_reg_aunroll_x_V0 = SE_out_conv_process_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_conv_process_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_stall | ~ (SE_out_conv_process_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_conv_process_B9_merge_reg_aunroll_x_wireValid = conv_process_B9_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_conv_process_B9_merge_reg_aunroll_x(BITJOIN,43)
    assign bubble_join_conv_process_B9_merge_reg_aunroll_x_q = conv_process_B9_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_conv_process_B9_merge_reg_aunroll_x(BITSELECT,44)
    assign bubble_select_conv_process_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_conv_process_B9_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit720_0_tpl@5
    // out out_c0_exit720_1_tpl@5
    // out out_c0_exit720_2_tpl@5
    // out out_c0_exit720_3_tpl@5
    // out out_c0_exit720_4_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_cond13_i_prehe0000r71428_conv_process1 thei_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x (
        .in_c0_eni1713_0_tpl(GND_q),
        .in_c0_eni1713_1_tpl(bubble_select_conv_process_B9_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_backStall),
        .in_i_valid(SE_out_conv_process_B9_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_60_0(in_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_74_0(in_intel_reserved_ffwd_74_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit720_0_tpl(),
        .out_c0_exit720_1_tpl(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_1_tpl),
        .out_c0_exit720_2_tpl(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_2_tpl),
        .out_c0_exit720_3_tpl(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_3_tpl),
        .out_c0_exit720_4_tpl(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_4_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x(STALLENABLE,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,75)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3(BLACKBOX,13)@5
    // in in_stall_in@20000000
    // out out_dest_data_out_61_0@6
    // out out_stall_out@20000000
    // out out_valid_out@6
    cnn_top_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process0 thei_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3 (
        .in_intel_reserved_ffwd_61_0(in_intel_reserved_ffwd_61_0),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V0),
        .out_dest_data_out_61_0(i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_dest_data_out_61_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x(BITJOIN,47)
    assign bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q = {i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_4_tpl, i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_3_tpl, i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_2_tpl, i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_c0_exit720_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x(BITSELECT,48)
    assign bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_q[34:34]);

    // c_i32_undef8(CONSTANT,6)
    assign c_i32_undef8_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4(BLACKBOX,14)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_66@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    cnn_top_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process0 thei_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4 (
        .in_data_in(c_i32_undef8_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_e),
        .in_feedback_in_66(in_feedback_in_66),
        .in_feedback_valid_in_66(in_feedback_valid_in_66),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_data_out),
        .out_feedback_stall_out_66(i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_feedback_stall_out_66),
        .out_stall_out(i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4(STALLENABLE,69)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_V0 = SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and0 = i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and1 = i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_valid_out & SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and0;
    assign SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_and1;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3(BITJOIN,51)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_q = i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_out_dest_data_out_61_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3(BITSELECT,52)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4(BITJOIN,55)
    assign bubble_join_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_q = i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4(BITSELECT,56)
    assign bubble_select_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_q[31:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_offset_0_i475_replace_phi_conv_process5(MUX,15)@6
    assign i_offset_0_i475_replace_phi_conv_process5_s = sel_for_coalesced_delay_0_e;
    always @(i_offset_0_i475_replace_phi_conv_process5_s or bubble_select_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_b)
    begin
        unique case (i_offset_0_i475_replace_phi_conv_process5_s)
            1'b0 : i_offset_0_i475_replace_phi_conv_process5_q = bubble_select_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_b;
            1'b1 : i_offset_0_i475_replace_phi_conv_process5_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_mul10_i131_conv_process3_b;
            default : i_offset_0_i475_replace_phi_conv_process5_q = 32'b0;
        endcase
    end

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_d};

    // coalesced_delay_0_0(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(35'b00000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[34:34]);

    // dupName_0_sync_out_x(GPOUT,3)@6
    assign out_c0_exe1721 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2722 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe3723 = sel_for_coalesced_delay_0_b;
    assign out_offset_0_i475_replace_phi = i_offset_0_i475_replace_phi_conv_process5_q;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_V0;

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out = i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out = i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going170_conv_process2_exiting_stall_out;

    // feedback_stall_out_66_sync(GPOUT,11)
    assign out_feedback_stall_out_66 = i_llvm_fpga_pop_i32_offset_0_i475_pop66_conv_process4_out_feedback_stall_out_66;

    // pipeline_valid_out_sync(GPOUT,25)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond13_i_preheader_conv_processs_c0_enter71428_conv_process1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,32)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
