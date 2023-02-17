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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond67_p0000er31819_load_input10
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond67_p0000er31819_load_input10 (
    output wire [31:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata,
    output wire [15:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount,
    output wire [0:0] out_c0_exi20351_0_tpl,
    output wire [0:0] out_c0_exi20351_1_tpl,
    output wire [0:0] out_c0_exi20351_2_tpl,
    output wire [7:0] out_c0_exi20351_3_tpl,
    output wire [7:0] out_c0_exi20351_4_tpl,
    output wire [7:0] out_c0_exi20351_5_tpl,
    output wire [7:0] out_c0_exi20351_6_tpl,
    output wire [7:0] out_c0_exi20351_7_tpl,
    output wire [7:0] out_c0_exi20351_8_tpl,
    output wire [7:0] out_c0_exi20351_9_tpl,
    output wire [7:0] out_c0_exi20351_10_tpl,
    output wire [0:0] out_c0_exi20351_11_tpl,
    output wire [0:0] out_c0_exi20351_12_tpl,
    output wire [0:0] out_c0_exi20351_13_tpl,
    output wire [0:0] out_c0_exi20351_14_tpl,
    output wire [0:0] out_c0_exi20351_15_tpl,
    output wire [31:0] out_c0_exi20351_16_tpl,
    output wire [0:0] out_c0_exi20351_17_tpl,
    output wire [0:0] out_c0_exi20351_18_tpl,
    output wire [31:0] out_c0_exi20351_19_tpl,
    output wire [31:0] out_c0_exi20351_20_tpl,
    output wire [0:0] out_c0_exi20351_21_tpl,
    output wire [0:0] out_c0_exi20351_22_tpl,
    output wire [31:0] out_c0_exi20351_23_tpl,
    output wire [31:0] out_c0_exi20351_24_tpl,
    output wire [0:0] out_c0_exi20351_25_tpl,
    output wire [0:0] out_c0_exi20351_26_tpl,
    output wire [31:0] out_c0_exi20351_27_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_input120,
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
    input wire [127:0] in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_3_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_dupName_7_trunc_sel_x_b;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_0_add_x_a;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_0_add_x_b;
    logic [16:0] dupName_14_i_unnamed_load_input10_dupName_0_add_x_o;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_0_add_x_q;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_1_add_x_a;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_1_add_x_b;
    logic [16:0] dupName_14_i_unnamed_load_input10_dupName_1_add_x_o;
    wire [16:0] dupName_14_i_unnamed_load_input10_dupName_1_add_x_q;
    wire [31:0] dupName_14_i_unnamed_load_input10_mult_extender_x_q;
    wire [2:0] dupName_14_i_unnamed_load_input10_mult_multconst_x_q;
    wire [16:0] dupName_14_i_unnamed_load_input10_add_x_a;
    wire [16:0] dupName_14_i_unnamed_load_input10_add_x_b;
    logic [16:0] dupName_14_i_unnamed_load_input10_add_x_o;
    wire [16:0] dupName_14_i_unnamed_load_input10_add_x_q;
    wire [63:0] dupName_14_i_unnamed_load_input10_append_upper_bits_x_q;
    wire [3:0] dupName_14_i_unnamed_load_input10_c_i4_02_x_q;
    wire [11:0] dupName_14_i_unnamed_load_input10_narrow_x_b;
    wire [15:0] dupName_14_i_unnamed_load_input10_shift_join_x_q;
    wire [31:0] bgTrunc_i_add73_load_input126_sel_x_b;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_load_input146_sel_x_b;
    wire [31:0] bgTrunc_i_inc91_load_input141_sel_x_b;
    wire [63:0] bgTrunc_i_mul72_load_input123_sel_x_in;
    wire [31:0] bgTrunc_i_mul72_load_input123_sel_x_b;
    wire [0:0] i_first_cleanup73_load_input13_sel_x_b;
    wire [63:0] i_idxprom74_load_input127_sel_x_b;
    wire [63:0] i_idxprom79_load_input114_sel_x_b;
    wire [63:0] i_idxprom83_load_input118_sel_x_b;
    wire [0:0] i_last_initeration69_load_input110_sel_x_b;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_0_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_1_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_2_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_3_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_4_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_5_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_6_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_7_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata;
    wire [1:0] c_i2_198_q;
    wire [31:0] c_i32_0101_q;
    wire [31:0] c_i32_1108_q;
    wire [3:0] c_i4_1111_q;
    wire [3:0] c_i4_3109_q;
    wire [63:0] c_load_input1_input_buff_pmem_q;
    wire [32:0] i_add73_load_input126_a;
    wire [32:0] i_add73_load_input126_b;
    logic [32:0] i_add73_load_input126_o;
    wire [32:0] i_add73_load_input126_q;
    wire [1:0] i_cleanups_shl72_load_input15_vt_join_q;
    wire [0:0] i_cleanups_shl72_load_input15_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor74_load_input14_q;
    wire [0:0] i_first_cleanup_xor74_or_load_input130_qi;
    reg [0:0] i_first_cleanup_xor74_or_load_input130_q;
    wire [4:0] i_fpga_indvars_iv_next_load_input146_a;
    wire [4:0] i_fpga_indvars_iv_next_load_input146_b;
    logic [4:0] i_fpga_indvars_iv_next_load_input146_o;
    wire [4:0] i_fpga_indvars_iv_next_load_input146_q;
    wire [63:0] i_idxprom83_load_input118_vt_join_q;
    wire [28:0] i_idxprom83_load_input118_vt_select_31_b;
    wire [32:0] i_inc91_load_input141_a;
    wire [32:0] i_inc91_load_input141_b;
    logic [32:0] i_inc91_load_input141_o;
    wire [32:0] i_inc91_load_input141_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input152_load_input119_out_dest_data_out_21_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_input155_load_input148_out_dest_data_out_21_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going68_load_input16_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop51_load_input156_out_feedback_stall_out_51;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_feedback_stall_out_49;
    wire [1:0] i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_feedback_stall_out_56;
    wire [31:0] i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_feedback_stall_out_55;
    wire [31:0] i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_feedback_stall_out_47;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_feedback_stall_out_46;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push51_load_input157_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_push51_load_input157_out_feedback_valid_out_51;
    wire [7:0] i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_valid_out_49;
    wire [7:0] i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_valid_out_56;
    wire [31:0] i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_valid_out_55;
    wire [31:0] i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_valid_out_47;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_valid_out_46;
    wire [0:0] i_masked77_load_input155_qi;
    reg [0:0] i_masked77_load_input155_q;
    wire [63:0] i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_join_q;
    wire [60:0] i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_select_63_b;
    wire [31:0] i_mul81_load_input117_vt_join_q;
    wire [28:0] i_mul81_load_input117_vt_select_31_b;
    wire [0:0] i_next_cleanups76_load_input153_s;
    reg [1:0] i_next_cleanups76_load_input153_q;
    wire [1:0] i_next_initerations67_load_input18_vt_join_q;
    wire [0:0] i_next_initerations67_load_input18_vt_select_0_b;
    wire [0:0] i_notcmp64_load_input150_q;
    wire [0:0] i_or75_load_input152_q;
    wire [0:0] i_phi_decision72_xor_load_input120_q;
    wire [63:0] i_unnamed_load_input128_vt_join_q;
    wire [60:0] i_unnamed_load_input128_vt_select_63_b;
    wire [0:0] i_unnamed_load_input149_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    wire [16:0] xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [2:0] lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_in;
    wire [2:0] lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b;
    wire [13:0] highABits_uid260_dupName_14_i_unnamed_load_input10_mult_x_b;
    wire [17:0] addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_a;
    wire [17:0] addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_b;
    logic [17:0] addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_o;
    wire [17:0] addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [20:0] add_uid262_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [1:0] lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_in;
    wire [1:0] lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b;
    wire [14:0] highBBits_uid266_dupName_14_i_unnamed_load_input10_mult_x_b;
    wire [17:0] addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_a;
    wire [17:0] addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_b;
    logic [17:0] addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_o;
    wire [17:0] addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [19:0] add_uid268_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [4:0] padACst_uid270_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [24:0] aPostPad_uid271_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [25:0] a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_a;
    wire [25:0] a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_b;
    logic [25:0] a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_o;
    wire [25:0] a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [23:0] sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_in;
    wire [23:0] sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_b;
    wire [28:0] sR_mergedSignalTM_uid277_dupName_14_i_unnamed_load_input10_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid302_i_cleanups_shl72_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_s;
    reg [1:0] leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid310_i_mul81_load_input10_shift_x_q;
    wire [0:0] leftShiftStage0_uid312_i_mul81_load_input10_shift_x_s;
    reg [31:0] leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid313_i_mul81_load_input10_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid315_i_mul81_load_input10_shift_x_q;
    wire [0:0] leftShiftStage1_uid317_i_mul81_load_input10_shift_x_s;
    reg [31:0] leftShiftStage1_uid317_i_mul81_load_input10_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid321_i_next_initerations67_load_input10_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid323_i_next_initerations67_load_input10_shift_x_q;
    wire [0:0] rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_s;
    reg [1:0] rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_q;
    wire [0:0] i_exitcond_load_input144_cmp_nsign_qi;
    reg [0:0] i_exitcond_load_input144_cmp_nsign_q;
    wire [63:0] i_mul72_load_input123_sums_join_0_q;
    wire [50:0] i_mul72_load_input123_sums_align_1_q;
    wire [50:0] i_mul72_load_input123_sums_align_1_qint;
    wire [64:0] i_mul72_load_input123_sums_result_add_0_0_a;
    wire [64:0] i_mul72_load_input123_sums_result_add_0_0_b;
    logic [64:0] i_mul72_load_input123_sums_result_add_0_0_o;
    wire [64:0] i_mul72_load_input123_sums_result_add_0_0_q;
    wire i_mul72_load_input123_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul72_load_input123_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul72_load_input123_im0_cma_c0 [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_p [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_u [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_w [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_x [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_y [0:0];
    reg [35:0] i_mul72_load_input123_im0_cma_s [0:0];
    wire [35:0] i_mul72_load_input123_im0_cma_qq;
    wire [35:0] i_mul72_load_input123_im0_cma_q;
    wire i_mul72_load_input123_im0_cma_ena0;
    wire i_mul72_load_input123_im0_cma_ena1;
    wire i_mul72_load_input123_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul72_load_input123_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul72_load_input123_im8_cma_c0 [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_p [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_u [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_w [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_x [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_y [0:0];
    reg [27:0] i_mul72_load_input123_im8_cma_s [0:0];
    wire [27:0] i_mul72_load_input123_im8_cma_qq;
    wire [27:0] i_mul72_load_input123_im8_cma_q;
    wire i_mul72_load_input123_im8_cma_ena0;
    wire i_mul72_load_input123_im8_cma_ena1;
    wire i_mul72_load_input123_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul72_load_input123_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul72_load_input123_ma3_cma_c0 [0:1];
    wire [31:0] i_mul72_load_input123_ma3_cma_p [0:1];
    wire [32:0] i_mul72_load_input123_ma3_cma_u [0:1];
    wire [32:0] i_mul72_load_input123_ma3_cma_w [0:0];
    wire [32:0] i_mul72_load_input123_ma3_cma_x [0:0];
    wire [32:0] i_mul72_load_input123_ma3_cma_y [0:0];
    reg [32:0] i_mul72_load_input123_ma3_cma_s [0:0];
    wire [32:0] i_mul72_load_input123_ma3_cma_qq;
    wire [32:0] i_mul72_load_input123_ma3_cma_q;
    wire i_mul72_load_input123_ma3_cma_ena0;
    wire i_mul72_load_input123_ma3_cma_ena1;
    wire [15:0] dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_b;
    wire [47:0] dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c;
    wire [17:0] i_mul72_load_input123_bs2_merged_bit_select_b;
    wire [13:0] i_mul72_load_input123_bs2_merged_bit_select_c;
    wire [17:0] i_mul72_load_input123_bs1_merged_bit_select_b;
    wire [13:0] i_mul72_load_input123_bs1_merged_bit_select_c;
    reg [47:0] redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_q;
    reg [47:0] redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_delay_0;
    reg [1:0] redist1_lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b_1_q;
    reg [2:0] redist2_lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b_1_q;
    reg [0:0] redist3_i_masked77_load_input155_q_12_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_q;
    reg [31:0] redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_delay_0;
    reg [0:0] redist6_i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out_12_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out_12_q;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_12_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out_12_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_13_q;
    reg [0:0] redist14_i_first_cleanup_xor74_or_load_input130_q_8_q;
    reg [0:0] redist15_i_first_cleanup_xor74_or_load_input130_q_12_q;
    reg [0:0] redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_0;
    reg [0:0] redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_1;
    reg [0:0] redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_2;
    reg [0:0] redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q;
    reg [31:0] redist17_sync_together145_aunroll_x_in_c0_eni21_2_tpl_1_q;
    reg [31:0] redist18_sync_together145_aunroll_x_in_c0_eni21_3_tpl_1_q;
    reg [31:0] redist19_sync_together145_aunroll_x_in_c0_eni21_4_tpl_1_q;
    reg [0:0] redist20_sync_together145_aunroll_x_in_c0_eni21_5_tpl_1_q;
    reg [0:0] redist21_sync_together145_aunroll_x_in_c0_eni21_6_tpl_1_q;
    reg [0:0] redist22_sync_together145_aunroll_x_in_c0_eni21_7_tpl_1_q;
    reg [31:0] redist23_sync_together145_aunroll_x_in_c0_eni21_8_tpl_1_q;
    reg [0:0] redist24_sync_together145_aunroll_x_in_c0_eni21_9_tpl_1_q;
    reg [0:0] redist26_sync_together145_aunroll_x_in_c0_eni21_11_tpl_13_q;
    reg [0:0] redist27_sync_together145_aunroll_x_in_c0_eni21_12_tpl_13_q;
    reg [0:0] redist30_sync_together145_aunroll_x_in_c0_eni21_15_tpl_13_q;
    reg [0:0] redist31_sync_together145_aunroll_x_in_c0_eni21_16_tpl_13_q;
    reg [0:0] redist34_sync_together145_aunroll_x_in_c0_eni21_19_tpl_13_q;
    reg [0:0] redist35_sync_together145_aunroll_x_in_c0_eni21_20_tpl_13_q;
    reg [0:0] redist37_sync_together145_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist38_sync_together145_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist39_sync_together145_aunroll_x_in_i_valid_12_q;
    reg [0:0] redist39_sync_together145_aunroll_x_in_i_valid_12_delay_0;
    reg [0:0] redist39_sync_together145_aunroll_x_in_i_valid_12_delay_1;
    reg [0:0] redist39_sync_together145_aunroll_x_in_i_valid_12_delay_2;
    reg [31:0] redist40_bgTrunc_i_mul72_load_input123_sel_x_b_1_q;
    reg [15:0] redist43_dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b_1_q;
    reg [15:0] redist44_dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b_1_q;
    reg [15:0] redist45_dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b_1_q;
    reg [15:0] redist46_dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b_1_q;
    wire redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_reset0;
    wire [31:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ia;
    wire [3:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_aa;
    wire [3:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ab;
    wire [31:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_iq;
    wire [31:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_q;
    wire [3:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i;
    (* preserve *) reg redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_eq;
    reg [3:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_wraddr_q;
    wire [4:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_last_q;
    wire [4:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_b;
    wire [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmpReg_q;
    wire [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_notEnable_q;
    wire [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena_q;
    wire [0:0] redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_enaAnd_q;
    wire redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_reset0;
    wire [31:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ia;
    wire [3:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_aa;
    wire [3:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ab;
    wire [31:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_iq;
    wire [31:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_q;
    wire [3:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i;
    (* preserve *) reg redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_eq;
    reg [3:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_wraddr_q;
    wire [4:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_last_q;
    wire [4:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_b;
    wire [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmpReg_q;
    wire [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_notEnable_q;
    wire [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena_q;
    wire [0:0] redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_enaAnd_q;
    wire redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_reset0;
    wire [31:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ia;
    wire [3:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_aa;
    wire [3:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ab;
    wire [31:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_iq;
    wire [31:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_q;
    wire [3:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i;
    (* preserve *) reg redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_eq;
    reg [3:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_wraddr_q;
    wire [4:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_last_q;
    wire [4:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_b;
    wire [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmpReg_q;
    wire [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_notEnable_q;
    wire [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena_q;
    wire [0:0] redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_enaAnd_q;
    wire redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_reset0;
    wire [31:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ia;
    wire [3:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_aa;
    wire [3:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ab;
    wire [31:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_iq;
    wire [31:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_q;
    wire [3:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i;
    (* preserve *) reg redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_eq;
    reg [3:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_wraddr_q;
    wire [4:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_last_q;
    wire [4:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_b;
    wire [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmpReg_q;
    wire [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_notEnable_q;
    wire [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena_q;
    wire [0:0] redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_enaAnd_q;
    wire redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_reset0;
    wire [31:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ia;
    wire [3:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_aa;
    wire [3:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ab;
    wire [31:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_iq;
    wire [31:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_q;
    wire [3:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i;
    (* preserve *) reg redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_eq;
    reg [3:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_wraddr_q;
    wire [4:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_last_q;
    wire [4:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_b;
    wire [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmpReg_q;
    wire [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_notEnable_q;
    wire [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena_q;
    wire [0:0] redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_enaAnd_q;
    wire redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_reset0;
    wire [31:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ia;
    wire [3:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_aa;
    wire [3:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ab;
    wire [31:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_iq;
    wire [31:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_q;
    wire [3:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_q;
    (* preserve *) reg [3:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i;
    (* preserve *) reg redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_eq;
    reg [3:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_wraddr_q;
    wire [4:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_last_q;
    wire [4:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_b;
    wire [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmpReg_q;
    wire [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_notEnable_q;
    wire [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena_q;
    wire [0:0] redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_enaAnd_q;
    reg [11:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_outputreg0_q;
    wire redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_reset0;
    wire [11:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ia;
    wire [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_aa;
    wire [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ab;
    wire [11:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_iq;
    wire [11:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_q;
    wire [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_q;
    (* preserve *) reg [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i;
    (* preserve *) reg redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_eq;
    reg [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_wraddr_q;
    wire [2:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_last_q;
    wire [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmp_q;
    (* dont_merge *) reg [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmpReg_q;
    wire [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_notEnable_q;
    wire [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_nor_q;
    (* dont_merge *) reg [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena_q;
    wire [0:0] redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_enaAnd_q;
    reg [15:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_outputreg0_q;
    wire redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_reset0;
    wire [15:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ia;
    wire [2:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_aa;
    wire [2:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ab;
    wire [15:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_iq;
    wire [15:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_q;
    wire [2:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_q;
    (* preserve *) reg [2:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i;
    (* preserve *) reg redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_eq;
    reg [2:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_wraddr_q;
    wire [3:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_last_q;
    wire [3:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_b;
    wire [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_q;
    (* dont_merge *) reg [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmpReg_q;
    wire [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_notEnable_q;
    wire [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_nor_q;
    (* dont_merge *) reg [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena_q;
    wire [0:0] redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist37_sync_together145_aunroll_x_in_i_valid_1(DELAY,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together145_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist37_sync_together145_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist38_sync_together145_aunroll_x_in_i_valid_8(DELAY,387)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist38_sync_together145_aunroll_x_in_i_valid_8 ( .xin(redist37_sync_together145_aunroll_x_in_i_valid_1_q), .xout(redist38_sync_together145_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg13(REG,194)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist38_sync_together145_aunroll_x_in_i_valid_8_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i4_1111(CONSTANT,98)
    assign c_i4_1111_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next_load_input146(ADD,112)@1
    assign i_fpga_indvars_iv_next_load_input146_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_data_out};
    assign i_fpga_indvars_iv_next_load_input146_b = {1'b0, c_i4_1111_q};
    assign i_fpga_indvars_iv_next_load_input146_o = $unsigned(i_fpga_indvars_iv_next_load_input146_a) + $unsigned(i_fpga_indvars_iv_next_load_input146_b);
    assign i_fpga_indvars_iv_next_load_input146_q = i_fpga_indvars_iv_next_load_input146_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_load_input146_sel_x(BITSELECT,32)@1
    assign bgTrunc_i_fpga_indvars_iv_next_load_input146_sel_x_b = i_fpga_indvars_iv_next_load_input146_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147(BLACKBOX,153)@1
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    cnn_top_i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input10 thei_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_load_input146_sel_x_b),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_feedback_stall_out_46),
        .in_keep_going68(i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_3109(CONSTANT,99)
    assign c_i4_3109_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143(BLACKBOX,139)@1
    // out out_feedback_stall_out_46@20000000
    cnn_top_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input10 thei_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143 (
        .in_data_in(c_i4_3109_q),
        .in_dir(in_c0_eni21_1_tpl),
        .in_feedback_in_46(i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i4_fpga_indvars_iv_push46_load_input147_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_load_input144_cmp_nsign(LOGICAL,327)@1 + 1
    assign i_exitcond_load_input144_cmp_nsign_qi = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop46_load_input143_out_data_out[3:3]));
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_exitcond_load_input144_cmp_nsign_delay ( .xin(i_exitcond_load_input144_cmp_nsign_qi), .xout(i_exitcond_load_input144_cmp_nsign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input155_load_input148(BLACKBOX,125)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput155_load_input10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input155_load_input148 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist37_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input155_load_input148_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_load_input149(LOGICAL,172)@2
    assign i_unnamed_load_input149_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input155_load_input148_out_dest_data_out_21_0 & i_exitcond_load_input144_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond78_load_input151(BLACKBOX,144)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond78_load_input10 thei_llvm_fpga_push_i1_notexitcond78_load_input151 (
        .in_data_in(i_unnamed_load_input149_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going68_load_input16_out_not_exitcond_stall_out),
        .in_first_cleanup73(i_first_cleanup73_load_input13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist37_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,184)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid321_i_next_initerations67_load_input10_shift_x(BITSELECT,320)@2
    assign rightShiftStage0Idx1Rng1_uid321_i_next_initerations67_load_input10_shift_x_b = i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_data_out[1:1];

    // rightShiftStage0Idx1_uid323_i_next_initerations67_load_input10_shift_x(BITJOIN,322)@2
    assign rightShiftStage0Idx1_uid323_i_next_initerations67_load_input10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid321_i_next_initerations67_load_input10_shift_x_b};

    // valid_fanout_reg1(REG,182)@1 + 1
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

    // valid_fanout_reg2(REG,183)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations66_push48_load_input19(BLACKBOX,147)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations66_push48_load_input10 thei_llvm_fpga_push_i2_initerations66_push48_load_input19 (
        .in_data_in(i_next_initerations67_load_input18_vt_join_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_feedback_stall_out_48),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations66_pop48_load_input17(BLACKBOX,133)@2
    // out out_feedback_stall_out_48@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations66_pop48_load_input10 thei_llvm_fpga_pop_i2_initerations66_pop48_load_input17 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i2_initerations66_push48_load_input19_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x(MUX,324)@2
    assign rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_s or i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_data_out or rightShiftStage0Idx1_uid323_i_next_initerations67_load_input10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_s)
            1'b0 : rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_q = i_llvm_fpga_pop_i2_initerations66_pop48_load_input17_out_data_out;
            1'b1 : rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_q = rightShiftStage0Idx1_uid323_i_next_initerations67_load_input10_shift_x_q;
            default : rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations67_load_input18_vt_select_0(BITSELECT,165)@2
    assign i_next_initerations67_load_input18_vt_select_0_b = rightShiftStage0_uid325_i_next_initerations67_load_input10_shift_x_q[0:0];

    // i_next_initerations67_load_input18_vt_join(BITJOIN,164)@2
    assign i_next_initerations67_load_input18_vt_join_q = {GND_q, i_next_initerations67_load_input18_vt_select_0_b};

    // i_last_initeration69_load_input110_sel_x(BITSELECT,46)@2
    assign i_last_initeration69_load_input110_sel_x_b = i_next_initerations67_load_input18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration70_load_input111(BLACKBOX,140)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration70_load_input10 thei_llvm_fpga_push_i1_lastiniteration70_load_input111 (
        .in_data_in(i_last_initeration69_load_input110_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going68_load_input16_out_initeration_stall_out),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going68_load_input16(BLACKBOX,127)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going68_load_input10 thei_llvm_fpga_pipeline_keep_going68_load_input16 (
        .in_data_in(in_c0_eni21_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration70_load_input111_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond78_load_input151_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going68_load_input16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x(BITSELECT,300)@2
    assign leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_in = i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_b = leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid302_i_cleanups_shl72_load_input10_shift_x(BITJOIN,301)@2
    assign leftShiftStage0Idx1_uid302_i_cleanups_shl72_load_input10_shift_x_q = {leftShiftStage0Idx1Rng1_uid301_i_cleanups_shl72_load_input10_shift_x_b, GND_q};

    // leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x(MUX,303)@2
    assign leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_s or i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out or leftShiftStage0Idx1_uid302_i_cleanups_shl72_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_q = i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out;
            1'b1 : leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_q = leftShiftStage0Idx1_uid302_i_cleanups_shl72_load_input10_shift_x_q;
            default : leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl72_load_input15_vt_select_1(BITSELECT,107)@2
    assign i_cleanups_shl72_load_input15_vt_select_1_b = leftShiftStage0_uid304_i_cleanups_shl72_load_input10_shift_x_q[1:1];

    // i_cleanups_shl72_load_input15_vt_join(BITJOIN,106)@2
    assign i_cleanups_shl72_load_input15_vt_join_q = {i_cleanups_shl72_load_input15_vt_select_1_b, GND_q};

    // i_notcmp64_load_input150(LOGICAL,166)@2
    assign i_notcmp64_load_input150_q = i_unnamed_load_input149_q ^ VCC_q;

    // i_or75_load_input152(LOGICAL,167)@2
    assign i_or75_load_input152_q = i_notcmp64_load_input150_q | i_first_cleanup_xor74_load_input14_q;

    // i_next_cleanups76_load_input153(MUX,162)@2
    assign i_next_cleanups76_load_input153_s = i_or75_load_input152_q;
    always @(i_next_cleanups76_load_input153_s or i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out or i_cleanups_shl72_load_input15_vt_join_q)
    begin
        unique case (i_next_cleanups76_load_input153_s)
            1'b0 : i_next_cleanups76_load_input153_q = i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out;
            1'b1 : i_next_cleanups76_load_input153_q = i_cleanups_shl72_load_input15_vt_join_q;
            default : i_next_cleanups76_load_input153_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups71_push49_load_input154(BLACKBOX,146)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups71_push49_load_input10 thei_llvm_fpga_push_i2_cleanups71_push49_load_input154 (
        .in_data_in(i_next_cleanups76_load_input153_q),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_feedback_stall_out_49),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist37_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1(DELAY,365)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q <= $unsigned(in_c0_eni21_1_tpl);
        end
    end

    // c_i2_198(CONSTANT,94)
    assign c_i2_198_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12(BLACKBOX,132)@2
    // out out_feedback_stall_out_49@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups71_pop49_load_input10 thei_llvm_fpga_pop_i2_cleanups71_pop49_load_input12 (
        .in_data_in(c_i2_198_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i2_cleanups71_push49_load_input154_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist37_sync_together145_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup73_load_input13_sel_x(BITSELECT,42)@2
    assign i_first_cleanup73_load_input13_sel_x_b = i_llvm_fpga_pop_i2_cleanups71_pop49_load_input12_out_data_out[0:0];

    // i_first_cleanup_xor74_load_input14(LOGICAL,110)@2
    assign i_first_cleanup_xor74_load_input14_q = i_first_cleanup73_load_input13_sel_x_b ^ VCC_q;

    // valid_fanout_reg8(REG,189)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_input152_load_input119(BLACKBOX,124)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000nput152_load_input10 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_input152_load_input119 (
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_21_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_input152_load_input119_out_dest_data_out_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision72_xor_load_input120(LOGICAL,168)@2
    assign i_phi_decision72_xor_load_input120_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_input152_load_input119_out_dest_data_out_21_0 ^ VCC_q;

    // i_first_cleanup_xor74_or_load_input130(LOGICAL,111)@2 + 1
    assign i_first_cleanup_xor74_or_load_input130_qi = i_phi_decision72_xor_load_input120_q | i_first_cleanup_xor74_load_input14_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor74_or_load_input130_delay ( .xin(i_first_cleanup_xor74_or_load_input130_qi), .xout(i_first_cleanup_xor74_or_load_input130_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_first_cleanup_xor74_or_load_input130_q_8(DELAY,363)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_first_cleanup_xor74_or_load_input130_q_8 ( .xin(i_first_cleanup_xor74_or_load_input130_q), .xout(redist14_i_first_cleanup_xor74_or_load_input130_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_load_input1_input_buff_pmem(CONSTANT,101)
    assign c_load_input1_input_buff_pmem_q = $unsigned(64'b0100000001000011000000000000000000000000000000000000000000000000);

    // dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select(BITSELECT,346)@8
    assign dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_b = c_load_input1_input_buff_pmem_q[15:0];
    assign dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c = c_load_input1_input_buff_pmem_q[63:16];

    // redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_delay_0 <= '0;
            redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_delay_0 <= $unsigned(dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c);
            redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_q <= redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_delay_0;
        end
    end

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_notEnable(LOGICAL,474)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_nor(LOGICAL,475)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_nor_q = ~ (redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_notEnable_q | redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena_q);

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_last(CONSTANT,471)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_last_q = $unsigned(4'b0100);

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp(LOGICAL,472)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_b = {1'b0, redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_q};
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_q = $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_last_q == redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_b ? 1'b1 : 1'b0);

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmpReg(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmpReg_q <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmp_q);
        end
    end

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_nor_q == 1'b1)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena_q <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_cmpReg_q);
        end
    end

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_enaAnd(LOGICAL,477)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_enaAnd_q = redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_sticky_ena_q & VCC_q;

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt(COUNTER,469)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i <= 3'd0;
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i == 3'd4)
            begin
                redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_eq <= 1'b0;
            end
            if (redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_eq == 1'b1)
            begin
                redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_q = redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_i[2:0];

    // c_i32_0101(CONSTANT,95)
    assign c_i32_0101_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x(BITSELECT,313)@2
    assign leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_in = leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_b = leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid313_i_mul81_load_input10_shift_x(CONSTANT,312)
    assign leftShiftStage1Idx1Pad2_uid313_i_mul81_load_input10_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid315_i_mul81_load_input10_shift_x(BITJOIN,314)@2
    assign leftShiftStage1Idx1_uid315_i_mul81_load_input10_shift_x_q = {leftShiftStage1Idx1Rng2_uid314_i_mul81_load_input10_shift_x_b, leftShiftStage1Idx1Pad2_uid313_i_mul81_load_input10_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x(BITSELECT,308)@2
    assign leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_in = i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_b = leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid310_i_mul81_load_input10_shift_x(BITJOIN,309)@2
    assign leftShiftStage0Idx1_uid310_i_mul81_load_input10_shift_x_q = {leftShiftStage0Idx1Rng1_uid309_i_mul81_load_input10_shift_x_b, GND_q};

    // valid_fanout_reg6(REG,187)@1 + 1
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

    // valid_fanout_reg7(REG,188)@1 + 1
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

    // i_llvm_fpga_push_i32_li_082101_push50_load_input116(BLACKBOX,151)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    cnn_top_i_llvm_fpga_push_i32_li_082101_push50_load_input10 thei_llvm_fpga_push_i32_li_082101_push50_load_input116 (
        .in_data_in(i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_feedback_stall_out_50),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_sync_together145_aunroll_x_in_c0_eni21_3_tpl_1(DELAY,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together145_aunroll_x_in_c0_eni21_3_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together145_aunroll_x_in_c0_eni21_3_tpl_1_q <= $unsigned(in_c0_eni21_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_li_082101_pop50_load_input115(BLACKBOX,137)@2
    // out out_feedback_stall_out_50@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_082101_pop50_load_input10 thei_llvm_fpga_pop_i32_li_082101_pop50_load_input115 (
        .in_data_in(redist18_sync_together145_aunroll_x_in_c0_eni21_3_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_li_082101_push50_load_input116_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid312_i_mul81_load_input10_shift_x(MUX,311)@2
    assign leftShiftStage0_uid312_i_mul81_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid312_i_mul81_load_input10_shift_x_s or i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out or leftShiftStage0Idx1_uid310_i_mul81_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid312_i_mul81_load_input10_shift_x_s)
            1'b0 : leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q = i_llvm_fpga_pop_i32_li_082101_pop50_load_input115_out_data_out;
            1'b1 : leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q = leftShiftStage0Idx1_uid310_i_mul81_load_input10_shift_x_q;
            default : leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid317_i_mul81_load_input10_shift_x(MUX,316)@2
    assign leftShiftStage1_uid317_i_mul81_load_input10_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid317_i_mul81_load_input10_shift_x_s or leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q or leftShiftStage1Idx1_uid315_i_mul81_load_input10_shift_x_q)
    begin
        unique case (leftShiftStage1_uid317_i_mul81_load_input10_shift_x_s)
            1'b0 : leftShiftStage1_uid317_i_mul81_load_input10_shift_x_q = leftShiftStage0_uid312_i_mul81_load_input10_shift_x_q;
            1'b1 : leftShiftStage1_uid317_i_mul81_load_input10_shift_x_q = leftShiftStage1Idx1_uid315_i_mul81_load_input10_shift_x_q;
            default : leftShiftStage1_uid317_i_mul81_load_input10_shift_x_q = 32'b0;
        endcase
    end

    // i_mul81_load_input117_vt_select_31(BITSELECT,161)@2
    assign i_mul81_load_input117_vt_select_31_b = leftShiftStage1_uid317_i_mul81_load_input10_shift_x_q[31:3];

    // i_mul81_load_input117_vt_join(BITJOIN,160)@2
    assign i_mul81_load_input117_vt_join_q = {i_mul81_load_input117_vt_select_31_b, dupName_14_i_unnamed_load_input10_mult_multconst_x_q};

    // i_idxprom83_load_input118_sel_x(BITSELECT,45)@2
    assign i_idxprom83_load_input118_sel_x_b = {32'b00000000000000000000000000000000, i_mul81_load_input117_vt_join_q[31:0]};

    // i_idxprom83_load_input118_vt_select_31(BITSELECT,121)@2
    assign i_idxprom83_load_input118_vt_select_31_b = i_idxprom83_load_input118_sel_x_b[31:3];

    // i_idxprom83_load_input118_vt_join(BITJOIN,120)@2
    assign i_idxprom83_load_input118_vt_join_q = {c_i32_0101_q, i_idxprom83_load_input118_vt_select_31_b, dupName_14_i_unnamed_load_input10_mult_multconst_x_q};

    // dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x(BITSELECT,7)@2
    assign dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b = i_idxprom83_load_input118_vt_join_q[15:0];

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_wraddr(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_wraddr_q <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_q);
        end
    end

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem(DUALMEM,468)
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ia = $unsigned(dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b);
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_aa = redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_wraddr_q;
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ab = redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_rdcnt_q;
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(16),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(16),
        .widthad_b(3),
        .numwords_b(6),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_dmem (
        .clocken1(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_reset0),
        .clock1(clock),
        .address_a(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_aa),
        .data_a(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_ab),
        .q_b(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_q = redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_iq[15:0];

    // redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_outputreg0(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_outputreg0_q <= '0;
        end
        else
        begin
            redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_outputreg0_q <= $unsigned(redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_mem_q);
        end
    end

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_notEnable(LOGICAL,463)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_nor(LOGICAL,464)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_nor_q = ~ (redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_notEnable_q | redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena_q);

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_last(CONSTANT,460)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_last_q = $unsigned(3'b011);

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmp(LOGICAL,461)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmp_q = $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_last_q == redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_q ? 1'b1 : 1'b0);

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmpReg(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmpReg_q <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmp_q);
        end
    end

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_nor_q == 1'b1)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena_q <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_cmpReg_q);
        end
    end

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_enaAnd(LOGICAL,466)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_enaAnd_q = redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_sticky_ena_q & VCC_q;

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt(COUNTER,458)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i <= 3'd0;
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i == 3'd3)
            begin
                redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_eq <= 1'b0;
            end
            if (redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_eq == 1'b1)
            begin
                redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_q = redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_i[2:0];

    // valid_fanout_reg4(REG,185)@1 + 1
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

    // valid_fanout_reg5(REG,186)@1 + 1
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

    // i_llvm_fpga_push_i32_add78114_push56_load_input113(BLACKBOX,148)@2
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    cnn_top_i_llvm_fpga_push_i32_add78114_push56_load_input10 thei_llvm_fpga_push_i32_add78114_push56_load_input113 (
        .in_data_in(i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_data_out),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_feedback_stall_out_56),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_valid_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together145_aunroll_x_in_c0_eni21_2_tpl_1(DELAY,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together145_aunroll_x_in_c0_eni21_2_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together145_aunroll_x_in_c0_eni21_2_tpl_1_q <= $unsigned(in_c0_eni21_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add78114_pop56_load_input112(BLACKBOX,134)@2
    // out out_feedback_stall_out_56@20000000
    cnn_top_i_llvm_fpga_pop_i32_add78114_pop56_load_input10 thei_llvm_fpga_pop_i32_add78114_pop56_load_input112 (
        .in_data_in(redist17_sync_together145_aunroll_x_in_c0_eni21_2_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_56(i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i32_add78114_push56_load_input113_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_feedback_stall_out_56),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom79_load_input114_sel_x(BITSELECT,44)@2
    assign i_idxprom79_load_input114_sel_x_b = $unsigned({{32{i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_data_out[31]}}, i_llvm_fpga_pop_i32_add78114_pop56_load_input112_out_data_out[31:0]});

    // dupName_14_i_unnamed_load_input10_dupName_3_trunc_sel_x(BITSELECT,5)@2
    assign dupName_14_i_unnamed_load_input10_dupName_3_trunc_sel_x_b = i_idxprom79_load_input114_sel_x_b[15:0];

    // dupName_14_i_unnamed_load_input10_narrow_x(BITSELECT,27)@2
    assign dupName_14_i_unnamed_load_input10_narrow_x_b = dupName_14_i_unnamed_load_input10_dupName_3_trunc_sel_x_b[11:0];

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_wraddr(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_wraddr_q <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_q);
        end
    end

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem(DUALMEM,457)
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ia = $unsigned(dupName_14_i_unnamed_load_input10_narrow_x_b);
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_aa = redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_wraddr_q;
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ab = redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_rdcnt_q;
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(12),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(12),
        .widthad_b(3),
        .numwords_b(5),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_dmem (
        .clocken1(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_reset0),
        .clock1(clock),
        .address_a(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_aa),
        .data_a(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_ab),
        .q_b(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_q = redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_iq[11:0];

    // redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_outputreg0(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_outputreg0_q <= '0;
        end
        else
        begin
            redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_outputreg0_q <= $unsigned(redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_mem_q);
        end
    end

    // dupName_14_i_unnamed_load_input10_c_i4_02_x(CONSTANT,25)
    assign dupName_14_i_unnamed_load_input10_c_i4_02_x_q = $unsigned(4'b0000);

    // dupName_14_i_unnamed_load_input10_shift_join_x(BITJOIN,28)@9
    assign dupName_14_i_unnamed_load_input10_shift_join_x_q = {redist41_dupName_14_i_unnamed_load_input10_narrow_x_b_7_outputreg0_q, dupName_14_i_unnamed_load_input10_c_i4_02_x_q};

    // valid_fanout_reg11(REG,192)@1 + 1
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

    // valid_fanout_reg12(REG,193)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist37_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2(DELAY,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125(BLACKBOX,149)@3
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    cnn_top_i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input10 thei_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125 (
        .in_data_in(redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1_q),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_feedback_stall_out_53),
        .in_keep_going68(redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together145_aunroll_x_in_c0_eni21_4_tpl_1(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together145_aunroll_x_in_c0_eni21_4_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together145_aunroll_x_in_c0_eni21_4_tpl_1_q <= $unsigned(in_c0_eni21_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124(BLACKBOX,135)@2
    // out out_feedback_stall_out_53@20000000
    cnn_top_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input10 thei_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124 (
        .in_data_in(redist19_sync_together145_aunroll_x_in_c0_eni21_4_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i32_kh_080_pop21109_push53_load_input125_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1(DELAY,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out);
        end
    end

    // redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3(DELAY,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_delay_0 <= '0;
            redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_delay_0 <= $unsigned(redist4_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_1_q);
            redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_q <= redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_delay_0;
        end
    end

    // valid_fanout_reg9(REG,190)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121(BLACKBOX,126)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_param_0000tract33_load_input10 thei_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121_out_dest_data_out_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul72_load_input123_bs2_merged_bit_select(BITSELECT,347)@2
    assign i_mul72_load_input123_bs2_merged_bit_select_b = i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121_out_dest_data_out_4_0[17:0];
    assign i_mul72_load_input123_bs2_merged_bit_select_c = i_llvm_fpga_ffwd_dest_i32_param_fca_13_extract33_load_input121_out_dest_data_out_4_0[31:18];

    // valid_fanout_reg10(REG,191)@1 + 1
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

    // valid_fanout_reg14(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1108(CONSTANT,96)
    assign c_i32_1108_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc91_load_input141(ADD,122)@2
    assign i_inc91_load_input141_a = {1'b0, i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_data_out};
    assign i_inc91_load_input141_b = {1'b0, c_i32_1108_q};
    assign i_inc91_load_input141_o = $unsigned(i_inc91_load_input141_a) + $unsigned(i_inc91_load_input141_b);
    assign i_inc91_load_input141_q = i_inc91_load_input141_o[32:0];

    // bgTrunc_i_inc91_load_input141_sel_x(BITSELECT,33)@2
    assign bgTrunc_i_inc91_load_input141_sel_x_b = i_inc91_load_input141_q[31:0];

    // i_llvm_fpga_push_i32_trr_073_push47_load_input142(BLACKBOX,152)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    cnn_top_i_llvm_fpga_push_i32_trr_073_push47_load_input10 thei_llvm_fpga_push_i32_trr_073_push47_load_input142 (
        .in_data_in(bgTrunc_i_inc91_load_input141_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_feedback_stall_out_47),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_trr_073_pop47_load_input122(BLACKBOX,138)@2
    // out out_feedback_stall_out_47@20000000
    cnn_top_i_llvm_fpga_pop_i32_trr_073_pop47_load_input10 thei_llvm_fpga_pop_i32_trr_073_pop47_load_input122 (
        .in_data_in(c_i32_0101_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i32_trr_073_push47_load_input142_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul72_load_input123_bs1_merged_bit_select(BITSELECT,348)@2
    assign i_mul72_load_input123_bs1_merged_bit_select_b = i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_data_out[17:0];
    assign i_mul72_load_input123_bs1_merged_bit_select_c = i_llvm_fpga_pop_i32_trr_073_pop47_load_input122_out_data_out[31:18];

    // i_mul72_load_input123_ma3_cma(CHAINMULTADD,345)@2 + 2
    assign i_mul72_load_input123_ma3_cma_reset = ~ (resetn);
    assign i_mul72_load_input123_ma3_cma_ena0 = 1'b1;
    assign i_mul72_load_input123_ma3_cma_ena1 = i_mul72_load_input123_ma3_cma_ena0;
    assign i_mul72_load_input123_ma3_cma_p[0] = i_mul72_load_input123_ma3_cma_a0[0] * i_mul72_load_input123_ma3_cma_c0[0];
    assign i_mul72_load_input123_ma3_cma_p[1] = i_mul72_load_input123_ma3_cma_a0[1] * i_mul72_load_input123_ma3_cma_c0[1];
    assign i_mul72_load_input123_ma3_cma_u[0] = {1'b0, i_mul72_load_input123_ma3_cma_p[0][31:0]};
    assign i_mul72_load_input123_ma3_cma_u[1] = {1'b0, i_mul72_load_input123_ma3_cma_p[1][31:0]};
    assign i_mul72_load_input123_ma3_cma_w[0] = i_mul72_load_input123_ma3_cma_u[0] + i_mul72_load_input123_ma3_cma_u[1];
    assign i_mul72_load_input123_ma3_cma_x[0] = i_mul72_load_input123_ma3_cma_w[0];
    assign i_mul72_load_input123_ma3_cma_y[0] = i_mul72_load_input123_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_ma3_cma_a0 <= '{default: '0};
            i_mul72_load_input123_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_ma3_cma_ena0 == 1'b1)
            begin
                i_mul72_load_input123_ma3_cma_a0[0] <= i_mul72_load_input123_bs1_merged_bit_select_c;
                i_mul72_load_input123_ma3_cma_a0[1] <= i_mul72_load_input123_bs2_merged_bit_select_c;
                i_mul72_load_input123_ma3_cma_c0[0] <= i_mul72_load_input123_bs2_merged_bit_select_b;
                i_mul72_load_input123_ma3_cma_c0[1] <= i_mul72_load_input123_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_ma3_cma_ena1 == 1'b1)
            begin
                i_mul72_load_input123_ma3_cma_s[0] <= i_mul72_load_input123_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul72_load_input123_ma3_cma_delay ( .xin(i_mul72_load_input123_ma3_cma_s[0]), .xout(i_mul72_load_input123_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul72_load_input123_ma3_cma_q = $unsigned(i_mul72_load_input123_ma3_cma_qq[32:0]);

    // i_mul72_load_input123_sums_align_1(BITSHIFT,340)@4
    assign i_mul72_load_input123_sums_align_1_qint = { i_mul72_load_input123_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul72_load_input123_sums_align_1_q = i_mul72_load_input123_sums_align_1_qint[50:0];

    // i_mul72_load_input123_im8_cma(CHAINMULTADD,344)@2 + 2
    assign i_mul72_load_input123_im8_cma_reset = ~ (resetn);
    assign i_mul72_load_input123_im8_cma_ena0 = 1'b1;
    assign i_mul72_load_input123_im8_cma_ena1 = i_mul72_load_input123_im8_cma_ena0;
    assign i_mul72_load_input123_im8_cma_p[0] = i_mul72_load_input123_im8_cma_a0[0] * i_mul72_load_input123_im8_cma_c0[0];
    assign i_mul72_load_input123_im8_cma_u[0] = i_mul72_load_input123_im8_cma_p[0][27:0];
    assign i_mul72_load_input123_im8_cma_w[0] = i_mul72_load_input123_im8_cma_u[0];
    assign i_mul72_load_input123_im8_cma_x[0] = i_mul72_load_input123_im8_cma_w[0];
    assign i_mul72_load_input123_im8_cma_y[0] = i_mul72_load_input123_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_im8_cma_a0 <= '{default: '0};
            i_mul72_load_input123_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_im8_cma_ena0 == 1'b1)
            begin
                i_mul72_load_input123_im8_cma_a0[0] <= i_mul72_load_input123_bs1_merged_bit_select_c;
                i_mul72_load_input123_im8_cma_c0[0] <= i_mul72_load_input123_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_im8_cma_ena1 == 1'b1)
            begin
                i_mul72_load_input123_im8_cma_s[0] <= i_mul72_load_input123_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul72_load_input123_im8_cma_delay ( .xin(i_mul72_load_input123_im8_cma_s[0]), .xout(i_mul72_load_input123_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul72_load_input123_im8_cma_q = $unsigned(i_mul72_load_input123_im8_cma_qq[27:0]);

    // i_mul72_load_input123_im0_cma(CHAINMULTADD,343)@2 + 2
    assign i_mul72_load_input123_im0_cma_reset = ~ (resetn);
    assign i_mul72_load_input123_im0_cma_ena0 = 1'b1;
    assign i_mul72_load_input123_im0_cma_ena1 = i_mul72_load_input123_im0_cma_ena0;
    assign i_mul72_load_input123_im0_cma_p[0] = i_mul72_load_input123_im0_cma_a0[0] * i_mul72_load_input123_im0_cma_c0[0];
    assign i_mul72_load_input123_im0_cma_u[0] = i_mul72_load_input123_im0_cma_p[0][35:0];
    assign i_mul72_load_input123_im0_cma_w[0] = i_mul72_load_input123_im0_cma_u[0];
    assign i_mul72_load_input123_im0_cma_x[0] = i_mul72_load_input123_im0_cma_w[0];
    assign i_mul72_load_input123_im0_cma_y[0] = i_mul72_load_input123_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_im0_cma_a0 <= '{default: '0};
            i_mul72_load_input123_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_im0_cma_ena0 == 1'b1)
            begin
                i_mul72_load_input123_im0_cma_a0[0] <= i_mul72_load_input123_bs1_merged_bit_select_b;
                i_mul72_load_input123_im0_cma_c0[0] <= i_mul72_load_input123_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul72_load_input123_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul72_load_input123_im0_cma_ena1 == 1'b1)
            begin
                i_mul72_load_input123_im0_cma_s[0] <= i_mul72_load_input123_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul72_load_input123_im0_cma_delay ( .xin(i_mul72_load_input123_im0_cma_s[0]), .xout(i_mul72_load_input123_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul72_load_input123_im0_cma_q = $unsigned(i_mul72_load_input123_im0_cma_qq[35:0]);

    // i_mul72_load_input123_sums_join_0(BITJOIN,339)@4
    assign i_mul72_load_input123_sums_join_0_q = {i_mul72_load_input123_im8_cma_q, i_mul72_load_input123_im0_cma_q};

    // i_mul72_load_input123_sums_result_add_0_0(ADD,342)@4
    assign i_mul72_load_input123_sums_result_add_0_0_a = {1'b0, i_mul72_load_input123_sums_join_0_q};
    assign i_mul72_load_input123_sums_result_add_0_0_b = {14'b00000000000000, i_mul72_load_input123_sums_align_1_q};
    assign i_mul72_load_input123_sums_result_add_0_0_o = $unsigned(i_mul72_load_input123_sums_result_add_0_0_a) + $unsigned(i_mul72_load_input123_sums_result_add_0_0_b);
    assign i_mul72_load_input123_sums_result_add_0_0_q = i_mul72_load_input123_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul72_load_input123_sel_x(BITSELECT,34)@4
    assign bgTrunc_i_mul72_load_input123_sel_x_in = i_mul72_load_input123_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul72_load_input123_sel_x_b = bgTrunc_i_mul72_load_input123_sel_x_in[31:0];

    // redist40_bgTrunc_i_mul72_load_input123_sel_x_b_1(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_bgTrunc_i_mul72_load_input123_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist40_bgTrunc_i_mul72_load_input123_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul72_load_input123_sel_x_b);
        end
    end

    // i_add73_load_input126(ADD,104)@5
    assign i_add73_load_input126_a = {1'b0, redist40_bgTrunc_i_mul72_load_input123_sel_x_b_1_q};
    assign i_add73_load_input126_b = {1'b0, redist5_i_llvm_fpga_pop_i32_kh_080_pop21109_pop53_load_input124_out_data_out_3_q};
    assign i_add73_load_input126_o = $unsigned(i_add73_load_input126_a) + $unsigned(i_add73_load_input126_b);
    assign i_add73_load_input126_q = i_add73_load_input126_o[32:0];

    // bgTrunc_i_add73_load_input126_sel_x(BITSELECT,31)@5
    assign bgTrunc_i_add73_load_input126_sel_x_b = i_add73_load_input126_q[31:0];

    // i_idxprom74_load_input127_sel_x(BITSELECT,43)@5
    assign i_idxprom74_load_input127_sel_x_b = $unsigned({{32{bgTrunc_i_add73_load_input126_sel_x_b[31]}}, bgTrunc_i_add73_load_input126_sel_x_b[31:0]});

    // dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x(BITSELECT,2)@5
    assign dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b = i_idxprom74_load_input127_sel_x_b[15:0];

    // redist46_dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b_1(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist46_dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b_1_q <= $unsigned(dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b);
        end
    end

    // xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x(BITJOIN,254)@6
    assign xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q = {GND_q, redist46_dupName_14_i_unnamed_load_input10_dupName_0_trunc_sel_x_b_1_q};

    // highABits_uid260_dupName_14_i_unnamed_load_input10_mult_x(BITSELECT,259)@6
    assign highABits_uid260_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned(xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[16:3]);

    // addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x(ADD,260)@6 + 1
    assign addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_a = $unsigned({{4{highABits_uid260_dupName_14_i_unnamed_load_input10_mult_x_b[13]}}, highABits_uid260_dupName_14_i_unnamed_load_input10_mult_x_b});
    assign addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned({{1{xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[16]}}, xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_o <= 18'b0;
        end
        else
        begin
            addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_o <= $unsigned($signed(addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_a) + $signed(addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_b));
        end
    end
    assign addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_q = addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_o[17:0];

    // lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x(BITSELECT,258)@6
    assign lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_in = xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[2:0];
    assign lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b = lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_in[2:0];

    // redist2_lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b_1(DELAY,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b_1_q <= '0;
        end
        else
        begin
            redist2_lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b_1_q <= $unsigned(lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b);
        end
    end

    // add_uid262_dupName_14_i_unnamed_load_input10_mult_x(BITJOIN,261)@7
    assign add_uid262_dupName_14_i_unnamed_load_input10_mult_x_q = {addhigh_uid261_dupName_14_i_unnamed_load_input10_mult_x_q, redist2_lowRangeA_uid259_dupName_14_i_unnamed_load_input10_mult_x_b_1_q};

    // highBBits_uid266_dupName_14_i_unnamed_load_input10_mult_x(BITSELECT,265)@6
    assign highBBits_uid266_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned(xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[16:2]);

    // addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x(ADD,266)@6 + 1
    assign addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_a = $unsigned({{1{xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[16]}}, xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q});
    assign addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned({{3{highBBits_uid266_dupName_14_i_unnamed_load_input10_mult_x_b[14]}}, highBBits_uid266_dupName_14_i_unnamed_load_input10_mult_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_o <= 18'b0;
        end
        else
        begin
            addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_o <= $unsigned($signed(addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_a) + $signed(addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_b));
        end
    end
    assign addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_q = addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_o[17:0];

    // lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x(BITSELECT,264)@6
    assign lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_in = xIfSign_mergedSignalTM_uid255_dupName_14_i_unnamed_load_input10_mult_x_q[1:0];
    assign lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b = lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_in[1:0];

    // redist1_lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b_1(DELAY,350)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b_1_q <= '0;
        end
        else
        begin
            redist1_lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b_1_q <= $unsigned(lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b);
        end
    end

    // add_uid268_dupName_14_i_unnamed_load_input10_mult_x(BITJOIN,267)@7
    assign add_uid268_dupName_14_i_unnamed_load_input10_mult_x_q = {addsumAHighB_uid267_dupName_14_i_unnamed_load_input10_mult_x_q, redist1_lowRangeB_uid265_dupName_14_i_unnamed_load_input10_mult_x_b_1_q};

    // aPostPad_uid271_dupName_14_i_unnamed_load_input10_mult_x(BITJOIN,270)@7
    assign aPostPad_uid271_dupName_14_i_unnamed_load_input10_mult_x_q = {add_uid268_dupName_14_i_unnamed_load_input10_mult_x_q, padACst_uid270_dupName_14_i_unnamed_load_input10_mult_x_q};

    // a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x(SUB,271)@7
    assign a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_a = $unsigned({{1{aPostPad_uid271_dupName_14_i_unnamed_load_input10_mult_x_q[24]}}, aPostPad_uid271_dupName_14_i_unnamed_load_input10_mult_x_q});
    assign a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned({{5{add_uid262_dupName_14_i_unnamed_load_input10_mult_x_q[20]}}, add_uid262_dupName_14_i_unnamed_load_input10_mult_x_q});
    assign a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_o = $unsigned($signed(a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_a) - $signed(a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_b));
    assign a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_q = a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_o[25:0];

    // sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x(BITSELECT,275)@7
    assign sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_in = $unsigned(a_subconst_151_uid272_dupName_14_i_unnamed_load_input10_mult_x_q[23:0]);
    assign sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_b = $unsigned(sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_in[23:0]);

    // padACst_uid270_dupName_14_i_unnamed_load_input10_mult_x(CONSTANT,269)
    assign padACst_uid270_dupName_14_i_unnamed_load_input10_mult_x_q = $unsigned(5'b00000);

    // sR_mergedSignalTM_uid277_dupName_14_i_unnamed_load_input10_mult_x(BITJOIN,276)@7
    assign sR_mergedSignalTM_uid277_dupName_14_i_unnamed_load_input10_mult_x_q = {sR_bottomRange_uid276_dupName_14_i_unnamed_load_input10_mult_x_b, padACst_uid270_dupName_14_i_unnamed_load_input10_mult_x_q};

    // dupName_14_i_unnamed_load_input10_mult_extender_x(BITJOIN,19)@7
    assign dupName_14_i_unnamed_load_input10_mult_extender_x_q = {dupName_14_i_unnamed_load_input10_mult_multconst_x_q, sR_mergedSignalTM_uid277_dupName_14_i_unnamed_load_input10_mult_x_q};

    // dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x(BITSELECT,3)@7
    assign dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b = dupName_14_i_unnamed_load_input10_mult_extender_x_q[15:0];

    // redist45_dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b_1(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist45_dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b_1_q <= $unsigned(dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b);
        end
    end

    // dupName_14_i_unnamed_load_input10_add_x(ADD,22)@8
    assign dupName_14_i_unnamed_load_input10_add_x_a = {1'b0, dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_b};
    assign dupName_14_i_unnamed_load_input10_add_x_b = {1'b0, redist45_dupName_14_i_unnamed_load_input10_dupName_1_trunc_sel_x_b_1_q};
    assign dupName_14_i_unnamed_load_input10_add_x_o = $unsigned(dupName_14_i_unnamed_load_input10_add_x_a) + $unsigned(dupName_14_i_unnamed_load_input10_add_x_b);
    assign dupName_14_i_unnamed_load_input10_add_x_q = dupName_14_i_unnamed_load_input10_add_x_o[16:0];

    // dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x(BITSELECT,4)@8
    assign dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b = dupName_14_i_unnamed_load_input10_add_x_q[15:0];

    // redist44_dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b_1(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist44_dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b_1_q <= $unsigned(dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b);
        end
    end

    // dupName_14_i_unnamed_load_input10_dupName_0_add_x(ADD,10)@9
    assign dupName_14_i_unnamed_load_input10_dupName_0_add_x_a = {1'b0, redist44_dupName_14_i_unnamed_load_input10_dupName_2_trunc_sel_x_b_1_q};
    assign dupName_14_i_unnamed_load_input10_dupName_0_add_x_b = {1'b0, dupName_14_i_unnamed_load_input10_shift_join_x_q};
    assign dupName_14_i_unnamed_load_input10_dupName_0_add_x_o = $unsigned(dupName_14_i_unnamed_load_input10_dupName_0_add_x_a) + $unsigned(dupName_14_i_unnamed_load_input10_dupName_0_add_x_b);
    assign dupName_14_i_unnamed_load_input10_dupName_0_add_x_q = dupName_14_i_unnamed_load_input10_dupName_0_add_x_o[16:0];

    // dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x(BITSELECT,6)@9
    assign dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b = dupName_14_i_unnamed_load_input10_dupName_0_add_x_q[15:0];

    // redist43_dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b_1(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist43_dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b_1_q <= $unsigned(dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b);
        end
    end

    // dupName_14_i_unnamed_load_input10_dupName_1_add_x(ADD,12)@10
    assign dupName_14_i_unnamed_load_input10_dupName_1_add_x_a = {1'b0, redist43_dupName_14_i_unnamed_load_input10_dupName_5_trunc_sel_x_b_1_q};
    assign dupName_14_i_unnamed_load_input10_dupName_1_add_x_b = {1'b0, redist42_dupName_14_i_unnamed_load_input10_dupName_6_trunc_sel_x_b_8_outputreg0_q};
    assign dupName_14_i_unnamed_load_input10_dupName_1_add_x_o = $unsigned(dupName_14_i_unnamed_load_input10_dupName_1_add_x_a) + $unsigned(dupName_14_i_unnamed_load_input10_dupName_1_add_x_b);
    assign dupName_14_i_unnamed_load_input10_dupName_1_add_x_q = dupName_14_i_unnamed_load_input10_dupName_1_add_x_o[16:0];

    // dupName_14_i_unnamed_load_input10_dupName_7_trunc_sel_x(BITSELECT,8)@10
    assign dupName_14_i_unnamed_load_input10_dupName_7_trunc_sel_x_b = dupName_14_i_unnamed_load_input10_dupName_1_add_x_q[15:0];

    // dupName_14_i_unnamed_load_input10_append_upper_bits_x(BITJOIN,23)@10
    assign dupName_14_i_unnamed_load_input10_append_upper_bits_x_q = {redist0_dupName_14_i_unnamed_load_input10_trunc_sel_x_merged_bit_select_c_2_q, dupName_14_i_unnamed_load_input10_dupName_7_trunc_sel_x_b};

    // i_unnamed_load_input128_vt_select_63(BITSELECT,171)@10
    assign i_unnamed_load_input128_vt_select_63_b = dupName_14_i_unnamed_load_input10_append_upper_bits_x_q[63:3];

    // i_unnamed_load_input128_vt_join(BITJOIN,170)@10
    assign i_unnamed_load_input128_vt_join_q = {i_unnamed_load_input128_vt_select_63_b, dupName_14_i_unnamed_load_input10_mult_multconst_x_q};

    // i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_select_63(BITSELECT,157)@10
    assign i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_select_63_b = i_unnamed_load_input128_vt_join_q[63:3];

    // dupName_14_i_unnamed_load_input10_mult_multconst_x(CONSTANT,20)
    assign dupName_14_i_unnamed_load_input10_mult_multconst_x_q = $unsigned(3'b000);

    // i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_join(BITJOIN,156)@10
    assign i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_join_q = {i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_select_63_b, dupName_14_i_unnamed_load_input10_mult_multconst_x_q};

    // i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x(BLACKBOX,47)@10
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@14
    // out out_o_readdata_1_tpl@14
    // out out_o_readdata_2_tpl@14
    // out out_o_readdata_3_tpl@14
    // out out_o_readdata_4_tpl@14
    // out out_o_readdata_5_tpl@14
    // out out_o_readdata_6_tpl@14
    // out out_o_readdata_7_tpl@14
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write@20000000
    // out out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata@20000000
    // out out_o_stall@13
    // out out_o_valid@14
    cnn_top_i_llvm_fpga_mem_memcoalesce_load0000que_164_load_input10 thei_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_load_input1_fpgaunique_33_load_input129_vt_join_q),
        .in_i_predicate(redist14_i_first_cleanup_xor74_or_load_input130_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdata(in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdata),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdatavalid(in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_readdatavalid),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_waitrequest(in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_waitrequest),
        .in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writeack(in_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_7_tpl),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write),
        .out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,36)
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_address;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_enable;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_read;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_write;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_writedata;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_byteenable;
    assign out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_memcoalesce_load_load_input1_fpgaunique_164_load_input1_avm_burstcount;

    // redist39_sync_together145_aunroll_x_in_i_valid_12(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_0 <= '0;
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_1 <= '0;
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_2 <= '0;
            redist39_sync_together145_aunroll_x_in_i_valid_12_q <= '0;
        end
        else
        begin
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_0 <= $unsigned(redist38_sync_together145_aunroll_x_in_i_valid_8_q);
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_1 <= redist39_sync_together145_aunroll_x_in_i_valid_12_delay_0;
            redist39_sync_together145_aunroll_x_in_i_valid_12_delay_2 <= redist39_sync_together145_aunroll_x_in_i_valid_12_delay_1;
            redist39_sync_together145_aunroll_x_in_i_valid_12_q <= redist39_sync_together145_aunroll_x_in_i_valid_12_delay_2;
        end
    end

    // valid_fanout_reg0(REG,181)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist39_sync_together145_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_notEnable(LOGICAL,452)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_nor(LOGICAL,453)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_nor_q = ~ (redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_notEnable_q | redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena_q);

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_last(CONSTANT,449)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp(LOGICAL,450)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_b = {1'b0, redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_q};
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_q = $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_last_q == redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmpReg(REG,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmpReg_q <= $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmp_q);
        end
    end

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_nor_q == 1'b1)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena_q <= $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_cmpReg_q);
        end
    end

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_enaAnd(LOGICAL,455)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_enaAnd_q = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_sticky_ena_q & VCC_q;

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt(COUNTER,447)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i <= 4'd0;
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i == 4'd10)
            begin
                redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i <= $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i <= $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_q = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_i[3:0];

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_wraddr(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_wraddr_q <= $unsigned(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_q);
        end
    end

    // redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem(DUALMEM,446)
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ia = $unsigned(in_c0_eni21_21_tpl);
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_aa = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_wraddr_q;
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ab = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_rdcnt_q;
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_dmem (
        .clocken1(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_aa),
        .data_a(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_ab),
        .q_b(redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_q = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_iq[31:0];

    // redist35_sync_together145_aunroll_x_in_c0_eni21_20_tpl_13(DELAY,384)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist35_sync_together145_aunroll_x_in_c0_eni21_20_tpl_13 ( .xin(in_c0_eni21_20_tpl), .xout(redist35_sync_together145_aunroll_x_in_c0_eni21_20_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_sync_together145_aunroll_x_in_c0_eni21_19_tpl_13(DELAY,383)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together145_aunroll_x_in_c0_eni21_19_tpl_13 ( .xin(in_c0_eni21_19_tpl), .xout(redist34_sync_together145_aunroll_x_in_c0_eni21_19_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_notEnable(LOGICAL,442)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_nor(LOGICAL,443)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_nor_q = ~ (redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_notEnable_q | redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena_q);

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_last(CONSTANT,439)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp(LOGICAL,440)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_b = {1'b0, redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_q};
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_q = $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_last_q == redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmpReg(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmpReg_q <= $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmp_q);
        end
    end

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena(REG,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_nor_q == 1'b1)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena_q <= $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_cmpReg_q);
        end
    end

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_enaAnd(LOGICAL,445)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_enaAnd_q = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_sticky_ena_q & VCC_q;

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt(COUNTER,437)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i <= 4'd0;
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i == 4'd10)
            begin
                redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i <= $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i <= $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_q = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_i[3:0];

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_wraddr(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_wraddr_q <= $unsigned(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_q);
        end
    end

    // redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem(DUALMEM,436)
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ia = $unsigned(in_c0_eni21_18_tpl);
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_aa = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_wraddr_q;
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ab = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_rdcnt_q;
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_dmem (
        .clocken1(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_aa),
        .data_a(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_ab),
        .q_b(redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_q = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_iq[31:0];

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_notEnable(LOGICAL,432)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_nor(LOGICAL,433)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_nor_q = ~ (redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_notEnable_q | redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena_q);

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_last(CONSTANT,429)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp(LOGICAL,430)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_b = {1'b0, redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_q};
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_q = $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_last_q == redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmpReg(REG,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmpReg_q <= $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmp_q);
        end
    end

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena(REG,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_nor_q == 1'b1)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena_q <= $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_cmpReg_q);
        end
    end

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_enaAnd(LOGICAL,435)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_enaAnd_q = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_sticky_ena_q & VCC_q;

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt(COUNTER,427)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i <= 4'd0;
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i == 4'd10)
            begin
                redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i <= $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i <= $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_q = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_i[3:0];

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_wraddr(REG,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_wraddr_q <= $unsigned(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_q);
        end
    end

    // redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem(DUALMEM,426)
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ia = $unsigned(in_c0_eni21_17_tpl);
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_aa = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_wraddr_q;
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ab = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_rdcnt_q;
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_dmem (
        .clocken1(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_aa),
        .data_a(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_ab),
        .q_b(redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_q = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_iq[31:0];

    // redist31_sync_together145_aunroll_x_in_c0_eni21_16_tpl_13(DELAY,380)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together145_aunroll_x_in_c0_eni21_16_tpl_13 ( .xin(in_c0_eni21_16_tpl), .xout(redist31_sync_together145_aunroll_x_in_c0_eni21_16_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together145_aunroll_x_in_c0_eni21_15_tpl_13(DELAY,379)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together145_aunroll_x_in_c0_eni21_15_tpl_13 ( .xin(in_c0_eni21_15_tpl), .xout(redist30_sync_together145_aunroll_x_in_c0_eni21_15_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_notEnable(LOGICAL,422)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_nor(LOGICAL,423)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_nor_q = ~ (redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_notEnable_q | redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena_q);

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_last(CONSTANT,419)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp(LOGICAL,420)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_b = {1'b0, redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_q};
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_q = $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_last_q == redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmpReg(REG,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmpReg_q <= $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmp_q);
        end
    end

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena(REG,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_nor_q == 1'b1)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena_q <= $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_cmpReg_q);
        end
    end

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_enaAnd(LOGICAL,425)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_enaAnd_q = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_sticky_ena_q & VCC_q;

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt(COUNTER,417)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i <= 4'd0;
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i == 4'd10)
            begin
                redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i <= $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i <= $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_q = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_i[3:0];

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_wraddr(REG,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_wraddr_q <= $unsigned(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_q);
        end
    end

    // redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem(DUALMEM,416)
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ia = $unsigned(in_c0_eni21_14_tpl);
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_aa = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_wraddr_q;
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ab = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_rdcnt_q;
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_dmem (
        .clocken1(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_aa),
        .data_a(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_ab),
        .q_b(redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_q = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_iq[31:0];

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_notEnable(LOGICAL,412)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_nor(LOGICAL,413)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_nor_q = ~ (redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_notEnable_q | redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena_q);

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_last(CONSTANT,409)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp(LOGICAL,410)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_b = {1'b0, redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_q};
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_q = $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_last_q == redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmpReg(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmpReg_q <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmp_q);
        end
    end

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_nor_q == 1'b1)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena_q <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_cmpReg_q);
        end
    end

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_enaAnd(LOGICAL,415)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_enaAnd_q = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_sticky_ena_q & VCC_q;

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt(COUNTER,407)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i <= 4'd0;
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i == 4'd10)
            begin
                redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_q = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_i[3:0];

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_wraddr(REG,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_wraddr_q <= $unsigned(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_q);
        end
    end

    // redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem(DUALMEM,406)
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ia = $unsigned(in_c0_eni21_13_tpl);
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_aa = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_wraddr_q;
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ab = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_rdcnt_q;
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_dmem (
        .clocken1(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_aa),
        .data_a(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_ab),
        .q_b(redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_q = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_iq[31:0];

    // redist27_sync_together145_aunroll_x_in_c0_eni21_12_tpl_13(DELAY,376)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_sync_together145_aunroll_x_in_c0_eni21_12_tpl_13 ( .xin(in_c0_eni21_12_tpl), .xout(redist27_sync_together145_aunroll_x_in_c0_eni21_12_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_sync_together145_aunroll_x_in_c0_eni21_11_tpl_13(DELAY,375)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_sync_together145_aunroll_x_in_c0_eni21_11_tpl_13 ( .xin(in_c0_eni21_11_tpl), .xout(redist26_sync_together145_aunroll_x_in_c0_eni21_11_tpl_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_notEnable(LOGICAL,402)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_nor(LOGICAL,403)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_nor_q = ~ (redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_notEnable_q | redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena_q);

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_last(CONSTANT,399)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_last_q = $unsigned(5'b01010);

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp(LOGICAL,400)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_b = {1'b0, redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_q};
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_q = $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_last_q == redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmpReg(REG,401)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmpReg_q <= $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmp_q);
        end
    end

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena(REG,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_nor_q == 1'b1)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena_q <= $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_cmpReg_q);
        end
    end

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_enaAnd(LOGICAL,405)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_enaAnd_q = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_sticky_ena_q & VCC_q;

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt(COUNTER,397)
    // low=0, high=11, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i <= 4'd0;
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i == 4'd10)
            begin
                redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_eq <= 1'b0;
            end
            if (redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_eq == 1'b1)
            begin
                redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i <= $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i) + $unsigned(4'd5);
            end
            else
            begin
                redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i <= $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_q = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_i[3:0];

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_wraddr(REG,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_wraddr_q <= $unsigned(4'b1011);
        end
        else
        begin
            redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_wraddr_q <= $unsigned(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_q);
        end
    end

    // redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem(DUALMEM,396)
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ia = $unsigned(in_c0_eni21_10_tpl);
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_aa = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_wraddr_q;
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ab = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_rdcnt_q;
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(12),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(12),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_dmem (
        .clocken1(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_aa),
        .data_a(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_ab),
        .q_b(redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_q = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_iq[31:0];

    // valid_fanout_reg23(REG,204)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,205)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp81115_push57_load_input165(BLACKBOX,141)@2
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp81115_push57_load_input10 thei_llvm_fpga_push_i1_notcmp81115_push57_load_input165 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_feedback_stall_out_57),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_sync_together145_aunroll_x_in_c0_eni21_9_tpl_1(DELAY,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together145_aunroll_x_in_c0_eni21_9_tpl_1_q <= '0;
        end
        else
        begin
            redist24_sync_together145_aunroll_x_in_c0_eni21_9_tpl_1_q <= $unsigned(in_c0_eni21_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164(BLACKBOX,128)@2
    // out out_feedback_stall_out_57@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input10 thei_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164 (
        .in_data_in(redist24_sync_together145_aunroll_x_in_c0_eni21_9_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_57(i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i1_notcmp81115_push57_load_input165_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out_12(DELAY,359)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out_12 ( .xin(i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out), .xout(redist10_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg19(REG,200)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,201)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist37_sync_together145_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp85111_push54_load_input161(BLACKBOX,142)@3
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp85111_push54_load_input10 thei_llvm_fpga_push_i1_notcmp85111_push54_load_input161 (
        .in_data_in(redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_feedback_stall_out_54),
        .in_keep_going68(redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_sync_together145_aunroll_x_in_c0_eni21_7_tpl_1(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together145_aunroll_x_in_c0_eni21_7_tpl_1_q <= '0;
        end
        else
        begin
            redist22_sync_together145_aunroll_x_in_c0_eni21_7_tpl_1_q <= $unsigned(in_c0_eni21_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160(BLACKBOX,129)@2
    // out out_feedback_stall_out_54@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input10 thei_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160 (
        .in_data_in(redist22_sync_together145_aunroll_x_in_c0_eni21_7_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_notcmp85111_push54_load_input161_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_12(DELAY,358)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_12 ( .xin(redist8_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_1_q), .xout(redist9_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,198)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,199)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp89106_push52_load_input159(BLACKBOX,143)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp89106_push52_load_input10 thei_llvm_fpga_push_i1_notcmp89106_push52_load_input159 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_feedback_stall_out_52),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together145_aunroll_x_in_c0_eni21_6_tpl_1(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together145_aunroll_x_in_c0_eni21_6_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together145_aunroll_x_in_c0_eni21_6_tpl_1_q <= $unsigned(in_c0_eni21_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158(BLACKBOX,130)@2
    // out out_feedback_stall_out_52@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input10 thei_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158 (
        .in_data_in(redist21_sync_together145_aunroll_x_in_c0_eni21_6_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp89106_push52_load_input159_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out_12(DELAY,356)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out_12 ( .xin(i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out), .xout(redist7_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,197)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push51_load_input157(BLACKBOX,145)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    cnn_top_i_llvm_fpga_push_i1_push51_load_input10 thei_llvm_fpga_push_i1_push51_load_input157 (
        .in_data_in(i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_pop51_load_input156_out_feedback_stall_out_51),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_push51_load_input157_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_push51_load_input157_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together145_aunroll_x_in_c0_eni21_5_tpl_1(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together145_aunroll_x_in_c0_eni21_5_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together145_aunroll_x_in_c0_eni21_5_tpl_1_q <= $unsigned(in_c0_eni21_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop51_load_input156(BLACKBOX,131)@2
    // out out_feedback_stall_out_51@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop51_load_input10 thei_llvm_fpga_pop_i1_pop51_load_input156 (
        .in_data_in(redist20_sync_together145_aunroll_x_in_c0_eni21_5_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_push51_load_input157_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_push51_load_input157_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_pop51_load_input156_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out_12(DELAY,355)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out_12 ( .xin(i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out), .xout(redist6_i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked77_load_input155(LOGICAL,154)@2 + 1
    assign i_masked77_load_input155_qi = i_notcmp64_load_input150_q & i_first_cleanup73_load_input13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked77_load_input155_delay ( .xin(i_masked77_load_input155_qi), .xout(i_masked77_load_input155_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_i_masked77_load_input155_q_12(DELAY,352)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_i_masked77_load_input155_q_12 ( .xin(i_masked77_load_input155_q), .xout(redist3_i_masked77_load_input155_q_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_first_cleanup_xor74_or_load_input130_q_12(DELAY,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_0 <= '0;
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_1 <= '0;
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_2 <= '0;
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_q <= '0;
        end
        else
        begin
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_0 <= $unsigned(redist14_i_first_cleanup_xor74_or_load_input130_q_8_q);
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_1 <= redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_0;
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_2 <= redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_1;
            redist15_i_first_cleanup_xor74_or_load_input130_q_12_q <= redist15_i_first_cleanup_xor74_or_load_input130_q_12_delay_2;
        end
    end

    // redist13_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_13(DELAY,362)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_13 ( .xin(redist12_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_2_q), .xout(redist13_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,56)@14
    assign out_c0_exi20351_0_tpl = GND_q;
    assign out_c0_exi20351_1_tpl = redist13_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_13_q;
    assign out_c0_exi20351_2_tpl = redist15_i_first_cleanup_xor74_or_load_input130_q_12_q;
    assign out_c0_exi20351_3_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_0_tpl;
    assign out_c0_exi20351_4_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_1_tpl;
    assign out_c0_exi20351_5_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_2_tpl;
    assign out_c0_exi20351_6_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_3_tpl;
    assign out_c0_exi20351_7_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_4_tpl;
    assign out_c0_exi20351_8_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_5_tpl;
    assign out_c0_exi20351_9_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_6_tpl;
    assign out_c0_exi20351_10_tpl = i_llvm_fpga_mem_memcoalesce_load_load_input1_fpgaunique_164_load_input131_aunroll_x_out_o_readdata_7_tpl;
    assign out_c0_exi20351_11_tpl = redist3_i_masked77_load_input155_q_12_q;
    assign out_c0_exi20351_12_tpl = redist6_i_llvm_fpga_pop_i1_pop51_load_input156_out_data_out_12_q;
    assign out_c0_exi20351_13_tpl = redist7_i_llvm_fpga_pop_i1_notcmp89106_pop52_load_input158_out_data_out_12_q;
    assign out_c0_exi20351_14_tpl = redist9_i_llvm_fpga_pop_i1_notcmp85111_pop54_load_input160_out_data_out_12_q;
    assign out_c0_exi20351_15_tpl = redist10_i_llvm_fpga_pop_i1_notcmp81115_pop57_load_input164_out_data_out_12_q;
    assign out_c0_exi20351_16_tpl = redist25_sync_together145_aunroll_x_in_c0_eni21_10_tpl_13_mem_q;
    assign out_c0_exi20351_17_tpl = redist26_sync_together145_aunroll_x_in_c0_eni21_11_tpl_13_q;
    assign out_c0_exi20351_18_tpl = redist27_sync_together145_aunroll_x_in_c0_eni21_12_tpl_13_q;
    assign out_c0_exi20351_19_tpl = redist28_sync_together145_aunroll_x_in_c0_eni21_13_tpl_13_mem_q;
    assign out_c0_exi20351_20_tpl = redist29_sync_together145_aunroll_x_in_c0_eni21_14_tpl_13_mem_q;
    assign out_c0_exi20351_21_tpl = redist30_sync_together145_aunroll_x_in_c0_eni21_15_tpl_13_q;
    assign out_c0_exi20351_22_tpl = redist31_sync_together145_aunroll_x_in_c0_eni21_16_tpl_13_q;
    assign out_c0_exi20351_23_tpl = redist32_sync_together145_aunroll_x_in_c0_eni21_17_tpl_13_mem_q;
    assign out_c0_exi20351_24_tpl = redist33_sync_together145_aunroll_x_in_c0_eni21_18_tpl_13_mem_q;
    assign out_c0_exi20351_25_tpl = redist34_sync_together145_aunroll_x_in_c0_eni21_19_tpl_13_q;
    assign out_c0_exi20351_26_tpl = redist35_sync_together145_aunroll_x_in_c0_eni21_20_tpl_13_q;
    assign out_c0_exi20351_27_tpl = redist36_sync_together145_aunroll_x_in_c0_eni21_21_tpl_13_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_load_input120 = GND_q;

    // ext_sig_sync_out(GPOUT,103)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going68_load_input16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,176)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going68_load_input16_out_pipeline_valid_out;

    // i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162(BLACKBOX,136)@2
    // out out_feedback_stall_out_55@20000000
    cnn_top_i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input10 thei_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162 (
        .in_data_in(redist23_sync_together145_aunroll_x_in_c0_eni21_8_tpl_1_q),
        .in_dir(redist16_sync_together145_aunroll_x_in_c0_eni21_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163(BLACKBOX,150)@2
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    cnn_top_i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input10 thei_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163 (
        .in_data_in(i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_data_out),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i32_kw_077_pop33113_pop55_load_input162_out_feedback_stall_out_55),
        .in_keep_going68(redist11_i_llvm_fpga_pipeline_keep_going68_load_input16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i32_kw_077_pop33113_push55_load_input163_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg21(REG,202)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,203)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // redist23_sync_together145_aunroll_x_in_c0_eni21_8_tpl_1(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together145_aunroll_x_in_c0_eni21_8_tpl_1_q <= '0;
        end
        else
        begin
            redist23_sync_together145_aunroll_x_in_c0_eni21_8_tpl_1_q <= $unsigned(in_c0_eni21_8_tpl);
        end
    end

endmodule
