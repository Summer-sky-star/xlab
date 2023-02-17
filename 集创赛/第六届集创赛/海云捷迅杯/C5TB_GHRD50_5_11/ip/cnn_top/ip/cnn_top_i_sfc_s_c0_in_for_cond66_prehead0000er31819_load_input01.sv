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

// SystemVerilog created from cnn_top_i_sfc_s_c0_in_for_cond66_prehead0000er31819_load_input01
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c0_in_for_cond66_prehead0000er31819_load_input01 (
    output wire [0:0] out_c0_exit352_0_tpl,
    output wire [0:0] out_c0_exit352_1_tpl,
    output wire [0:0] out_c0_exit352_2_tpl,
    output wire [7:0] out_c0_exit352_3_tpl,
    output wire [7:0] out_c0_exit352_4_tpl,
    output wire [7:0] out_c0_exit352_5_tpl,
    output wire [7:0] out_c0_exit352_6_tpl,
    output wire [7:0] out_c0_exit352_7_tpl,
    output wire [7:0] out_c0_exit352_8_tpl,
    output wire [7:0] out_c0_exit352_9_tpl,
    output wire [7:0] out_c0_exit352_10_tpl,
    output wire [0:0] out_c0_exit352_11_tpl,
    output wire [0:0] out_c0_exit352_12_tpl,
    output wire [0:0] out_c0_exit352_13_tpl,
    output wire [0:0] out_c0_exit352_14_tpl,
    output wire [0:0] out_c0_exit352_15_tpl,
    output wire [31:0] out_c0_exit352_16_tpl,
    output wire [0:0] out_c0_exit352_17_tpl,
    output wire [0:0] out_c0_exit352_18_tpl,
    output wire [31:0] out_c0_exit352_19_tpl,
    output wire [31:0] out_c0_exit352_20_tpl,
    output wire [0:0] out_c0_exit352_21_tpl,
    output wire [0:0] out_c0_exit352_22_tpl,
    output wire [31:0] out_c0_exit352_23_tpl,
    output wire [31:0] out_c0_exit352_24_tpl,
    output wire [0:0] out_c0_exit352_25_tpl,
    output wire [0:0] out_c0_exit352_26_tpl,
    output wire [31:0] out_c0_exit352_27_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out,
    output wire [31:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata,
    input wire [0:0] in_c0_eni21_0_tpl,
    input wire [0:0] in_c0_eni21_1_tpl,
    input wire [31:0] in_c0_eni21_2_tpl,
    input wire [31:0] in_c0_eni21_3_tpl,
    input wire [31:0] in_c0_eni21_4_tpl,
    input wire [0:0] in_c0_eni21_5_tpl,
    input wire [0:0] in_c0_eni21_6_tpl,
    input wire [0:0] in_c0_eni21_7_tpl,
    input wire [31:0] in_c0_eni21_8_tpl,
    input wire [0:0] in_c0_eni21_9_tpl,
    input wire [31:0] in_c0_eni21_10_tpl,
    input wire [0:0] in_c0_eni21_11_tpl,
    input wire [0:0] in_c0_eni21_12_tpl,
    input wire [31:0] in_c0_eni21_13_tpl,
    input wire [31:0] in_c0_eni21_14_tpl,
    input wire [0:0] in_c0_eni21_15_tpl,
    input wire [0:0] in_c0_eni21_16_tpl,
    input wire [31:0] in_c0_eni21_17_tpl,
    input wire [31:0] in_c0_eni21_18_tpl,
    input wire [0:0] in_c0_eni21_19_tpl,
    input wire [0:0] in_c0_eni21_20_tpl,
    input wire [31:0] in_c0_eni21_21_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [127:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_2_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_3_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_4_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_7_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_10_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_12_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_13_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_17_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_18_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_19_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_20_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_21_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_23_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_24_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_25_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_26_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_27_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_2_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_3_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_4_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_5_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_6_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_7_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_8_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_9_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_10_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_11_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_12_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_13_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_14_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_16_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_17_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_18_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_19_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_20_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_21_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_23_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_24_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_25_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_26_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_27_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;
    wire [15:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    wire [127:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_pipeline_valid_out;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,16)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,15)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x(BLACKBOX,12)@1
    // out out_c0_exi20351_0_tpl@14
    // out out_c0_exi20351_1_tpl@14
    // out out_c0_exi20351_2_tpl@14
    // out out_c0_exi20351_3_tpl@14
    // out out_c0_exi20351_4_tpl@14
    // out out_c0_exi20351_5_tpl@14
    // out out_c0_exi20351_6_tpl@14
    // out out_c0_exi20351_7_tpl@14
    // out out_c0_exi20351_8_tpl@14
    // out out_c0_exi20351_9_tpl@14
    // out out_c0_exi20351_10_tpl@14
    // out out_c0_exi20351_11_tpl@14
    // out out_c0_exi20351_12_tpl@14
    // out out_c0_exi20351_13_tpl@14
    // out out_c0_exi20351_14_tpl@14
    // out out_c0_exi20351_15_tpl@14
    // out out_c0_exi20351_16_tpl@14
    // out out_c0_exi20351_17_tpl@14
    // out out_c0_exi20351_18_tpl@14
    // out out_c0_exi20351_19_tpl@14
    // out out_c0_exi20351_20_tpl@14
    // out out_c0_exi20351_21_tpl@14
    // out out_c0_exi20351_22_tpl@14
    // out out_c0_exi20351_23_tpl@14
    // out out_c0_exi20351_24_tpl@14
    // out out_c0_exi20351_25_tpl@14
    // out out_c0_exi20351_26_tpl@14
    // out out_c0_exi20351_27_tpl@14
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write@20000000
    // out out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_load_input020@14
    cnn_top_i_sfc_logic_s_c0_in_for_cond66_p0000er31819_load_input00 thei_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x (
        .in_c0_eni21_0_tpl(in_c0_eni21_0_tpl),
        .in_c0_eni21_1_tpl(in_c0_eni21_1_tpl),
        .in_c0_eni21_2_tpl(in_c0_eni21_2_tpl),
        .in_c0_eni21_3_tpl(in_c0_eni21_3_tpl),
        .in_c0_eni21_4_tpl(in_c0_eni21_4_tpl),
        .in_c0_eni21_5_tpl(in_c0_eni21_5_tpl),
        .in_c0_eni21_6_tpl(in_c0_eni21_6_tpl),
        .in_c0_eni21_7_tpl(in_c0_eni21_7_tpl),
        .in_c0_eni21_8_tpl(in_c0_eni21_8_tpl),
        .in_c0_eni21_9_tpl(in_c0_eni21_9_tpl),
        .in_c0_eni21_10_tpl(in_c0_eni21_10_tpl),
        .in_c0_eni21_11_tpl(in_c0_eni21_11_tpl),
        .in_c0_eni21_12_tpl(in_c0_eni21_12_tpl),
        .in_c0_eni21_13_tpl(in_c0_eni21_13_tpl),
        .in_c0_eni21_14_tpl(in_c0_eni21_14_tpl),
        .in_c0_eni21_15_tpl(in_c0_eni21_15_tpl),
        .in_c0_eni21_16_tpl(in_c0_eni21_16_tpl),
        .in_c0_eni21_17_tpl(in_c0_eni21_17_tpl),
        .in_c0_eni21_18_tpl(in_c0_eni21_18_tpl),
        .in_c0_eni21_19_tpl(in_c0_eni21_19_tpl),
        .in_c0_eni21_20_tpl(in_c0_eni21_20_tpl),
        .in_c0_eni21_21_tpl(in_c0_eni21_21_tpl),
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exi20351_0_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_0_tpl),
        .out_c0_exi20351_1_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_1_tpl),
        .out_c0_exi20351_2_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_2_tpl),
        .out_c0_exi20351_3_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_3_tpl),
        .out_c0_exi20351_4_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_4_tpl),
        .out_c0_exi20351_5_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_5_tpl),
        .out_c0_exi20351_6_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_6_tpl),
        .out_c0_exi20351_7_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_7_tpl),
        .out_c0_exi20351_8_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_8_tpl),
        .out_c0_exi20351_9_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_9_tpl),
        .out_c0_exi20351_10_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_10_tpl),
        .out_c0_exi20351_11_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_11_tpl),
        .out_c0_exi20351_12_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_12_tpl),
        .out_c0_exi20351_13_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_13_tpl),
        .out_c0_exi20351_14_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_14_tpl),
        .out_c0_exi20351_15_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_15_tpl),
        .out_c0_exi20351_16_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_16_tpl),
        .out_c0_exi20351_17_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_17_tpl),
        .out_c0_exi20351_18_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_18_tpl),
        .out_c0_exi20351_19_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_19_tpl),
        .out_c0_exi20351_20_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_20_tpl),
        .out_c0_exi20351_21_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_21_tpl),
        .out_c0_exi20351_22_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_22_tpl),
        .out_c0_exi20351_23_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_23_tpl),
        .out_c0_exi20351_24_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_24_tpl),
        .out_c0_exi20351_25_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_25_tpl),
        .out_c0_exi20351_26_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_26_tpl),
        .out_c0_exi20351_27_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_27_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_load_input020(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x(BLACKBOX,11)@14
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@17
    // out out_data_out_1_tpl@17
    // out out_data_out_2_tpl@17
    // out out_data_out_3_tpl@17
    // out out_data_out_4_tpl@17
    // out out_data_out_5_tpl@17
    // out out_data_out_6_tpl@17
    // out out_data_out_7_tpl@17
    // out out_data_out_8_tpl@17
    // out out_data_out_9_tpl@17
    // out out_data_out_10_tpl@17
    // out out_data_out_11_tpl@17
    // out out_data_out_12_tpl@17
    // out out_data_out_13_tpl@17
    // out out_data_out_14_tpl@17
    // out out_data_out_15_tpl@17
    // out out_data_out_16_tpl@17
    // out out_data_out_17_tpl@17
    // out out_data_out_18_tpl@17
    // out out_data_out_19_tpl@17
    // out out_data_out_20_tpl@17
    // out out_data_out_21_tpl@17
    // out out_data_out_22_tpl@17
    // out out_data_out_23_tpl@17
    // out out_data_out_24_tpl@17
    // out out_data_out_25_tpl@17
    // out out_data_out_26_tpl@17
    // out out_data_out_27_tpl@17
    // out out_stall_entry@20000000
    // out out_valid_out@17
    cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0000exit352_load_input00 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_c0_exi20351_27_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_27_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@17
    assign out_c0_exit352_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit352_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit352_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit352_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit352_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit352_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit352_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit352_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit352_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit352_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit352_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit352_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit352_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit352_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit352_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit352_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit352_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit352_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit352_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit352_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit352_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit352_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit352_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit352_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit352_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit352_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit352_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit352_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_data_out_27_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,26)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond66_preheader_load_input0s_c0_enter31819_load_input00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;

    // sync_out(GPOUT,28)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond66_preheader_load_input0s_c0_exit352_load_input01_aunroll_x_out_stall_entry;

endmodule
