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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond24_i0000r75033_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond24_i0000r75033_conv_process0 (
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount,
    input wire [31:0] in_intel_reserved_ffwd_65_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_65_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_65_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_66_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_67_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_68_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_69_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_70_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_71_0_2_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_72_0_2_tpl,
    output wire [0:0] out_c0_exi14769_0_tpl,
    output wire [0:0] out_c0_exi14769_1_tpl,
    output wire [0:0] out_c0_exi14769_2_tpl,
    output wire [31:0] out_c0_exi14769_3_tpl,
    output wire [63:0] out_c0_exi14769_4_tpl,
    output wire [0:0] out_c0_exi14769_5_tpl,
    output wire [31:0] out_c0_exi14769_6_tpl,
    output wire [0:0] out_c0_exi14769_7_tpl,
    output wire [0:0] out_c0_exi14769_8_tpl,
    output wire [0:0] out_c0_exi14769_9_tpl,
    output wire [31:0] out_c0_exi14769_10_tpl,
    output wire [31:0] out_c0_exi14769_11_tpl,
    output wire [0:0] out_c0_exi14769_12_tpl,
    output wire [0:0] out_c0_exi14769_13_tpl,
    output wire [31:0] out_c0_exi14769_14_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_conv_process19,
    input wire [0:0] in_c0_eni14_0_tpl,
    input wire [0:0] in_c0_eni14_1_tpl,
    input wire [31:0] in_c0_eni14_2_tpl,
    input wire [31:0] in_c0_eni14_3_tpl,
    input wire [0:0] in_c0_eni14_4_tpl,
    input wire [31:0] in_c0_eni14_5_tpl,
    input wire [31:0] in_c0_eni14_6_tpl,
    input wire [0:0] in_c0_eni14_7_tpl,
    input wire [0:0] in_c0_eni14_8_tpl,
    input wire [0:0] in_c0_eni14_9_tpl,
    input wire [31:0] in_c0_eni14_10_tpl,
    input wire [31:0] in_c0_eni14_11_tpl,
    input wire [0:0] in_c0_eni14_12_tpl,
    input wire [0:0] in_c0_eni14_13_tpl,
    input wire [31:0] in_c0_eni14_14_tpl,
    input wire [0:0] in_i_valid,
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_32_0,
    input wire [31:0] in_intel_reserved_ffwd_33_0,
    input wire [31:0] in_intel_reserved_ffwd_34_0,
    input wire [31:0] in_intel_reserved_ffwd_35_0,
    input wire [63:0] in_intel_reserved_ffwd_59_0,
    input wire [0:0] in_intel_reserved_ffwd_62_0,
    input wire [0:0] in_intel_reserved_ffwd_63_0,
    input wire [0:0] in_intel_reserved_ffwd_73_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add13_i_i_1_conv_process109_sel_x_b;
    wire [31:0] bgTrunc_i_add13_i_i_2_conv_process154_sel_x_b;
    wire [31:0] bgTrunc_i_add13_i_i_3_conv_process199_sel_x_b;
    wire [31:0] bgTrunc_i_add13_i_i_conv_process64_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next35_conv_process230_sel_x_b;
    wire [31:0] bgTrunc_i_inc62_i_conv_process220_sel_x_b;
    wire [31:0] bgTrunc_i_inc66_i_conv_process225_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_i_1_conv_process115_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_i_2_conv_process160_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_i_3_conv_process205_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_i_conv_process70_sel_x_b;
    wire [31:0] bgTrunc_i_sub7_i_i_1_conv_process103_sel_x_b;
    wire [31:0] bgTrunc_i_sub7_i_i_2_conv_process148_sel_x_b;
    wire [31:0] bgTrunc_i_sub7_i_i_3_conv_process193_sel_x_b;
    wire [31:0] bgTrunc_i_sub7_i_i_conv_process58_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_i_1_conv_process102_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_i_2_conv_process147_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_i_3_conv_process192_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_i_conv_process57_sel_x_b;
    wire [31:0] c_i32_126320_recast_x_q;
    wire [31:0] c_i32_127322_recast_x_q;
    wire [31:0] c_i32_127324_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_5_comparator_x_qi;
    reg [0:0] dupName_5_comparator_x_q;
    wire [0:0] dupName_6_comparator_x_qi;
    reg [0:0] dupName_6_comparator_x_q;
    wire [0:0] dupName_7_comparator_x_qi;
    reg [0:0] dupName_7_comparator_x_q;
    wire [0:0] dupName_11_comparator_x_qi;
    reg [0:0] dupName_11_comparator_x_q;
    wire [0:0] dupName_12_comparator_x_qi;
    reg [0:0] dupName_12_comparator_x_q;
    wire [0:0] dupName_13_comparator_x_qi;
    reg [0:0] dupName_13_comparator_x_q;
    wire [0:0] dupName_17_comparator_x_qi;
    reg [0:0] dupName_17_comparator_x_q;
    wire [0:0] dupName_18_comparator_x_qi;
    reg [0:0] dupName_18_comparator_x_q;
    wire [0:0] dupName_19_comparator_x_qi;
    reg [0:0] dupName_19_comparator_x_q;
    wire [31:0] i_acl_49_conv_process65_sel_x_b;
    wire [31:0] i_acl_52_conv_process110_sel_x_b;
    wire [31:0] i_acl_55_conv_process155_sel_x_b;
    wire [31:0] i_acl_58_conv_process200_sel_x_b;
    wire [0:0] i_first_cleanup_conv_process3_sel_x_b;
    wire [63:0] i_idxprom28_i_conv_process14_sel_x_b;
    wire [63:0] i_idxprom32_i_conv_process24_sel_x_b;
    wire [63:0] i_idxprom63_i_conv_process222_sel_x_b;
    wire [63:0] i_idxprom_i112_conv_process17_sel_x_b;
    wire [0:0] i_last_initeration_conv_process10_sel_x_b;
    wire [135:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a;
    wire [31:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q;
    wire [135:0] i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_2_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_0_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    wire [4:0] i_shl_i_i_1_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shl_i_i_2_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shl_i_i_3_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shl_i_i_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shr8_i_i_1_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shr8_i_i_2_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shr8_i_i_3_conv_process0_shift_narrow_x_b;
    wire [4:0] i_shr8_i_i_conv_process0_shift_narrow_x_b;
    wire [63:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_a;
    wire [64:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_b;
    logic [64:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_o;
    wire [64:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_q;
    wire [1:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q;
    wire [61:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_narrow_x_b;
    wire [63:0] i_temp_i_sroa_0_0_sroa_idx_conv_process0_shift_join_x_q;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_3_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_6_trunc_sel_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_8_trunc_sel_x_b;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_0_add_x_a;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_0_add_x_b;
    logic [16:0] i_value_i_i72_i1_conv_process0_dupName_0_add_x_o;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_0_add_x_q;
    wire [13:0] i_value_i_i72_i1_conv_process0_dupName_0_narrow_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_dupName_0_shift_join_x_q;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_1_add_x_a;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_1_add_x_b;
    logic [16:0] i_value_i_i72_i1_conv_process0_dupName_1_add_x_o;
    wire [16:0] i_value_i_i72_i1_conv_process0_dupName_1_add_x_q;
    wire [31:0] i_value_i_i72_i1_conv_process0_mult_extender_x_q;
    wire [16:0] i_value_i_i72_i1_conv_process0_add_x_a;
    wire [16:0] i_value_i_i72_i1_conv_process0_add_x_b;
    logic [16:0] i_value_i_i72_i1_conv_process0_add_x_o;
    wire [16:0] i_value_i_i72_i1_conv_process0_add_x_q;
    wire [63:0] i_value_i_i72_i1_conv_process0_append_upper_bits_x_q;
    wire [5:0] i_value_i_i72_i1_conv_process0_c_i6_02_x_q;
    wire [9:0] i_value_i_i72_i1_conv_process0_narrow_x_b;
    wire [15:0] i_value_i_i72_i1_conv_process0_shift_join_x_q;
    wire [63:0] c_conv_process_output_buff_pmem_q;
    wire [31:0] c_float_0_000000e_00316_q;
    wire [31:0] c_float_6_000000e_00311_q;
    wire [1:0] c_i2_1309_q;
    wire [31:0] c_i32_0312_q;
    wire [31:0] c_i32_10329_q;
    wire [31:0] c_i32_11332_q;
    wire [31:0] c_i32_125321_q;
    wire [31:0] c_i32_127322_q;
    wire [31:0] c_i32_1314_q;
    wire [31:0] c_i32_13327_q;
    wire [31:0] c_i32_14330_q;
    wire [31:0] c_i32_149323_q;
    wire [31:0] c_i32_15333_q;
    wire [31:0] c_i32_2313_q;
    wire [31:0] c_i32_3315_q;
    wire [31:0] c_i32_5325_q;
    wire [31:0] c_i32_6328_q;
    wire [31:0] c_i32_7331_q;
    wire [31:0] c_i32_8388607319_q;
    wire [31:0] c_i32_9326_q;
    wire [2:0] c_i3_1338_q;
    wire [2:0] c_i3_2336_q;
    wire [7:0] c_i8_2214_q;
    wire [30:0] i_acl_49_conv_process65_vt_const_31_q;
    wire [31:0] i_acl_49_conv_process65_vt_join_q;
    wire [0:0] i_acl_49_conv_process65_vt_select_0_b;
    wire [0:0] i_acl_50_conv_process66_qi;
    reg [0:0] i_acl_50_conv_process66_q;
    wire [0:0] i_acl_51_conv_process67_s;
    reg [31:0] i_acl_51_conv_process67_q;
    wire [31:0] i_acl_52_conv_process110_vt_join_q;
    wire [0:0] i_acl_52_conv_process110_vt_select_0_b;
    wire [0:0] i_acl_53_conv_process111_qi;
    reg [0:0] i_acl_53_conv_process111_q;
    wire [0:0] i_acl_54_conv_process112_s;
    reg [31:0] i_acl_54_conv_process112_q;
    wire [31:0] i_acl_55_conv_process155_vt_join_q;
    wire [0:0] i_acl_55_conv_process155_vt_select_0_b;
    wire [0:0] i_acl_56_conv_process156_qi;
    reg [0:0] i_acl_56_conv_process156_q;
    wire [0:0] i_acl_57_conv_process157_s;
    reg [31:0] i_acl_57_conv_process157_q;
    wire [31:0] i_acl_58_conv_process200_vt_join_q;
    wire [0:0] i_acl_58_conv_process200_vt_select_0_b;
    wire [0:0] i_acl_59_conv_process201_q;
    wire [0:0] i_acl_60_conv_process202_s;
    reg [31:0] i_acl_60_conv_process202_q;
    wire [32:0] i_add13_i_i_1_conv_process109_a;
    wire [32:0] i_add13_i_i_1_conv_process109_b;
    logic [32:0] i_add13_i_i_1_conv_process109_o;
    wire [32:0] i_add13_i_i_1_conv_process109_q;
    wire [32:0] i_add13_i_i_2_conv_process154_a;
    wire [32:0] i_add13_i_i_2_conv_process154_b;
    logic [32:0] i_add13_i_i_2_conv_process154_o;
    wire [32:0] i_add13_i_i_2_conv_process154_q;
    wire [32:0] i_add13_i_i_3_conv_process199_a;
    wire [32:0] i_add13_i_i_3_conv_process199_b;
    logic [32:0] i_add13_i_i_3_conv_process199_o;
    wire [32:0] i_add13_i_i_3_conv_process199_q;
    wire [32:0] i_add13_i_i_conv_process64_a;
    wire [32:0] i_add13_i_i_conv_process64_b;
    logic [32:0] i_add13_i_i_conv_process64_o;
    wire [32:0] i_add13_i_i_conv_process64_q;
    wire [31:0] i_add31_i_1_conv_process26_vt_join_q;
    wire [29:0] i_add31_i_1_conv_process26_vt_select_31_b;
    wire [1:0] i_add31_i_2_conv_process27_vt_const_1_q;
    wire [31:0] i_add31_i_2_conv_process27_vt_join_q;
    wire [29:0] i_add31_i_2_conv_process27_vt_select_31_b;
    wire [1:0] i_add31_i_3_conv_process28_vt_const_1_q;
    wire [31:0] i_add31_i_3_conv_process28_vt_join_q;
    wire [29:0] i_add31_i_3_conv_process28_vt_select_31_b;
    wire [31:0] i_add44_i_1_conv_process86_out_primWireOut;
    wire [31:0] i_add44_i_2_conv_process131_out_primWireOut;
    wire [31:0] i_add44_i_3_conv_process176_out_primWireOut;
    wire [31:0] i_add44_i_conv_process41_out_primWireOut;
    wire [31:0] i_and2_i_i_1_conv_process98_q;
    wire [8:0] i_and2_i_i_1_conv_process98_vt_const_31_q;
    wire [31:0] i_and2_i_i_1_conv_process98_vt_join_q;
    wire [22:0] i_and2_i_i_1_conv_process98_vt_select_22_b;
    wire [31:0] i_and2_i_i_2_conv_process143_q;
    wire [31:0] i_and2_i_i_2_conv_process143_vt_join_q;
    wire [22:0] i_and2_i_i_2_conv_process143_vt_select_22_b;
    wire [31:0] i_and2_i_i_3_conv_process188_q;
    wire [31:0] i_and2_i_i_3_conv_process188_vt_join_q;
    wire [22:0] i_and2_i_i_3_conv_process188_vt_select_22_b;
    wire [31:0] i_and2_i_i_conv_process53_q;
    wire [31:0] i_and2_i_i_conv_process53_vt_join_q;
    wire [22:0] i_and2_i_i_conv_process53_vt_select_22_b;
    wire [31:0] i_and9_i_i_1_conv_process105_q;
    wire [31:0] i_and9_i_i_1_conv_process105_vt_join_q;
    wire [0:0] i_and9_i_i_1_conv_process105_vt_select_0_b;
    wire [31:0] i_and9_i_i_2_conv_process150_q;
    wire [31:0] i_and9_i_i_2_conv_process150_vt_join_q;
    wire [0:0] i_and9_i_i_2_conv_process150_vt_select_0_b;
    wire [31:0] i_and9_i_i_3_conv_process195_q;
    wire [31:0] i_and9_i_i_3_conv_process195_vt_join_q;
    wire [0:0] i_and9_i_i_3_conv_process195_vt_select_0_b;
    wire [31:0] i_and9_i_i_conv_process60_q;
    wire [31:0] i_and9_i_i_conv_process60_vt_join_q;
    wire [0:0] i_and9_i_i_conv_process60_vt_select_0_b;
    wire [22:0] i_and_i63_i_1_conv_process96_vt_const_31_q;
    wire [31:0] i_and_i63_i_1_conv_process96_vt_join_q;
    wire [8:0] i_and_i63_i_1_conv_process96_vt_select_8_b;
    wire [31:0] i_and_i63_i_2_conv_process141_vt_join_q;
    wire [8:0] i_and_i63_i_2_conv_process141_vt_select_8_b;
    wire [31:0] i_and_i63_i_3_conv_process186_vt_join_q;
    wire [8:0] i_and_i63_i_3_conv_process186_vt_select_8_b;
    wire [31:0] i_and_i63_i_conv_process51_vt_join_q;
    wire [8:0] i_and_i63_i_conv_process51_vt_select_8_b;
    wire [1:0] i_cleanups_shl_conv_process5_vt_join_q;
    wire [0:0] i_cleanups_shl_conv_process5_vt_select_1_b;
    wire [33:0] i_cmp3_i_i_1_conv_process101_a;
    wire [33:0] i_cmp3_i_i_1_conv_process101_b;
    logic [33:0] i_cmp3_i_i_1_conv_process101_o;
    wire [0:0] i_cmp3_i_i_1_conv_process101_c;
    wire [33:0] i_cmp3_i_i_2_conv_process146_a;
    wire [33:0] i_cmp3_i_i_2_conv_process146_b;
    logic [33:0] i_cmp3_i_i_2_conv_process146_o;
    wire [0:0] i_cmp3_i_i_2_conv_process146_c;
    wire [33:0] i_cmp3_i_i_3_conv_process191_a;
    wire [33:0] i_cmp3_i_i_3_conv_process191_b;
    logic [33:0] i_cmp3_i_i_3_conv_process191_o;
    wire [0:0] i_cmp3_i_i_3_conv_process191_c;
    wire [33:0] i_cmp3_i_i_conv_process56_a;
    wire [33:0] i_cmp3_i_i_conv_process56_b;
    logic [33:0] i_cmp3_i_i_conv_process56_o;
    wire [0:0] i_cmp3_i_i_conv_process56_c;
    wire [0:0] i_cmp_i64_i_1_conv_process99_q;
    wire [0:0] i_cmp_i64_i_2_conv_process144_q;
    wire [0:0] i_cmp_i64_i_3_conv_process189_qi;
    reg [0:0] i_cmp_i64_i_3_conv_process189_q;
    wire [0:0] i_cmp_i64_i_conv_process54_q;
    wire [31:0] i_conv_i_1_conv_process78_out_primWireOut;
    wire [31:0] i_conv_i_2_conv_process123_out_primWireOut;
    wire [31:0] i_conv_i_3_conv_process168_out_primWireOut;
    wire [31:0] i_conv_i_conv_process33_out_primWireOut;
    wire [31:0] i_div50_conv_process21_out_primWireOut;
    wire [0:0] i_first_cleanup_xor_conv_process4_q;
    wire [0:0] i_first_cleanup_xor_or_conv_process30_qi;
    reg [0:0] i_first_cleanup_xor_or_conv_process30_q;
    wire [3:0] i_fpga_indvars_iv_next35_conv_process230_a;
    wire [3:0] i_fpga_indvars_iv_next35_conv_process230_b;
    logic [3:0] i_fpga_indvars_iv_next35_conv_process230_o;
    wire [3:0] i_fpga_indvars_iv_next35_conv_process230_q;
    wire [63:0] i_idxprom28_i_conv_process14_vt_join_q;
    wire [31:0] i_idxprom28_i_conv_process14_vt_select_31_b;
    wire [63:0] i_idxprom32_i_conv_process24_vt_join_q;
    wire [29:0] i_idxprom32_i_conv_process24_vt_select_31_b;
    wire [63:0] i_idxprom_i112_conv_process17_vt_join_q;
    wire [31:0] i_idxprom_i112_conv_process17_vt_select_31_b;
    wire [32:0] i_inc62_i_conv_process220_a;
    wire [32:0] i_inc62_i_conv_process220_b;
    logic [32:0] i_inc62_i_conv_process220_o;
    wire [32:0] i_inc62_i_conv_process220_q;
    wire [32:0] i_inc66_i_conv_process225_a;
    wire [32:0] i_inc66_i_conv_process225_b;
    logic [32:0] i_inc66_i_conv_process225_o;
    wire [32:0] i_inc66_i_conv_process225_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract74_conv_process20_out_dest_data_out_13_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process124_out_dest_data_out_18_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process169_out_dest_data_out_19_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process38_out_dest_data_out_32_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process128_out_dest_data_out_34_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process173_out_dest_data_out_35_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process34_out_dest_data_out_16_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process97_conv_process79_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process98_conv_process83_out_dest_data_out_33_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process178_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process133_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process88_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process43_out_dest_data_out_62_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process182_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process137_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process92_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process47_out_dest_data_out_63_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process100_conv_process232_out_dest_data_out_73_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process96_conv_process18_out_dest_data_out_73_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1027s_class_ac_int_4s_unnamed_conv_process99_conv_process223_out_dest_data_out_59_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_conv_process6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_feedback_stall_out_96;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_feedback_stall_out_92;
    wire [0:0] i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_feedback_stall_out_95;
    wire [0:0] i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop91_conv_process242_out_feedback_stall_out_91;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_feedback_stall_out_89;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_feedback_stall_out_88;
    wire [31:0] i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_feedback_stall_out_94;
    wire [31:0] i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_feedback_stall_out_86;
    wire [31:0] i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_feedback_stall_out_90;
    wire [31:0] i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_feedback_stall_out_87;
    wire [31:0] i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_pop97_conv_process248_out_feedback_stall_out_97;
    wire [31:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_feedback_stall_out_93;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_feedback_stall_out_85;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_out_96;
    wire [0:0] i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_valid_out_96;
    wire [0:0] i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_out_92;
    wire [0:0] i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_valid_out_92;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_out_95;
    wire [0:0] i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_valid_out_95;
    wire [0:0] i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_out_91;
    wire [0:0] i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_valid_out_91;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_out_89;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_valid_out_89;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_out_88;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_valid_out_88;
    wire [31:0] i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_out_94;
    wire [0:0] i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_valid_out_94;
    wire [31:0] i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_out_86;
    wire [0:0] i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_valid_out_86;
    wire [31:0] i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_out_90;
    wire [0:0] i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_valid_out_90;
    wire [31:0] i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_out_87;
    wire [0:0] i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_valid_out_87;
    wire [31:0] i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_out_97;
    wire [0:0] i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_valid_out_97;
    wire [31:0] i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_out_93;
    wire [0:0] i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_valid_out_93;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_out_85;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_valid_out_85;
    wire [0:0] i_masked_conv_process239_qi;
    reg [0:0] i_masked_conv_process239_q;
    wire [3:0] i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q;
    wire [63:0] i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_join_q;
    wire [59:0] i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_select_63_b;
    wire [31:0] i_mul30_i_conv_process23_vt_join_q;
    wire [29:0] i_mul30_i_conv_process23_vt_select_31_b;
    wire [31:0] i_mul39_i_1_conv_process82_out_primWireOut;
    wire [31:0] i_mul39_i_2_conv_process127_out_primWireOut;
    wire [31:0] i_mul39_i_3_conv_process172_out_primWireOut;
    wire [31:0] i_mul39_i_conv_process37_out_primWireOut;
    wire [0:0] i_next_cleanups_conv_process237_s;
    reg [1:0] i_next_cleanups_conv_process237_q;
    wire [1:0] i_next_initerations_conv_process8_vt_join_q;
    wire [0:0] i_next_initerations_conv_process8_vt_select_0_b;
    wire [0:0] i_notcmp_conv_process234_q;
    wire [0:0] i_or_cond_1_conv_process93_q;
    wire [0:0] i_or_cond_2_conv_process138_q;
    wire [0:0] i_or_cond_3_conv_process183_q;
    wire [0:0] i_or_cond_conv_process48_q;
    wire [0:0] i_or_cond_i_1_conv_process89_q;
    wire [0:0] i_or_cond_i_2_conv_process134_q;
    wire [0:0] i_or_cond_i_3_conv_process179_q;
    wire [0:0] i_or_cond_i_conv_process44_q;
    wire [0:0] i_or_conv_process236_q;
    wire [31:0] i_or_i_i_1_conv_process108_qi;
    reg [31:0] i_or_i_i_1_conv_process108_q;
    wire [31:0] i_or_i_i_2_conv_process153_qi;
    reg [31:0] i_or_i_i_2_conv_process153_q;
    wire [31:0] i_or_i_i_3_conv_process198_qi;
    reg [31:0] i_or_i_i_3_conv_process198_q;
    wire [31:0] i_or_i_i_conv_process63_qi;
    reg [31:0] i_or_i_i_conv_process63_q;
    wire [0:0] i_or_i_i_i_3_conv_process218_s;
    reg [31:0] i_or_i_i_i_3_conv_process218_q;
    wire [23:0] i_shr1_i_i_1_conv_process97_vt_const_31_q;
    wire [31:0] i_shr1_i_i_1_conv_process97_vt_join_q;
    wire [7:0] i_shr1_i_i_1_conv_process97_vt_select_7_b;
    wire [31:0] i_shr1_i_i_2_conv_process142_vt_join_q;
    wire [7:0] i_shr1_i_i_2_conv_process142_vt_select_7_b;
    wire [31:0] i_shr1_i_i_3_conv_process187_vt_join_q;
    wire [7:0] i_shr1_i_i_3_conv_process187_vt_select_7_b;
    wire [31:0] i_shr1_i_i_conv_process52_vt_join_q;
    wire [7:0] i_shr1_i_i_conv_process52_vt_select_7_b;
    wire [0:0] i_spec_select188_1_conv_process116_s;
    reg [31:0] i_spec_select188_1_conv_process116_q;
    wire [0:0] i_spec_select188_2_conv_process161_s;
    reg [31:0] i_spec_select188_2_conv_process161_q;
    wire [0:0] i_spec_select188_3_conv_process206_s;
    reg [31:0] i_spec_select188_3_conv_process206_q;
    wire [0:0] i_spec_select188_conv_process71_s;
    reg [31:0] i_spec_select188_conv_process71_q;
    wire [0:0] i_spec_store_select_i_1_conv_process90_s;
    reg [31:0] i_spec_store_select_i_1_conv_process90_q;
    wire [0:0] i_spec_store_select_i_2_conv_process135_s;
    reg [31:0] i_spec_store_select_i_2_conv_process135_q;
    wire [0:0] i_spec_store_select_i_3_conv_process180_s;
    reg [31:0] i_spec_store_select_i_3_conv_process180_q;
    wire [0:0] i_spec_store_select_i_conv_process45_s;
    reg [31:0] i_spec_store_select_i_conv_process45_q;
    wire [32:0] i_sub18_i_i_1_conv_process115_a;
    wire [32:0] i_sub18_i_i_1_conv_process115_b;
    logic [32:0] i_sub18_i_i_1_conv_process115_o;
    wire [32:0] i_sub18_i_i_1_conv_process115_q;
    wire [32:0] i_sub18_i_i_2_conv_process160_a;
    wire [32:0] i_sub18_i_i_2_conv_process160_b;
    logic [32:0] i_sub18_i_i_2_conv_process160_o;
    wire [32:0] i_sub18_i_i_2_conv_process160_q;
    wire [32:0] i_sub18_i_i_3_conv_process205_a;
    wire [32:0] i_sub18_i_i_3_conv_process205_b;
    logic [32:0] i_sub18_i_i_3_conv_process205_o;
    wire [32:0] i_sub18_i_i_3_conv_process205_q;
    wire [32:0] i_sub18_i_i_conv_process70_a;
    wire [32:0] i_sub18_i_i_conv_process70_b;
    logic [32:0] i_sub18_i_i_conv_process70_o;
    wire [32:0] i_sub18_i_i_conv_process70_q;
    wire [32:0] i_sub7_i_i_1_conv_process103_a;
    wire [32:0] i_sub7_i_i_1_conv_process103_b;
    logic [32:0] i_sub7_i_i_1_conv_process103_o;
    wire [32:0] i_sub7_i_i_1_conv_process103_q;
    wire [32:0] i_sub7_i_i_2_conv_process148_a;
    wire [32:0] i_sub7_i_i_2_conv_process148_b;
    logic [32:0] i_sub7_i_i_2_conv_process148_o;
    wire [32:0] i_sub7_i_i_2_conv_process148_q;
    wire [32:0] i_sub7_i_i_3_conv_process193_a;
    wire [32:0] i_sub7_i_i_3_conv_process193_b;
    logic [32:0] i_sub7_i_i_3_conv_process193_o;
    wire [32:0] i_sub7_i_i_3_conv_process193_q;
    wire [32:0] i_sub7_i_i_conv_process58_a;
    wire [32:0] i_sub7_i_i_conv_process58_b;
    logic [32:0] i_sub7_i_i_conv_process58_o;
    wire [32:0] i_sub7_i_i_conv_process58_q;
    wire [32:0] i_sub_i_i_1_conv_process102_a;
    wire [32:0] i_sub_i_i_1_conv_process102_b;
    logic [32:0] i_sub_i_i_1_conv_process102_o;
    wire [32:0] i_sub_i_i_1_conv_process102_q;
    wire [32:0] i_sub_i_i_2_conv_process147_a;
    wire [32:0] i_sub_i_i_2_conv_process147_b;
    logic [32:0] i_sub_i_i_2_conv_process147_o;
    wire [32:0] i_sub_i_i_2_conv_process147_q;
    wire [32:0] i_sub_i_i_3_conv_process192_a;
    wire [32:0] i_sub_i_i_3_conv_process192_b;
    logic [32:0] i_sub_i_i_3_conv_process192_o;
    wire [32:0] i_sub_i_i_3_conv_process192_q;
    wire [32:0] i_sub_i_i_conv_process57_a;
    wire [32:0] i_sub_i_i_conv_process57_b;
    logic [32:0] i_sub_i_i_conv_process57_o;
    wire [32:0] i_sub_i_i_conv_process57_q;
    wire [33:0] i_unnamed_conv_process117_a;
    wire [33:0] i_unnamed_conv_process117_b;
    logic [33:0] i_unnamed_conv_process117_o;
    wire [0:0] i_unnamed_conv_process117_c;
    wire [0:0] i_unnamed_conv_process119_s;
    reg [31:0] i_unnamed_conv_process119_q;
    wire [33:0] i_unnamed_conv_process120_a;
    wire [33:0] i_unnamed_conv_process120_b;
    logic [33:0] i_unnamed_conv_process120_o;
    wire [0:0] i_unnamed_conv_process120_c;
    wire [0:0] i_unnamed_conv_process122_s;
    reg [31:0] i_unnamed_conv_process122_q;
    wire [0:0] i_unnamed_conv_process139_s;
    reg [31:0] i_unnamed_conv_process139_q;
    wire [33:0] i_unnamed_conv_process162_a;
    wire [33:0] i_unnamed_conv_process162_b;
    logic [33:0] i_unnamed_conv_process162_o;
    wire [0:0] i_unnamed_conv_process162_c;
    wire [0:0] i_unnamed_conv_process164_s;
    reg [31:0] i_unnamed_conv_process164_q;
    wire [33:0] i_unnamed_conv_process165_a;
    wire [33:0] i_unnamed_conv_process165_b;
    logic [33:0] i_unnamed_conv_process165_o;
    wire [0:0] i_unnamed_conv_process165_c;
    wire [0:0] i_unnamed_conv_process167_s;
    reg [31:0] i_unnamed_conv_process167_q;
    wire [0:0] i_unnamed_conv_process184_s;
    reg [31:0] i_unnamed_conv_process184_q;
    wire [0:0] i_unnamed_conv_process19_q;
    wire [33:0] i_unnamed_conv_process207_a;
    wire [33:0] i_unnamed_conv_process207_b;
    logic [33:0] i_unnamed_conv_process207_o;
    wire [0:0] i_unnamed_conv_process207_c;
    wire [0:0] i_unnamed_conv_process209_s;
    reg [31:0] i_unnamed_conv_process209_q;
    wire [33:0] i_unnamed_conv_process210_a;
    wire [33:0] i_unnamed_conv_process210_b;
    logic [33:0] i_unnamed_conv_process210_o;
    wire [0:0] i_unnamed_conv_process210_c;
    wire [0:0] i_unnamed_conv_process212_s;
    reg [31:0] i_unnamed_conv_process212_q;
    wire [0:0] i_unnamed_conv_process233_q;
    wire [0:0] i_unnamed_conv_process49_s;
    reg [31:0] i_unnamed_conv_process49_q;
    wire [33:0] i_unnamed_conv_process72_a;
    wire [33:0] i_unnamed_conv_process72_b;
    logic [33:0] i_unnamed_conv_process72_o;
    wire [0:0] i_unnamed_conv_process72_c;
    wire [0:0] i_unnamed_conv_process74_s;
    reg [31:0] i_unnamed_conv_process74_q;
    wire [33:0] i_unnamed_conv_process75_a;
    wire [33:0] i_unnamed_conv_process75_b;
    logic [33:0] i_unnamed_conv_process75_o;
    wire [0:0] i_unnamed_conv_process75_c;
    wire [0:0] i_unnamed_conv_process77_s;
    reg [31:0] i_unnamed_conv_process77_q;
    wire [0:0] i_unnamed_conv_process94_s;
    reg [31:0] i_unnamed_conv_process94_q;
    wire [63:0] i_value_i_i72_i1_conv_process25_vt_join_q;
    wire [59:0] i_value_i_i72_i1_conv_process25_vt_select_63_b;
    wire [7:0] cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q;
    wire [7:0] cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q;
    wire [7:0] exp_x_uid658_i_cmp46_i_1_conv_process87_b;
    wire [22:0] frac_x_uid659_i_cmp46_i_1_conv_process87_b;
    wire [0:0] expXIsZero_uid660_i_cmp46_i_1_conv_process87_q;
    wire [0:0] expXIsMax_uid661_i_cmp46_i_1_conv_process87_q;
    wire [0:0] fracXIsZero_uid662_i_cmp46_i_1_conv_process87_q;
    wire [0:0] fracXIsNotZero_uid663_i_cmp46_i_1_conv_process87_q;
    wire [0:0] excZ_x_uid664_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] excZ_x_uid664_i_cmp46_i_1_conv_process87_q;
    wire [0:0] excN_x_uid666_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] excN_x_uid666_i_cmp46_i_1_conv_process87_q;
    wire [7:0] exp_y_uid675_i_cmp46_i_1_conv_process87_b;
    wire [22:0] frac_y_uid676_i_cmp46_i_1_conv_process87_b;
    wire [0:0] expXIsZero_uid677_i_cmp46_i_1_conv_process87_q;
    wire [0:0] expXIsMax_uid678_i_cmp46_i_1_conv_process87_q;
    wire [0:0] fracXIsZero_uid679_i_cmp46_i_1_conv_process87_q;
    wire [0:0] fracXIsNotZero_uid680_i_cmp46_i_1_conv_process87_q;
    wire [0:0] excZ_y_uid681_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] excZ_y_uid681_i_cmp46_i_1_conv_process87_q;
    wire [0:0] excN_y_uid683_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] excN_y_uid683_i_cmp46_i_1_conv_process87_q;
    wire [0:0] oneIsNaN_uid689_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] oneIsNaN_uid689_i_cmp46_i_1_conv_process87_q;
    wire [30:0] expFracX_uid694_i_cmp46_i_1_conv_process87_q;
    wire [30:0] expFracY_uid696_i_cmp46_i_1_conv_process87_q;
    wire [32:0] efxGTefy_uid698_i_cmp46_i_1_conv_process87_a;
    wire [32:0] efxGTefy_uid698_i_cmp46_i_1_conv_process87_b;
    logic [32:0] efxGTefy_uid698_i_cmp46_i_1_conv_process87_o;
    wire [0:0] efxGTefy_uid698_i_cmp46_i_1_conv_process87_c;
    wire [32:0] efxLTefy_uid699_i_cmp46_i_1_conv_process87_a;
    wire [32:0] efxLTefy_uid699_i_cmp46_i_1_conv_process87_b;
    logic [32:0] efxLTefy_uid699_i_cmp46_i_1_conv_process87_o;
    wire [0:0] efxLTefy_uid699_i_cmp46_i_1_conv_process87_c;
    wire [0:0] signX_uid703_i_cmp46_i_1_conv_process87_b;
    wire [0:0] signY_uid704_i_cmp46_i_1_conv_process87_b;
    wire [1:0] concSXSY_uid706_i_cmp46_i_1_conv_process87_q;
    wire [0:0] sxLTsy_uid707_i_cmp46_i_1_conv_process87_q;
    wire [0:0] xorSigns_uid708_i_cmp46_i_1_conv_process87_q;
    wire [0:0] sxEQsy_uid709_i_cmp46_i_1_conv_process87_q;
    wire [0:0] expFracCompMux_uid710_i_cmp46_i_1_conv_process87_s;
    reg [0:0] expFracCompMux_uid710_i_cmp46_i_1_conv_process87_q;
    wire [0:0] invExcYZ_uid711_i_cmp46_i_1_conv_process87_q;
    wire [0:0] invExcXZ_uid712_i_cmp46_i_1_conv_process87_q;
    wire [0:0] oneNonZero_uid713_i_cmp46_i_1_conv_process87_q;
    wire [0:0] rc2_uid714_i_cmp46_i_1_conv_process87_q;
    wire [0:0] sxEQsyExpFracCompMux_uid715_i_cmp46_i_1_conv_process87_q;
    wire [0:0] r_uid716_i_cmp46_i_1_conv_process87_qi;
    reg [0:0] r_uid716_i_cmp46_i_1_conv_process87_q;
    wire [0:0] rPostExc_uid717_i_cmp46_i_1_conv_process87_s;
    reg [0:0] rPostExc_uid717_i_cmp46_i_1_conv_process87_q;
    wire [7:0] exp_x_uid722_i_cmp46_i_2_conv_process132_b;
    wire [22:0] frac_x_uid723_i_cmp46_i_2_conv_process132_b;
    wire [0:0] expXIsZero_uid724_i_cmp46_i_2_conv_process132_q;
    wire [0:0] expXIsMax_uid725_i_cmp46_i_2_conv_process132_q;
    wire [0:0] fracXIsZero_uid726_i_cmp46_i_2_conv_process132_q;
    wire [0:0] fracXIsNotZero_uid727_i_cmp46_i_2_conv_process132_q;
    wire [0:0] excZ_x_uid728_i_cmp46_i_2_conv_process132_qi;
    reg [0:0] excZ_x_uid728_i_cmp46_i_2_conv_process132_q;
    wire [0:0] excN_x_uid730_i_cmp46_i_2_conv_process132_qi;
    reg [0:0] excN_x_uid730_i_cmp46_i_2_conv_process132_q;
    wire [0:0] oneIsNaN_uid753_i_cmp46_i_2_conv_process132_qi;
    reg [0:0] oneIsNaN_uid753_i_cmp46_i_2_conv_process132_q;
    wire [30:0] expFracX_uid758_i_cmp46_i_2_conv_process132_q;
    wire [32:0] efxGTefy_uid762_i_cmp46_i_2_conv_process132_a;
    wire [32:0] efxGTefy_uid762_i_cmp46_i_2_conv_process132_b;
    logic [32:0] efxGTefy_uid762_i_cmp46_i_2_conv_process132_o;
    wire [0:0] efxGTefy_uid762_i_cmp46_i_2_conv_process132_c;
    wire [32:0] efxLTefy_uid763_i_cmp46_i_2_conv_process132_a;
    wire [32:0] efxLTefy_uid763_i_cmp46_i_2_conv_process132_b;
    logic [32:0] efxLTefy_uid763_i_cmp46_i_2_conv_process132_o;
    wire [0:0] efxLTefy_uid763_i_cmp46_i_2_conv_process132_c;
    wire [0:0] signX_uid767_i_cmp46_i_2_conv_process132_b;
    wire [1:0] concSXSY_uid770_i_cmp46_i_2_conv_process132_q;
    wire [0:0] sxLTsy_uid771_i_cmp46_i_2_conv_process132_q;
    wire [0:0] xorSigns_uid772_i_cmp46_i_2_conv_process132_q;
    wire [0:0] sxEQsy_uid773_i_cmp46_i_2_conv_process132_q;
    wire [0:0] expFracCompMux_uid774_i_cmp46_i_2_conv_process132_s;
    reg [0:0] expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q;
    wire [0:0] invExcXZ_uid776_i_cmp46_i_2_conv_process132_q;
    wire [0:0] oneNonZero_uid777_i_cmp46_i_2_conv_process132_q;
    wire [0:0] rc2_uid778_i_cmp46_i_2_conv_process132_q;
    wire [0:0] sxEQsyExpFracCompMux_uid779_i_cmp46_i_2_conv_process132_q;
    wire [0:0] r_uid780_i_cmp46_i_2_conv_process132_qi;
    reg [0:0] r_uid780_i_cmp46_i_2_conv_process132_q;
    wire [0:0] rPostExc_uid781_i_cmp46_i_2_conv_process132_s;
    reg [0:0] rPostExc_uid781_i_cmp46_i_2_conv_process132_q;
    wire [7:0] exp_x_uid786_i_cmp46_i_3_conv_process177_b;
    wire [22:0] frac_x_uid787_i_cmp46_i_3_conv_process177_b;
    wire [0:0] expXIsZero_uid788_i_cmp46_i_3_conv_process177_q;
    wire [0:0] expXIsMax_uid789_i_cmp46_i_3_conv_process177_q;
    wire [0:0] fracXIsZero_uid790_i_cmp46_i_3_conv_process177_q;
    wire [0:0] fracXIsNotZero_uid791_i_cmp46_i_3_conv_process177_q;
    wire [0:0] excZ_x_uid792_i_cmp46_i_3_conv_process177_qi;
    reg [0:0] excZ_x_uid792_i_cmp46_i_3_conv_process177_q;
    wire [0:0] excN_x_uid794_i_cmp46_i_3_conv_process177_qi;
    reg [0:0] excN_x_uid794_i_cmp46_i_3_conv_process177_q;
    wire [0:0] oneIsNaN_uid817_i_cmp46_i_3_conv_process177_qi;
    reg [0:0] oneIsNaN_uid817_i_cmp46_i_3_conv_process177_q;
    wire [30:0] expFracX_uid822_i_cmp46_i_3_conv_process177_q;
    wire [32:0] efxGTefy_uid826_i_cmp46_i_3_conv_process177_a;
    wire [32:0] efxGTefy_uid826_i_cmp46_i_3_conv_process177_b;
    logic [32:0] efxGTefy_uid826_i_cmp46_i_3_conv_process177_o;
    wire [0:0] efxGTefy_uid826_i_cmp46_i_3_conv_process177_c;
    wire [32:0] efxLTefy_uid827_i_cmp46_i_3_conv_process177_a;
    wire [32:0] efxLTefy_uid827_i_cmp46_i_3_conv_process177_b;
    logic [32:0] efxLTefy_uid827_i_cmp46_i_3_conv_process177_o;
    wire [0:0] efxLTefy_uid827_i_cmp46_i_3_conv_process177_c;
    wire [0:0] signX_uid831_i_cmp46_i_3_conv_process177_b;
    wire [1:0] concSXSY_uid834_i_cmp46_i_3_conv_process177_q;
    wire [0:0] sxLTsy_uid835_i_cmp46_i_3_conv_process177_q;
    wire [0:0] xorSigns_uid836_i_cmp46_i_3_conv_process177_q;
    wire [0:0] sxEQsy_uid837_i_cmp46_i_3_conv_process177_q;
    wire [0:0] expFracCompMux_uid838_i_cmp46_i_3_conv_process177_s;
    reg [0:0] expFracCompMux_uid838_i_cmp46_i_3_conv_process177_q;
    wire [0:0] invExcXZ_uid840_i_cmp46_i_3_conv_process177_q;
    wire [0:0] oneNonZero_uid841_i_cmp46_i_3_conv_process177_q;
    wire [0:0] rc2_uid842_i_cmp46_i_3_conv_process177_q;
    wire [0:0] sxEQsyExpFracCompMux_uid843_i_cmp46_i_3_conv_process177_q;
    wire [0:0] r_uid844_i_cmp46_i_3_conv_process177_qi;
    reg [0:0] r_uid844_i_cmp46_i_3_conv_process177_q;
    wire [0:0] rPostExc_uid845_i_cmp46_i_3_conv_process177_s;
    reg [0:0] rPostExc_uid845_i_cmp46_i_3_conv_process177_q;
    wire [7:0] exp_x_uid850_i_cmp46_i_conv_process42_b;
    wire [22:0] frac_x_uid851_i_cmp46_i_conv_process42_b;
    wire [0:0] expXIsZero_uid852_i_cmp46_i_conv_process42_q;
    wire [0:0] expXIsMax_uid853_i_cmp46_i_conv_process42_q;
    wire [0:0] fracXIsZero_uid854_i_cmp46_i_conv_process42_q;
    wire [0:0] fracXIsNotZero_uid855_i_cmp46_i_conv_process42_q;
    wire [0:0] excZ_x_uid856_i_cmp46_i_conv_process42_qi;
    reg [0:0] excZ_x_uid856_i_cmp46_i_conv_process42_q;
    wire [0:0] excN_x_uid858_i_cmp46_i_conv_process42_qi;
    reg [0:0] excN_x_uid858_i_cmp46_i_conv_process42_q;
    wire [0:0] oneIsNaN_uid881_i_cmp46_i_conv_process42_qi;
    reg [0:0] oneIsNaN_uid881_i_cmp46_i_conv_process42_q;
    wire [30:0] expFracX_uid886_i_cmp46_i_conv_process42_q;
    wire [32:0] efxGTefy_uid890_i_cmp46_i_conv_process42_a;
    wire [32:0] efxGTefy_uid890_i_cmp46_i_conv_process42_b;
    logic [32:0] efxGTefy_uid890_i_cmp46_i_conv_process42_o;
    wire [0:0] efxGTefy_uid890_i_cmp46_i_conv_process42_c;
    wire [32:0] efxLTefy_uid891_i_cmp46_i_conv_process42_a;
    wire [32:0] efxLTefy_uid891_i_cmp46_i_conv_process42_b;
    logic [32:0] efxLTefy_uid891_i_cmp46_i_conv_process42_o;
    wire [0:0] efxLTefy_uid891_i_cmp46_i_conv_process42_c;
    wire [0:0] signX_uid895_i_cmp46_i_conv_process42_b;
    wire [1:0] concSXSY_uid898_i_cmp46_i_conv_process42_q;
    wire [0:0] sxLTsy_uid899_i_cmp46_i_conv_process42_q;
    wire [0:0] xorSigns_uid900_i_cmp46_i_conv_process42_q;
    wire [0:0] sxEQsy_uid901_i_cmp46_i_conv_process42_q;
    wire [0:0] expFracCompMux_uid902_i_cmp46_i_conv_process42_s;
    reg [0:0] expFracCompMux_uid902_i_cmp46_i_conv_process42_q;
    wire [0:0] invExcXZ_uid904_i_cmp46_i_conv_process42_q;
    wire [0:0] oneNonZero_uid905_i_cmp46_i_conv_process42_q;
    wire [0:0] rc2_uid906_i_cmp46_i_conv_process42_q;
    wire [0:0] sxEQsyExpFracCompMux_uid907_i_cmp46_i_conv_process42_q;
    wire [0:0] r_uid908_i_cmp46_i_conv_process42_qi;
    reg [0:0] r_uid908_i_cmp46_i_conv_process42_q;
    wire [0:0] rPostExc_uid909_i_cmp46_i_conv_process42_s;
    reg [0:0] rPostExc_uid909_i_cmp46_i_conv_process42_q;
    wire [7:0] exp_x_uid914_i_cmp50_i_1_conv_process91_b;
    wire [22:0] frac_x_uid915_i_cmp50_i_1_conv_process91_b;
    wire [0:0] expXIsZero_uid916_i_cmp50_i_1_conv_process91_q;
    wire [0:0] expXIsMax_uid917_i_cmp50_i_1_conv_process91_q;
    wire [0:0] fracXIsZero_uid918_i_cmp50_i_1_conv_process91_q;
    wire [0:0] fracXIsNotZero_uid919_i_cmp50_i_1_conv_process91_q;
    wire [0:0] excZ_x_uid920_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] excZ_x_uid920_i_cmp50_i_1_conv_process91_q;
    wire [0:0] excN_x_uid922_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] excN_x_uid922_i_cmp50_i_1_conv_process91_q;
    wire [7:0] exp_y_uid931_i_cmp50_i_1_conv_process91_b;
    wire [22:0] frac_y_uid932_i_cmp50_i_1_conv_process91_b;
    wire [0:0] expXIsZero_uid933_i_cmp50_i_1_conv_process91_q;
    wire [0:0] expXIsMax_uid934_i_cmp50_i_1_conv_process91_q;
    wire [0:0] fracXIsZero_uid935_i_cmp50_i_1_conv_process91_q;
    wire [0:0] fracXIsNotZero_uid936_i_cmp50_i_1_conv_process91_q;
    wire [0:0] excZ_y_uid937_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] excZ_y_uid937_i_cmp50_i_1_conv_process91_q;
    wire [0:0] excN_y_uid939_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] excN_y_uid939_i_cmp50_i_1_conv_process91_q;
    wire [0:0] oneIsNaN_uid945_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] oneIsNaN_uid945_i_cmp50_i_1_conv_process91_q;
    wire [30:0] expFracX_uid950_i_cmp50_i_1_conv_process91_q;
    wire [30:0] expFracY_uid952_i_cmp50_i_1_conv_process91_q;
    wire [32:0] efxGTefy_uid954_i_cmp50_i_1_conv_process91_a;
    wire [32:0] efxGTefy_uid954_i_cmp50_i_1_conv_process91_b;
    logic [32:0] efxGTefy_uid954_i_cmp50_i_1_conv_process91_o;
    wire [0:0] efxGTefy_uid954_i_cmp50_i_1_conv_process91_c;
    wire [32:0] efxLTefy_uid955_i_cmp50_i_1_conv_process91_a;
    wire [32:0] efxLTefy_uid955_i_cmp50_i_1_conv_process91_b;
    logic [32:0] efxLTefy_uid955_i_cmp50_i_1_conv_process91_o;
    wire [0:0] efxLTefy_uid955_i_cmp50_i_1_conv_process91_c;
    wire [0:0] signX_uid959_i_cmp50_i_1_conv_process91_b;
    wire [0:0] signY_uid960_i_cmp50_i_1_conv_process91_b;
    wire [1:0] concSXSY_uid962_i_cmp50_i_1_conv_process91_q;
    wire [0:0] sxLTsy_uid963_i_cmp50_i_1_conv_process91_q;
    wire [0:0] xorSigns_uid964_i_cmp50_i_1_conv_process91_q;
    wire [0:0] sxEQsy_uid965_i_cmp50_i_1_conv_process91_q;
    wire [0:0] expFracCompMux_uid966_i_cmp50_i_1_conv_process91_s;
    reg [0:0] expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q;
    wire [0:0] invExcYZ_uid967_i_cmp50_i_1_conv_process91_q;
    wire [0:0] invExcXZ_uid968_i_cmp50_i_1_conv_process91_q;
    wire [0:0] oneNonZero_uid969_i_cmp50_i_1_conv_process91_q;
    wire [0:0] rc2_uid970_i_cmp50_i_1_conv_process91_q;
    wire [0:0] sxEQsyExpFracCompMux_uid971_i_cmp50_i_1_conv_process91_q;
    wire [0:0] r_uid972_i_cmp50_i_1_conv_process91_qi;
    reg [0:0] r_uid972_i_cmp50_i_1_conv_process91_q;
    wire [0:0] rPostExc_uid973_i_cmp50_i_1_conv_process91_s;
    reg [0:0] rPostExc_uid973_i_cmp50_i_1_conv_process91_q;
    wire [7:0] exp_y_uid995_i_cmp50_i_2_conv_process136_b;
    wire [22:0] frac_y_uid996_i_cmp50_i_2_conv_process136_b;
    wire [0:0] expXIsZero_uid997_i_cmp50_i_2_conv_process136_q;
    wire [0:0] expXIsMax_uid998_i_cmp50_i_2_conv_process136_q;
    wire [0:0] fracXIsZero_uid999_i_cmp50_i_2_conv_process136_q;
    wire [0:0] fracXIsNotZero_uid1000_i_cmp50_i_2_conv_process136_q;
    wire [0:0] excZ_y_uid1001_i_cmp50_i_2_conv_process136_qi;
    reg [0:0] excZ_y_uid1001_i_cmp50_i_2_conv_process136_q;
    wire [0:0] excN_y_uid1003_i_cmp50_i_2_conv_process136_qi;
    reg [0:0] excN_y_uid1003_i_cmp50_i_2_conv_process136_q;
    wire [0:0] oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_qi;
    reg [0:0] oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_q;
    wire [30:0] expFracY_uid1016_i_cmp50_i_2_conv_process136_q;
    wire [32:0] efxGTefy_uid1018_i_cmp50_i_2_conv_process136_a;
    wire [32:0] efxGTefy_uid1018_i_cmp50_i_2_conv_process136_b;
    logic [32:0] efxGTefy_uid1018_i_cmp50_i_2_conv_process136_o;
    wire [0:0] efxGTefy_uid1018_i_cmp50_i_2_conv_process136_c;
    wire [32:0] efxLTefy_uid1019_i_cmp50_i_2_conv_process136_a;
    wire [32:0] efxLTefy_uid1019_i_cmp50_i_2_conv_process136_b;
    logic [32:0] efxLTefy_uid1019_i_cmp50_i_2_conv_process136_o;
    wire [0:0] efxLTefy_uid1019_i_cmp50_i_2_conv_process136_c;
    wire [0:0] signY_uid1024_i_cmp50_i_2_conv_process136_b;
    wire [1:0] concSXSY_uid1026_i_cmp50_i_2_conv_process136_q;
    wire [0:0] sxLTsy_uid1027_i_cmp50_i_2_conv_process136_q;
    wire [0:0] xorSigns_uid1028_i_cmp50_i_2_conv_process136_q;
    wire [0:0] sxEQsy_uid1029_i_cmp50_i_2_conv_process136_q;
    wire [0:0] expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_s;
    reg [0:0] expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q;
    wire [0:0] invExcYZ_uid1031_i_cmp50_i_2_conv_process136_q;
    wire [0:0] oneNonZero_uid1033_i_cmp50_i_2_conv_process136_q;
    wire [0:0] rc2_uid1034_i_cmp50_i_2_conv_process136_q;
    wire [0:0] sxEQsyExpFracCompMux_uid1035_i_cmp50_i_2_conv_process136_q;
    wire [0:0] r_uid1036_i_cmp50_i_2_conv_process136_qi;
    reg [0:0] r_uid1036_i_cmp50_i_2_conv_process136_q;
    wire [0:0] rPostExc_uid1037_i_cmp50_i_2_conv_process136_s;
    reg [0:0] rPostExc_uid1037_i_cmp50_i_2_conv_process136_q;
    wire [7:0] exp_y_uid1059_i_cmp50_i_3_conv_process181_b;
    wire [22:0] frac_y_uid1060_i_cmp50_i_3_conv_process181_b;
    wire [0:0] expXIsZero_uid1061_i_cmp50_i_3_conv_process181_q;
    wire [0:0] expXIsMax_uid1062_i_cmp50_i_3_conv_process181_q;
    wire [0:0] fracXIsZero_uid1063_i_cmp50_i_3_conv_process181_q;
    wire [0:0] fracXIsNotZero_uid1064_i_cmp50_i_3_conv_process181_q;
    wire [0:0] excZ_y_uid1065_i_cmp50_i_3_conv_process181_qi;
    reg [0:0] excZ_y_uid1065_i_cmp50_i_3_conv_process181_q;
    wire [0:0] excN_y_uid1067_i_cmp50_i_3_conv_process181_qi;
    reg [0:0] excN_y_uid1067_i_cmp50_i_3_conv_process181_q;
    wire [0:0] oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_qi;
    reg [0:0] oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_q;
    wire [30:0] expFracY_uid1080_i_cmp50_i_3_conv_process181_q;
    wire [32:0] efxGTefy_uid1082_i_cmp50_i_3_conv_process181_a;
    wire [32:0] efxGTefy_uid1082_i_cmp50_i_3_conv_process181_b;
    logic [32:0] efxGTefy_uid1082_i_cmp50_i_3_conv_process181_o;
    wire [0:0] efxGTefy_uid1082_i_cmp50_i_3_conv_process181_c;
    wire [32:0] efxLTefy_uid1083_i_cmp50_i_3_conv_process181_a;
    wire [32:0] efxLTefy_uid1083_i_cmp50_i_3_conv_process181_b;
    logic [32:0] efxLTefy_uid1083_i_cmp50_i_3_conv_process181_o;
    wire [0:0] efxLTefy_uid1083_i_cmp50_i_3_conv_process181_c;
    wire [0:0] signY_uid1088_i_cmp50_i_3_conv_process181_b;
    wire [1:0] concSXSY_uid1090_i_cmp50_i_3_conv_process181_q;
    wire [0:0] sxLTsy_uid1091_i_cmp50_i_3_conv_process181_q;
    wire [0:0] xorSigns_uid1092_i_cmp50_i_3_conv_process181_q;
    wire [0:0] sxEQsy_uid1093_i_cmp50_i_3_conv_process181_q;
    wire [0:0] expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_s;
    reg [0:0] expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q;
    wire [0:0] invExcYZ_uid1095_i_cmp50_i_3_conv_process181_q;
    wire [0:0] oneNonZero_uid1097_i_cmp50_i_3_conv_process181_q;
    wire [0:0] rc2_uid1098_i_cmp50_i_3_conv_process181_q;
    wire [0:0] sxEQsyExpFracCompMux_uid1099_i_cmp50_i_3_conv_process181_q;
    wire [0:0] r_uid1100_i_cmp50_i_3_conv_process181_qi;
    reg [0:0] r_uid1100_i_cmp50_i_3_conv_process181_q;
    wire [0:0] rPostExc_uid1101_i_cmp50_i_3_conv_process181_s;
    reg [0:0] rPostExc_uid1101_i_cmp50_i_3_conv_process181_q;
    wire [7:0] exp_y_uid1123_i_cmp50_i_conv_process46_b;
    wire [22:0] frac_y_uid1124_i_cmp50_i_conv_process46_b;
    wire [0:0] expXIsZero_uid1125_i_cmp50_i_conv_process46_q;
    wire [0:0] expXIsMax_uid1126_i_cmp50_i_conv_process46_q;
    wire [0:0] fracXIsZero_uid1127_i_cmp50_i_conv_process46_q;
    wire [0:0] fracXIsNotZero_uid1128_i_cmp50_i_conv_process46_q;
    wire [0:0] excZ_y_uid1129_i_cmp50_i_conv_process46_qi;
    reg [0:0] excZ_y_uid1129_i_cmp50_i_conv_process46_q;
    wire [0:0] excN_y_uid1131_i_cmp50_i_conv_process46_qi;
    reg [0:0] excN_y_uid1131_i_cmp50_i_conv_process46_q;
    wire [0:0] oneIsNaN_uid1137_i_cmp50_i_conv_process46_qi;
    reg [0:0] oneIsNaN_uid1137_i_cmp50_i_conv_process46_q;
    wire [30:0] expFracY_uid1144_i_cmp50_i_conv_process46_q;
    wire [32:0] efxGTefy_uid1146_i_cmp50_i_conv_process46_a;
    wire [32:0] efxGTefy_uid1146_i_cmp50_i_conv_process46_b;
    logic [32:0] efxGTefy_uid1146_i_cmp50_i_conv_process46_o;
    wire [0:0] efxGTefy_uid1146_i_cmp50_i_conv_process46_c;
    wire [32:0] efxLTefy_uid1147_i_cmp50_i_conv_process46_a;
    wire [32:0] efxLTefy_uid1147_i_cmp50_i_conv_process46_b;
    logic [32:0] efxLTefy_uid1147_i_cmp50_i_conv_process46_o;
    wire [0:0] efxLTefy_uid1147_i_cmp50_i_conv_process46_c;
    wire [0:0] signY_uid1152_i_cmp50_i_conv_process46_b;
    wire [1:0] concSXSY_uid1154_i_cmp50_i_conv_process46_q;
    wire [0:0] sxLTsy_uid1155_i_cmp50_i_conv_process46_q;
    wire [0:0] xorSigns_uid1156_i_cmp50_i_conv_process46_q;
    wire [0:0] sxEQsy_uid1157_i_cmp50_i_conv_process46_q;
    wire [0:0] expFracCompMux_uid1158_i_cmp50_i_conv_process46_s;
    reg [0:0] expFracCompMux_uid1158_i_cmp50_i_conv_process46_q;
    wire [0:0] invExcYZ_uid1159_i_cmp50_i_conv_process46_q;
    wire [0:0] oneNonZero_uid1161_i_cmp50_i_conv_process46_q;
    wire [0:0] rc2_uid1162_i_cmp50_i_conv_process46_q;
    wire [0:0] sxEQsyExpFracCompMux_uid1163_i_cmp50_i_conv_process46_q;
    wire [0:0] r_uid1164_i_cmp50_i_conv_process46_qi;
    reg [0:0] r_uid1164_i_cmp50_i_conv_process46_q;
    wire [0:0] rPostExc_uid1165_i_cmp50_i_conv_process46_s;
    reg [0:0] rPostExc_uid1165_i_cmp50_i_conv_process46_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1269_i_and_i63_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1271_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1274_i_and_i63_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1276_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid1279_i_and_i63_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1281_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid1284_i_and_i63_i_1_conv_process0_shift_x_b;
    wire [15:0] rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [31:0] rightShiftStage3Idx1_uid1286_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1292_i_and_i63_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1294_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1297_i_and_i63_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1299_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid1302_i_and_i63_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1304_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid1307_i_and_i63_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid1309_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1315_i_and_i63_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1317_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1320_i_and_i63_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1322_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid1325_i_and_i63_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1327_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid1330_i_and_i63_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid1332_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1338_i_and_i63_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1340_i_and_i63_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage1Idx1Rng2_uid1343_i_and_i63_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1345_i_and_i63_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage2Idx1Rng4_uid1348_i_and_i63_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1350_i_and_i63_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage3Idx1Rng16_uid1353_i_and_i63_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid1355_i_and_i63_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid1363_i_cleanups_shl_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_s;
    reg [1:0] leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1371_i_mul30_i_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid1377_i_next_initerations_conv_process0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid1379_i_next_initerations_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_s;
    reg [1:0] rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid1398_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid1401_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid1404_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid1409_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid1428_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid1431_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid1434_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid1439_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid1458_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid1461_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid1464_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid1469_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid1488_i_shl_i_i_conv_process0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid1491_i_shl_i_i_conv_process0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid1494_i_shl_i_i_conv_process0_shift_x_q;
    wire [1:0] leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid1499_i_shl_i_i_conv_process0_shift_x_q;
    wire [0:0] leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_s;
    reg [31:0] leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_q;
    wire [0:0] xMSB_uid1503_i_shr12_i_i_1_conv_process0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1505_i_shr12_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1506_i_shr12_i_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_q;
    wire [0:0] xMSB_uid1510_i_shr12_i_i_2_conv_process0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1512_i_shr12_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1513_i_shr12_i_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_q;
    wire [0:0] xMSB_uid1517_i_shr12_i_i_3_conv_process0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1519_i_shr12_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1520_i_shr12_i_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_q;
    wire [0:0] xMSB_uid1524_i_shr12_i_i_conv_process0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1526_i_shr12_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1527_i_shr12_i_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1533_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1535_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage0Idx2Rng2_uid1536_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid1538_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [28:0] rightShiftStage0Idx3Rng3_uid1539_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid1541_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1544_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1546_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [23:0] rightShiftStage1Idx2Rng8_uid1547_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx2_uid1549_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [19:0] rightShiftStage1Idx3Rng12_uid1550_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx3_uid1552_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage2Idx1Rng16_uid1555_i_shr8_i_i_1_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1557_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1563_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1565_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage0Idx2Rng2_uid1566_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid1568_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [28:0] rightShiftStage0Idx3Rng3_uid1569_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid1571_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1574_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1576_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [23:0] rightShiftStage1Idx2Rng8_uid1577_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx2_uid1579_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [19:0] rightShiftStage1Idx3Rng12_uid1580_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx3_uid1582_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage2Idx1Rng16_uid1585_i_shr8_i_i_2_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1587_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1593_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1595_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage0Idx2Rng2_uid1596_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid1598_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [28:0] rightShiftStage0Idx3Rng3_uid1599_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid1601_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1604_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1606_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [23:0] rightShiftStage1Idx2Rng8_uid1607_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx2_uid1609_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [19:0] rightShiftStage1Idx3Rng12_uid1610_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx3_uid1612_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage2Idx1Rng16_uid1615_i_shr8_i_i_3_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1617_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid1623_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid1625_i_shr8_i_i_conv_process0_shift_x_q;
    wire [29:0] rightShiftStage0Idx2Rng2_uid1626_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx2_uid1628_i_shr8_i_i_conv_process0_shift_x_q;
    wire [28:0] rightShiftStage0Idx3Rng3_uid1629_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage0Idx3_uid1631_i_shr8_i_i_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q;
    wire [27:0] rightShiftStage1Idx1Rng4_uid1634_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid1636_i_shr8_i_i_conv_process0_shift_x_q;
    wire [23:0] rightShiftStage1Idx2Rng8_uid1637_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx2_uid1639_i_shr8_i_i_conv_process0_shift_x_q;
    wire [19:0] rightShiftStage1Idx3Rng12_uid1640_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage1Idx3_uid1642_i_shr8_i_i_conv_process0_shift_x_q;
    wire [1:0] rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q;
    wire [15:0] rightShiftStage2Idx1Rng16_uid1645_i_shr8_i_i_conv_process0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid1647_i_shr8_i_i_conv_process0_shift_x_q;
    wire [0:0] rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_s;
    reg [31:0] rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q;
    wire [2:0] lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_in;
    wire [2:0] lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_b;
    wire [12:0] highBBits_uid1660_i_value_i_i72_i1_conv_process0_mult_x_b;
    wire [16:0] addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_a;
    wire [16:0] addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_b;
    logic [16:0] addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_o;
    wire [16:0] addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_q;
    wire [19:0] add_uid1662_i_value_i_i72_i1_conv_process0_mult_x_q;
    wire [0:0] lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_in;
    wire [0:0] lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_b;
    wire [14:0] highBBits_uid1665_i_value_i_i72_i1_conv_process0_mult_x_b;
    wire [20:0] a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_a;
    wire [20:0] a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_b;
    logic [20:0] a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_o;
    wire [20:0] a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_q;
    wire [21:0] a_subconst_19_uid1667_i_value_i_i72_i1_conv_process0_mult_x_q;
    wire [20:0] sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_in;
    wire [20:0] sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_b;
    wire [29:0] sR_mergedSignalTM_uid1672_i_value_i_i72_i1_conv_process0_mult_x_q;
    wire [29:0] i_add31_i_1_conv_process26_BitSelect_for_a_b;
    wire [31:0] i_add31_i_1_conv_process26_join_q;
    wire [31:0] i_add31_i_2_conv_process27_join_q;
    wire [31:0] i_add31_i_3_conv_process28_join_q;
    wire [0:0] i_cmp16_i_i_1_conv_process113_cmp_sign_qi;
    reg [0:0] i_cmp16_i_i_1_conv_process113_cmp_sign_q;
    wire [0:0] i_cmp16_i_i_2_conv_process158_cmp_sign_qi;
    reg [0:0] i_cmp16_i_i_2_conv_process158_cmp_sign_q;
    wire [0:0] i_cmp16_i_i_3_conv_process203_cmp_sign_qi;
    reg [0:0] i_cmp16_i_i_3_conv_process203_cmp_sign_q;
    wire [0:0] i_cmp16_i_i_conv_process68_cmp_sign_qi;
    reg [0:0] i_cmp16_i_i_conv_process68_cmp_sign_q;
    wire [0:0] i_exitcond36_conv_process228_cmp_nsign_qi;
    reg [0:0] i_exitcond36_conv_process228_cmp_nsign_q;
    wire [7:0] i_shr1_i_i_1_conv_process97_BitSelect_for_a_b;
    wire [31:0] i_shr1_i_i_1_conv_process97_join_q;
    wire [7:0] i_shr1_i_i_2_conv_process142_BitSelect_for_a_b;
    wire [31:0] i_shr1_i_i_2_conv_process142_join_q;
    wire [7:0] i_shr1_i_i_3_conv_process187_BitSelect_for_a_b;
    wire [31:0] i_shr1_i_i_3_conv_process187_join_q;
    wire [7:0] i_shr1_i_i_conv_process52_BitSelect_for_a_b;
    wire [31:0] i_shr1_i_i_conv_process52_join_q;
    wire [1:0] leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d;
    wire [1:0] rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_b;
    wire [1:0] rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c;
    wire [0:0] rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d;
    wire [15:0] i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_b;
    wire [47:0] i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c;
    reg [47:0] redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_q;
    reg [47:0] redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_delay_0;
    reg [1:0] redist1_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist2_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist3_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist4_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist5_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist6_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist7_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist8_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist9_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist10_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist11_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist12_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist13_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist14_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist15_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q;
    reg [0:0] redist16_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q;
    reg [7:0] redist17_i_shr1_i_i_conv_process52_BitSelect_for_a_b_1_q;
    reg [7:0] redist18_i_shr1_i_i_3_conv_process187_BitSelect_for_a_b_1_q;
    reg [7:0] redist19_i_shr1_i_i_2_conv_process142_BitSelect_for_a_b_1_q;
    reg [7:0] redist20_i_shr1_i_i_1_conv_process97_BitSelect_for_a_b_1_q;
    reg [0:0] redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_q;
    reg [0:0] redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_0;
    reg [0:0] redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_1;
    reg [0:0] redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_q;
    reg [0:0] redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_0;
    reg [0:0] redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_1;
    reg [0:0] redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_q;
    reg [0:0] redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_0;
    reg [0:0] redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_1;
    reg [0:0] redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_q;
    reg [0:0] redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_0;
    reg [0:0] redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_1;
    reg [0:0] redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q;
    reg [0:0] redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1_q;
    reg [31:0] redist27_i_spec_store_select_i_conv_process45_q_2_q;
    reg [31:0] redist28_i_spec_store_select_i_conv_process45_q_3_q;
    reg [31:0] redist29_i_spec_store_select_i_3_conv_process180_q_2_q;
    reg [31:0] redist30_i_spec_store_select_i_3_conv_process180_q_3_q;
    reg [31:0] redist31_i_spec_store_select_i_2_conv_process135_q_2_q;
    reg [31:0] redist32_i_spec_store_select_i_2_conv_process135_q_3_q;
    reg [31:0] redist33_i_spec_store_select_i_1_conv_process90_q_2_q;
    reg [31:0] redist34_i_spec_store_select_i_1_conv_process90_q_3_q;
    reg [31:0] redist35_i_mul39_i_conv_process37_out_primWireOut_1_q;
    reg [31:0] redist36_i_mul39_i_3_conv_process172_out_primWireOut_1_q;
    reg [31:0] redist37_i_mul39_i_2_conv_process127_out_primWireOut_1_q;
    reg [31:0] redist38_i_mul39_i_1_conv_process82_out_primWireOut_1_q;
    reg [0:0] redist39_i_masked_conv_process239_q_51_q;
    reg [31:0] redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1_q;
    reg [0:0] redist44_i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out_51_q;
    reg [0:0] redist45_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out_51_q;
    reg [0:0] redist46_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out_47_q;
    reg [0:0] redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1_q;
    reg [0:0] redist48_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_47_q;
    reg [0:0] redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q;
    reg [0:0] redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2_q;
    reg [0:0] redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q;
    reg [0:0] redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_0;
    reg [0:0] redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_1;
    reg [0:0] redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6_q;
    reg [0:0] redist53_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_52_q;
    reg [0:0] redist54_i_first_cleanup_xor_or_conv_process30_q_4_q;
    reg [0:0] redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_0;
    reg [0:0] redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_1;
    reg [0:0] redist55_i_first_cleanup_xor_or_conv_process30_q_51_q;
    reg [31:0] redist56_i_div50_conv_process21_out_primWireOut_1_q;
    reg [31:0] redist57_i_div50_conv_process21_out_primWireOut_3_q;
    reg [31:0] redist57_i_div50_conv_process21_out_primWireOut_3_delay_0;
    reg [31:0] redist58_i_conv_i_conv_process33_out_primWireOut_1_q;
    reg [31:0] redist59_i_conv_i_3_conv_process168_out_primWireOut_1_q;
    reg [31:0] redist60_i_conv_i_2_conv_process123_out_primWireOut_1_q;
    reg [31:0] redist61_i_conv_i_1_conv_process78_out_primWireOut_1_q;
    reg [0:0] redist62_i_cmp_i64_i_3_conv_process189_q_2_q;
    reg [0:0] redist63_i_cmp3_i_i_3_conv_process191_c_2_q;
    reg [0:0] redist64_i_and9_i_i_conv_process60_vt_select_0_b_1_q;
    reg [0:0] redist65_i_and9_i_i_3_conv_process195_vt_select_0_b_1_q;
    reg [0:0] redist66_i_and9_i_i_2_conv_process150_vt_select_0_b_1_q;
    reg [0:0] redist67_i_and9_i_i_1_conv_process105_vt_select_0_b_1_q;
    reg [22:0] redist68_i_and2_i_i_conv_process53_vt_select_22_b_1_q;
    reg [22:0] redist69_i_and2_i_i_3_conv_process188_vt_select_22_b_1_q;
    reg [22:0] redist70_i_and2_i_i_2_conv_process143_vt_select_22_b_1_q;
    reg [22:0] redist71_i_and2_i_i_1_conv_process98_vt_select_22_b_1_q;
    reg [31:0] redist72_i_add44_i_conv_process41_out_primWireOut_1_q;
    reg [31:0] redist73_i_add44_i_conv_process41_out_primWireOut_2_q;
    reg [31:0] redist74_i_add44_i_conv_process41_out_primWireOut_3_q;
    reg [31:0] redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q;
    reg [31:0] redist76_i_add44_i_3_conv_process176_out_primWireOut_2_q;
    reg [31:0] redist77_i_add44_i_3_conv_process176_out_primWireOut_3_q;
    reg [31:0] redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q;
    reg [31:0] redist79_i_add44_i_2_conv_process131_out_primWireOut_3_q;
    reg [31:0] redist79_i_add44_i_2_conv_process131_out_primWireOut_3_delay_0;
    reg [31:0] redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q;
    reg [31:0] redist81_i_add44_i_1_conv_process86_out_primWireOut_2_q;
    reg [31:0] redist82_i_add44_i_1_conv_process86_out_primWireOut_3_q;
    reg [0:0] redist83_i_acl_56_conv_process156_q_2_q;
    reg [0:0] redist84_i_acl_55_conv_process155_vt_select_0_b_2_q;
    reg [0:0] redist84_i_acl_55_conv_process155_vt_select_0_b_2_delay_0;
    reg [0:0] redist85_i_acl_53_conv_process111_q_2_q;
    reg [0:0] redist86_i_acl_52_conv_process110_vt_select_0_b_2_q;
    reg [0:0] redist86_i_acl_52_conv_process110_vt_select_0_b_2_delay_0;
    reg [0:0] redist87_i_acl_50_conv_process66_q_2_q;
    reg [0:0] redist88_i_acl_49_conv_process65_vt_select_0_b_2_q;
    reg [0:0] redist88_i_acl_49_conv_process65_vt_select_0_b_2_delay_0;
    reg [0:0] redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q;
    reg [0:0] redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q;
    reg [0:0] redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_0;
    reg [0:0] redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_1;
    reg [0:0] redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_2;
    reg [31:0] redist91_sync_together392_aunroll_x_in_c0_eni14_2_tpl_1_q;
    reg [31:0] redist92_sync_together392_aunroll_x_in_c0_eni14_3_tpl_1_q;
    reg [0:0] redist93_sync_together392_aunroll_x_in_c0_eni14_4_tpl_1_q;
    reg [31:0] redist94_sync_together392_aunroll_x_in_c0_eni14_5_tpl_1_q;
    reg [31:0] redist95_sync_together392_aunroll_x_in_c0_eni14_6_tpl_1_q;
    reg [0:0] redist96_sync_together392_aunroll_x_in_c0_eni14_7_tpl_1_q;
    reg [0:0] redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_q;
    reg [0:0] redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_0;
    reg [0:0] redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_1;
    reg [0:0] redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_2;
    reg [0:0] redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_3;
    reg [0:0] redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_q;
    reg [0:0] redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_0;
    reg [0:0] redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_1;
    reg [0:0] redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_2;
    reg [0:0] redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_3;
    reg [31:0] redist99_sync_together392_aunroll_x_in_c0_eni14_10_tpl_1_q;
    reg [0:0] redist101_sync_together392_aunroll_x_in_c0_eni14_12_tpl_52_q;
    reg [0:0] redist102_sync_together392_aunroll_x_in_c0_eni14_13_tpl_52_q;
    reg [0:0] redist104_sync_together392_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist105_sync_together392_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist105_sync_together392_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist105_sync_together392_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist106_sync_together392_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist107_sync_together392_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist108_sync_together392_aunroll_x_in_i_valid_23_q;
    reg [0:0] redist109_sync_together392_aunroll_x_in_i_valid_28_q;
    reg [0:0] redist109_sync_together392_aunroll_x_in_i_valid_28_delay_0;
    reg [0:0] redist109_sync_together392_aunroll_x_in_i_valid_28_delay_1;
    reg [0:0] redist109_sync_together392_aunroll_x_in_i_valid_28_delay_2;
    reg [0:0] redist109_sync_together392_aunroll_x_in_i_valid_28_delay_3;
    reg [0:0] redist110_sync_together392_aunroll_x_in_i_valid_41_q;
    reg [0:0] redist111_sync_together392_aunroll_x_in_i_valid_44_q;
    reg [0:0] redist111_sync_together392_aunroll_x_in_i_valid_44_delay_0;
    reg [0:0] redist111_sync_together392_aunroll_x_in_i_valid_44_delay_1;
    reg [0:0] redist112_sync_together392_aunroll_x_in_i_valid_51_q;
    reg [9:0] redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_q;
    reg [9:0] redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_0;
    reg [9:0] redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_1;
    reg [15:0] redist114_i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b_1_q;
    reg [15:0] redist115_i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b_1_q;
    reg [15:0] redist116_i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b_1_q;
    reg [15:0] redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q;
    reg [31:0] redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1_q;
    reg [0:0] redist119_dupName_19_comparator_x_q_13_q;
    reg [0:0] redist120_dupName_19_comparator_x_q_19_q;
    reg [0:0] redist121_dupName_18_comparator_x_q_13_q;
    reg [0:0] redist122_dupName_18_comparator_x_q_19_q;
    reg [0:0] redist123_dupName_17_comparator_x_q_13_q;
    reg [0:0] redist124_dupName_17_comparator_x_q_19_q;
    reg [0:0] redist125_dupName_13_comparator_x_q_13_q;
    reg [0:0] redist126_dupName_13_comparator_x_q_19_q;
    reg [0:0] redist127_dupName_12_comparator_x_q_13_q;
    reg [0:0] redist128_dupName_12_comparator_x_q_19_q;
    reg [0:0] redist129_dupName_11_comparator_x_q_13_q;
    reg [0:0] redist130_dupName_11_comparator_x_q_19_q;
    reg [0:0] redist131_dupName_7_comparator_x_q_13_q;
    reg [0:0] redist132_dupName_7_comparator_x_q_19_q;
    reg [0:0] redist133_dupName_6_comparator_x_q_13_q;
    reg [0:0] redist134_dupName_6_comparator_x_q_19_q;
    reg [0:0] redist135_dupName_5_comparator_x_q_13_q;
    reg [0:0] redist136_dupName_5_comparator_x_q_19_q;
    reg [0:0] redist137_dupName_2_comparator_x_q_13_q;
    reg [0:0] redist138_dupName_2_comparator_x_q_19_q;
    reg [0:0] redist139_dupName_1_comparator_x_q_13_q;
    reg [0:0] redist140_dupName_1_comparator_x_q_19_q;
    reg [0:0] redist141_dupName_0_comparator_x_q_13_q;
    reg [0:0] redist142_dupName_0_comparator_x_q_19_q;
    wire redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_reset0;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ia;
    wire [5:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_aa;
    wire [5:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ab;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_iq;
    wire [31:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_q;
    wire [5:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_q;
    (* preserve *) reg [5:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i;
    (* preserve *) reg redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_eq;
    reg [5:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_wraddr_q;
    wire [6:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_last_q;
    wire [6:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_b;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmpReg_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_notEnable_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_nor_q;
    reg [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena_q;
    wire [0:0] redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_enaAnd_q;
    wire redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_reset0;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ia;
    wire [5:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_aa;
    wire [5:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ab;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_iq;
    wire [31:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_q;
    wire [5:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_q;
    (* preserve *) reg [5:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i;
    (* preserve *) reg redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_eq;
    reg [5:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_wraddr_q;
    wire [6:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_last_q;
    wire [6:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_b;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmpReg_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_notEnable_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_nor_q;
    reg [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena_q;
    wire [0:0] redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_enaAnd_q;
    wire redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_reset0;
    wire [31:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ia;
    wire [5:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_aa;
    wire [5:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ab;
    wire [31:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_iq;
    wire [31:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_q;
    wire [5:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_q;
    (* preserve *) reg [5:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i;
    (* preserve *) reg redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_eq;
    reg [5:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_wraddr_q;
    wire [6:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_last_q;
    wire [6:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_b;
    wire [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_q;
    reg [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmpReg_q;
    wire [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_notEnable_q;
    wire [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_nor_q;
    reg [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena_q;
    wire [0:0] redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_enaAnd_q;
    wire redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_reset0;
    wire [31:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ia;
    wire [5:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_aa;
    wire [5:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ab;
    wire [31:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_iq;
    wire [31:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_q;
    wire [5:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_q;
    (* preserve *) reg [5:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i;
    (* preserve *) reg redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_eq;
    reg [5:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_wraddr_q;
    wire [6:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_last_q;
    wire [6:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_b;
    wire [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_q;
    reg [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmpReg_q;
    wire [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_notEnable_q;
    wire [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_nor_q;
    reg [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena_q;
    wire [0:0] redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_enaAnd_q;
    wire redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_reset0;
    wire [31:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ia;
    wire [5:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_aa;
    wire [5:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ab;
    wire [31:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_iq;
    wire [31:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_q;
    wire [5:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_q;
    (* preserve *) reg [5:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i;
    (* preserve *) reg redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_eq;
    reg [5:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_wraddr_q;
    wire [6:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_last_q;
    wire [6:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_b;
    wire [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_q;
    reg [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmpReg_q;
    wire [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_notEnable_q;
    wire [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_nor_q;
    reg [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena_q;
    wire [0:0] redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist104_sync_together392_aunroll_x_in_i_valid_1(DELAY,1850)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist104_sync_together392_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist104_sync_together392_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist105_sync_together392_aunroll_x_in_i_valid_4(DELAY,1851)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist105_sync_together392_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist105_sync_together392_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist105_sync_together392_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist105_sync_together392_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist104_sync_together392_aunroll_x_in_i_valid_1_q);
            redist105_sync_together392_aunroll_x_in_i_valid_4_delay_1 <= redist105_sync_together392_aunroll_x_in_i_valid_4_delay_0;
            redist105_sync_together392_aunroll_x_in_i_valid_4_q <= redist105_sync_together392_aunroll_x_in_i_valid_4_delay_1;
        end
    end

    // valid_fanout_reg11(REG,1177)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i3_1338(CONSTANT,322)
    assign c_i3_1338_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next35_conv_process230(ADD,448)@1
    assign i_fpga_indvars_iv_next35_conv_process230_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_data_out};
    assign i_fpga_indvars_iv_next35_conv_process230_b = {1'b0, c_i3_1338_q};
    assign i_fpga_indvars_iv_next35_conv_process230_o = $unsigned(i_fpga_indvars_iv_next35_conv_process230_a) + $unsigned(i_fpga_indvars_iv_next35_conv_process230_b);
    assign i_fpga_indvars_iv_next35_conv_process230_q = i_fpga_indvars_iv_next35_conv_process230_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next35_conv_process230_sel_x(BITSELECT,6)@1
    assign bgTrunc_i_fpga_indvars_iv_next35_conv_process230_sel_x_b = i_fpga_indvars_iv_next35_conv_process230_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231(BLACKBOX,523)@1
    // out out_feedback_out_85@20000000
    // out out_feedback_valid_out_85@20000000
    cnn_top_i_llvm_fpga_push_i3_fpga_indvars0000push85_conv_process0 thei_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next35_conv_process230_sel_x_b),
        .in_feedback_stall_in_85(i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_feedback_stall_out_85),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_85(i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_out_85),
        .out_feedback_valid_out_85(i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_valid_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_2336(CONSTANT,323)
    assign c_i3_2336_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227(BLACKBOX,508)@1
    // out out_feedback_stall_out_85@20000000
    cnn_top_i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process0 thei_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227 (
        .in_data_in(c_i3_2336_q),
        .in_dir(in_c0_eni14_1_tpl),
        .in_feedback_in_85(i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_out_85),
        .in_feedback_valid_in_85(i_llvm_fpga_push_i3_fpga_indvars_iv34_push85_conv_process231_out_feedback_valid_out_85),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_data_out),
        .out_feedback_stall_out_85(i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_feedback_stall_out_85),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond36_conv_process228_cmp_nsign(LOGICAL,1728)@1 + 1
    assign i_exitcond36_conv_process228_cmp_nsign_qi = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv34_pop85_conv_process227_out_data_out[2:2]));
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_exitcond36_conv_process228_cmp_nsign_delay ( .xin(i_exitcond36_conv_process228_cmp_nsign_qi), .xout(i_exitcond36_conv_process228_cmp_nsign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process100_conv_process232(BLACKBOX,492)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ess100_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process100_conv_process232 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist104_sync_together392_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process100_conv_process232_out_dest_data_out_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process233(LOGICAL,607)@2
    assign i_unnamed_conv_process233_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process100_conv_process232_out_dest_data_out_73_0 & i_exitcond36_conv_process228_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_conv_process235(BLACKBOX,512)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond_conv_process0 thei_llvm_fpga_push_i1_notexitcond_conv_process235 (
        .in_data_in(i_unnamed_conv_process233_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_conv_process6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_conv_process3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist104_sync_together392_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,1169)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid1377_i_next_initerations_conv_process0_shift_x(BITSELECT,1376)@2
    assign rightShiftStage0Idx1Rng1_uid1377_i_next_initerations_conv_process0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid1379_i_next_initerations_conv_process0_shift_x(BITJOIN,1378)@2
    assign rightShiftStage0Idx1_uid1379_i_next_initerations_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1377_i_next_initerations_conv_process0_shift_x_b};

    // valid_fanout_reg1(REG,1167)@1 + 1
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

    // valid_fanout_reg2(REG,1168)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push88_conv_process9(BLACKBOX,516)@2
    // out out_feedback_out_88@20000000
    // out out_feedback_valid_out_88@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations_push88_conv_process0 thei_llvm_fpga_push_i2_initerations_push88_conv_process9 (
        .in_data_in(i_next_initerations_conv_process8_vt_join_q),
        .in_feedback_stall_in_88(i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_feedback_stall_out_88),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_88(i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_out_88),
        .out_feedback_valid_out_88(i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_valid_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop88_conv_process7(BLACKBOX,501)@2
    // out out_feedback_stall_out_88@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations_pop88_conv_process0 thei_llvm_fpga_pop_i2_initerations_pop88_conv_process7 (
        .in_data_in(c_i2_1309_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_88(i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_out_88),
        .in_feedback_valid_in_88(i_llvm_fpga_push_i2_initerations_push88_conv_process9_out_feedback_valid_out_88),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_data_out),
        .out_feedback_stall_out_88(i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_feedback_stall_out_88),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x(MUX,1380)@2
    assign rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_data_out or rightShiftStage0Idx1_uid1379_i_next_initerations_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop88_conv_process7_out_data_out;
            1'b1 : rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1379_i_next_initerations_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_conv_process8_vt_select_0(BITSELECT,538)@2
    assign i_next_initerations_conv_process8_vt_select_0_b = rightShiftStage0_uid1381_i_next_initerations_conv_process0_shift_x_q[0:0];

    // i_next_initerations_conv_process8_vt_join(BITJOIN,537)@2
    assign i_next_initerations_conv_process8_vt_join_q = {GND_q, i_next_initerations_conv_process8_vt_select_0_b};

    // i_last_initeration_conv_process10_sel_x(BITSELECT,95)@2
    assign i_last_initeration_conv_process10_sel_x_b = i_next_initerations_conv_process8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_conv_process11(BLACKBOX,509)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration_conv_process0 thei_llvm_fpga_push_i1_lastiniteration_conv_process11 (
        .in_data_in(i_last_initeration_conv_process10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_conv_process6_out_initeration_stall_out),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_conv_process6(BLACKBOX,495)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going_conv_process0 thei_llvm_fpga_pipeline_keep_going_conv_process6 (
        .in_data_in(in_c0_eni14_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_conv_process11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_conv_process235_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_conv_process6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1(DELAY,1795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x(BITSELECT,1361)@2
    assign leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid1363_i_cleanups_shl_conv_process0_shift_x(BITJOIN,1362)@2
    assign leftShiftStage0Idx1_uid1363_i_cleanups_shl_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1362_i_cleanups_shl_conv_process0_shift_x_b, GND_q};

    // leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x(MUX,1364)@2
    assign leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out or leftShiftStage0Idx1_uid1363_i_cleanups_shl_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out;
            1'b1 : leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_q = leftShiftStage0Idx1_uid1363_i_cleanups_shl_conv_process0_shift_x_q;
            default : leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_conv_process5_vt_select_1(BITSELECT,418)@2
    assign i_cleanups_shl_conv_process5_vt_select_1_b = leftShiftStage0_uid1365_i_cleanups_shl_conv_process0_shift_x_q[1:1];

    // i_cleanups_shl_conv_process5_vt_join(BITJOIN,417)@2
    assign i_cleanups_shl_conv_process5_vt_join_q = {i_cleanups_shl_conv_process5_vt_select_1_b, GND_q};

    // i_notcmp_conv_process234(LOGICAL,539)@2
    assign i_notcmp_conv_process234_q = i_unnamed_conv_process233_q ^ VCC_q;

    // i_or_conv_process236(LOGICAL,548)@2
    assign i_or_conv_process236_q = i_notcmp_conv_process234_q | i_first_cleanup_xor_conv_process4_q;

    // i_next_cleanups_conv_process237(MUX,535)@2
    assign i_next_cleanups_conv_process237_s = i_or_conv_process236_q;
    always @(i_next_cleanups_conv_process237_s or i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out or i_cleanups_shl_conv_process5_vt_join_q)
    begin
        unique case (i_next_cleanups_conv_process237_s)
            1'b0 : i_next_cleanups_conv_process237_q = i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out;
            1'b1 : i_next_cleanups_conv_process237_q = i_cleanups_shl_conv_process5_vt_join_q;
            default : i_next_cleanups_conv_process237_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push89_conv_process238(BLACKBOX,515)@2
    // out out_feedback_out_89@20000000
    // out out_feedback_valid_out_89@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups_push89_conv_process0 thei_llvm_fpga_push_i2_cleanups_push89_conv_process238 (
        .in_data_in(i_next_cleanups_conv_process237_q),
        .in_feedback_stall_in_89(i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_feedback_stall_out_89),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist104_sync_together392_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_89(i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_out_89),
        .out_feedback_valid_out_89(i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_valid_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1(DELAY,1835)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q <= '0;
        end
        else
        begin
            redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q <= $unsigned(in_c0_eni14_1_tpl);
        end
    end

    // c_i2_1309(CONSTANT,301)
    assign c_i2_1309_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2(BLACKBOX,500)@2
    // out out_feedback_stall_out_89@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups_pop89_conv_process0 thei_llvm_fpga_pop_i2_cleanups_pop89_conv_process2 (
        .in_data_in(c_i2_1309_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_89(i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_out_89),
        .in_feedback_valid_in_89(i_llvm_fpga_push_i2_cleanups_push89_conv_process238_out_feedback_valid_out_89),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist104_sync_together392_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out),
        .out_feedback_stall_out_89(i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_feedback_stall_out_89),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_conv_process3_sel_x(BITSELECT,90)@2
    assign i_first_cleanup_conv_process3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop89_conv_process2_out_data_out[0:0];

    // i_first_cleanup_xor_conv_process4(LOGICAL,446)@2
    assign i_first_cleanup_xor_conv_process4_q = i_first_cleanup_conv_process3_sel_x_b ^ VCC_q;

    // valid_fanout_reg8(REG,1174)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process96_conv_process18(BLACKBOX,493)@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000cess96_conv_process0 thei_llvm_fpga_ffwd_dest_i1_unnamed_conv_process96_conv_process18 (
        .in_intel_reserved_ffwd_73_0(in_intel_reserved_ffwd_73_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_73_0(i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process96_conv_process18_out_dest_data_out_73_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_conv_process19(LOGICAL,602)@2
    assign i_unnamed_conv_process19_q = i_llvm_fpga_ffwd_dest_i1_unnamed_conv_process96_conv_process18_out_dest_data_out_73_0 ^ VCC_q;

    // i_first_cleanup_xor_or_conv_process30(LOGICAL,447)@2 + 1
    assign i_first_cleanup_xor_or_conv_process30_qi = i_unnamed_conv_process19_q | i_first_cleanup_xor_conv_process4_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor_or_conv_process30_delay ( .xin(i_first_cleanup_xor_or_conv_process30_qi), .xout(i_first_cleanup_xor_or_conv_process30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist54_i_first_cleanup_xor_or_conv_process30_q_4(DELAY,1800)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_0 <= '0;
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_1 <= '0;
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_q <= '0;
        end
        else
        begin
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_or_conv_process30_q);
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_1 <= redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_0;
            redist54_i_first_cleanup_xor_or_conv_process30_q_4_q <= redist54_i_first_cleanup_xor_or_conv_process30_q_4_delay_1;
        end
    end

    // c_conv_process_output_buff_pmem(CONSTANT,239)
    assign c_conv_process_output_buff_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select(BITSELECT,1745)@4
    assign i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_b = c_conv_process_output_buff_pmem_q[15:0];
    assign i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c = c_conv_process_output_buff_pmem_q[63:16];

    // redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2(DELAY,1746)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_delay_0 <= '0;
            redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_q <= '0;
        end
        else
        begin
            redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_delay_0 <= $unsigned(i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c);
            redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_q <= redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_delay_0;
        end
    end

    // c_i32_0312(CONSTANT,302)
    assign c_i32_0312_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x(BITSELECT,1369)@6
    assign leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_in = i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out[29:0];
    assign leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_b = leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid1371_i_mul30_i_conv_process0_shift_x(BITJOIN,1370)@6
    assign leftShiftStage0Idx1_uid1371_i_mul30_i_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng2_uid1370_i_mul30_i_conv_process0_shift_x_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // valid_fanout_reg10(REG,1176)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg41(REG,1207)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2(DELAY,1796)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2_q <= $unsigned(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q);
        end
    end

    // redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5(DELAY,1797)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_0 <= '0;
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_1 <= '0;
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q <= '0;
        end
        else
        begin
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_0 <= $unsigned(redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2_q);
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_1 <= redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_0;
            redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q <= redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_delay_1;
        end
    end

    // c_i32_1314(CONSTANT,308)
    assign c_i32_1314_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc66_i_conv_process225(ADD,465)@6
    assign i_inc66_i_conv_process225_a = {1'b0, i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out};
    assign i_inc66_i_conv_process225_b = {1'b0, c_i32_1314_q};
    assign i_inc66_i_conv_process225_o = $unsigned(i_inc66_i_conv_process225_a) + $unsigned(i_inc66_i_conv_process225_b);
    assign i_inc66_i_conv_process225_q = i_inc66_i_conv_process225_o[32:0];

    // bgTrunc_i_inc66_i_conv_process225_sel_x(BITSELECT,8)@6
    assign bgTrunc_i_inc66_i_conv_process225_sel_x_b = i_inc66_i_conv_process225_q[31:0];

    // i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226(BLACKBOX,518)@6
    // out out_feedback_out_86@20000000
    // out out_feedback_valid_out_86@20000000
    cnn_top_i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process0 thei_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226 (
        .in_data_in(bgTrunc_i_inc66_i_conv_process225_sel_x_b),
        .in_feedback_stall_in_86(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_feedback_stall_out_86),
        .in_keep_going(redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_86(i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_out_86),
        .out_feedback_valid_out_86(i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_valid_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5(DELAY,1836)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_0 <= '0;
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_1 <= '0;
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_2 <= '0;
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q <= '0;
        end
        else
        begin
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_0 <= $unsigned(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q);
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_1 <= redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_0;
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_2 <= redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_1;
            redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q <= redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_delay_2;
        end
    end

    // i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22(BLACKBOX,503)@6
    // out out_feedback_stall_out_86@20000000
    cnn_top_i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process0 thei_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22 (
        .in_data_in(c_i32_0312_q),
        .in_dir(redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q),
        .in_feedback_in_86(i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_out_86),
        .in_feedback_valid_in_86(i_llvm_fpga_push_i32_i_0_i111466_push86_conv_process226_out_feedback_valid_out_86),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out),
        .out_feedback_stall_out_86(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_feedback_stall_out_86),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x(MUX,1372)@6
    assign leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_s or i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out or leftShiftStage0Idx1_uid1371_i_mul30_i_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_s)
            1'b0 : leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_q = i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out;
            1'b1 : leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_q = leftShiftStage0Idx1_uid1371_i_mul30_i_conv_process0_shift_x_q;
            default : leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul30_i_conv_process23_vt_select_31(BITSELECT,530)@6
    assign i_mul30_i_conv_process23_vt_select_31_b = leftShiftStage0_uid1373_i_mul30_i_conv_process0_shift_x_q[31:2];

    // i_mul30_i_conv_process23_vt_join(BITJOIN,529)@6
    assign i_mul30_i_conv_process23_vt_join_q = {i_mul30_i_conv_process23_vt_select_31_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // i_idxprom32_i_conv_process24_sel_x(BITSELECT,92)@6
    assign i_idxprom32_i_conv_process24_sel_x_b = {32'b00000000000000000000000000000000, i_mul30_i_conv_process23_vt_join_q[31:0]};

    // i_idxprom32_i_conv_process24_vt_select_31(BITSELECT,457)@6
    assign i_idxprom32_i_conv_process24_vt_select_31_b = i_idxprom32_i_conv_process24_sel_x_b[31:2];

    // i_idxprom32_i_conv_process24_vt_join(BITJOIN,456)@6
    assign i_idxprom32_i_conv_process24_vt_join_q = {c_i32_0312_q, i_idxprom32_i_conv_process24_vt_select_31_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // i_value_i_i72_i1_conv_process0_dupName_6_trunc_sel_x(BITSELECT,183)@6
    assign i_value_i_i72_i1_conv_process0_dupName_6_trunc_sel_x_b = i_idxprom32_i_conv_process24_vt_join_q[15:0];

    // i_value_i_i72_i1_conv_process0_dupName_0_narrow_x(BITSELECT,187)@6
    assign i_value_i_i72_i1_conv_process0_dupName_0_narrow_x_b = i_value_i_i72_i1_conv_process0_dupName_6_trunc_sel_x_b[13:0];

    // i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x(CONSTANT,175)
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q = $unsigned(2'b00);

    // i_value_i_i72_i1_conv_process0_dupName_0_shift_join_x(BITJOIN,188)@6
    assign i_value_i_i72_i1_conv_process0_dupName_0_shift_join_x_q = {i_value_i_i72_i1_conv_process0_dupName_0_narrow_x_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // valid_fanout_reg4(REG,1170)@1 + 1
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

    // valid_fanout_reg5(REG,1171)@1 + 1
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

    // i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13(BLACKBOX,517)@2
    // out out_feedback_out_94@20000000
    // out out_feedback_valid_out_94@20000000
    cnn_top_i_llvm_fpga_push_i32_c_0_i1104700000push94_conv_process0 thei_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13 (
        .in_data_in(i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_data_out),
        .in_feedback_stall_in_94(i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_feedback_stall_out_94),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_94(i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_out_94),
        .out_feedback_valid_out_94(i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_valid_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist91_sync_together392_aunroll_x_in_c0_eni14_2_tpl_1(DELAY,1837)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist91_sync_together392_aunroll_x_in_c0_eni14_2_tpl_1_q <= '0;
        end
        else
        begin
            redist91_sync_together392_aunroll_x_in_c0_eni14_2_tpl_1_q <= $unsigned(in_c0_eni14_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12(BLACKBOX,502)@2
    // out out_feedback_stall_out_94@20000000
    cnn_top_i_llvm_fpga_pop_i32_c_0_i110470_0000_pop94_conv_process0 thei_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12 (
        .in_data_in(redist91_sync_together392_aunroll_x_in_c0_eni14_2_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_94(i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_out_94),
        .in_feedback_valid_in_94(i_llvm_fpga_push_i32_c_0_i110470_pop76296_push94_conv_process13_out_feedback_valid_out_94),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_data_out),
        .out_feedback_stall_out_94(i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_feedback_stall_out_94),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom28_i_conv_process14_sel_x(BITSELECT,91)@2
    assign i_idxprom28_i_conv_process14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_c_0_i110470_pop76296_pop94_conv_process12_out_data_out[31:0]};

    // i_idxprom28_i_conv_process14_vt_select_31(BITSELECT,452)@2
    assign i_idxprom28_i_conv_process14_vt_select_31_b = i_idxprom28_i_conv_process14_sel_x_b[31:0];

    // i_idxprom28_i_conv_process14_vt_join(BITJOIN,451)@2
    assign i_idxprom28_i_conv_process14_vt_join_q = {c_i32_0312_q, i_idxprom28_i_conv_process14_vt_select_31_b};

    // i_value_i_i72_i1_conv_process0_dupName_3_trunc_sel_x(BITSELECT,181)@2
    assign i_value_i_i72_i1_conv_process0_dupName_3_trunc_sel_x_b = i_idxprom28_i_conv_process14_vt_join_q[15:0];

    // i_value_i_i72_i1_conv_process0_narrow_x(BITSELECT,206)@2
    assign i_value_i_i72_i1_conv_process0_narrow_x_b = i_value_i_i72_i1_conv_process0_dupName_3_trunc_sel_x_b[9:0];

    // redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3(DELAY,1859)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_0 <= '0;
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_1 <= '0;
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_q <= '0;
        end
        else
        begin
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_0 <= $unsigned(i_value_i_i72_i1_conv_process0_narrow_x_b);
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_1 <= redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_0;
            redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_q <= redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_delay_1;
        end
    end

    // i_value_i_i72_i1_conv_process0_c_i6_02_x(CONSTANT,204)
    assign i_value_i_i72_i1_conv_process0_c_i6_02_x_q = $unsigned(6'b000000);

    // i_value_i_i72_i1_conv_process0_shift_join_x(BITJOIN,207)@5
    assign i_value_i_i72_i1_conv_process0_shift_join_x_q = {redist113_i_value_i_i72_i1_conv_process0_narrow_x_b_3_q, i_value_i_i72_i1_conv_process0_c_i6_02_x_q};

    // valid_fanout_reg6(REG,1172)@1 + 1
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

    // valid_fanout_reg7(REG,1173)@1 + 1
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

    // i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16(BLACKBOX,522)@2
    // out out_feedback_out_93@20000000
    // out out_feedback_valid_out_93@20000000
    cnn_top_i_llvm_fpga_push_i32_r_0_i1064760000push93_conv_process0 thei_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16 (
        .in_data_in(i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_data_out),
        .in_feedback_stall_in_93(i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_feedback_stall_out_93),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_93(i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_out_93),
        .out_feedback_valid_out_93(i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_valid_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist92_sync_together392_aunroll_x_in_c0_eni14_3_tpl_1(DELAY,1838)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist92_sync_together392_aunroll_x_in_c0_eni14_3_tpl_1_q <= '0;
        end
        else
        begin
            redist92_sync_together392_aunroll_x_in_c0_eni14_3_tpl_1_q <= $unsigned(in_c0_eni14_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15(BLACKBOX,507)@2
    // out out_feedback_stall_out_93@20000000
    cnn_top_i_llvm_fpga_pop_i32_r_0_i106476_0000_pop93_conv_process0 thei_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15 (
        .in_data_in(redist92_sync_together392_aunroll_x_in_c0_eni14_3_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_93(i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_out_93),
        .in_feedback_valid_in_93(i_llvm_fpga_push_i32_r_0_i106476_pop65291_push93_conv_process16_out_feedback_valid_out_93),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_data_out),
        .out_feedback_stall_out_93(i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_feedback_stall_out_93),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_i112_conv_process17_sel_x(BITSELECT,94)@2
    assign i_idxprom_i112_conv_process17_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_r_0_i106476_pop65291_pop93_conv_process15_out_data_out[31:0]};

    // i_idxprom_i112_conv_process17_vt_select_31(BITSELECT,463)@2
    assign i_idxprom_i112_conv_process17_vt_select_31_b = i_idxprom_i112_conv_process17_sel_x_b[31:0];

    // i_idxprom_i112_conv_process17_vt_join(BITJOIN,462)@2
    assign i_idxprom_i112_conv_process17_vt_join_q = {c_i32_0312_q, i_idxprom_i112_conv_process17_vt_select_31_b};

    // i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x(BITSELECT,178)@2
    assign i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b = i_idxprom_i112_conv_process17_vt_join_q[15:0];

    // redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1(DELAY,1863)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q <= $unsigned(i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b);
        end
    end

    // highBBits_uid1665_i_value_i_i72_i1_conv_process0_mult_x(BITSELECT,1664)@3
    assign highBBits_uid1665_i_value_i_i72_i1_conv_process0_mult_x_b = redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q[15:1];

    // highBBits_uid1660_i_value_i_i72_i1_conv_process0_mult_x(BITSELECT,1659)@2
    assign highBBits_uid1660_i_value_i_i72_i1_conv_process0_mult_x_b = i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b[15:3];

    // addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x(ADD,1660)@2 + 1
    assign addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_a = {1'b0, i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_b = {4'b0000, highBBits_uid1660_i_value_i_i72_i1_conv_process0_mult_x_b};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_o <= 17'b0;
        end
        else
        begin
            addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_o <= $unsigned(addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_a) + $unsigned(addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_b);
        end
    end
    assign addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_q = addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_o[16:0];

    // lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x(BITSELECT,1658)@3
    assign lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_in = redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q[2:0];
    assign lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_b = lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_in[2:0];

    // add_uid1662_i_value_i_i72_i1_conv_process0_mult_x(BITJOIN,1661)@3
    assign add_uid1662_i_value_i_i72_i1_conv_process0_mult_x_q = {addsumAHighB_uid1661_i_value_i_i72_i1_conv_process0_mult_x_q, lowRangeB_uid1659_i_value_i_i72_i1_conv_process0_mult_x_b};

    // a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x(ADD,1665)@3
    assign a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_a = {1'b0, add_uid1662_i_value_i_i72_i1_conv_process0_mult_x_q};
    assign a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_b = {6'b000000, highBBits_uid1665_i_value_i_i72_i1_conv_process0_mult_x_b};
    assign a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_o = $unsigned(a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_a) + $unsigned(a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_b);
    assign a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_q = a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_o[20:0];

    // lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x(BITSELECT,1663)@3
    assign lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_in = redist117_i_value_i_i72_i1_conv_process0_dupName_0_trunc_sel_x_b_1_q[0:0];
    assign lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_b = lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_in[0:0];

    // a_subconst_19_uid1667_i_value_i_i72_i1_conv_process0_mult_x(BITJOIN,1666)@3
    assign a_subconst_19_uid1667_i_value_i_i72_i1_conv_process0_mult_x_q = {a_subconst_19_sumAHighB_uid1666_i_value_i_i72_i1_conv_process0_mult_x_q, lowRangeB_uid1664_i_value_i_i72_i1_conv_process0_mult_x_b};

    // sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x(BITSELECT,1670)@3
    assign sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_in = a_subconst_19_uid1667_i_value_i_i72_i1_conv_process0_mult_x_q[20:0];
    assign sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_b = sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_in[20:0];

    // i_and2_i_i_1_conv_process98_vt_const_31(CONSTANT,373)
    assign i_and2_i_i_1_conv_process98_vt_const_31_q = $unsigned(9'b000000000);

    // sR_mergedSignalTM_uid1672_i_value_i_i72_i1_conv_process0_mult_x(BITJOIN,1671)@3
    assign sR_mergedSignalTM_uid1672_i_value_i_i72_i1_conv_process0_mult_x_q = {sR_bottomRange_uid1671_i_value_i_i72_i1_conv_process0_mult_x_b, i_and2_i_i_1_conv_process98_vt_const_31_q};

    // i_value_i_i72_i1_conv_process0_mult_extender_x(BITJOIN,197)@3
    assign i_value_i_i72_i1_conv_process0_mult_extender_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, sR_mergedSignalTM_uid1672_i_value_i_i72_i1_conv_process0_mult_x_q};

    // i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x(BITSELECT,179)@3
    assign i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b = i_value_i_i72_i1_conv_process0_mult_extender_x_q[15:0];

    // redist116_i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b_1(DELAY,1862)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist116_i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist116_i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_value_i_i72_i1_conv_process0_add_x(ADD,200)@4
    assign i_value_i_i72_i1_conv_process0_add_x_a = {1'b0, i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_b};
    assign i_value_i_i72_i1_conv_process0_add_x_b = {1'b0, redist116_i_value_i_i72_i1_conv_process0_dupName_1_trunc_sel_x_b_1_q};
    assign i_value_i_i72_i1_conv_process0_add_x_o = $unsigned(i_value_i_i72_i1_conv_process0_add_x_a) + $unsigned(i_value_i_i72_i1_conv_process0_add_x_b);
    assign i_value_i_i72_i1_conv_process0_add_x_q = i_value_i_i72_i1_conv_process0_add_x_o[16:0];

    // i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x(BITSELECT,180)@4
    assign i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b = i_value_i_i72_i1_conv_process0_add_x_q[15:0];

    // redist115_i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b_1(DELAY,1861)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist115_i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist115_i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b_1_q <= $unsigned(i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b);
        end
    end

    // i_value_i_i72_i1_conv_process0_dupName_0_add_x(ADD,186)@5
    assign i_value_i_i72_i1_conv_process0_dupName_0_add_x_a = {1'b0, redist115_i_value_i_i72_i1_conv_process0_dupName_2_trunc_sel_x_b_1_q};
    assign i_value_i_i72_i1_conv_process0_dupName_0_add_x_b = {1'b0, i_value_i_i72_i1_conv_process0_shift_join_x_q};
    assign i_value_i_i72_i1_conv_process0_dupName_0_add_x_o = $unsigned(i_value_i_i72_i1_conv_process0_dupName_0_add_x_a) + $unsigned(i_value_i_i72_i1_conv_process0_dupName_0_add_x_b);
    assign i_value_i_i72_i1_conv_process0_dupName_0_add_x_q = i_value_i_i72_i1_conv_process0_dupName_0_add_x_o[16:0];

    // i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x(BITSELECT,182)@5
    assign i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b = i_value_i_i72_i1_conv_process0_dupName_0_add_x_q[15:0];

    // redist114_i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b_1(DELAY,1860)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist114_i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist114_i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b_1_q <= $unsigned(i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b);
        end
    end

    // i_value_i_i72_i1_conv_process0_dupName_1_add_x(ADD,190)@6
    assign i_value_i_i72_i1_conv_process0_dupName_1_add_x_a = {1'b0, redist114_i_value_i_i72_i1_conv_process0_dupName_5_trunc_sel_x_b_1_q};
    assign i_value_i_i72_i1_conv_process0_dupName_1_add_x_b = {1'b0, i_value_i_i72_i1_conv_process0_dupName_0_shift_join_x_q};
    assign i_value_i_i72_i1_conv_process0_dupName_1_add_x_o = $unsigned(i_value_i_i72_i1_conv_process0_dupName_1_add_x_a) + $unsigned(i_value_i_i72_i1_conv_process0_dupName_1_add_x_b);
    assign i_value_i_i72_i1_conv_process0_dupName_1_add_x_q = i_value_i_i72_i1_conv_process0_dupName_1_add_x_o[16:0];

    // i_value_i_i72_i1_conv_process0_dupName_8_trunc_sel_x(BITSELECT,184)@6
    assign i_value_i_i72_i1_conv_process0_dupName_8_trunc_sel_x_b = i_value_i_i72_i1_conv_process0_dupName_1_add_x_q[15:0];

    // i_value_i_i72_i1_conv_process0_append_upper_bits_x(BITJOIN,201)@6
    assign i_value_i_i72_i1_conv_process0_append_upper_bits_x_q = {redist0_i_value_i_i72_i1_conv_process0_trunc_sel_x_merged_bit_select_c_2_q, i_value_i_i72_i1_conv_process0_dupName_8_trunc_sel_x_b};

    // i_value_i_i72_i1_conv_process25_vt_select_63(BITSELECT,618)@6
    assign i_value_i_i72_i1_conv_process25_vt_select_63_b = i_value_i_i72_i1_conv_process0_append_upper_bits_x_q[63:4];

    // i_value_i_i72_i1_conv_process25_vt_join(BITJOIN,617)@6
    assign i_value_i_i72_i1_conv_process25_vt_join_q = {i_value_i_i72_i1_conv_process25_vt_select_63_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_select_63(BITSELECT,527)@6
    assign i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_select_63_b = i_value_i_i72_i1_conv_process25_vt_join_q[63:4];

    // i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3(CONSTANT,525)
    assign i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q = $unsigned(4'b0000);

    // i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_join(BITJOIN,526)@6
    assign i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_join_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_select_63_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x(BLACKBOX,107)@6
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@10
    // out out_o_readdata_1_tpl@10
    // out out_o_readdata_2_tpl@10
    // out out_o_readdata_3_tpl@10
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write@20000000
    // out out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata@20000000
    // out out_o_stall@9
    // out out_o_valid@10
    cnn_top_i_llvm_fpga_mem_memcoalesce_load0000ue_227_conv_process0 thei_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_join_q),
        .in_i_predicate(redist54_i_first_cleanup_xor_or_conv_process30_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack(in_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_3_tpl),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,31)
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_address;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_enable;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_read;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_write;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_writedata;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_byteenable;
    assign out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_memcoalesce_load_conv_process_fpgaunique_227_conv_process_avm_burstcount;

    // redist106_sync_together392_aunroll_x_in_i_valid_5(DELAY,1852)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist106_sync_together392_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist106_sync_together392_aunroll_x_in_i_valid_5_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist107_sync_together392_aunroll_x_in_i_valid_17(DELAY,1853)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist107_sync_together392_aunroll_x_in_i_valid_17 ( .xin(redist106_sync_together392_aunroll_x_in_i_valid_5_q), .xout(redist107_sync_together392_aunroll_x_in_i_valid_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist108_sync_together392_aunroll_x_in_i_valid_23(DELAY,1854)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist108_sync_together392_aunroll_x_in_i_valid_23 ( .xin(redist107_sync_together392_aunroll_x_in_i_valid_17_q), .xout(redist108_sync_together392_aunroll_x_in_i_valid_23_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist109_sync_together392_aunroll_x_in_i_valid_28(DELAY,1855)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_0 <= '0;
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_1 <= '0;
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_2 <= '0;
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_3 <= '0;
            redist109_sync_together392_aunroll_x_in_i_valid_28_q <= '0;
        end
        else
        begin
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_0 <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_1 <= redist109_sync_together392_aunroll_x_in_i_valid_28_delay_0;
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_2 <= redist109_sync_together392_aunroll_x_in_i_valid_28_delay_1;
            redist109_sync_together392_aunroll_x_in_i_valid_28_delay_3 <= redist109_sync_together392_aunroll_x_in_i_valid_28_delay_2;
            redist109_sync_together392_aunroll_x_in_i_valid_28_q <= redist109_sync_together392_aunroll_x_in_i_valid_28_delay_3;
        end
    end

    // redist110_sync_together392_aunroll_x_in_i_valid_41(DELAY,1856)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist110_sync_together392_aunroll_x_in_i_valid_41 ( .xin(redist109_sync_together392_aunroll_x_in_i_valid_28_q), .xout(redist110_sync_together392_aunroll_x_in_i_valid_41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist111_sync_together392_aunroll_x_in_i_valid_44(DELAY,1857)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist111_sync_together392_aunroll_x_in_i_valid_44_delay_0 <= '0;
            redist111_sync_together392_aunroll_x_in_i_valid_44_delay_1 <= '0;
            redist111_sync_together392_aunroll_x_in_i_valid_44_q <= '0;
        end
        else
        begin
            redist111_sync_together392_aunroll_x_in_i_valid_44_delay_0 <= $unsigned(redist110_sync_together392_aunroll_x_in_i_valid_41_q);
            redist111_sync_together392_aunroll_x_in_i_valid_44_delay_1 <= redist111_sync_together392_aunroll_x_in_i_valid_44_delay_0;
            redist111_sync_together392_aunroll_x_in_i_valid_44_q <= redist111_sync_together392_aunroll_x_in_i_valid_44_delay_1;
        end
    end

    // redist112_sync_together392_aunroll_x_in_i_valid_51(DELAY,1858)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist112_sync_together392_aunroll_x_in_i_valid_51 ( .xin(redist111_sync_together392_aunroll_x_in_i_valid_44_q), .xout(redist112_sync_together392_aunroll_x_in_i_valid_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,1166)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist112_sync_together392_aunroll_x_in_i_valid_51_q);
        end
    end

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_notEnable(LOGICAL,1935)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_notEnable_q = $unsigned(~ (VCC_q));

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_nor(LOGICAL,1936)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_nor_q = ~ (redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_notEnable_q | redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena_q);

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_last(CONSTANT,1932)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_last_q = $unsigned(7'b0110001);

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp(LOGICAL,1933)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_b = {1'b0, redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_q};
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_q = $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_last_q == redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_b ? 1'b1 : 1'b0);

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmpReg(REG,1934)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmpReg_q <= $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmp_q);
        end
    end

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena(REG,1937)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_nor_q == 1'b1)
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena_q <= $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_cmpReg_q);
        end
    end

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_enaAnd(LOGICAL,1938)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_enaAnd_q = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_sticky_ena_q & VCC_q;

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt(COUNTER,1930)
    // low=0, high=50, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i <= 6'd0;
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i == 6'd49)
            begin
                redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_eq <= 1'b0;
            end
            if (redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_eq == 1'b1)
            begin
                redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i <= $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i) + $unsigned(6'd14);
            end
            else
            begin
                redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i <= $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_q = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_i[5:0];

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_wraddr(REG,1931)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_wraddr_q <= $unsigned(6'b110010);
        end
        else
        begin
            redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_wraddr_q <= $unsigned(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_q);
        end
    end

    // redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem(DUALMEM,1929)
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ia = $unsigned(in_c0_eni14_14_tpl);
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_aa = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_wraddr_q;
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ab = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_rdcnt_q;
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(51),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(51),
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
    ) redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_dmem (
        .clocken1(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_reset0),
        .clock1(clock),
        .address_a(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_aa),
        .data_a(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_ab),
        .q_b(redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_iq),
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
    assign redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_q = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_iq[31:0];

    // redist102_sync_together392_aunroll_x_in_c0_eni14_13_tpl_52(DELAY,1848)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist102_sync_together392_aunroll_x_in_c0_eni14_13_tpl_52 ( .xin(in_c0_eni14_13_tpl), .xout(redist102_sync_together392_aunroll_x_in_c0_eni14_13_tpl_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist101_sync_together392_aunroll_x_in_c0_eni14_12_tpl_52(DELAY,1847)
    dspba_delay_ver #( .width(1), .depth(52), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist101_sync_together392_aunroll_x_in_c0_eni14_12_tpl_52 ( .xin(in_c0_eni14_12_tpl), .xout(redist101_sync_together392_aunroll_x_in_c0_eni14_12_tpl_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_notEnable(LOGICAL,1925)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_notEnable_q = $unsigned(~ (VCC_q));

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_nor(LOGICAL,1926)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_nor_q = ~ (redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_notEnable_q | redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena_q);

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_last(CONSTANT,1922)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_last_q = $unsigned(7'b0110001);

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp(LOGICAL,1923)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_b = {1'b0, redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_q};
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_q = $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_last_q == redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_b ? 1'b1 : 1'b0);

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmpReg(REG,1924)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmpReg_q <= $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmp_q);
        end
    end

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena(REG,1927)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_nor_q == 1'b1)
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena_q <= $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_cmpReg_q);
        end
    end

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_enaAnd(LOGICAL,1928)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_enaAnd_q = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_sticky_ena_q & VCC_q;

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt(COUNTER,1920)
    // low=0, high=50, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i <= 6'd0;
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i == 6'd49)
            begin
                redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_eq <= 1'b0;
            end
            if (redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_eq == 1'b1)
            begin
                redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i <= $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i) + $unsigned(6'd14);
            end
            else
            begin
                redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i <= $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_q = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_i[5:0];

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_wraddr(REG,1921)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_wraddr_q <= $unsigned(6'b110010);
        end
        else
        begin
            redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_wraddr_q <= $unsigned(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_q);
        end
    end

    // redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem(DUALMEM,1919)
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ia = $unsigned(in_c0_eni14_11_tpl);
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_aa = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_wraddr_q;
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ab = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_rdcnt_q;
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(51),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(51),
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
    ) redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_dmem (
        .clocken1(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_reset0),
        .clock1(clock),
        .address_a(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_aa),
        .data_a(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_ab),
        .q_b(redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_iq),
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
    assign redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_q = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_iq[31:0];

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_notEnable(LOGICAL,1895)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_nor(LOGICAL,1896)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_nor_q = ~ (redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_notEnable_q | redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena_q);

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_last(CONSTANT,1892)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_last_q = $unsigned(7'b0110000);

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp(LOGICAL,1893)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_b = {1'b0, redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_q};
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_q = $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_last_q == redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_b ? 1'b1 : 1'b0);

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmpReg(REG,1894)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmpReg_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmp_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena(REG,1897)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_nor_q == 1'b1)
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_cmpReg_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_enaAnd(LOGICAL,1898)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_enaAnd_q = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_sticky_ena_q & VCC_q;

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt(COUNTER,1890)
    // low=0, high=49, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i <= 6'd0;
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i == 6'd48)
            begin
                redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_eq <= 1'b0;
            end
            if (redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_eq == 1'b1)
            begin
                redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i <= $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i) + $unsigned(6'd15);
            end
            else
            begin
                redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i <= $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_q = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_i[5:0];

    // valid_fanout_reg50(REG,1216)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg51(REG,1217)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_push97_conv_process249(BLACKBOX,521)@2
    // out out_feedback_out_97@20000000
    // out out_feedback_valid_out_97@20000000
    cnn_top_i_llvm_fpga_push_i32_push97_conv_process0 thei_llvm_fpga_push_i32_push97_conv_process249 (
        .in_data_in(i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out),
        .in_feedback_stall_in_97(i_llvm_fpga_pop_i32_pop97_conv_process248_out_feedback_stall_out_97),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_data_out(),
        .out_feedback_out_97(i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_out_97),
        .out_feedback_valid_out_97(i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_valid_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist99_sync_together392_aunroll_x_in_c0_eni14_10_tpl_1(DELAY,1845)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist99_sync_together392_aunroll_x_in_c0_eni14_10_tpl_1_q <= '0;
        end
        else
        begin
            redist99_sync_together392_aunroll_x_in_c0_eni14_10_tpl_1_q <= $unsigned(in_c0_eni14_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_pop97_conv_process248(BLACKBOX,506)@2
    // out out_feedback_stall_out_97@20000000
    cnn_top_i_llvm_fpga_pop_i32_pop97_conv_process0 thei_llvm_fpga_pop_i32_pop97_conv_process248 (
        .in_data_in(redist99_sync_together392_aunroll_x_in_c0_eni14_10_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_97(i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_out_97),
        .in_feedback_valid_in_97(i_llvm_fpga_push_i32_push97_conv_process249_out_feedback_valid_out_97),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_data_out(i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out),
        .out_feedback_stall_out_97(i_llvm_fpga_pop_i32_pop97_conv_process248_out_feedback_stall_out_97),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_wraddr(REG,1891)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_wraddr_q <= $unsigned(6'b110001);
        end
        else
        begin
            redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_wraddr_q <= $unsigned(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_q);
        end
    end

    // redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem(DUALMEM,1889)
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ia = $unsigned(i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out);
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_aa = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_wraddr_q;
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ab = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_rdcnt_q;
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(50),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(50),
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
    ) redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_dmem (
        .clocken1(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_reset0),
        .clock1(clock),
        .address_a(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_aa),
        .data_a(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_ab),
        .q_b(redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_iq),
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
    assign redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_q = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_iq[31:0];

    // valid_fanout_reg48(REG,1214)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg49(REG,1215)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist106_sync_together392_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6(DELAY,1798)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6_q <= '0;
        end
        else
        begin
            redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6_q <= $unsigned(redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247(BLACKBOX,510)@7
    // out out_feedback_out_96@20000000
    // out out_feedback_valid_out_96@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp165298_push96_conv_process0 thei_llvm_fpga_push_i1_notcmp165298_push96_conv_process247 (
        .in_data_in(redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1_q),
        .in_feedback_stall_in_96(i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_feedback_stall_out_96),
        .in_keep_going(redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_data_out(),
        .out_feedback_out_96(i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_out_96),
        .out_feedback_valid_out_96(i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_valid_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5(DELAY,1844)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_0 <= '0;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_1 <= '0;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_2 <= '0;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_3 <= '0;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_q <= '0;
        end
        else
        begin
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_0 <= $unsigned(in_c0_eni14_9_tpl);
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_1 <= redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_0;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_2 <= redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_1;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_3 <= redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_2;
            redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_q <= redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246(BLACKBOX,496)@6
    // out out_feedback_stall_out_96@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process0 thei_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246 (
        .in_data_in(redist98_sync_together392_aunroll_x_in_c0_eni14_9_tpl_5_q),
        .in_dir(redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q),
        .in_feedback_in_96(i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_out_96),
        .in_feedback_valid_in_96(i_llvm_fpga_push_i1_notcmp165298_push96_conv_process247_out_feedback_valid_out_96),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out),
        .out_feedback_stall_out_96(i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_feedback_stall_out_96),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1(DELAY,1793)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1_q <= '0;
        end
        else
        begin
            redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out);
        end
    end

    // redist48_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_47(DELAY,1794)
    dspba_delay_ver #( .width(1), .depth(46), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_47 ( .xin(redist47_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_1_q), .xout(redist48_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg46(REG,1212)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg47(REG,1213)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist105_sync_together392_aunroll_x_in_i_valid_4_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245(BLACKBOX,511)@6
    // out out_feedback_out_92@20000000
    // out out_feedback_valid_out_92@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp169289_push92_conv_process0 thei_llvm_fpga_push_i1_notcmp169289_push92_conv_process245 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out),
        .in_feedback_stall_in_92(i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_feedback_stall_out_92),
        .in_keep_going(redist51_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_data_out(),
        .out_feedback_out_92(i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_out_92),
        .out_feedback_valid_out_92(i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_valid_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5(DELAY,1843)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_0 <= '0;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_1 <= '0;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_2 <= '0;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_3 <= '0;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_q <= '0;
        end
        else
        begin
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_0 <= $unsigned(in_c0_eni14_8_tpl);
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_1 <= redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_0;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_2 <= redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_1;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_3 <= redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_2;
            redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_q <= redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_delay_3;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244(BLACKBOX,497)@6
    // out out_feedback_stall_out_92@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process0 thei_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244 (
        .in_data_in(redist97_sync_together392_aunroll_x_in_c0_eni14_8_tpl_5_q),
        .in_dir(redist90_sync_together392_aunroll_x_in_c0_eni14_1_tpl_5_q),
        .in_feedback_in_92(i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_out_92),
        .in_feedback_valid_in_92(i_llvm_fpga_push_i1_notcmp169289_push92_conv_process245_out_feedback_valid_out_92),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out),
        .out_feedback_stall_out_92(i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_feedback_stall_out_92),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist46_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out_47(DELAY,1792)
    dspba_delay_ver #( .width(1), .depth(47), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out_47 ( .xin(i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out), .xout(redist46_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out_47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg44(REG,1210)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg45(REG,1211)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_push91_conv_process243(BLACKBOX,514)@2
    // out out_feedback_out_91@20000000
    // out out_feedback_valid_out_91@20000000
    cnn_top_i_llvm_fpga_push_i1_push91_conv_process0 thei_llvm_fpga_push_i1_push91_conv_process243 (
        .in_data_in(i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out),
        .in_feedback_stall_in_91(i_llvm_fpga_pop_i1_pop91_conv_process242_out_feedback_stall_out_91),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_data_out(),
        .out_feedback_out_91(i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_out_91),
        .out_feedback_valid_out_91(i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_valid_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist96_sync_together392_aunroll_x_in_c0_eni14_7_tpl_1(DELAY,1842)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist96_sync_together392_aunroll_x_in_c0_eni14_7_tpl_1_q <= '0;
        end
        else
        begin
            redist96_sync_together392_aunroll_x_in_c0_eni14_7_tpl_1_q <= $unsigned(in_c0_eni14_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop91_conv_process242(BLACKBOX,499)@2
    // out out_feedback_stall_out_91@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop91_conv_process0 thei_llvm_fpga_pop_i1_pop91_conv_process242 (
        .in_data_in(redist96_sync_together392_aunroll_x_in_c0_eni14_7_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_91(i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_out_91),
        .in_feedback_valid_in_91(i_llvm_fpga_push_i1_push91_conv_process243_out_feedback_valid_out_91),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out),
        .out_feedback_stall_out_91(i_llvm_fpga_pop_i1_pop91_conv_process242_out_feedback_stall_out_91),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist44_i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out_51(DELAY,1790)
    dspba_delay_ver #( .width(1), .depth(51), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist44_i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out_51 ( .xin(i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out), .xout(redist44_i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_notEnable(LOGICAL,1915)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_nor(LOGICAL,1916)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_nor_q = ~ (redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_notEnable_q | redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena_q);

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_last(CONSTANT,1912)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_last_q = $unsigned(7'b0110000);

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp(LOGICAL,1913)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_b = {1'b0, redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_q};
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_q = $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_last_q == redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_b ? 1'b1 : 1'b0);

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmpReg(REG,1914)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmpReg_q <= $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmp_q);
        end
    end

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena(REG,1917)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_nor_q == 1'b1)
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena_q <= $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_cmpReg_q);
        end
    end

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_enaAnd(LOGICAL,1918)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_enaAnd_q = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_sticky_ena_q & VCC_q;

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt(COUNTER,1910)
    // low=0, high=49, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i <= 6'd0;
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i == 6'd48)
            begin
                redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_eq <= 1'b0;
            end
            if (redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_eq == 1'b1)
            begin
                redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i <= $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i) + $unsigned(6'd15);
            end
            else
            begin
                redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i <= $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_q = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_i[5:0];

    // valid_fanout_reg42(REG,1208)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg43(REG,1209)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241(BLACKBOX,519)@2
    // out out_feedback_out_90@20000000
    // out out_feedback_valid_out_90@20000000
    cnn_top_i_llvm_fpga_push_i32_offset_0_i40000push90_conv_process0 thei_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241 (
        .in_data_in(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out),
        .in_feedback_stall_in_90(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_feedback_stall_out_90),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_90(i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_out_90),
        .out_feedback_valid_out_90(i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_valid_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist95_sync_together392_aunroll_x_in_c0_eni14_6_tpl_1(DELAY,1841)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist95_sync_together392_aunroll_x_in_c0_eni14_6_tpl_1_q <= '0;
        end
        else
        begin
            redist95_sync_together392_aunroll_x_in_c0_eni14_6_tpl_1_q <= $unsigned(in_c0_eni14_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240(BLACKBOX,504)@2
    // out out_feedback_stall_out_90@20000000
    cnn_top_i_llvm_fpga_pop_i32_offset_0_i470000_pop90_conv_process0 thei_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240 (
        .in_data_in(redist95_sync_together392_aunroll_x_in_c0_eni14_6_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_90(i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_out_90),
        .in_feedback_valid_in_90(i_llvm_fpga_push_i32_offset_0_i475_replace_phi287_push90_conv_process241_out_feedback_valid_out_90),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_data_out(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out),
        .out_feedback_stall_out_90(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_feedback_stall_out_90),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_wraddr(REG,1911)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_wraddr_q <= $unsigned(6'b110001);
        end
        else
        begin
            redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_wraddr_q <= $unsigned(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_q);
        end
    end

    // redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem(DUALMEM,1909)
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ia = $unsigned(i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out);
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_aa = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_wraddr_q;
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ab = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_rdcnt_q;
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(50),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(50),
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
    ) redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_dmem (
        .clocken1(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_reset0),
        .clock1(clock),
        .address_a(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_aa),
        .data_a(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_ab),
        .q_b(redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_iq),
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
    assign redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_q = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_iq[31:0];

    // i_masked_conv_process239(LOGICAL,524)@2 + 1
    assign i_masked_conv_process239_qi = i_notcmp_conv_process234_q & i_first_cleanup_conv_process3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_conv_process239_delay ( .xin(i_masked_conv_process239_qi), .xout(i_masked_conv_process239_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_i_masked_conv_process239_q_51(DELAY,1785)
    dspba_delay_ver #( .width(1), .depth(50), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist39_i_masked_conv_process239_q_51 ( .xin(i_masked_conv_process239_q), .xout(redist39_i_masked_conv_process239_q_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_notEnable(LOGICAL,1905)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_nor(LOGICAL,1906)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_nor_q = ~ (redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_notEnable_q | redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena_q);

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_last(CONSTANT,1902)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_last_q = $unsigned(7'b0101111);

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp(LOGICAL,1903)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_b = {1'b0, redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_q};
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_q = $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_last_q == redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_b ? 1'b1 : 1'b0);

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmpReg(REG,1904)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmpReg_q <= $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmp_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena(REG,1907)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_nor_q == 1'b1)
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena_q <= $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_cmpReg_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_enaAnd(LOGICAL,1908)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_enaAnd_q = redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_sticky_ena_q & VCC_q;

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt(COUNTER,1900)
    // low=0, high=48, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i <= 6'd0;
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i == 6'd47)
            begin
                redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_eq <= 1'b0;
            end
            if (redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_eq == 1'b1)
            begin
                redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i <= $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i) + $unsigned(6'd16);
            end
            else
            begin
                redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i <= $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_q = redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_i[5:0];

    // valid_fanout_reg38(REG,1204)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,1205)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist104_sync_together392_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_inc62_i_conv_process220(ADD,464)@3
    assign i_inc62_i_conv_process220_a = {1'b0, redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1_q};
    assign i_inc62_i_conv_process220_b = {1'b0, c_i32_1314_q};
    assign i_inc62_i_conv_process220_o = $unsigned(i_inc62_i_conv_process220_a) + $unsigned(i_inc62_i_conv_process220_b);
    assign i_inc62_i_conv_process220_q = i_inc62_i_conv_process220_o[32:0];

    // bgTrunc_i_inc62_i_conv_process220_sel_x(BITSELECT,7)@3
    assign bgTrunc_i_inc62_i_conv_process220_sel_x_b = i_inc62_i_conv_process220_q[31:0];

    // i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221(BLACKBOX,520)@3
    // out out_feedback_out_87@20000000
    // out out_feedback_valid_out_87@20000000
    cnn_top_i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process0 thei_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221 (
        .in_data_in(bgTrunc_i_inc62_i_conv_process220_sel_x_b),
        .in_feedback_stall_in_87(i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_feedback_stall_out_87),
        .in_keep_going(redist50_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(),
        .out_feedback_out_87(i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_out_87),
        .out_feedback_valid_out_87(i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_valid_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist94_sync_together392_aunroll_x_in_c0_eni14_5_tpl_1(DELAY,1840)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist94_sync_together392_aunroll_x_in_c0_eni14_5_tpl_1_q <= '0;
        end
        else
        begin
            redist94_sync_together392_aunroll_x_in_c0_eni14_5_tpl_1_q <= $unsigned(in_c0_eni14_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219(BLACKBOX,505)@2
    // out out_feedback_stall_out_87@20000000
    cnn_top_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process0 thei_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219 (
        .in_data_in(redist94_sync_together392_aunroll_x_in_c0_eni14_5_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_87(i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_out_87),
        .in_feedback_valid_in_87(i_llvm_fpga_push_i32_offset_2_i465_push87_conv_process221_out_feedback_valid_out_87),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out),
        .out_feedback_stall_out_87(i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_feedback_stall_out_87),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1(DELAY,1787)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1_q <= '0;
        end
        else
        begin
            redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_wraddr(REG,1901)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_wraddr_q <= $unsigned(6'b110000);
        end
        else
        begin
            redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_wraddr_q <= $unsigned(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_q);
        end
    end

    // redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem(DUALMEM,1899)
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ia = $unsigned(redist41_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_1_q);
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_aa = redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_wraddr_q;
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ab = redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_rdcnt_q;
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(49),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(49),
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
    ) redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_dmem (
        .clocken1(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_reset0),
        .clock1(clock),
        .address_a(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_aa),
        .data_a(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_ab),
        .q_b(redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_iq),
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
    assign redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_q = redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_iq[31:0];

    // i_idxprom63_i_conv_process222_sel_x(BITSELECT,93)@53
    assign i_idxprom63_i_conv_process222_sel_x_b = $unsigned({{32{redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_q[31]}}, redist42_i_llvm_fpga_pop_i32_offset_2_i465_pop87_conv_process219_out_data_out_51_mem_q[31:0]});

    // i_temp_i_sroa_0_0_sroa_idx_conv_process0_narrow_x(BITSELECT,176)@53
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_narrow_x_b = i_idxprom63_i_conv_process222_sel_x_b[61:0];

    // i_temp_i_sroa_0_0_sroa_idx_conv_process0_shift_join_x(BITJOIN,177)@53
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_shift_join_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_narrow_x_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // valid_fanout_reg40(REG,1206)@52 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist112_sync_together392_aunroll_x_in_i_valid_51_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1027s_class_ac_int_4s_unnamed_conv_process99_conv_process223(BLACKBOX,494)@53
    cnn_top_i_llvm_fpga_ffwd_dest_p1027s_cla0000cess99_conv_process0 thei_llvm_fpga_ffwd_dest_p1027s_class_ac_int_4s_unnamed_conv_process99_conv_process223 (
        .in_intel_reserved_ffwd_59_0(in_intel_reserved_ffwd_59_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_dest_data_out_59_0(i_llvm_fpga_ffwd_dest_p1027s_class_ac_int_4s_unnamed_conv_process99_conv_process223_out_dest_data_out_59_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x(ADD,174)@53
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1027s_class_ac_int_4s_unnamed_conv_process99_conv_process223_out_dest_data_out_59_0};
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_b = {1'b0, i_temp_i_sroa_0_0_sroa_idx_conv_process0_shift_join_x_q};
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_o = $unsigned(i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_a) + $unsigned(i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_b);
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_q = i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_o[64:0];

    // i_temp_i_sroa_0_0_sroa_idx_conv_process0_dupName_0_trunc_sel_x(BITSELECT,172)@53
    assign i_temp_i_sroa_0_0_sroa_idx_conv_process0_dupName_0_trunc_sel_x_b = i_temp_i_sroa_0_0_sroa_idx_conv_process0_add_x_q[63:0];

    // c_i8_2214(CONSTANT,324)
    assign c_i8_2214_q = $unsigned(8'b00000010);

    // i_sub18_i_i_3_conv_process205(SUB,580)@50
    assign i_sub18_i_i_3_conv_process205_a = {1'b0, c_i32_0312_q};
    assign i_sub18_i_i_3_conv_process205_b = {1'b0, i_acl_60_conv_process202_q};
    assign i_sub18_i_i_3_conv_process205_o = $unsigned(i_sub18_i_i_3_conv_process205_a) - $unsigned(i_sub18_i_i_3_conv_process205_b);
    assign i_sub18_i_i_3_conv_process205_q = i_sub18_i_i_3_conv_process205_o[32:0];

    // bgTrunc_i_sub18_i_i_3_conv_process205_sel_x(BITSELECT,11)@50
    assign bgTrunc_i_sub18_i_i_3_conv_process205_sel_x_b = $unsigned(i_sub18_i_i_3_conv_process205_q[31:0]);

    // i_acl_49_conv_process65_vt_const_31(CONSTANT,329)
    assign i_acl_49_conv_process65_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x(CONSTANT,1284)
    assign rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage2Idx1Rng16_uid1615_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1614)@48
    assign rightShiftStage2Idx1Rng16_uid1615_i_shr8_i_i_3_conv_process0_shift_x_b = rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q[31:16];

    // rightShiftStage2Idx1_uid1617_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1616)@48
    assign rightShiftStage2Idx1_uid1617_i_shr8_i_i_3_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage2Idx1Rng16_uid1615_i_shr8_i_i_3_conv_process0_shift_x_b};

    // leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x(CONSTANT,1401)
    assign leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q = $unsigned(12'b000000000000);

    // rightShiftStage1Idx3Rng12_uid1610_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1609)@48
    assign rightShiftStage1Idx3Rng12_uid1610_i_shr8_i_i_3_conv_process0_shift_x_b = rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q[31:12];

    // rightShiftStage1Idx3_uid1612_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1611)@48
    assign rightShiftStage1Idx3_uid1612_i_shr8_i_i_3_conv_process0_shift_x_q = {leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage1Idx3Rng12_uid1610_i_shr8_i_i_3_conv_process0_shift_x_b};

    // cstAllZWE_uid657_i_cmp46_i_1_conv_process87(CONSTANT,656)
    assign cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q = $unsigned(8'b00000000);

    // rightShiftStage1Idx2Rng8_uid1607_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1606)@48
    assign rightShiftStage1Idx2Rng8_uid1607_i_shr8_i_i_3_conv_process0_shift_x_b = rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q[31:8];

    // rightShiftStage1Idx2_uid1609_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1608)@48
    assign rightShiftStage1Idx2_uid1609_i_shr8_i_i_3_conv_process0_shift_x_q = {cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q, rightShiftStage1Idx2Rng8_uid1607_i_shr8_i_i_3_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng4_uid1604_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1603)@48
    assign rightShiftStage1Idx1Rng4_uid1604_i_shr8_i_i_3_conv_process0_shift_x_b = rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1606_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1605)@48
    assign rightShiftStage1Idx1_uid1606_i_shr8_i_i_3_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage1Idx1Rng4_uid1604_i_shr8_i_i_3_conv_process0_shift_x_b};

    // leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x(CONSTANT,1390)
    assign leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q = $unsigned(3'b000);

    // rightShiftStage0Idx3Rng3_uid1599_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1598)@47
    assign rightShiftStage0Idx3Rng3_uid1599_i_shr8_i_i_3_conv_process0_shift_x_b = i_and2_i_i_3_conv_process188_vt_join_q[31:3];

    // rightShiftStage0Idx3_uid1601_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1600)@47
    assign rightShiftStage0Idx3_uid1601_i_shr8_i_i_3_conv_process0_shift_x_q = {leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage0Idx3Rng3_uid1599_i_shr8_i_i_3_conv_process0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid1596_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1595)@47
    assign rightShiftStage0Idx2Rng2_uid1596_i_shr8_i_i_3_conv_process0_shift_x_b = i_and2_i_i_3_conv_process188_vt_join_q[31:2];

    // rightShiftStage0Idx2_uid1598_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1597)@47
    assign rightShiftStage0Idx2_uid1598_i_shr8_i_i_3_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage0Idx2Rng2_uid1596_i_shr8_i_i_3_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1593_i_shr8_i_i_3_conv_process0_shift_x(BITSELECT,1592)@47
    assign rightShiftStage0Idx1Rng1_uid1593_i_shr8_i_i_3_conv_process0_shift_x_b = i_and2_i_i_3_conv_process188_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid1595_i_shr8_i_i_3_conv_process0_shift_x(BITJOIN,1594)@47
    assign rightShiftStage0Idx1_uid1595_i_shr8_i_i_3_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1593_i_shr8_i_i_3_conv_process0_shift_x_b};

    // c_i32_8388607319(CONSTANT,320)
    assign c_i32_8388607319_q = $unsigned(32'b00000000011111111111111111111111);

    // valid_fanout_reg9(REG,1175)@29 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist109_sync_together392_aunroll_x_in_i_valid_28_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract74_conv_process20(BLACKBOX,475)@30
    cnn_top_i_llvm_fpga_ffwd_dest_f32_scale_0000ract74_conv_process0 thei_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract74_conv_process20 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract74_conv_process20_out_dest_data_out_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_float_6_000000e_00311(FLOATCONSTANT,241)
    assign c_float_6_000000e_00311_q = $unsigned(32'b01000000110000000000000000000000);

    // i_div50_conv_process21(BLACKBOX,443)@30
    // out out_primWireOut@43
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000j22644ck28744ck2675x thei_div50_conv_process21 (
        .in_0(c_float_6_000000e_00311_q),
        .in_1(i_llvm_fpga_ffwd_dest_f32_scale_buff_fca_1_extract74_conv_process20_out_dest_data_out_13_0),
        .out_primWireOut(i_div50_conv_process21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist56_i_div50_conv_process21_out_primWireOut_1(DELAY,1802)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_i_div50_conv_process21_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist56_i_div50_conv_process21_out_primWireOut_1_q <= $unsigned(i_div50_conv_process21_out_primWireOut);
        end
    end

    // redist57_i_div50_conv_process21_out_primWireOut_3(DELAY,1803)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_i_div50_conv_process21_out_primWireOut_3_delay_0 <= '0;
            redist57_i_div50_conv_process21_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist57_i_div50_conv_process21_out_primWireOut_3_delay_0 <= $unsigned(redist56_i_div50_conv_process21_out_primWireOut_1_q);
            redist57_i_div50_conv_process21_out_primWireOut_3_q <= redist57_i_div50_conv_process21_out_primWireOut_3_delay_0;
        end
    end

    // c_float_0_000000e_00316(FLOATCONSTANT,240)
    assign c_float_0_000000e_00316_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg32(REG,1198)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process173(BLACKBOX,480)@25
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process173 (
        .in_intel_reserved_ffwd_35_0(in_intel_reserved_ffwd_35_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_dest_data_out_35_0(i_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process173_out_dest_data_out_35_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_15333(CONSTANT,312)
    assign c_i32_15333_q = $unsigned(32'b00000000000000000000000000001111);

    // i_add31_i_1_conv_process26_BitSelect_for_a(BITSELECT,1713)@6
    assign i_add31_i_1_conv_process26_BitSelect_for_a_b = i_mul30_i_conv_process23_vt_join_q[31:2];

    // i_add31_i_3_conv_process28_join(BITJOIN,1718)@6
    assign i_add31_i_3_conv_process28_join_q = {i_add31_i_1_conv_process26_BitSelect_for_a_b, VCC_q, VCC_q};

    // i_add31_i_3_conv_process28_vt_select_31(BITSELECT,367)@6
    assign i_add31_i_3_conv_process28_vt_select_31_b = i_add31_i_3_conv_process28_join_q[31:2];

    // i_add31_i_3_conv_process28_vt_const_1(CONSTANT,365)
    assign i_add31_i_3_conv_process28_vt_const_1_q = $unsigned(2'b11);

    // i_add31_i_3_conv_process28_vt_join(BITJOIN,366)@6
    assign i_add31_i_3_conv_process28_vt_join_q = {i_add31_i_3_conv_process28_vt_select_31_b, i_add31_i_3_conv_process28_vt_const_1_q};

    // dupName_19_comparator_x(LOGICAL,62)@6 + 1
    assign dupName_19_comparator_x_qi = $unsigned(i_add31_i_3_conv_process28_vt_join_q == c_i32_15333_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_19_comparator_x_delay ( .xin(dupName_19_comparator_x_qi), .xout(dupName_19_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist119_dupName_19_comparator_x_q_13(DELAY,1865)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist119_dupName_19_comparator_x_q_13 ( .xin(dupName_19_comparator_x_q), .xout(redist119_dupName_19_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist120_dupName_19_comparator_x_q_19(DELAY,1866)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist120_dupName_19_comparator_x_q_19 ( .xin(redist119_dupName_19_comparator_x_q_13_q), .xout(redist120_dupName_19_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_11332(CONSTANT,304)
    assign c_i32_11332_q = $unsigned(32'b00000000000000000000000000001011);

    // dupName_18_comparator_x(LOGICAL,61)@6 + 1
    assign dupName_18_comparator_x_qi = $unsigned(i_add31_i_3_conv_process28_vt_join_q == c_i32_11332_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_18_comparator_x_delay ( .xin(dupName_18_comparator_x_qi), .xout(dupName_18_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist121_dupName_18_comparator_x_q_13(DELAY,1867)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist121_dupName_18_comparator_x_q_13 ( .xin(dupName_18_comparator_x_q), .xout(redist121_dupName_18_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist122_dupName_18_comparator_x_q_19(DELAY,1868)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist122_dupName_18_comparator_x_q_19 ( .xin(redist121_dupName_18_comparator_x_q_13_q), .xout(redist122_dupName_18_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg33(REG,1199)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x(BLACKBOX,106)@25
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n89148_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x (
        .in_intel_reserved_ffwd_72_0_0_tpl(in_intel_reserved_ffwd_72_0_0_tpl),
        .in_intel_reserved_ffwd_72_0_1_tpl(in_intel_reserved_ffwd_72_0_1_tpl),
        .in_intel_reserved_ffwd_72_0_2_tpl(in_intel_reserved_ffwd_72_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_dest_data_out_72_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_0_tpl),
        .out_dest_data_out_72_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_1_tpl),
        .out_dest_data_out_72_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7331(CONSTANT,319)
    assign c_i32_7331_q = $unsigned(32'b00000000000000000000000000000111);

    // dupName_17_comparator_x(LOGICAL,60)@6 + 1
    assign dupName_17_comparator_x_qi = $unsigned(i_add31_i_3_conv_process28_vt_join_q == c_i32_7331_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_17_comparator_x_delay ( .xin(dupName_17_comparator_x_qi), .xout(dupName_17_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist123_dupName_17_comparator_x_q_13(DELAY,1869)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist123_dupName_17_comparator_x_q_13 ( .xin(dupName_17_comparator_x_q), .xout(redist123_dupName_17_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist124_dupName_17_comparator_x_q_19(DELAY,1870)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist124_dupName_17_comparator_x_q_19 ( .xin(redist123_dupName_17_comparator_x_q_13_q), .xout(redist124_dupName_17_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175(SELECTOR,473)@25 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select19996_conv_process173_out_dest_data_out_35_0);
            if (redist120_dupName_19_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_2_tpl);
            end
            if (redist122_dupName_18_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_1_tpl);
            end
            if (redist124_dupName_17_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign89148_conv_process174_aunroll_x_out_dest_data_out_72_0_0_tpl);
            end
        end
    end

    // i_conv_i_3_conv_process168(BLACKBOX,441)@10
    // out out_primWireOut@19
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond000016oe0cp36cd0oq3cdj6z thei_conv_i_3_conv_process168 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_3_tpl),
        .out_primWireOut(i_conv_i_3_conv_process168_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist59_i_conv_i_3_conv_process168_out_primWireOut_1(DELAY,1805)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_i_conv_i_3_conv_process168_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist59_i_conv_i_3_conv_process168_out_primWireOut_1_q <= $unsigned(i_conv_i_3_conv_process168_out_primWireOut);
        end
    end

    // valid_fanout_reg30(REG,1196)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process169(BLACKBOX,477)@19
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process169 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process169_out_dest_data_out_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg31(REG,1197)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x(BLACKBOX,105)@19
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n85147_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x (
        .in_intel_reserved_ffwd_71_0_0_tpl(in_intel_reserved_ffwd_71_0_0_tpl),
        .in_intel_reserved_ffwd_71_0_1_tpl(in_intel_reserved_ffwd_71_0_1_tpl),
        .in_intel_reserved_ffwd_71_0_2_tpl(in_intel_reserved_ffwd_71_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_dest_data_out_71_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_0_tpl),
        .out_dest_data_out_71_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_1_tpl),
        .out_dest_data_out_71_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171(SELECTOR,472)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select18381_conv_process169_out_dest_data_out_19_0);
            if (redist119_dupName_19_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_2_tpl);
            end
            if (redist121_dupName_18_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_1_tpl);
            end
            if (redist123_dupName_17_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign85147_conv_process170_aunroll_x_out_dest_data_out_71_0_0_tpl);
            end
        end
    end

    // i_mul39_i_3_conv_process172(BLACKBOX,533)@20
    // out out_primWireOut@25
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0001j22644ck28744ck2675x thei_mul39_i_3_conv_process172 (
        .in_0(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt86_conv_process171_q),
        .in_1(redist59_i_conv_i_3_conv_process168_out_primWireOut_1_q),
        .out_primWireOut(i_mul39_i_3_conv_process172_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_mul39_i_3_conv_process172_out_primWireOut_1(DELAY,1782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_mul39_i_3_conv_process172_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist36_i_mul39_i_3_conv_process172_out_primWireOut_1_q <= $unsigned(i_mul39_i_3_conv_process172_out_primWireOut);
        end
    end

    // i_add44_i_3_conv_process176(BLACKBOX,370)@26
    // out out_primWireOut@40
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000ck28744ck26140c24ui5 thei_add44_i_3_conv_process176 (
        .in_0(redist36_i_mul39_i_3_conv_process172_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt90_conv_process175_q),
        .out_primWireOut(i_add44_i_3_conv_process176_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist75_i_add44_i_3_conv_process176_out_primWireOut_1(DELAY,1821)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q <= $unsigned(i_add44_i_3_conv_process176_out_primWireOut);
        end
    end

    // redist76_i_add44_i_3_conv_process176_out_primWireOut_2(DELAY,1822)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist76_i_add44_i_3_conv_process176_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist76_i_add44_i_3_conv_process176_out_primWireOut_2_q <= $unsigned(redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q);
        end
    end

    // redist77_i_add44_i_3_conv_process176_out_primWireOut_3(DELAY,1823)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist77_i_add44_i_3_conv_process176_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist77_i_add44_i_3_conv_process176_out_primWireOut_3_q <= $unsigned(redist76_i_add44_i_3_conv_process176_out_primWireOut_2_q);
        end
    end

    // frac_y_uid676_i_cmp46_i_1_conv_process87(BITSELECT,675)@41
    assign frac_y_uid676_i_cmp46_i_1_conv_process87_b = c_float_0_000000e_00316_q[22:0];

    // i_and_i63_i_1_conv_process96_vt_const_31(CONSTANT,404)
    assign i_and_i63_i_1_conv_process96_vt_const_31_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid679_i_cmp46_i_1_conv_process87(LOGICAL,678)@41
    assign fracXIsZero_uid679_i_cmp46_i_1_conv_process87_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_y_uid676_i_cmp46_i_1_conv_process87_b ? 1'b1 : 1'b0);

    // exp_y_uid675_i_cmp46_i_1_conv_process87(BITSELECT,674)@41
    assign exp_y_uid675_i_cmp46_i_1_conv_process87_b = c_float_0_000000e_00316_q[30:23];

    // expXIsZero_uid677_i_cmp46_i_1_conv_process87(LOGICAL,676)@41
    assign expXIsZero_uid677_i_cmp46_i_1_conv_process87_q = $unsigned(exp_y_uid675_i_cmp46_i_1_conv_process87_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_y_uid681_i_cmp46_i_1_conv_process87(LOGICAL,680)@41 + 1
    assign excZ_y_uid681_i_cmp46_i_1_conv_process87_qi = expXIsZero_uid677_i_cmp46_i_1_conv_process87_q & fracXIsZero_uid679_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid681_i_cmp46_i_1_conv_process87_delay ( .xin(excZ_y_uid681_i_cmp46_i_1_conv_process87_qi), .xout(excZ_y_uid681_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid711_i_cmp46_i_1_conv_process87(LOGICAL,710)@42
    assign invExcYZ_uid711_i_cmp46_i_1_conv_process87_q = ~ (excZ_y_uid681_i_cmp46_i_1_conv_process87_q);

    // frac_x_uid787_i_cmp46_i_3_conv_process177(BITSELECT,786)@41
    assign frac_x_uid787_i_cmp46_i_3_conv_process177_b = redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid790_i_cmp46_i_3_conv_process177(LOGICAL,789)@41
    assign fracXIsZero_uid790_i_cmp46_i_3_conv_process177_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_x_uid787_i_cmp46_i_3_conv_process177_b ? 1'b1 : 1'b0);

    // exp_x_uid786_i_cmp46_i_3_conv_process177(BITSELECT,785)@41
    assign exp_x_uid786_i_cmp46_i_3_conv_process177_b = redist75_i_add44_i_3_conv_process176_out_primWireOut_1_q[30:23];

    // expXIsZero_uid788_i_cmp46_i_3_conv_process177(LOGICAL,787)@41
    assign expXIsZero_uid788_i_cmp46_i_3_conv_process177_q = $unsigned(exp_x_uid786_i_cmp46_i_3_conv_process177_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_x_uid792_i_cmp46_i_3_conv_process177(LOGICAL,791)@41 + 1
    assign excZ_x_uid792_i_cmp46_i_3_conv_process177_qi = expXIsZero_uid788_i_cmp46_i_3_conv_process177_q & fracXIsZero_uid790_i_cmp46_i_3_conv_process177_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid792_i_cmp46_i_3_conv_process177_delay ( .xin(excZ_x_uid792_i_cmp46_i_3_conv_process177_qi), .xout(excZ_x_uid792_i_cmp46_i_3_conv_process177_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid840_i_cmp46_i_3_conv_process177(LOGICAL,839)@42
    assign invExcXZ_uid840_i_cmp46_i_3_conv_process177_q = ~ (excZ_x_uid792_i_cmp46_i_3_conv_process177_q);

    // oneNonZero_uid841_i_cmp46_i_3_conv_process177(LOGICAL,840)@42
    assign oneNonZero_uid841_i_cmp46_i_3_conv_process177_q = invExcXZ_uid840_i_cmp46_i_3_conv_process177_q | invExcYZ_uid711_i_cmp46_i_1_conv_process87_q;

    // i_add31_i_2_conv_process27_vt_const_1(CONSTANT,361)
    assign i_add31_i_2_conv_process27_vt_const_1_q = $unsigned(2'b10);

    // signX_uid831_i_cmp46_i_3_conv_process177(BITSELECT,830)@42
    assign signX_uid831_i_cmp46_i_3_conv_process177_b = $unsigned(redist76_i_add44_i_3_conv_process176_out_primWireOut_2_q[31:31]);

    // signY_uid704_i_cmp46_i_1_conv_process87(BITSELECT,703)@42
    assign signY_uid704_i_cmp46_i_1_conv_process87_b = $unsigned(c_float_0_000000e_00316_q[31:31]);

    // concSXSY_uid834_i_cmp46_i_3_conv_process177(BITJOIN,833)@42
    assign concSXSY_uid834_i_cmp46_i_3_conv_process177_q = {signX_uid831_i_cmp46_i_3_conv_process177_b, signY_uid704_i_cmp46_i_1_conv_process87_b};

    // sxLTsy_uid835_i_cmp46_i_3_conv_process177(LOGICAL,834)@42
    assign sxLTsy_uid835_i_cmp46_i_3_conv_process177_q = $unsigned(concSXSY_uid834_i_cmp46_i_3_conv_process177_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid842_i_cmp46_i_3_conv_process177(LOGICAL,841)@42
    assign rc2_uid842_i_cmp46_i_3_conv_process177_q = sxLTsy_uid835_i_cmp46_i_3_conv_process177_q & oneNonZero_uid841_i_cmp46_i_3_conv_process177_q;

    // expFracX_uid822_i_cmp46_i_3_conv_process177(BITJOIN,821)@41
    assign expFracX_uid822_i_cmp46_i_3_conv_process177_q = {exp_x_uid786_i_cmp46_i_3_conv_process177_b, frac_x_uid787_i_cmp46_i_3_conv_process177_b};

    // expFracY_uid696_i_cmp46_i_1_conv_process87(BITJOIN,695)@41
    assign expFracY_uid696_i_cmp46_i_1_conv_process87_q = {exp_y_uid675_i_cmp46_i_1_conv_process87_b, frac_y_uid676_i_cmp46_i_1_conv_process87_b};

    // efxGTefy_uid826_i_cmp46_i_3_conv_process177(COMPARE,825)@41 + 1
    assign efxGTefy_uid826_i_cmp46_i_3_conv_process177_a = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    assign efxGTefy_uid826_i_cmp46_i_3_conv_process177_b = {2'b00, expFracX_uid822_i_cmp46_i_3_conv_process177_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid826_i_cmp46_i_3_conv_process177_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid826_i_cmp46_i_3_conv_process177_o <= $unsigned(efxGTefy_uid826_i_cmp46_i_3_conv_process177_a) - $unsigned(efxGTefy_uid826_i_cmp46_i_3_conv_process177_b);
        end
    end
    assign efxGTefy_uid826_i_cmp46_i_3_conv_process177_c[0] = efxGTefy_uid826_i_cmp46_i_3_conv_process177_o[32];

    // efxLTefy_uid827_i_cmp46_i_3_conv_process177(COMPARE,826)@41 + 1
    assign efxLTefy_uid827_i_cmp46_i_3_conv_process177_a = {2'b00, expFracX_uid822_i_cmp46_i_3_conv_process177_q};
    assign efxLTefy_uid827_i_cmp46_i_3_conv_process177_b = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid827_i_cmp46_i_3_conv_process177_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid827_i_cmp46_i_3_conv_process177_o <= $unsigned(efxLTefy_uid827_i_cmp46_i_3_conv_process177_a) - $unsigned(efxLTefy_uid827_i_cmp46_i_3_conv_process177_b);
        end
    end
    assign efxLTefy_uid827_i_cmp46_i_3_conv_process177_c[0] = efxLTefy_uid827_i_cmp46_i_3_conv_process177_o[32];

    // expFracCompMux_uid838_i_cmp46_i_3_conv_process177(MUX,837)@42
    assign expFracCompMux_uid838_i_cmp46_i_3_conv_process177_s = signX_uid831_i_cmp46_i_3_conv_process177_b;
    always @(expFracCompMux_uid838_i_cmp46_i_3_conv_process177_s or efxLTefy_uid827_i_cmp46_i_3_conv_process177_c or efxGTefy_uid826_i_cmp46_i_3_conv_process177_c)
    begin
        unique case (expFracCompMux_uid838_i_cmp46_i_3_conv_process177_s)
            1'b0 : expFracCompMux_uid838_i_cmp46_i_3_conv_process177_q = efxLTefy_uid827_i_cmp46_i_3_conv_process177_c;
            1'b1 : expFracCompMux_uid838_i_cmp46_i_3_conv_process177_q = efxGTefy_uid826_i_cmp46_i_3_conv_process177_c;
            default : expFracCompMux_uid838_i_cmp46_i_3_conv_process177_q = 1'b0;
        endcase
    end

    // xorSigns_uid836_i_cmp46_i_3_conv_process177(LOGICAL,835)@42
    assign xorSigns_uid836_i_cmp46_i_3_conv_process177_q = signX_uid831_i_cmp46_i_3_conv_process177_b ^ signY_uid704_i_cmp46_i_1_conv_process87_b;

    // sxEQsy_uid837_i_cmp46_i_3_conv_process177(LOGICAL,836)@42
    assign sxEQsy_uid837_i_cmp46_i_3_conv_process177_q = ~ (xorSigns_uid836_i_cmp46_i_3_conv_process177_q);

    // sxEQsyExpFracCompMux_uid843_i_cmp46_i_3_conv_process177(LOGICAL,842)@42
    assign sxEQsyExpFracCompMux_uid843_i_cmp46_i_3_conv_process177_q = sxEQsy_uid837_i_cmp46_i_3_conv_process177_q & expFracCompMux_uid838_i_cmp46_i_3_conv_process177_q;

    // r_uid844_i_cmp46_i_3_conv_process177(LOGICAL,843)@42 + 1
    assign r_uid844_i_cmp46_i_3_conv_process177_qi = sxEQsyExpFracCompMux_uid843_i_cmp46_i_3_conv_process177_q | rc2_uid842_i_cmp46_i_3_conv_process177_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid844_i_cmp46_i_3_conv_process177_delay ( .xin(r_uid844_i_cmp46_i_3_conv_process177_qi), .xout(r_uid844_i_cmp46_i_3_conv_process177_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid680_i_cmp46_i_1_conv_process87(LOGICAL,679)@41
    assign fracXIsNotZero_uid680_i_cmp46_i_1_conv_process87_q = ~ (fracXIsZero_uid679_i_cmp46_i_1_conv_process87_q);

    // cstAllOWE_uid655_i_cmp46_i_1_conv_process87(CONSTANT,654)
    assign cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q = $unsigned(8'b11111111);

    // expXIsMax_uid678_i_cmp46_i_1_conv_process87(LOGICAL,677)@41
    assign expXIsMax_uid678_i_cmp46_i_1_conv_process87_q = $unsigned(exp_y_uid675_i_cmp46_i_1_conv_process87_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_y_uid683_i_cmp46_i_1_conv_process87(LOGICAL,682)@41 + 1
    assign excN_y_uid683_i_cmp46_i_1_conv_process87_qi = expXIsMax_uid678_i_cmp46_i_1_conv_process87_q & fracXIsNotZero_uid680_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid683_i_cmp46_i_1_conv_process87_delay ( .xin(excN_y_uid683_i_cmp46_i_1_conv_process87_qi), .xout(excN_y_uid683_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid791_i_cmp46_i_3_conv_process177(LOGICAL,790)@41
    assign fracXIsNotZero_uid791_i_cmp46_i_3_conv_process177_q = ~ (fracXIsZero_uid790_i_cmp46_i_3_conv_process177_q);

    // expXIsMax_uid789_i_cmp46_i_3_conv_process177(LOGICAL,788)@41
    assign expXIsMax_uid789_i_cmp46_i_3_conv_process177_q = $unsigned(exp_x_uid786_i_cmp46_i_3_conv_process177_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_x_uid794_i_cmp46_i_3_conv_process177(LOGICAL,793)@41 + 1
    assign excN_x_uid794_i_cmp46_i_3_conv_process177_qi = expXIsMax_uid789_i_cmp46_i_3_conv_process177_q & fracXIsNotZero_uid791_i_cmp46_i_3_conv_process177_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid794_i_cmp46_i_3_conv_process177_delay ( .xin(excN_x_uid794_i_cmp46_i_3_conv_process177_qi), .xout(excN_x_uid794_i_cmp46_i_3_conv_process177_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid817_i_cmp46_i_3_conv_process177(LOGICAL,816)@42 + 1
    assign oneIsNaN_uid817_i_cmp46_i_3_conv_process177_qi = excN_x_uid794_i_cmp46_i_3_conv_process177_q | excN_y_uid683_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid817_i_cmp46_i_3_conv_process177_delay ( .xin(oneIsNaN_uid817_i_cmp46_i_3_conv_process177_qi), .xout(oneIsNaN_uid817_i_cmp46_i_3_conv_process177_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid845_i_cmp46_i_3_conv_process177(MUX,844)@43
    assign rPostExc_uid845_i_cmp46_i_3_conv_process177_s = oneIsNaN_uid817_i_cmp46_i_3_conv_process177_q;
    always @(rPostExc_uid845_i_cmp46_i_3_conv_process177_s or r_uid844_i_cmp46_i_3_conv_process177_q or GND_q)
    begin
        unique case (rPostExc_uid845_i_cmp46_i_3_conv_process177_s)
            1'b0 : rPostExc_uid845_i_cmp46_i_3_conv_process177_q = r_uid844_i_cmp46_i_3_conv_process177_q;
            1'b1 : rPostExc_uid845_i_cmp46_i_3_conv_process177_q = GND_q;
            default : rPostExc_uid845_i_cmp46_i_3_conv_process177_q = 1'b0;
        endcase
    end

    // valid_fanout_reg34(REG,1200)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist110_sync_together392_aunroll_x_in_i_valid_41_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process178(BLACKBOX,484)@43
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process178 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process178_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_i_3_conv_process179(LOGICAL,546)@43
    assign i_or_cond_i_3_conv_process179_q = i_llvm_fpga_ffwd_dest_i1_cmp45_i132_conv_process178_out_dest_data_out_62_0 & rPostExc_uid845_i_cmp46_i_3_conv_process177_q;

    // i_spec_store_select_i_3_conv_process180(MUX,576)@43 + 1
    assign i_spec_store_select_i_3_conv_process180_s = i_or_cond_i_3_conv_process179_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_3_conv_process180_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_3_conv_process180_s)
                1'b0 : i_spec_store_select_i_3_conv_process180_q <= redist77_i_add44_i_3_conv_process176_out_primWireOut_3_q;
                1'b1 : i_spec_store_select_i_3_conv_process180_q <= c_float_0_000000e_00316_q;
                default : i_spec_store_select_i_3_conv_process180_q <= 32'b0;
            endcase
        end
    end

    // redist29_i_spec_store_select_i_3_conv_process180_q_2(DELAY,1775)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_spec_store_select_i_3_conv_process180_q_2_q <= '0;
        end
        else
        begin
            redist29_i_spec_store_select_i_3_conv_process180_q_2_q <= $unsigned(i_spec_store_select_i_3_conv_process180_q);
        end
    end

    // redist30_i_spec_store_select_i_3_conv_process180_q_3(DELAY,1776)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_spec_store_select_i_3_conv_process180_q_3_q <= '0;
        end
        else
        begin
            redist30_i_spec_store_select_i_3_conv_process180_q_3_q <= $unsigned(redist29_i_spec_store_select_i_3_conv_process180_q_2_q);
        end
    end

    // frac_y_uid1060_i_cmp50_i_3_conv_process181(BITSELECT,1059)@44
    assign frac_y_uid1060_i_cmp50_i_3_conv_process181_b = i_spec_store_select_i_3_conv_process180_q[22:0];

    // fracXIsZero_uid1063_i_cmp50_i_3_conv_process181(LOGICAL,1062)@44
    assign fracXIsZero_uid1063_i_cmp50_i_3_conv_process181_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_y_uid1060_i_cmp50_i_3_conv_process181_b ? 1'b1 : 1'b0);

    // exp_y_uid1059_i_cmp50_i_3_conv_process181(BITSELECT,1058)@44
    assign exp_y_uid1059_i_cmp50_i_3_conv_process181_b = i_spec_store_select_i_3_conv_process180_q[30:23];

    // expXIsZero_uid1061_i_cmp50_i_3_conv_process181(LOGICAL,1060)@44
    assign expXIsZero_uid1061_i_cmp50_i_3_conv_process181_q = $unsigned(exp_y_uid1059_i_cmp50_i_3_conv_process181_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_y_uid1065_i_cmp50_i_3_conv_process181(LOGICAL,1064)@44 + 1
    assign excZ_y_uid1065_i_cmp50_i_3_conv_process181_qi = expXIsZero_uid1061_i_cmp50_i_3_conv_process181_q & fracXIsZero_uid1063_i_cmp50_i_3_conv_process181_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid1065_i_cmp50_i_3_conv_process181_delay ( .xin(excZ_y_uid1065_i_cmp50_i_3_conv_process181_qi), .xout(excZ_y_uid1065_i_cmp50_i_3_conv_process181_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid1095_i_cmp50_i_3_conv_process181(LOGICAL,1094)@45
    assign invExcYZ_uid1095_i_cmp50_i_3_conv_process181_q = ~ (excZ_y_uid1065_i_cmp50_i_3_conv_process181_q);

    // frac_x_uid915_i_cmp50_i_1_conv_process91(BITSELECT,914)@44
    assign frac_x_uid915_i_cmp50_i_1_conv_process91_b = redist56_i_div50_conv_process21_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid918_i_cmp50_i_1_conv_process91(LOGICAL,917)@44
    assign fracXIsZero_uid918_i_cmp50_i_1_conv_process91_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_x_uid915_i_cmp50_i_1_conv_process91_b ? 1'b1 : 1'b0);

    // exp_x_uid914_i_cmp50_i_1_conv_process91(BITSELECT,913)@44
    assign exp_x_uid914_i_cmp50_i_1_conv_process91_b = redist56_i_div50_conv_process21_out_primWireOut_1_q[30:23];

    // expXIsZero_uid916_i_cmp50_i_1_conv_process91(LOGICAL,915)@44
    assign expXIsZero_uid916_i_cmp50_i_1_conv_process91_q = $unsigned(exp_x_uid914_i_cmp50_i_1_conv_process91_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_x_uid920_i_cmp50_i_1_conv_process91(LOGICAL,919)@44 + 1
    assign excZ_x_uid920_i_cmp50_i_1_conv_process91_qi = expXIsZero_uid916_i_cmp50_i_1_conv_process91_q & fracXIsZero_uid918_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid920_i_cmp50_i_1_conv_process91_delay ( .xin(excZ_x_uid920_i_cmp50_i_1_conv_process91_qi), .xout(excZ_x_uid920_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid968_i_cmp50_i_1_conv_process91(LOGICAL,967)@45
    assign invExcXZ_uid968_i_cmp50_i_1_conv_process91_q = ~ (excZ_x_uid920_i_cmp50_i_1_conv_process91_q);

    // oneNonZero_uid1097_i_cmp50_i_3_conv_process181(LOGICAL,1096)@45
    assign oneNonZero_uid1097_i_cmp50_i_3_conv_process181_q = invExcXZ_uid968_i_cmp50_i_1_conv_process91_q | invExcYZ_uid1095_i_cmp50_i_3_conv_process181_q;

    // signX_uid959_i_cmp50_i_1_conv_process91(BITSELECT,958)@44
    assign signX_uid959_i_cmp50_i_1_conv_process91_b = $unsigned(redist56_i_div50_conv_process21_out_primWireOut_1_q[31:31]);

    // redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1(DELAY,1771)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q <= '0;
        end
        else
        begin
            redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q <= $unsigned(signX_uid959_i_cmp50_i_1_conv_process91_b);
        end
    end

    // signY_uid1088_i_cmp50_i_3_conv_process181(BITSELECT,1087)@45
    assign signY_uid1088_i_cmp50_i_3_conv_process181_b = $unsigned(redist29_i_spec_store_select_i_3_conv_process180_q_2_q[31:31]);

    // concSXSY_uid1090_i_cmp50_i_3_conv_process181(BITJOIN,1089)@45
    assign concSXSY_uid1090_i_cmp50_i_3_conv_process181_q = {redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q, signY_uid1088_i_cmp50_i_3_conv_process181_b};

    // sxLTsy_uid1091_i_cmp50_i_3_conv_process181(LOGICAL,1090)@45
    assign sxLTsy_uid1091_i_cmp50_i_3_conv_process181_q = $unsigned(concSXSY_uid1090_i_cmp50_i_3_conv_process181_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid1098_i_cmp50_i_3_conv_process181(LOGICAL,1097)@45
    assign rc2_uid1098_i_cmp50_i_3_conv_process181_q = sxLTsy_uid1091_i_cmp50_i_3_conv_process181_q & oneNonZero_uid1097_i_cmp50_i_3_conv_process181_q;

    // expFracX_uid950_i_cmp50_i_1_conv_process91(BITJOIN,949)@44
    assign expFracX_uid950_i_cmp50_i_1_conv_process91_q = {exp_x_uid914_i_cmp50_i_1_conv_process91_b, frac_x_uid915_i_cmp50_i_1_conv_process91_b};

    // expFracY_uid1080_i_cmp50_i_3_conv_process181(BITJOIN,1079)@44
    assign expFracY_uid1080_i_cmp50_i_3_conv_process181_q = {exp_y_uid1059_i_cmp50_i_3_conv_process181_b, frac_y_uid1060_i_cmp50_i_3_conv_process181_b};

    // efxGTefy_uid1082_i_cmp50_i_3_conv_process181(COMPARE,1081)@44
    assign efxGTefy_uid1082_i_cmp50_i_3_conv_process181_a = {2'b00, expFracY_uid1080_i_cmp50_i_3_conv_process181_q};
    assign efxGTefy_uid1082_i_cmp50_i_3_conv_process181_b = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxGTefy_uid1082_i_cmp50_i_3_conv_process181_o = $unsigned(efxGTefy_uid1082_i_cmp50_i_3_conv_process181_a) - $unsigned(efxGTefy_uid1082_i_cmp50_i_3_conv_process181_b);
    assign efxGTefy_uid1082_i_cmp50_i_3_conv_process181_c[0] = efxGTefy_uid1082_i_cmp50_i_3_conv_process181_o[32];

    // efxLTefy_uid1083_i_cmp50_i_3_conv_process181(COMPARE,1082)@44
    assign efxLTefy_uid1083_i_cmp50_i_3_conv_process181_a = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxLTefy_uid1083_i_cmp50_i_3_conv_process181_b = {2'b00, expFracY_uid1080_i_cmp50_i_3_conv_process181_q};
    assign efxLTefy_uid1083_i_cmp50_i_3_conv_process181_o = $unsigned(efxLTefy_uid1083_i_cmp50_i_3_conv_process181_a) - $unsigned(efxLTefy_uid1083_i_cmp50_i_3_conv_process181_b);
    assign efxLTefy_uid1083_i_cmp50_i_3_conv_process181_c[0] = efxLTefy_uid1083_i_cmp50_i_3_conv_process181_o[32];

    // expFracCompMux_uid1094_i_cmp50_i_3_conv_process181(MUX,1093)@44 + 1
    assign expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_s = signX_uid959_i_cmp50_i_1_conv_process91_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q <= 1'b0;
        end
        else
        begin
            unique case (expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_s)
                1'b0 : expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q <= efxLTefy_uid1083_i_cmp50_i_3_conv_process181_c;
                1'b1 : expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q <= efxGTefy_uid1082_i_cmp50_i_3_conv_process181_c;
                default : expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q <= 1'b0;
            endcase
        end
    end

    // xorSigns_uid1092_i_cmp50_i_3_conv_process181(LOGICAL,1091)@45
    assign xorSigns_uid1092_i_cmp50_i_3_conv_process181_q = redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q ^ signY_uid1088_i_cmp50_i_3_conv_process181_b;

    // sxEQsy_uid1093_i_cmp50_i_3_conv_process181(LOGICAL,1092)@45
    assign sxEQsy_uid1093_i_cmp50_i_3_conv_process181_q = ~ (xorSigns_uid1092_i_cmp50_i_3_conv_process181_q);

    // sxEQsyExpFracCompMux_uid1099_i_cmp50_i_3_conv_process181(LOGICAL,1098)@45
    assign sxEQsyExpFracCompMux_uid1099_i_cmp50_i_3_conv_process181_q = sxEQsy_uid1093_i_cmp50_i_3_conv_process181_q & expFracCompMux_uid1094_i_cmp50_i_3_conv_process181_q;

    // r_uid1100_i_cmp50_i_3_conv_process181(LOGICAL,1099)@45 + 1
    assign r_uid1100_i_cmp50_i_3_conv_process181_qi = sxEQsyExpFracCompMux_uid1099_i_cmp50_i_3_conv_process181_q | rc2_uid1098_i_cmp50_i_3_conv_process181_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid1100_i_cmp50_i_3_conv_process181_delay ( .xin(r_uid1100_i_cmp50_i_3_conv_process181_qi), .xout(r_uid1100_i_cmp50_i_3_conv_process181_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid1064_i_cmp50_i_3_conv_process181(LOGICAL,1063)@44
    assign fracXIsNotZero_uid1064_i_cmp50_i_3_conv_process181_q = ~ (fracXIsZero_uid1063_i_cmp50_i_3_conv_process181_q);

    // expXIsMax_uid1062_i_cmp50_i_3_conv_process181(LOGICAL,1061)@44
    assign expXIsMax_uid1062_i_cmp50_i_3_conv_process181_q = $unsigned(exp_y_uid1059_i_cmp50_i_3_conv_process181_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_y_uid1067_i_cmp50_i_3_conv_process181(LOGICAL,1066)@44 + 1
    assign excN_y_uid1067_i_cmp50_i_3_conv_process181_qi = expXIsMax_uid1062_i_cmp50_i_3_conv_process181_q & fracXIsNotZero_uid1064_i_cmp50_i_3_conv_process181_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid1067_i_cmp50_i_3_conv_process181_delay ( .xin(excN_y_uid1067_i_cmp50_i_3_conv_process181_qi), .xout(excN_y_uid1067_i_cmp50_i_3_conv_process181_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid919_i_cmp50_i_1_conv_process91(LOGICAL,918)@44
    assign fracXIsNotZero_uid919_i_cmp50_i_1_conv_process91_q = ~ (fracXIsZero_uid918_i_cmp50_i_1_conv_process91_q);

    // expXIsMax_uid917_i_cmp50_i_1_conv_process91(LOGICAL,916)@44
    assign expXIsMax_uid917_i_cmp50_i_1_conv_process91_q = $unsigned(exp_x_uid914_i_cmp50_i_1_conv_process91_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_x_uid922_i_cmp50_i_1_conv_process91(LOGICAL,921)@44 + 1
    assign excN_x_uid922_i_cmp50_i_1_conv_process91_qi = expXIsMax_uid917_i_cmp50_i_1_conv_process91_q & fracXIsNotZero_uid919_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid922_i_cmp50_i_1_conv_process91_delay ( .xin(excN_x_uid922_i_cmp50_i_1_conv_process91_qi), .xout(excN_x_uid922_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid1073_i_cmp50_i_3_conv_process181(LOGICAL,1072)@45 + 1
    assign oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_qi = excN_x_uid922_i_cmp50_i_1_conv_process91_q | excN_y_uid1067_i_cmp50_i_3_conv_process181_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_delay ( .xin(oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_qi), .xout(oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid1101_i_cmp50_i_3_conv_process181(MUX,1100)@46
    assign rPostExc_uid1101_i_cmp50_i_3_conv_process181_s = oneIsNaN_uid1073_i_cmp50_i_3_conv_process181_q;
    always @(rPostExc_uid1101_i_cmp50_i_3_conv_process181_s or r_uid1100_i_cmp50_i_3_conv_process181_q or GND_q)
    begin
        unique case (rPostExc_uid1101_i_cmp50_i_3_conv_process181_s)
            1'b0 : rPostExc_uid1101_i_cmp50_i_3_conv_process181_q = r_uid1100_i_cmp50_i_3_conv_process181_q;
            1'b1 : rPostExc_uid1101_i_cmp50_i_3_conv_process181_q = GND_q;
            default : rPostExc_uid1101_i_cmp50_i_3_conv_process181_q = 1'b0;
        endcase
    end

    // valid_fanout_reg35(REG,1201)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist111_sync_together392_aunroll_x_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process182(BLACKBOX,488)@46
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process182 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process182_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_3_conv_process183(LOGICAL,542)@46
    assign i_or_cond_3_conv_process183_q = i_llvm_fpga_ffwd_dest_i1_cmp48_i136_conv_process182_out_dest_data_out_63_0 & rPostExc_uid1101_i_cmp50_i_3_conv_process181_q;

    // i_unnamed_conv_process184(MUX,600)@46
    assign i_unnamed_conv_process184_s = i_or_cond_3_conv_process183_q;
    always @(i_unnamed_conv_process184_s or redist30_i_spec_store_select_i_3_conv_process180_q_3_q or redist57_i_div50_conv_process21_out_primWireOut_3_q)
    begin
        unique case (i_unnamed_conv_process184_s)
            1'b0 : i_unnamed_conv_process184_q = redist30_i_spec_store_select_i_3_conv_process180_q_3_q;
            1'b1 : i_unnamed_conv_process184_q = redist57_i_div50_conv_process21_out_primWireOut_3_q;
            default : i_unnamed_conv_process184_q = 32'b0;
        endcase
    end

    // i_and2_i_i_3_conv_process188(LOGICAL,380)@46
    assign i_and2_i_i_3_conv_process188_q = i_unnamed_conv_process184_q & c_i32_8388607319_q;

    // i_and2_i_i_3_conv_process188_vt_select_22(BITSELECT,383)@46
    assign i_and2_i_i_3_conv_process188_vt_select_22_b = i_and2_i_i_3_conv_process188_q[22:0];

    // redist69_i_and2_i_i_3_conv_process188_vt_select_22_b_1(DELAY,1815)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist69_i_and2_i_i_3_conv_process188_vt_select_22_b_1_q <= '0;
        end
        else
        begin
            redist69_i_and2_i_i_3_conv_process188_vt_select_22_b_1_q <= $unsigned(i_and2_i_i_3_conv_process188_vt_select_22_b);
        end
    end

    // i_and2_i_i_3_conv_process188_vt_join(BITJOIN,382)@47
    assign i_and2_i_i_3_conv_process188_vt_join_q = {i_and2_i_i_1_conv_process98_vt_const_31_q, redist69_i_and2_i_i_3_conv_process188_vt_select_22_b_1_q};

    // i_shr1_i_i_1_conv_process97_vt_const_31(CONSTANT,555)
    assign i_shr1_i_i_1_conv_process97_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // rightShiftStage3Idx1Rng16_uid1330_i_and_i63_i_3_conv_process0_shift_x(BITSELECT,1329)@46
    assign rightShiftStage3Idx1Rng16_uid1330_i_and_i63_i_3_conv_process0_shift_x_b = rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid1332_i_and_i63_i_3_conv_process0_shift_x(BITJOIN,1331)@46
    assign rightShiftStage3Idx1_uid1332_i_and_i63_i_3_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage3Idx1Rng16_uid1330_i_and_i63_i_3_conv_process0_shift_x_b};

    // rightShiftStage2Idx1Rng4_uid1325_i_and_i63_i_3_conv_process0_shift_x(BITSELECT,1324)@46
    assign rightShiftStage2Idx1Rng4_uid1325_i_and_i63_i_3_conv_process0_shift_x_b = rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid1327_i_and_i63_i_3_conv_process0_shift_x(BITJOIN,1326)@46
    assign rightShiftStage2Idx1_uid1327_i_and_i63_i_3_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage2Idx1Rng4_uid1325_i_and_i63_i_3_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid1320_i_and_i63_i_3_conv_process0_shift_x(BITSELECT,1319)@46
    assign rightShiftStage1Idx1Rng2_uid1320_i_and_i63_i_3_conv_process0_shift_x_b = rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1322_i_and_i63_i_3_conv_process0_shift_x(BITJOIN,1321)@46
    assign rightShiftStage1Idx1_uid1322_i_and_i63_i_3_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage1Idx1Rng2_uid1320_i_and_i63_i_3_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1315_i_and_i63_i_3_conv_process0_shift_x(BITSELECT,1314)@46
    assign rightShiftStage0Idx1Rng1_uid1315_i_and_i63_i_3_conv_process0_shift_x_b = i_unnamed_conv_process184_q[31:1];

    // rightShiftStage0Idx1_uid1317_i_and_i63_i_3_conv_process0_shift_x(BITJOIN,1316)@46
    assign rightShiftStage0Idx1_uid1317_i_and_i63_i_3_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1315_i_and_i63_i_3_conv_process0_shift_x_b};

    // rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x(MUX,1318)@46
    assign rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_s or i_unnamed_conv_process184_q or rightShiftStage0Idx1_uid1317_i_and_i63_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q = i_unnamed_conv_process184_q;
            1'b1 : rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1317_i_and_i63_i_3_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x(MUX,1323)@46
    assign rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_s or rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1322_i_and_i63_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage0_uid1319_i_and_i63_i_3_conv_process0_shift_x_q;
            1'b1 : rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1322_i_and_i63_i_3_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x(MUX,1328)@46
    assign rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_s or rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1327_i_and_i63_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage1_uid1324_i_and_i63_i_3_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1327_i_and_i63_i_3_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x(MUX,1333)@46
    assign rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_s or rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q or rightShiftStage3Idx1_uid1332_i_and_i63_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage2_uid1329_i_and_i63_i_3_conv_process0_shift_x_q;
            1'b1 : rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_q = rightShiftStage3Idx1_uid1332_i_and_i63_i_3_conv_process0_shift_x_q;
            default : rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and_i63_i_3_conv_process186_vt_select_8(BITSELECT,412)@46
    assign i_and_i63_i_3_conv_process186_vt_select_8_b = rightShiftStage3_uid1334_i_and_i63_i_3_conv_process0_shift_x_q[8:0];

    // i_and_i63_i_3_conv_process186_vt_join(BITJOIN,411)@46
    assign i_and_i63_i_3_conv_process186_vt_join_q = {i_and_i63_i_1_conv_process96_vt_const_31_q, i_and_i63_i_3_conv_process186_vt_select_8_b};

    // i_shr1_i_i_3_conv_process187_BitSelect_for_a(BITSELECT,1733)@46
    assign i_shr1_i_i_3_conv_process187_BitSelect_for_a_b = i_and_i63_i_3_conv_process186_vt_join_q[7:0];

    // redist18_i_shr1_i_i_3_conv_process187_BitSelect_for_a_b_1(DELAY,1764)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_shr1_i_i_3_conv_process187_BitSelect_for_a_b_1_q <= '0;
        end
        else
        begin
            redist18_i_shr1_i_i_3_conv_process187_BitSelect_for_a_b_1_q <= $unsigned(i_shr1_i_i_3_conv_process187_BitSelect_for_a_b);
        end
    end

    // i_shr1_i_i_3_conv_process187_join(BITJOIN,1734)@47
    assign i_shr1_i_i_3_conv_process187_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, redist18_i_shr1_i_i_3_conv_process187_BitSelect_for_a_b_1_q};

    // i_shr1_i_i_3_conv_process187_vt_select_7(BITSELECT,565)@47
    assign i_shr1_i_i_3_conv_process187_vt_select_7_b = i_shr1_i_i_3_conv_process187_join_q[7:0];

    // i_shr1_i_i_3_conv_process187_vt_join(BITJOIN,564)@47
    assign i_shr1_i_i_3_conv_process187_vt_join_q = {i_shr1_i_i_1_conv_process97_vt_const_31_q, i_shr1_i_i_3_conv_process187_vt_select_7_b};

    // c_i32_149323(CONSTANT,311)
    assign c_i32_149323_q = $unsigned(32'b00000000000000000000000010010101);

    // i_sub7_i_i_3_conv_process193(SUB,584)@47
    assign i_sub7_i_i_3_conv_process193_a = {1'b0, c_i32_149323_q};
    assign i_sub7_i_i_3_conv_process193_b = {1'b0, i_shr1_i_i_3_conv_process187_vt_join_q};
    assign i_sub7_i_i_3_conv_process193_o = $unsigned(i_sub7_i_i_3_conv_process193_a) - $unsigned(i_sub7_i_i_3_conv_process193_b);
    assign i_sub7_i_i_3_conv_process193_q = i_sub7_i_i_3_conv_process193_o[32:0];

    // bgTrunc_i_sub7_i_i_3_conv_process193_sel_x(BITSELECT,15)@47
    assign bgTrunc_i_sub7_i_i_3_conv_process193_sel_x_b = $unsigned(i_sub7_i_i_3_conv_process193_q[31:0]);

    // i_shr8_i_i_3_conv_process0_shift_narrow_x(BITSELECT,167)@47
    assign i_shr8_i_i_3_conv_process0_shift_narrow_x_b = bgTrunc_i_sub7_i_i_3_conv_process193_sel_x_b[4:0];

    // rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select(BITSELECT,1743)@47
    assign rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_b = i_shr8_i_i_3_conv_process0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c = i_shr8_i_i_3_conv_process0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d = i_shr8_i_i_3_conv_process0_shift_narrow_x_b[4:4];

    // rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x(MUX,1602)@47 + 1
    assign rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_s = rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_s)
                2'b00 : rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= i_and2_i_i_3_conv_process188_vt_join_q;
                2'b01 : rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= rightShiftStage0Idx1_uid1595_i_shr8_i_i_3_conv_process0_shift_x_q;
                2'b10 : rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= rightShiftStage0Idx2_uid1598_i_shr8_i_i_3_conv_process0_shift_x_q;
                2'b11 : rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= rightShiftStage0Idx3_uid1601_i_shr8_i_i_3_conv_process0_shift_x_q;
                default : rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist3_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1749)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist3_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x(MUX,1613)@48
    assign rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_s = redist3_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_s or rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1606_i_shr8_i_i_3_conv_process0_shift_x_q or rightShiftStage1Idx2_uid1609_i_shr8_i_i_3_conv_process0_shift_x_q or rightShiftStage1Idx3_uid1612_i_shr8_i_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_s)
            2'b00 : rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage0_uid1603_i_shr8_i_i_3_conv_process0_shift_x_q;
            2'b01 : rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1606_i_shr8_i_i_3_conv_process0_shift_x_q;
            2'b10 : rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage1Idx2_uid1609_i_shr8_i_i_3_conv_process0_shift_x_q;
            2'b11 : rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage1Idx3_uid1612_i_shr8_i_i_3_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist4_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1750)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist4_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x(MUX,1618)@48
    assign rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_s = redist4_rightShiftStageSel0Dto0_uid1602_i_shr8_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_s or rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1617_i_shr8_i_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage1_uid1614_i_shr8_i_i_3_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1617_i_shr8_i_i_3_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and9_i_i_3_conv_process195(LOGICAL,396)@48
    assign i_and9_i_i_3_conv_process195_q = rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q & c_i32_1314_q;

    // i_and9_i_i_3_conv_process195_vt_select_0(BITSELECT,399)@48
    assign i_and9_i_i_3_conv_process195_vt_select_0_b = i_and9_i_i_3_conv_process195_q[0:0];

    // redist65_i_and9_i_i_3_conv_process195_vt_select_0_b_1(DELAY,1811)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist65_i_and9_i_i_3_conv_process195_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist65_i_and9_i_i_3_conv_process195_vt_select_0_b_1_q <= $unsigned(i_and9_i_i_3_conv_process195_vt_select_0_b);
        end
    end

    // i_and9_i_i_3_conv_process195_vt_join(BITJOIN,398)@49
    assign i_and9_i_i_3_conv_process195_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist65_i_and9_i_i_3_conv_process195_vt_select_0_b_1_q};

    // leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x(BITSELECT,1467)@48
    assign leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_in = leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_b = leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid1469_i_shl_i_i_3_conv_process0_shift_x(BITJOIN,1468)@48
    assign leftShiftStage2Idx1_uid1469_i_shl_i_i_3_conv_process0_shift_x_q = {leftShiftStage2Idx1Rng16_uid1468_i_shl_i_i_3_conv_process0_shift_x_b, rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x(BITSELECT,1462)@48
    assign leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_in = leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_b = leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid1464_i_shl_i_i_3_conv_process0_shift_x(BITJOIN,1463)@48
    assign leftShiftStage1Idx3_uid1464_i_shl_i_i_3_conv_process0_shift_x_q = {leftShiftStage1Idx3Rng12_uid1463_i_shl_i_i_3_conv_process0_shift_x_b, leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x(BITSELECT,1459)@48
    assign leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_in = leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_b = leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid1461_i_shl_i_i_3_conv_process0_shift_x(BITJOIN,1460)@48
    assign leftShiftStage1Idx2_uid1461_i_shl_i_i_3_conv_process0_shift_x_q = {leftShiftStage1Idx2Rng8_uid1460_i_shl_i_i_3_conv_process0_shift_x_b, cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q};

    // leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x(BITSELECT,1456)@48
    assign leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_in = leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_b = leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid1458_i_shl_i_i_3_conv_process0_shift_x(BITJOIN,1457)@48
    assign leftShiftStage1Idx1_uid1458_i_shl_i_i_3_conv_process0_shift_x_q = {leftShiftStage1Idx1Rng4_uid1457_i_shl_i_i_3_conv_process0_shift_x_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1391)
    assign leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_in = c_i32_1314_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1392)
    assign leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage0Idx3Rng3_uid1392_i_shl_i_i_1_conv_process0_shift_x_b, leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1388)
    assign leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_in = c_i32_1314_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1389)
    assign leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage0Idx2Rng2_uid1389_i_shl_i_i_1_conv_process0_shift_x_b, i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q};

    // leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1385)
    assign leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_in = c_i32_1314_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1386)
    assign leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage0Idx1Rng1_uid1386_i_shl_i_i_1_conv_process0_shift_x_b, GND_q};

    // i_sub_i_i_3_conv_process192(ADD,588)@47
    assign i_sub_i_i_3_conv_process192_a = {1'b0, i_shr1_i_i_3_conv_process187_vt_join_q};
    assign i_sub_i_i_3_conv_process192_b = {1'b0, c_i32_127322_q};
    assign i_sub_i_i_3_conv_process192_o = $unsigned(i_sub_i_i_3_conv_process192_a) + $unsigned(i_sub_i_i_3_conv_process192_b);
    assign i_sub_i_i_3_conv_process192_q = i_sub_i_i_3_conv_process192_o[32:0];

    // bgTrunc_i_sub_i_i_3_conv_process192_sel_x(BITSELECT,19)@47
    assign bgTrunc_i_sub_i_i_3_conv_process192_sel_x_b = i_sub_i_i_3_conv_process192_q[31:0];

    // i_shl_i_i_3_conv_process0_shift_narrow_x(BITSELECT,127)@47
    assign i_shl_i_i_3_conv_process0_shift_narrow_x_b = bgTrunc_i_sub_i_i_3_conv_process192_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select(BITSELECT,1739)@47
    assign leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_b = i_shl_i_i_3_conv_process0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c = i_shl_i_i_3_conv_process0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d = i_shl_i_i_3_conv_process0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x(MUX,1454)@47 + 1
    assign leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_s = leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_s)
                2'b00 : leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= c_i32_1314_q;
                2'b01 : leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b10 : leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b11 : leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q;
                default : leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist11_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1757)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist11_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x(MUX,1465)@48
    assign leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_s = redist11_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_s or leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q or leftShiftStage1Idx1_uid1458_i_shl_i_i_3_conv_process0_shift_x_q or leftShiftStage1Idx2_uid1461_i_shl_i_i_3_conv_process0_shift_x_q or leftShiftStage1Idx3_uid1464_i_shl_i_i_3_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_s)
            2'b00 : leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage0_uid1455_i_shl_i_i_3_conv_process0_shift_x_q;
            2'b01 : leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage1Idx1_uid1458_i_shl_i_i_3_conv_process0_shift_x_q;
            2'b10 : leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage1Idx2_uid1461_i_shl_i_i_3_conv_process0_shift_x_q;
            2'b11 : leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage1Idx3_uid1464_i_shl_i_i_3_conv_process0_shift_x_q;
            default : leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist12_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist12_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x(MUX,1470)@48
    assign leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_s = redist12_leftShiftStageSel0Dto0_uid1454_i_shl_i_i_3_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_s or leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q or leftShiftStage2Idx1_uid1469_i_shl_i_i_3_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_s)
            1'b0 : leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage1_uid1466_i_shl_i_i_3_conv_process0_shift_x_q;
            1'b1 : leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_q = leftShiftStage2Idx1_uid1469_i_shl_i_i_3_conv_process0_shift_x_q;
            default : leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // xMSB_uid1517_i_shr12_i_i_3_conv_process0_shift_x(BITSELECT,1516)@48
    assign xMSB_uid1517_i_shr12_i_i_3_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q[31:31]);

    // rightShiftStage0Idx1Rng1_uid1519_i_shr12_i_i_3_conv_process0_shift_x(BITSELECT,1518)@48
    assign rightShiftStage0Idx1Rng1_uid1519_i_shr12_i_i_3_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid1520_i_shr12_i_i_3_conv_process0_shift_x(BITJOIN,1519)@48
    assign rightShiftStage0Idx1_uid1520_i_shr12_i_i_3_conv_process0_shift_x_q = {xMSB_uid1517_i_shr12_i_i_3_conv_process0_shift_x_b, rightShiftStage0Idx1Rng1_uid1519_i_shr12_i_i_3_conv_process0_shift_x_b};

    // rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x(MUX,1521)@48
    assign rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_s or rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q or rightShiftStage0Idx1_uid1520_i_shr12_i_i_3_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_q = rightShiftStage2_uid1619_i_shr8_i_i_3_conv_process0_shift_x_q;
            1'b1 : rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1520_i_shr12_i_i_3_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_or_i_i_3_conv_process198(LOGICAL,551)@48 + 1
    assign i_or_i_i_3_conv_process198_qi = rightShiftStage0_uid1522_i_shr12_i_i_3_conv_process0_shift_x_q | leftShiftStage2_uid1471_i_shl_i_i_3_conv_process0_shift_x_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_i_i_3_conv_process198_delay ( .xin(i_or_i_i_3_conv_process198_qi), .xout(i_or_i_i_3_conv_process198_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add13_i_i_3_conv_process199(ADD,354)@49
    assign i_add13_i_i_3_conv_process199_a = {1'b0, i_or_i_i_3_conv_process198_q};
    assign i_add13_i_i_3_conv_process199_b = {1'b0, i_and9_i_i_3_conv_process195_vt_join_q};
    assign i_add13_i_i_3_conv_process199_o = $unsigned(i_add13_i_i_3_conv_process199_a) + $unsigned(i_add13_i_i_3_conv_process199_b);
    assign i_add13_i_i_3_conv_process199_q = i_add13_i_i_3_conv_process199_o[32:0];

    // bgTrunc_i_add13_i_i_3_conv_process199_sel_x(BITSELECT,4)@49
    assign bgTrunc_i_add13_i_i_3_conv_process199_sel_x_b = i_add13_i_i_3_conv_process199_q[31:0];

    // c_i32_126320_recast_x(CONSTANT,22)
    assign c_i32_126320_recast_x_q = $unsigned(32'b00000000000000000000000001111110);

    // i_cmp_i64_i_3_conv_process189(LOGICAL,437)@47 + 1
    assign i_cmp_i64_i_3_conv_process189_qi = $unsigned(i_shr1_i_i_3_conv_process187_vt_join_q == c_i32_126320_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i64_i_3_conv_process189_delay ( .xin(i_cmp_i64_i_3_conv_process189_qi), .xout(i_cmp_i64_i_3_conv_process189_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist62_i_cmp_i64_i_3_conv_process189_q_2(DELAY,1808)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist62_i_cmp_i64_i_3_conv_process189_q_2_q <= '0;
        end
        else
        begin
            redist62_i_cmp_i64_i_3_conv_process189_q_2_q <= $unsigned(i_cmp_i64_i_3_conv_process189_q);
        end
    end

    // i_acl_58_conv_process200_sel_x(BITSELECT,69)@49
    assign i_acl_58_conv_process200_sel_x_b = {31'b0000000000000000000000000000000, redist62_i_cmp_i64_i_3_conv_process189_q_2_q[0:0]};

    // i_acl_58_conv_process200_vt_select_0(BITSELECT,349)@49
    assign i_acl_58_conv_process200_vt_select_0_b = i_acl_58_conv_process200_sel_x_b[0:0];

    // i_acl_58_conv_process200_vt_join(BITJOIN,348)@49
    assign i_acl_58_conv_process200_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, i_acl_58_conv_process200_vt_select_0_b};

    // c_i32_125321(CONSTANT,305)
    assign c_i32_125321_q = $unsigned(32'b00000000000000000000000001111101);

    // i_cmp3_i_i_3_conv_process191(COMPARE,425)@47 + 1
    assign i_cmp3_i_i_3_conv_process191_a = {2'b00, c_i32_125321_q};
    assign i_cmp3_i_i_3_conv_process191_b = {2'b00, i_shr1_i_i_3_conv_process187_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp3_i_i_3_conv_process191_o <= 34'b0;
        end
        else
        begin
            i_cmp3_i_i_3_conv_process191_o <= $unsigned(i_cmp3_i_i_3_conv_process191_a) - $unsigned(i_cmp3_i_i_3_conv_process191_b);
        end
    end
    assign i_cmp3_i_i_3_conv_process191_c[0] = i_cmp3_i_i_3_conv_process191_o[33];

    // redist63_i_cmp3_i_i_3_conv_process191_c_2(DELAY,1809)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist63_i_cmp3_i_i_3_conv_process191_c_2_q <= '0;
        end
        else
        begin
            redist63_i_cmp3_i_i_3_conv_process191_c_2_q <= $unsigned(i_cmp3_i_i_3_conv_process191_c);
        end
    end

    // i_acl_59_conv_process201(LOGICAL,350)@49
    assign i_acl_59_conv_process201_q = redist62_i_cmp_i64_i_3_conv_process189_q_2_q ^ redist63_i_cmp3_i_i_3_conv_process191_c_2_q;

    // i_acl_60_conv_process202(MUX,351)@49 + 1
    assign i_acl_60_conv_process202_s = i_acl_59_conv_process201_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_60_conv_process202_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_60_conv_process202_s)
                1'b0 : i_acl_60_conv_process202_q <= i_acl_58_conv_process200_vt_join_q;
                1'b1 : i_acl_60_conv_process202_q <= bgTrunc_i_add13_i_i_3_conv_process199_sel_x_b;
                default : i_acl_60_conv_process202_q <= 32'b0;
            endcase
        end
    end

    // i_cmp16_i_i_3_conv_process203_cmp_sign(LOGICAL,1723)@46 + 1
    assign i_cmp16_i_i_3_conv_process203_cmp_sign_qi = $unsigned(i_unnamed_conv_process184_q[31:31]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp16_i_i_3_conv_process203_cmp_sign_delay ( .xin(i_cmp16_i_i_3_conv_process203_cmp_sign_qi), .xout(i_cmp16_i_i_3_conv_process203_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4(DELAY,1768)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_0 <= '0;
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_1 <= '0;
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_q <= '0;
        end
        else
        begin
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_0 <= $unsigned(i_cmp16_i_i_3_conv_process203_cmp_sign_q);
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_1 <= redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_0;
            redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_q <= redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_delay_1;
        end
    end

    // i_spec_select188_3_conv_process206(MUX,572)@50 + 1
    assign i_spec_select188_3_conv_process206_s = redist22_i_cmp16_i_i_3_conv_process203_cmp_sign_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_select188_3_conv_process206_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_select188_3_conv_process206_s)
                1'b0 : i_spec_select188_3_conv_process206_q <= i_acl_60_conv_process202_q;
                1'b1 : i_spec_select188_3_conv_process206_q <= bgTrunc_i_sub18_i_i_3_conv_process205_sel_x_b;
                default : i_spec_select188_3_conv_process206_q <= 32'b0;
            endcase
        end
    end

    // c_i32_127322(CONSTANT,306)
    assign c_i32_127322_q = $unsigned(32'b11111111111111111111111110000001);

    // c_i32_127322_recast_x(CONSTANT,23)
    assign c_i32_127322_recast_x_q = $unsigned(32'b11111111111111111111111110000001);

    // i_unnamed_conv_process207(COMPARE,603)@51
    assign i_unnamed_conv_process207_a = $unsigned({{2{c_i32_127322_recast_x_q[31]}}, c_i32_127322_recast_x_q});
    assign i_unnamed_conv_process207_b = $unsigned({{2{i_spec_select188_3_conv_process206_q[31]}}, i_spec_select188_3_conv_process206_q});
    assign i_unnamed_conv_process207_o = $unsigned($signed(i_unnamed_conv_process207_a) - $signed(i_unnamed_conv_process207_b));
    assign i_unnamed_conv_process207_c[0] = i_unnamed_conv_process207_o[33];

    // i_unnamed_conv_process209(MUX,604)@51 + 1
    assign i_unnamed_conv_process209_s = i_unnamed_conv_process207_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process209_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_conv_process209_s)
                1'b0 : i_unnamed_conv_process209_q <= c_i32_127322_q;
                1'b1 : i_unnamed_conv_process209_q <= i_spec_select188_3_conv_process206_q;
                default : i_unnamed_conv_process209_q <= 32'b0;
            endcase
        end
    end

    // c_i32_127324_recast_x(CONSTANT,24)
    assign c_i32_127324_recast_x_q = $unsigned(32'b00000000000000000000000001111111);

    // i_unnamed_conv_process210(COMPARE,605)@52
    assign i_unnamed_conv_process210_a = $unsigned({{2{i_unnamed_conv_process209_q[31]}}, i_unnamed_conv_process209_q});
    assign i_unnamed_conv_process210_b = $unsigned({{2{c_i32_127324_recast_x_q[31]}}, c_i32_127324_recast_x_q});
    assign i_unnamed_conv_process210_o = $unsigned($signed(i_unnamed_conv_process210_a) - $signed(i_unnamed_conv_process210_b));
    assign i_unnamed_conv_process210_c[0] = i_unnamed_conv_process210_o[33];

    // i_unnamed_conv_process212(MUX,606)@52
    assign i_unnamed_conv_process212_s = i_unnamed_conv_process210_c;
    always @(i_unnamed_conv_process212_s or c_i32_127324_recast_x_q or i_unnamed_conv_process209_q)
    begin
        unique case (i_unnamed_conv_process212_s)
            1'b0 : i_unnamed_conv_process212_q = c_i32_127324_recast_x_q;
            1'b1 : i_unnamed_conv_process212_q = i_unnamed_conv_process209_q;
            default : i_unnamed_conv_process212_q = 32'b0;
        endcase
    end

    // i_sub18_i_i_2_conv_process160(SUB,579)@50
    assign i_sub18_i_i_2_conv_process160_a = {1'b0, c_i32_0312_q};
    assign i_sub18_i_i_2_conv_process160_b = {1'b0, i_acl_57_conv_process157_q};
    assign i_sub18_i_i_2_conv_process160_o = $unsigned(i_sub18_i_i_2_conv_process160_a) - $unsigned(i_sub18_i_i_2_conv_process160_b);
    assign i_sub18_i_i_2_conv_process160_q = i_sub18_i_i_2_conv_process160_o[32:0];

    // bgTrunc_i_sub18_i_i_2_conv_process160_sel_x(BITSELECT,10)@50
    assign bgTrunc_i_sub18_i_i_2_conv_process160_sel_x_b = $unsigned(i_sub18_i_i_2_conv_process160_q[31:0]);

    // rightShiftStage2Idx1Rng16_uid1585_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1584)@48
    assign rightShiftStage2Idx1Rng16_uid1585_i_shr8_i_i_2_conv_process0_shift_x_b = rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q[31:16];

    // rightShiftStage2Idx1_uid1587_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1586)@48
    assign rightShiftStage2Idx1_uid1587_i_shr8_i_i_2_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage2Idx1Rng16_uid1585_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage1Idx3Rng12_uid1580_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1579)@48
    assign rightShiftStage1Idx3Rng12_uid1580_i_shr8_i_i_2_conv_process0_shift_x_b = rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q[31:12];

    // rightShiftStage1Idx3_uid1582_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1581)@48
    assign rightShiftStage1Idx3_uid1582_i_shr8_i_i_2_conv_process0_shift_x_q = {leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage1Idx3Rng12_uid1580_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage1Idx2Rng8_uid1577_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1576)@48
    assign rightShiftStage1Idx2Rng8_uid1577_i_shr8_i_i_2_conv_process0_shift_x_b = rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q[31:8];

    // rightShiftStage1Idx2_uid1579_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1578)@48
    assign rightShiftStage1Idx2_uid1579_i_shr8_i_i_2_conv_process0_shift_x_q = {cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q, rightShiftStage1Idx2Rng8_uid1577_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng4_uid1574_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1573)@48
    assign rightShiftStage1Idx1Rng4_uid1574_i_shr8_i_i_2_conv_process0_shift_x_b = rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1576_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1575)@48
    assign rightShiftStage1Idx1_uid1576_i_shr8_i_i_2_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage1Idx1Rng4_uid1574_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage0Idx3Rng3_uid1569_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1568)@47
    assign rightShiftStage0Idx3Rng3_uid1569_i_shr8_i_i_2_conv_process0_shift_x_b = i_and2_i_i_2_conv_process143_vt_join_q[31:3];

    // rightShiftStage0Idx3_uid1571_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1570)@47
    assign rightShiftStage0Idx3_uid1571_i_shr8_i_i_2_conv_process0_shift_x_q = {leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage0Idx3Rng3_uid1569_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid1566_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1565)@47
    assign rightShiftStage0Idx2Rng2_uid1566_i_shr8_i_i_2_conv_process0_shift_x_b = i_and2_i_i_2_conv_process143_vt_join_q[31:2];

    // rightShiftStage0Idx2_uid1568_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1567)@47
    assign rightShiftStage0Idx2_uid1568_i_shr8_i_i_2_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage0Idx2Rng2_uid1566_i_shr8_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1563_i_shr8_i_i_2_conv_process0_shift_x(BITSELECT,1562)@47
    assign rightShiftStage0Idx1Rng1_uid1563_i_shr8_i_i_2_conv_process0_shift_x_b = i_and2_i_i_2_conv_process143_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid1565_i_shr8_i_i_2_conv_process0_shift_x(BITJOIN,1564)@47
    assign rightShiftStage0Idx1_uid1565_i_shr8_i_i_2_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1563_i_shr8_i_i_2_conv_process0_shift_x_b};

    // valid_fanout_reg26(REG,1192)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process128(BLACKBOX,479)@25
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process128 (
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_dest_data_out_34_0(i_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process128_out_dest_data_out_34_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_14330(CONSTANT,310)
    assign c_i32_14330_q = $unsigned(32'b00000000000000000000000000001110);

    // i_add31_i_2_conv_process27_join(BITJOIN,1716)@6
    assign i_add31_i_2_conv_process27_join_q = {i_add31_i_1_conv_process26_BitSelect_for_a_b, VCC_q, GND_q};

    // i_add31_i_2_conv_process27_vt_select_31(BITSELECT,363)@6
    assign i_add31_i_2_conv_process27_vt_select_31_b = i_add31_i_2_conv_process27_join_q[31:2];

    // i_add31_i_2_conv_process27_vt_join(BITJOIN,362)@6
    assign i_add31_i_2_conv_process27_vt_join_q = {i_add31_i_2_conv_process27_vt_select_31_b, i_add31_i_2_conv_process27_vt_const_1_q};

    // dupName_13_comparator_x(LOGICAL,56)@6 + 1
    assign dupName_13_comparator_x_qi = $unsigned(i_add31_i_2_conv_process27_vt_join_q == c_i32_14330_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_13_comparator_x_delay ( .xin(dupName_13_comparator_x_qi), .xout(dupName_13_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist125_dupName_13_comparator_x_q_13(DELAY,1871)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist125_dupName_13_comparator_x_q_13 ( .xin(dupName_13_comparator_x_q), .xout(redist125_dupName_13_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist126_dupName_13_comparator_x_q_19(DELAY,1872)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist126_dupName_13_comparator_x_q_19 ( .xin(redist125_dupName_13_comparator_x_q_13_q), .xout(redist126_dupName_13_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_10329(CONSTANT,303)
    assign c_i32_10329_q = $unsigned(32'b00000000000000000000000000001010);

    // dupName_12_comparator_x(LOGICAL,55)@6 + 1
    assign dupName_12_comparator_x_qi = $unsigned(i_add31_i_2_conv_process27_vt_join_q == c_i32_10329_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_12_comparator_x_delay ( .xin(dupName_12_comparator_x_qi), .xout(dupName_12_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist127_dupName_12_comparator_x_q_13(DELAY,1873)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist127_dupName_12_comparator_x_q_13 ( .xin(dupName_12_comparator_x_q), .xout(redist127_dupName_12_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist128_dupName_12_comparator_x_q_19(DELAY,1874)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist128_dupName_12_comparator_x_q_19 ( .xin(redist127_dupName_12_comparator_x_q_13_q), .xout(redist128_dupName_12_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg27(REG,1193)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x(BLACKBOX,104)@25
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n81146_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x (
        .in_intel_reserved_ffwd_70_0_0_tpl(in_intel_reserved_ffwd_70_0_0_tpl),
        .in_intel_reserved_ffwd_70_0_1_tpl(in_intel_reserved_ffwd_70_0_1_tpl),
        .in_intel_reserved_ffwd_70_0_2_tpl(in_intel_reserved_ffwd_70_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_dest_data_out_70_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_0_tpl),
        .out_dest_data_out_70_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_1_tpl),
        .out_dest_data_out_70_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6328(CONSTANT,318)
    assign c_i32_6328_q = $unsigned(32'b00000000000000000000000000000110);

    // dupName_11_comparator_x(LOGICAL,54)@6 + 1
    assign dupName_11_comparator_x_qi = $unsigned(i_add31_i_2_conv_process27_vt_join_q == c_i32_6328_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_11_comparator_x_delay ( .xin(dupName_11_comparator_x_qi), .xout(dupName_11_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist129_dupName_11_comparator_x_q_13(DELAY,1875)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist129_dupName_11_comparator_x_q_13 ( .xin(dupName_11_comparator_x_q), .xout(redist129_dupName_11_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist130_dupName_11_comparator_x_q_19(DELAY,1876)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist130_dupName_11_comparator_x_q_19 ( .xin(redist129_dupName_11_comparator_x_q_13_q), .xout(redist130_dupName_11_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130(SELECTOR,471)@25 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select19895_conv_process128_out_dest_data_out_34_0);
            if (redist126_dupName_13_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_2_tpl);
            end
            if (redist128_dupName_12_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_1_tpl);
            end
            if (redist130_dupName_11_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign81146_conv_process129_aunroll_x_out_dest_data_out_70_0_0_tpl);
            end
        end
    end

    // i_conv_i_2_conv_process123(BLACKBOX,440)@10
    // out out_primWireOut@19
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond000016oe0cp36cd0oq3cdj6z thei_conv_i_2_conv_process123 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_2_tpl),
        .out_primWireOut(i_conv_i_2_conv_process123_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist60_i_conv_i_2_conv_process123_out_primWireOut_1(DELAY,1806)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist60_i_conv_i_2_conv_process123_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist60_i_conv_i_2_conv_process123_out_primWireOut_1_q <= $unsigned(i_conv_i_2_conv_process123_out_primWireOut);
        end
    end

    // valid_fanout_reg24(REG,1190)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process124(BLACKBOX,476)@19
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process124 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process124_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg25(REG,1191)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x(BLACKBOX,103)@19
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n77145_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x (
        .in_intel_reserved_ffwd_69_0_0_tpl(in_intel_reserved_ffwd_69_0_0_tpl),
        .in_intel_reserved_ffwd_69_0_1_tpl(in_intel_reserved_ffwd_69_0_1_tpl),
        .in_intel_reserved_ffwd_69_0_2_tpl(in_intel_reserved_ffwd_69_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_dest_data_out_69_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_0_tpl),
        .out_dest_data_out_69_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_1_tpl),
        .out_dest_data_out_69_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126(SELECTOR,470)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select18280_conv_process124_out_dest_data_out_18_0);
            if (redist125_dupName_13_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_2_tpl);
            end
            if (redist127_dupName_12_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_1_tpl);
            end
            if (redist129_dupName_11_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign77145_conv_process125_aunroll_x_out_dest_data_out_69_0_0_tpl);
            end
        end
    end

    // i_mul39_i_2_conv_process127(BLACKBOX,532)@20
    // out out_primWireOut@25
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0001j22644ck28744ck2675x thei_mul39_i_2_conv_process127 (
        .in_0(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt78_conv_process126_q),
        .in_1(redist60_i_conv_i_2_conv_process123_out_primWireOut_1_q),
        .out_primWireOut(i_mul39_i_2_conv_process127_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_mul39_i_2_conv_process127_out_primWireOut_1(DELAY,1783)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_mul39_i_2_conv_process127_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist37_i_mul39_i_2_conv_process127_out_primWireOut_1_q <= $unsigned(i_mul39_i_2_conv_process127_out_primWireOut);
        end
    end

    // i_add44_i_2_conv_process131(BLACKBOX,369)@26
    // out out_primWireOut@40
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000ck28744ck26140c24ui5 thei_add44_i_2_conv_process131 (
        .in_0(redist37_i_mul39_i_2_conv_process127_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt82_conv_process130_q),
        .out_primWireOut(i_add44_i_2_conv_process131_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist78_i_add44_i_2_conv_process131_out_primWireOut_1(DELAY,1824)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q <= $unsigned(i_add44_i_2_conv_process131_out_primWireOut);
        end
    end

    // redist79_i_add44_i_2_conv_process131_out_primWireOut_3(DELAY,1825)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist79_i_add44_i_2_conv_process131_out_primWireOut_3_delay_0 <= '0;
            redist79_i_add44_i_2_conv_process131_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist79_i_add44_i_2_conv_process131_out_primWireOut_3_delay_0 <= $unsigned(redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q);
            redist79_i_add44_i_2_conv_process131_out_primWireOut_3_q <= redist79_i_add44_i_2_conv_process131_out_primWireOut_3_delay_0;
        end
    end

    // frac_x_uid723_i_cmp46_i_2_conv_process132(BITSELECT,722)@41
    assign frac_x_uid723_i_cmp46_i_2_conv_process132_b = redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid726_i_cmp46_i_2_conv_process132(LOGICAL,725)@41
    assign fracXIsZero_uid726_i_cmp46_i_2_conv_process132_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_x_uid723_i_cmp46_i_2_conv_process132_b ? 1'b1 : 1'b0);

    // exp_x_uid722_i_cmp46_i_2_conv_process132(BITSELECT,721)@41
    assign exp_x_uid722_i_cmp46_i_2_conv_process132_b = redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q[30:23];

    // expXIsZero_uid724_i_cmp46_i_2_conv_process132(LOGICAL,723)@41
    assign expXIsZero_uid724_i_cmp46_i_2_conv_process132_q = $unsigned(exp_x_uid722_i_cmp46_i_2_conv_process132_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_x_uid728_i_cmp46_i_2_conv_process132(LOGICAL,727)@41 + 1
    assign excZ_x_uid728_i_cmp46_i_2_conv_process132_qi = expXIsZero_uid724_i_cmp46_i_2_conv_process132_q & fracXIsZero_uid726_i_cmp46_i_2_conv_process132_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid728_i_cmp46_i_2_conv_process132_delay ( .xin(excZ_x_uid728_i_cmp46_i_2_conv_process132_qi), .xout(excZ_x_uid728_i_cmp46_i_2_conv_process132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid776_i_cmp46_i_2_conv_process132(LOGICAL,775)@42
    assign invExcXZ_uid776_i_cmp46_i_2_conv_process132_q = ~ (excZ_x_uid728_i_cmp46_i_2_conv_process132_q);

    // oneNonZero_uid777_i_cmp46_i_2_conv_process132(LOGICAL,776)@42
    assign oneNonZero_uid777_i_cmp46_i_2_conv_process132_q = invExcXZ_uid776_i_cmp46_i_2_conv_process132_q | invExcYZ_uid711_i_cmp46_i_1_conv_process87_q;

    // signX_uid767_i_cmp46_i_2_conv_process132(BITSELECT,766)@41
    assign signX_uid767_i_cmp46_i_2_conv_process132_b = $unsigned(redist78_i_add44_i_2_conv_process131_out_primWireOut_1_q[31:31]);

    // redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1(DELAY,1772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1_q <= '0;
        end
        else
        begin
            redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1_q <= $unsigned(signX_uid767_i_cmp46_i_2_conv_process132_b);
        end
    end

    // concSXSY_uid770_i_cmp46_i_2_conv_process132(BITJOIN,769)@42
    assign concSXSY_uid770_i_cmp46_i_2_conv_process132_q = {redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1_q, signY_uid704_i_cmp46_i_1_conv_process87_b};

    // sxLTsy_uid771_i_cmp46_i_2_conv_process132(LOGICAL,770)@42
    assign sxLTsy_uid771_i_cmp46_i_2_conv_process132_q = $unsigned(concSXSY_uid770_i_cmp46_i_2_conv_process132_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid778_i_cmp46_i_2_conv_process132(LOGICAL,777)@42
    assign rc2_uid778_i_cmp46_i_2_conv_process132_q = sxLTsy_uid771_i_cmp46_i_2_conv_process132_q & oneNonZero_uid777_i_cmp46_i_2_conv_process132_q;

    // expFracX_uid758_i_cmp46_i_2_conv_process132(BITJOIN,757)@41
    assign expFracX_uid758_i_cmp46_i_2_conv_process132_q = {exp_x_uid722_i_cmp46_i_2_conv_process132_b, frac_x_uid723_i_cmp46_i_2_conv_process132_b};

    // efxGTefy_uid762_i_cmp46_i_2_conv_process132(COMPARE,761)@41
    assign efxGTefy_uid762_i_cmp46_i_2_conv_process132_a = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    assign efxGTefy_uid762_i_cmp46_i_2_conv_process132_b = {2'b00, expFracX_uid758_i_cmp46_i_2_conv_process132_q};
    assign efxGTefy_uid762_i_cmp46_i_2_conv_process132_o = $unsigned(efxGTefy_uid762_i_cmp46_i_2_conv_process132_a) - $unsigned(efxGTefy_uid762_i_cmp46_i_2_conv_process132_b);
    assign efxGTefy_uid762_i_cmp46_i_2_conv_process132_c[0] = efxGTefy_uid762_i_cmp46_i_2_conv_process132_o[32];

    // efxLTefy_uid763_i_cmp46_i_2_conv_process132(COMPARE,762)@41
    assign efxLTefy_uid763_i_cmp46_i_2_conv_process132_a = {2'b00, expFracX_uid758_i_cmp46_i_2_conv_process132_q};
    assign efxLTefy_uid763_i_cmp46_i_2_conv_process132_b = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    assign efxLTefy_uid763_i_cmp46_i_2_conv_process132_o = $unsigned(efxLTefy_uid763_i_cmp46_i_2_conv_process132_a) - $unsigned(efxLTefy_uid763_i_cmp46_i_2_conv_process132_b);
    assign efxLTefy_uid763_i_cmp46_i_2_conv_process132_c[0] = efxLTefy_uid763_i_cmp46_i_2_conv_process132_o[32];

    // expFracCompMux_uid774_i_cmp46_i_2_conv_process132(MUX,773)@41 + 1
    assign expFracCompMux_uid774_i_cmp46_i_2_conv_process132_s = signX_uid767_i_cmp46_i_2_conv_process132_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q <= 1'b0;
        end
        else
        begin
            unique case (expFracCompMux_uid774_i_cmp46_i_2_conv_process132_s)
                1'b0 : expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q <= efxLTefy_uid763_i_cmp46_i_2_conv_process132_c;
                1'b1 : expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q <= efxGTefy_uid762_i_cmp46_i_2_conv_process132_c;
                default : expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q <= 1'b0;
            endcase
        end
    end

    // xorSigns_uid772_i_cmp46_i_2_conv_process132(LOGICAL,771)@42
    assign xorSigns_uid772_i_cmp46_i_2_conv_process132_q = redist26_signX_uid767_i_cmp46_i_2_conv_process132_b_1_q ^ signY_uid704_i_cmp46_i_1_conv_process87_b;

    // sxEQsy_uid773_i_cmp46_i_2_conv_process132(LOGICAL,772)@42
    assign sxEQsy_uid773_i_cmp46_i_2_conv_process132_q = ~ (xorSigns_uid772_i_cmp46_i_2_conv_process132_q);

    // sxEQsyExpFracCompMux_uid779_i_cmp46_i_2_conv_process132(LOGICAL,778)@42
    assign sxEQsyExpFracCompMux_uid779_i_cmp46_i_2_conv_process132_q = sxEQsy_uid773_i_cmp46_i_2_conv_process132_q & expFracCompMux_uid774_i_cmp46_i_2_conv_process132_q;

    // r_uid780_i_cmp46_i_2_conv_process132(LOGICAL,779)@42 + 1
    assign r_uid780_i_cmp46_i_2_conv_process132_qi = sxEQsyExpFracCompMux_uid779_i_cmp46_i_2_conv_process132_q | rc2_uid778_i_cmp46_i_2_conv_process132_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid780_i_cmp46_i_2_conv_process132_delay ( .xin(r_uid780_i_cmp46_i_2_conv_process132_qi), .xout(r_uid780_i_cmp46_i_2_conv_process132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid727_i_cmp46_i_2_conv_process132(LOGICAL,726)@41
    assign fracXIsNotZero_uid727_i_cmp46_i_2_conv_process132_q = ~ (fracXIsZero_uid726_i_cmp46_i_2_conv_process132_q);

    // expXIsMax_uid725_i_cmp46_i_2_conv_process132(LOGICAL,724)@41
    assign expXIsMax_uid725_i_cmp46_i_2_conv_process132_q = $unsigned(exp_x_uid722_i_cmp46_i_2_conv_process132_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_x_uid730_i_cmp46_i_2_conv_process132(LOGICAL,729)@41 + 1
    assign excN_x_uid730_i_cmp46_i_2_conv_process132_qi = expXIsMax_uid725_i_cmp46_i_2_conv_process132_q & fracXIsNotZero_uid727_i_cmp46_i_2_conv_process132_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid730_i_cmp46_i_2_conv_process132_delay ( .xin(excN_x_uid730_i_cmp46_i_2_conv_process132_qi), .xout(excN_x_uid730_i_cmp46_i_2_conv_process132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid753_i_cmp46_i_2_conv_process132(LOGICAL,752)@42 + 1
    assign oneIsNaN_uid753_i_cmp46_i_2_conv_process132_qi = excN_x_uid730_i_cmp46_i_2_conv_process132_q | excN_y_uid683_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid753_i_cmp46_i_2_conv_process132_delay ( .xin(oneIsNaN_uid753_i_cmp46_i_2_conv_process132_qi), .xout(oneIsNaN_uid753_i_cmp46_i_2_conv_process132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid781_i_cmp46_i_2_conv_process132(MUX,780)@43
    assign rPostExc_uid781_i_cmp46_i_2_conv_process132_s = oneIsNaN_uid753_i_cmp46_i_2_conv_process132_q;
    always @(rPostExc_uid781_i_cmp46_i_2_conv_process132_s or r_uid780_i_cmp46_i_2_conv_process132_q or GND_q)
    begin
        unique case (rPostExc_uid781_i_cmp46_i_2_conv_process132_s)
            1'b0 : rPostExc_uid781_i_cmp46_i_2_conv_process132_q = r_uid780_i_cmp46_i_2_conv_process132_q;
            1'b1 : rPostExc_uid781_i_cmp46_i_2_conv_process132_q = GND_q;
            default : rPostExc_uid781_i_cmp46_i_2_conv_process132_q = 1'b0;
        endcase
    end

    // valid_fanout_reg28(REG,1194)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist110_sync_together392_aunroll_x_in_i_valid_41_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process133(BLACKBOX,485)@43
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process133 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process133_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_i_2_conv_process134(LOGICAL,545)@43
    assign i_or_cond_i_2_conv_process134_q = i_llvm_fpga_ffwd_dest_i1_cmp45_i133_conv_process133_out_dest_data_out_62_0 & rPostExc_uid781_i_cmp46_i_2_conv_process132_q;

    // i_spec_store_select_i_2_conv_process135(MUX,575)@43 + 1
    assign i_spec_store_select_i_2_conv_process135_s = i_or_cond_i_2_conv_process134_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_2_conv_process135_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_2_conv_process135_s)
                1'b0 : i_spec_store_select_i_2_conv_process135_q <= redist79_i_add44_i_2_conv_process131_out_primWireOut_3_q;
                1'b1 : i_spec_store_select_i_2_conv_process135_q <= c_float_0_000000e_00316_q;
                default : i_spec_store_select_i_2_conv_process135_q <= 32'b0;
            endcase
        end
    end

    // redist31_i_spec_store_select_i_2_conv_process135_q_2(DELAY,1777)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_spec_store_select_i_2_conv_process135_q_2_q <= '0;
        end
        else
        begin
            redist31_i_spec_store_select_i_2_conv_process135_q_2_q <= $unsigned(i_spec_store_select_i_2_conv_process135_q);
        end
    end

    // redist32_i_spec_store_select_i_2_conv_process135_q_3(DELAY,1778)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_spec_store_select_i_2_conv_process135_q_3_q <= '0;
        end
        else
        begin
            redist32_i_spec_store_select_i_2_conv_process135_q_3_q <= $unsigned(redist31_i_spec_store_select_i_2_conv_process135_q_2_q);
        end
    end

    // frac_y_uid996_i_cmp50_i_2_conv_process136(BITSELECT,995)@44
    assign frac_y_uid996_i_cmp50_i_2_conv_process136_b = i_spec_store_select_i_2_conv_process135_q[22:0];

    // fracXIsZero_uid999_i_cmp50_i_2_conv_process136(LOGICAL,998)@44
    assign fracXIsZero_uid999_i_cmp50_i_2_conv_process136_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_y_uid996_i_cmp50_i_2_conv_process136_b ? 1'b1 : 1'b0);

    // exp_y_uid995_i_cmp50_i_2_conv_process136(BITSELECT,994)@44
    assign exp_y_uid995_i_cmp50_i_2_conv_process136_b = i_spec_store_select_i_2_conv_process135_q[30:23];

    // expXIsZero_uid997_i_cmp50_i_2_conv_process136(LOGICAL,996)@44
    assign expXIsZero_uid997_i_cmp50_i_2_conv_process136_q = $unsigned(exp_y_uid995_i_cmp50_i_2_conv_process136_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_y_uid1001_i_cmp50_i_2_conv_process136(LOGICAL,1000)@44 + 1
    assign excZ_y_uid1001_i_cmp50_i_2_conv_process136_qi = expXIsZero_uid997_i_cmp50_i_2_conv_process136_q & fracXIsZero_uid999_i_cmp50_i_2_conv_process136_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid1001_i_cmp50_i_2_conv_process136_delay ( .xin(excZ_y_uid1001_i_cmp50_i_2_conv_process136_qi), .xout(excZ_y_uid1001_i_cmp50_i_2_conv_process136_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid1031_i_cmp50_i_2_conv_process136(LOGICAL,1030)@45
    assign invExcYZ_uid1031_i_cmp50_i_2_conv_process136_q = ~ (excZ_y_uid1001_i_cmp50_i_2_conv_process136_q);

    // oneNonZero_uid1033_i_cmp50_i_2_conv_process136(LOGICAL,1032)@45
    assign oneNonZero_uid1033_i_cmp50_i_2_conv_process136_q = invExcXZ_uid968_i_cmp50_i_1_conv_process91_q | invExcYZ_uid1031_i_cmp50_i_2_conv_process136_q;

    // signY_uid1024_i_cmp50_i_2_conv_process136(BITSELECT,1023)@45
    assign signY_uid1024_i_cmp50_i_2_conv_process136_b = $unsigned(redist31_i_spec_store_select_i_2_conv_process135_q_2_q[31:31]);

    // concSXSY_uid1026_i_cmp50_i_2_conv_process136(BITJOIN,1025)@45
    assign concSXSY_uid1026_i_cmp50_i_2_conv_process136_q = {redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q, signY_uid1024_i_cmp50_i_2_conv_process136_b};

    // sxLTsy_uid1027_i_cmp50_i_2_conv_process136(LOGICAL,1026)@45
    assign sxLTsy_uid1027_i_cmp50_i_2_conv_process136_q = $unsigned(concSXSY_uid1026_i_cmp50_i_2_conv_process136_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid1034_i_cmp50_i_2_conv_process136(LOGICAL,1033)@45
    assign rc2_uid1034_i_cmp50_i_2_conv_process136_q = sxLTsy_uid1027_i_cmp50_i_2_conv_process136_q & oneNonZero_uid1033_i_cmp50_i_2_conv_process136_q;

    // expFracY_uid1016_i_cmp50_i_2_conv_process136(BITJOIN,1015)@44
    assign expFracY_uid1016_i_cmp50_i_2_conv_process136_q = {exp_y_uid995_i_cmp50_i_2_conv_process136_b, frac_y_uid996_i_cmp50_i_2_conv_process136_b};

    // efxGTefy_uid1018_i_cmp50_i_2_conv_process136(COMPARE,1017)@44
    assign efxGTefy_uid1018_i_cmp50_i_2_conv_process136_a = {2'b00, expFracY_uid1016_i_cmp50_i_2_conv_process136_q};
    assign efxGTefy_uid1018_i_cmp50_i_2_conv_process136_b = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxGTefy_uid1018_i_cmp50_i_2_conv_process136_o = $unsigned(efxGTefy_uid1018_i_cmp50_i_2_conv_process136_a) - $unsigned(efxGTefy_uid1018_i_cmp50_i_2_conv_process136_b);
    assign efxGTefy_uid1018_i_cmp50_i_2_conv_process136_c[0] = efxGTefy_uid1018_i_cmp50_i_2_conv_process136_o[32];

    // efxLTefy_uid1019_i_cmp50_i_2_conv_process136(COMPARE,1018)@44
    assign efxLTefy_uid1019_i_cmp50_i_2_conv_process136_a = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxLTefy_uid1019_i_cmp50_i_2_conv_process136_b = {2'b00, expFracY_uid1016_i_cmp50_i_2_conv_process136_q};
    assign efxLTefy_uid1019_i_cmp50_i_2_conv_process136_o = $unsigned(efxLTefy_uid1019_i_cmp50_i_2_conv_process136_a) - $unsigned(efxLTefy_uid1019_i_cmp50_i_2_conv_process136_b);
    assign efxLTefy_uid1019_i_cmp50_i_2_conv_process136_c[0] = efxLTefy_uid1019_i_cmp50_i_2_conv_process136_o[32];

    // expFracCompMux_uid1030_i_cmp50_i_2_conv_process136(MUX,1029)@44 + 1
    assign expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_s = signX_uid959_i_cmp50_i_1_conv_process91_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q <= 1'b0;
        end
        else
        begin
            unique case (expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_s)
                1'b0 : expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q <= efxLTefy_uid1019_i_cmp50_i_2_conv_process136_c;
                1'b1 : expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q <= efxGTefy_uid1018_i_cmp50_i_2_conv_process136_c;
                default : expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q <= 1'b0;
            endcase
        end
    end

    // xorSigns_uid1028_i_cmp50_i_2_conv_process136(LOGICAL,1027)@45
    assign xorSigns_uid1028_i_cmp50_i_2_conv_process136_q = redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q ^ signY_uid1024_i_cmp50_i_2_conv_process136_b;

    // sxEQsy_uid1029_i_cmp50_i_2_conv_process136(LOGICAL,1028)@45
    assign sxEQsy_uid1029_i_cmp50_i_2_conv_process136_q = ~ (xorSigns_uid1028_i_cmp50_i_2_conv_process136_q);

    // sxEQsyExpFracCompMux_uid1035_i_cmp50_i_2_conv_process136(LOGICAL,1034)@45
    assign sxEQsyExpFracCompMux_uid1035_i_cmp50_i_2_conv_process136_q = sxEQsy_uid1029_i_cmp50_i_2_conv_process136_q & expFracCompMux_uid1030_i_cmp50_i_2_conv_process136_q;

    // r_uid1036_i_cmp50_i_2_conv_process136(LOGICAL,1035)@45 + 1
    assign r_uid1036_i_cmp50_i_2_conv_process136_qi = sxEQsyExpFracCompMux_uid1035_i_cmp50_i_2_conv_process136_q | rc2_uid1034_i_cmp50_i_2_conv_process136_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid1036_i_cmp50_i_2_conv_process136_delay ( .xin(r_uid1036_i_cmp50_i_2_conv_process136_qi), .xout(r_uid1036_i_cmp50_i_2_conv_process136_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid1000_i_cmp50_i_2_conv_process136(LOGICAL,999)@44
    assign fracXIsNotZero_uid1000_i_cmp50_i_2_conv_process136_q = ~ (fracXIsZero_uid999_i_cmp50_i_2_conv_process136_q);

    // expXIsMax_uid998_i_cmp50_i_2_conv_process136(LOGICAL,997)@44
    assign expXIsMax_uid998_i_cmp50_i_2_conv_process136_q = $unsigned(exp_y_uid995_i_cmp50_i_2_conv_process136_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_y_uid1003_i_cmp50_i_2_conv_process136(LOGICAL,1002)@44 + 1
    assign excN_y_uid1003_i_cmp50_i_2_conv_process136_qi = expXIsMax_uid998_i_cmp50_i_2_conv_process136_q & fracXIsNotZero_uid1000_i_cmp50_i_2_conv_process136_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid1003_i_cmp50_i_2_conv_process136_delay ( .xin(excN_y_uid1003_i_cmp50_i_2_conv_process136_qi), .xout(excN_y_uid1003_i_cmp50_i_2_conv_process136_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid1009_i_cmp50_i_2_conv_process136(LOGICAL,1008)@45 + 1
    assign oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_qi = excN_x_uid922_i_cmp50_i_1_conv_process91_q | excN_y_uid1003_i_cmp50_i_2_conv_process136_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_delay ( .xin(oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_qi), .xout(oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid1037_i_cmp50_i_2_conv_process136(MUX,1036)@46
    assign rPostExc_uid1037_i_cmp50_i_2_conv_process136_s = oneIsNaN_uid1009_i_cmp50_i_2_conv_process136_q;
    always @(rPostExc_uid1037_i_cmp50_i_2_conv_process136_s or r_uid1036_i_cmp50_i_2_conv_process136_q or GND_q)
    begin
        unique case (rPostExc_uid1037_i_cmp50_i_2_conv_process136_s)
            1'b0 : rPostExc_uid1037_i_cmp50_i_2_conv_process136_q = r_uid1036_i_cmp50_i_2_conv_process136_q;
            1'b1 : rPostExc_uid1037_i_cmp50_i_2_conv_process136_q = GND_q;
            default : rPostExc_uid1037_i_cmp50_i_2_conv_process136_q = 1'b0;
        endcase
    end

    // valid_fanout_reg29(REG,1195)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist111_sync_together392_aunroll_x_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process137(BLACKBOX,489)@46
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process137 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process137_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_2_conv_process138(LOGICAL,541)@46
    assign i_or_cond_2_conv_process138_q = i_llvm_fpga_ffwd_dest_i1_cmp48_i137_conv_process137_out_dest_data_out_63_0 & rPostExc_uid1037_i_cmp50_i_2_conv_process136_q;

    // i_unnamed_conv_process139(MUX,594)@46
    assign i_unnamed_conv_process139_s = i_or_cond_2_conv_process138_q;
    always @(i_unnamed_conv_process139_s or redist32_i_spec_store_select_i_2_conv_process135_q_3_q or redist57_i_div50_conv_process21_out_primWireOut_3_q)
    begin
        unique case (i_unnamed_conv_process139_s)
            1'b0 : i_unnamed_conv_process139_q = redist32_i_spec_store_select_i_2_conv_process135_q_3_q;
            1'b1 : i_unnamed_conv_process139_q = redist57_i_div50_conv_process21_out_primWireOut_3_q;
            default : i_unnamed_conv_process139_q = 32'b0;
        endcase
    end

    // i_and2_i_i_2_conv_process143(LOGICAL,376)@46
    assign i_and2_i_i_2_conv_process143_q = i_unnamed_conv_process139_q & c_i32_8388607319_q;

    // i_and2_i_i_2_conv_process143_vt_select_22(BITSELECT,379)@46
    assign i_and2_i_i_2_conv_process143_vt_select_22_b = i_and2_i_i_2_conv_process143_q[22:0];

    // redist70_i_and2_i_i_2_conv_process143_vt_select_22_b_1(DELAY,1816)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist70_i_and2_i_i_2_conv_process143_vt_select_22_b_1_q <= '0;
        end
        else
        begin
            redist70_i_and2_i_i_2_conv_process143_vt_select_22_b_1_q <= $unsigned(i_and2_i_i_2_conv_process143_vt_select_22_b);
        end
    end

    // i_and2_i_i_2_conv_process143_vt_join(BITJOIN,378)@47
    assign i_and2_i_i_2_conv_process143_vt_join_q = {i_and2_i_i_1_conv_process98_vt_const_31_q, redist70_i_and2_i_i_2_conv_process143_vt_select_22_b_1_q};

    // rightShiftStage3Idx1Rng16_uid1307_i_and_i63_i_2_conv_process0_shift_x(BITSELECT,1306)@46
    assign rightShiftStage3Idx1Rng16_uid1307_i_and_i63_i_2_conv_process0_shift_x_b = rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid1309_i_and_i63_i_2_conv_process0_shift_x(BITJOIN,1308)@46
    assign rightShiftStage3Idx1_uid1309_i_and_i63_i_2_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage3Idx1Rng16_uid1307_i_and_i63_i_2_conv_process0_shift_x_b};

    // rightShiftStage2Idx1Rng4_uid1302_i_and_i63_i_2_conv_process0_shift_x(BITSELECT,1301)@46
    assign rightShiftStage2Idx1Rng4_uid1302_i_and_i63_i_2_conv_process0_shift_x_b = rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid1304_i_and_i63_i_2_conv_process0_shift_x(BITJOIN,1303)@46
    assign rightShiftStage2Idx1_uid1304_i_and_i63_i_2_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage2Idx1Rng4_uid1302_i_and_i63_i_2_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid1297_i_and_i63_i_2_conv_process0_shift_x(BITSELECT,1296)@46
    assign rightShiftStage1Idx1Rng2_uid1297_i_and_i63_i_2_conv_process0_shift_x_b = rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1299_i_and_i63_i_2_conv_process0_shift_x(BITJOIN,1298)@46
    assign rightShiftStage1Idx1_uid1299_i_and_i63_i_2_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage1Idx1Rng2_uid1297_i_and_i63_i_2_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1292_i_and_i63_i_2_conv_process0_shift_x(BITSELECT,1291)@46
    assign rightShiftStage0Idx1Rng1_uid1292_i_and_i63_i_2_conv_process0_shift_x_b = i_unnamed_conv_process139_q[31:1];

    // rightShiftStage0Idx1_uid1294_i_and_i63_i_2_conv_process0_shift_x(BITJOIN,1293)@46
    assign rightShiftStage0Idx1_uid1294_i_and_i63_i_2_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1292_i_and_i63_i_2_conv_process0_shift_x_b};

    // rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x(MUX,1295)@46
    assign rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_s or i_unnamed_conv_process139_q or rightShiftStage0Idx1_uid1294_i_and_i63_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q = i_unnamed_conv_process139_q;
            1'b1 : rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1294_i_and_i63_i_2_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x(MUX,1300)@46
    assign rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_s or rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1299_i_and_i63_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage0_uid1296_i_and_i63_i_2_conv_process0_shift_x_q;
            1'b1 : rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1299_i_and_i63_i_2_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x(MUX,1305)@46
    assign rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_s or rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1304_i_and_i63_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage1_uid1301_i_and_i63_i_2_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1304_i_and_i63_i_2_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x(MUX,1310)@46
    assign rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_s or rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q or rightShiftStage3Idx1_uid1309_i_and_i63_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage2_uid1306_i_and_i63_i_2_conv_process0_shift_x_q;
            1'b1 : rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_q = rightShiftStage3Idx1_uid1309_i_and_i63_i_2_conv_process0_shift_x_q;
            default : rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and_i63_i_2_conv_process141_vt_select_8(BITSELECT,409)@46
    assign i_and_i63_i_2_conv_process141_vt_select_8_b = rightShiftStage3_uid1311_i_and_i63_i_2_conv_process0_shift_x_q[8:0];

    // i_and_i63_i_2_conv_process141_vt_join(BITJOIN,408)@46
    assign i_and_i63_i_2_conv_process141_vt_join_q = {i_and_i63_i_1_conv_process96_vt_const_31_q, i_and_i63_i_2_conv_process141_vt_select_8_b};

    // i_shr1_i_i_2_conv_process142_BitSelect_for_a(BITSELECT,1731)@46
    assign i_shr1_i_i_2_conv_process142_BitSelect_for_a_b = i_and_i63_i_2_conv_process141_vt_join_q[7:0];

    // redist19_i_shr1_i_i_2_conv_process142_BitSelect_for_a_b_1(DELAY,1765)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_shr1_i_i_2_conv_process142_BitSelect_for_a_b_1_q <= '0;
        end
        else
        begin
            redist19_i_shr1_i_i_2_conv_process142_BitSelect_for_a_b_1_q <= $unsigned(i_shr1_i_i_2_conv_process142_BitSelect_for_a_b);
        end
    end

    // i_shr1_i_i_2_conv_process142_join(BITJOIN,1732)@47
    assign i_shr1_i_i_2_conv_process142_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, redist19_i_shr1_i_i_2_conv_process142_BitSelect_for_a_b_1_q};

    // i_shr1_i_i_2_conv_process142_vt_select_7(BITSELECT,561)@47
    assign i_shr1_i_i_2_conv_process142_vt_select_7_b = i_shr1_i_i_2_conv_process142_join_q[7:0];

    // i_shr1_i_i_2_conv_process142_vt_join(BITJOIN,560)@47
    assign i_shr1_i_i_2_conv_process142_vt_join_q = {i_shr1_i_i_1_conv_process97_vt_const_31_q, i_shr1_i_i_2_conv_process142_vt_select_7_b};

    // i_sub7_i_i_2_conv_process148(SUB,583)@47
    assign i_sub7_i_i_2_conv_process148_a = {1'b0, c_i32_149323_q};
    assign i_sub7_i_i_2_conv_process148_b = {1'b0, i_shr1_i_i_2_conv_process142_vt_join_q};
    assign i_sub7_i_i_2_conv_process148_o = $unsigned(i_sub7_i_i_2_conv_process148_a) - $unsigned(i_sub7_i_i_2_conv_process148_b);
    assign i_sub7_i_i_2_conv_process148_q = i_sub7_i_i_2_conv_process148_o[32:0];

    // bgTrunc_i_sub7_i_i_2_conv_process148_sel_x(BITSELECT,14)@47
    assign bgTrunc_i_sub7_i_i_2_conv_process148_sel_x_b = $unsigned(i_sub7_i_i_2_conv_process148_q[31:0]);

    // i_shr8_i_i_2_conv_process0_shift_narrow_x(BITSELECT,163)@47
    assign i_shr8_i_i_2_conv_process0_shift_narrow_x_b = bgTrunc_i_sub7_i_i_2_conv_process148_sel_x_b[4:0];

    // rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select(BITSELECT,1742)@47
    assign rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_b = i_shr8_i_i_2_conv_process0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c = i_shr8_i_i_2_conv_process0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d = i_shr8_i_i_2_conv_process0_shift_narrow_x_b[4:4];

    // rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x(MUX,1572)@47 + 1
    assign rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_s = rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_s)
                2'b00 : rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= i_and2_i_i_2_conv_process143_vt_join_q;
                2'b01 : rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= rightShiftStage0Idx1_uid1565_i_shr8_i_i_2_conv_process0_shift_x_q;
                2'b10 : rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= rightShiftStage0Idx2_uid1568_i_shr8_i_i_2_conv_process0_shift_x_q;
                2'b11 : rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= rightShiftStage0Idx3_uid1571_i_shr8_i_i_2_conv_process0_shift_x_q;
                default : rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist5_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1751)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist5_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x(MUX,1583)@48
    assign rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_s = redist5_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_s or rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1576_i_shr8_i_i_2_conv_process0_shift_x_q or rightShiftStage1Idx2_uid1579_i_shr8_i_i_2_conv_process0_shift_x_q or rightShiftStage1Idx3_uid1582_i_shr8_i_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_s)
            2'b00 : rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage0_uid1573_i_shr8_i_i_2_conv_process0_shift_x_q;
            2'b01 : rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1576_i_shr8_i_i_2_conv_process0_shift_x_q;
            2'b10 : rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage1Idx2_uid1579_i_shr8_i_i_2_conv_process0_shift_x_q;
            2'b11 : rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage1Idx3_uid1582_i_shr8_i_i_2_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist6_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist6_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x(MUX,1588)@48
    assign rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_s = redist6_rightShiftStageSel0Dto0_uid1572_i_shr8_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_s or rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1587_i_shr8_i_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage1_uid1584_i_shr8_i_i_2_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1587_i_shr8_i_i_2_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and9_i_i_2_conv_process150(LOGICAL,392)@48
    assign i_and9_i_i_2_conv_process150_q = rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q & c_i32_1314_q;

    // i_and9_i_i_2_conv_process150_vt_select_0(BITSELECT,395)@48
    assign i_and9_i_i_2_conv_process150_vt_select_0_b = i_and9_i_i_2_conv_process150_q[0:0];

    // redist66_i_and9_i_i_2_conv_process150_vt_select_0_b_1(DELAY,1812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist66_i_and9_i_i_2_conv_process150_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist66_i_and9_i_i_2_conv_process150_vt_select_0_b_1_q <= $unsigned(i_and9_i_i_2_conv_process150_vt_select_0_b);
        end
    end

    // i_and9_i_i_2_conv_process150_vt_join(BITJOIN,394)@49
    assign i_and9_i_i_2_conv_process150_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist66_i_and9_i_i_2_conv_process150_vt_select_0_b_1_q};

    // leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x(BITSELECT,1437)@48
    assign leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_in = leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_b = leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid1439_i_shl_i_i_2_conv_process0_shift_x(BITJOIN,1438)@48
    assign leftShiftStage2Idx1_uid1439_i_shl_i_i_2_conv_process0_shift_x_q = {leftShiftStage2Idx1Rng16_uid1438_i_shl_i_i_2_conv_process0_shift_x_b, rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x(BITSELECT,1432)@48
    assign leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_in = leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_b = leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid1434_i_shl_i_i_2_conv_process0_shift_x(BITJOIN,1433)@48
    assign leftShiftStage1Idx3_uid1434_i_shl_i_i_2_conv_process0_shift_x_q = {leftShiftStage1Idx3Rng12_uid1433_i_shl_i_i_2_conv_process0_shift_x_b, leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x(BITSELECT,1429)@48
    assign leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_in = leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_b = leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid1431_i_shl_i_i_2_conv_process0_shift_x(BITJOIN,1430)@48
    assign leftShiftStage1Idx2_uid1431_i_shl_i_i_2_conv_process0_shift_x_q = {leftShiftStage1Idx2Rng8_uid1430_i_shl_i_i_2_conv_process0_shift_x_b, cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q};

    // leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x(BITSELECT,1426)@48
    assign leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_in = leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_b = leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid1428_i_shl_i_i_2_conv_process0_shift_x(BITJOIN,1427)@48
    assign leftShiftStage1Idx1_uid1428_i_shl_i_i_2_conv_process0_shift_x_q = {leftShiftStage1Idx1Rng4_uid1427_i_shl_i_i_2_conv_process0_shift_x_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // i_sub_i_i_2_conv_process147(ADD,587)@47
    assign i_sub_i_i_2_conv_process147_a = {1'b0, i_shr1_i_i_2_conv_process142_vt_join_q};
    assign i_sub_i_i_2_conv_process147_b = {1'b0, c_i32_127322_q};
    assign i_sub_i_i_2_conv_process147_o = $unsigned(i_sub_i_i_2_conv_process147_a) + $unsigned(i_sub_i_i_2_conv_process147_b);
    assign i_sub_i_i_2_conv_process147_q = i_sub_i_i_2_conv_process147_o[32:0];

    // bgTrunc_i_sub_i_i_2_conv_process147_sel_x(BITSELECT,18)@47
    assign bgTrunc_i_sub_i_i_2_conv_process147_sel_x_b = i_sub_i_i_2_conv_process147_q[31:0];

    // i_shl_i_i_2_conv_process0_shift_narrow_x(BITSELECT,123)@47
    assign i_shl_i_i_2_conv_process0_shift_narrow_x_b = bgTrunc_i_sub_i_i_2_conv_process147_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select(BITSELECT,1738)@47
    assign leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_b = i_shl_i_i_2_conv_process0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c = i_shl_i_i_2_conv_process0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d = i_shl_i_i_2_conv_process0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x(MUX,1424)@47 + 1
    assign leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_s = leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_s)
                2'b00 : leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= c_i32_1314_q;
                2'b01 : leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b10 : leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b11 : leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q;
                default : leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist13_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1759)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist13_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x(MUX,1435)@48
    assign leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_s = redist13_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_s or leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q or leftShiftStage1Idx1_uid1428_i_shl_i_i_2_conv_process0_shift_x_q or leftShiftStage1Idx2_uid1431_i_shl_i_i_2_conv_process0_shift_x_q or leftShiftStage1Idx3_uid1434_i_shl_i_i_2_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_s)
            2'b00 : leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage0_uid1425_i_shl_i_i_2_conv_process0_shift_x_q;
            2'b01 : leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage1Idx1_uid1428_i_shl_i_i_2_conv_process0_shift_x_q;
            2'b10 : leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage1Idx2_uid1431_i_shl_i_i_2_conv_process0_shift_x_q;
            2'b11 : leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage1Idx3_uid1434_i_shl_i_i_2_conv_process0_shift_x_q;
            default : leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist14_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1760)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist14_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x(MUX,1440)@48
    assign leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_s = redist14_leftShiftStageSel0Dto0_uid1424_i_shl_i_i_2_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_s or leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q or leftShiftStage2Idx1_uid1439_i_shl_i_i_2_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_s)
            1'b0 : leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage1_uid1436_i_shl_i_i_2_conv_process0_shift_x_q;
            1'b1 : leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_q = leftShiftStage2Idx1_uid1439_i_shl_i_i_2_conv_process0_shift_x_q;
            default : leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // xMSB_uid1510_i_shr12_i_i_2_conv_process0_shift_x(BITSELECT,1509)@48
    assign xMSB_uid1510_i_shr12_i_i_2_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q[31:31]);

    // rightShiftStage0Idx1Rng1_uid1512_i_shr12_i_i_2_conv_process0_shift_x(BITSELECT,1511)@48
    assign rightShiftStage0Idx1Rng1_uid1512_i_shr12_i_i_2_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid1513_i_shr12_i_i_2_conv_process0_shift_x(BITJOIN,1512)@48
    assign rightShiftStage0Idx1_uid1513_i_shr12_i_i_2_conv_process0_shift_x_q = {xMSB_uid1510_i_shr12_i_i_2_conv_process0_shift_x_b, rightShiftStage0Idx1Rng1_uid1512_i_shr12_i_i_2_conv_process0_shift_x_b};

    // rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x(MUX,1514)@48
    assign rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_s or rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q or rightShiftStage0Idx1_uid1513_i_shr12_i_i_2_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_q = rightShiftStage2_uid1589_i_shr8_i_i_2_conv_process0_shift_x_q;
            1'b1 : rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1513_i_shr12_i_i_2_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_or_i_i_2_conv_process153(LOGICAL,550)@48 + 1
    assign i_or_i_i_2_conv_process153_qi = rightShiftStage0_uid1515_i_shr12_i_i_2_conv_process0_shift_x_q | leftShiftStage2_uid1441_i_shl_i_i_2_conv_process0_shift_x_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_i_i_2_conv_process153_delay ( .xin(i_or_i_i_2_conv_process153_qi), .xout(i_or_i_i_2_conv_process153_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add13_i_i_2_conv_process154(ADD,353)@49
    assign i_add13_i_i_2_conv_process154_a = {1'b0, i_or_i_i_2_conv_process153_q};
    assign i_add13_i_i_2_conv_process154_b = {1'b0, i_and9_i_i_2_conv_process150_vt_join_q};
    assign i_add13_i_i_2_conv_process154_o = $unsigned(i_add13_i_i_2_conv_process154_a) + $unsigned(i_add13_i_i_2_conv_process154_b);
    assign i_add13_i_i_2_conv_process154_q = i_add13_i_i_2_conv_process154_o[32:0];

    // bgTrunc_i_add13_i_i_2_conv_process154_sel_x(BITSELECT,3)@49
    assign bgTrunc_i_add13_i_i_2_conv_process154_sel_x_b = i_add13_i_i_2_conv_process154_q[31:0];

    // i_cmp_i64_i_2_conv_process144(LOGICAL,436)@47
    assign i_cmp_i64_i_2_conv_process144_q = $unsigned(i_shr1_i_i_2_conv_process142_vt_join_q == c_i32_126320_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_55_conv_process155_sel_x(BITSELECT,68)@47
    assign i_acl_55_conv_process155_sel_x_b = {31'b0000000000000000000000000000000, i_cmp_i64_i_2_conv_process144_q[0:0]};

    // i_acl_55_conv_process155_vt_select_0(BITSELECT,343)@47
    assign i_acl_55_conv_process155_vt_select_0_b = i_acl_55_conv_process155_sel_x_b[0:0];

    // redist84_i_acl_55_conv_process155_vt_select_0_b_2(DELAY,1830)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist84_i_acl_55_conv_process155_vt_select_0_b_2_delay_0 <= '0;
            redist84_i_acl_55_conv_process155_vt_select_0_b_2_q <= '0;
        end
        else
        begin
            redist84_i_acl_55_conv_process155_vt_select_0_b_2_delay_0 <= $unsigned(i_acl_55_conv_process155_vt_select_0_b);
            redist84_i_acl_55_conv_process155_vt_select_0_b_2_q <= redist84_i_acl_55_conv_process155_vt_select_0_b_2_delay_0;
        end
    end

    // i_acl_55_conv_process155_vt_join(BITJOIN,342)@49
    assign i_acl_55_conv_process155_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist84_i_acl_55_conv_process155_vt_select_0_b_2_q};

    // i_cmp3_i_i_2_conv_process146(COMPARE,424)@47
    assign i_cmp3_i_i_2_conv_process146_a = {2'b00, c_i32_125321_q};
    assign i_cmp3_i_i_2_conv_process146_b = {2'b00, i_shr1_i_i_2_conv_process142_vt_join_q};
    assign i_cmp3_i_i_2_conv_process146_o = $unsigned(i_cmp3_i_i_2_conv_process146_a) - $unsigned(i_cmp3_i_i_2_conv_process146_b);
    assign i_cmp3_i_i_2_conv_process146_c[0] = i_cmp3_i_i_2_conv_process146_o[33];

    // i_acl_56_conv_process156(LOGICAL,344)@47 + 1
    assign i_acl_56_conv_process156_qi = i_cmp_i64_i_2_conv_process144_q ^ i_cmp3_i_i_2_conv_process146_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_56_conv_process156_delay ( .xin(i_acl_56_conv_process156_qi), .xout(i_acl_56_conv_process156_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist83_i_acl_56_conv_process156_q_2(DELAY,1829)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist83_i_acl_56_conv_process156_q_2_q <= '0;
        end
        else
        begin
            redist83_i_acl_56_conv_process156_q_2_q <= $unsigned(i_acl_56_conv_process156_q);
        end
    end

    // i_acl_57_conv_process157(MUX,345)@49 + 1
    assign i_acl_57_conv_process157_s = redist83_i_acl_56_conv_process156_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_57_conv_process157_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_57_conv_process157_s)
                1'b0 : i_acl_57_conv_process157_q <= i_acl_55_conv_process155_vt_join_q;
                1'b1 : i_acl_57_conv_process157_q <= bgTrunc_i_add13_i_i_2_conv_process154_sel_x_b;
                default : i_acl_57_conv_process157_q <= 32'b0;
            endcase
        end
    end

    // i_cmp16_i_i_2_conv_process158_cmp_sign(LOGICAL,1721)@46 + 1
    assign i_cmp16_i_i_2_conv_process158_cmp_sign_qi = $unsigned(i_unnamed_conv_process139_q[31:31]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp16_i_i_2_conv_process158_cmp_sign_delay ( .xin(i_cmp16_i_i_2_conv_process158_cmp_sign_qi), .xout(i_cmp16_i_i_2_conv_process158_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4(DELAY,1769)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_0 <= '0;
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_1 <= '0;
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_q <= '0;
        end
        else
        begin
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_0 <= $unsigned(i_cmp16_i_i_2_conv_process158_cmp_sign_q);
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_1 <= redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_0;
            redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_q <= redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_delay_1;
        end
    end

    // i_spec_select188_2_conv_process161(MUX,571)@50 + 1
    assign i_spec_select188_2_conv_process161_s = redist23_i_cmp16_i_i_2_conv_process158_cmp_sign_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_select188_2_conv_process161_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_select188_2_conv_process161_s)
                1'b0 : i_spec_select188_2_conv_process161_q <= i_acl_57_conv_process157_q;
                1'b1 : i_spec_select188_2_conv_process161_q <= bgTrunc_i_sub18_i_i_2_conv_process160_sel_x_b;
                default : i_spec_select188_2_conv_process161_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process162(COMPARE,596)@51
    assign i_unnamed_conv_process162_a = $unsigned({{2{c_i32_127322_recast_x_q[31]}}, c_i32_127322_recast_x_q});
    assign i_unnamed_conv_process162_b = $unsigned({{2{i_spec_select188_2_conv_process161_q[31]}}, i_spec_select188_2_conv_process161_q});
    assign i_unnamed_conv_process162_o = $unsigned($signed(i_unnamed_conv_process162_a) - $signed(i_unnamed_conv_process162_b));
    assign i_unnamed_conv_process162_c[0] = i_unnamed_conv_process162_o[33];

    // i_unnamed_conv_process164(MUX,597)@51 + 1
    assign i_unnamed_conv_process164_s = i_unnamed_conv_process162_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process164_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_conv_process164_s)
                1'b0 : i_unnamed_conv_process164_q <= c_i32_127322_q;
                1'b1 : i_unnamed_conv_process164_q <= i_spec_select188_2_conv_process161_q;
                default : i_unnamed_conv_process164_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process165(COMPARE,598)@52
    assign i_unnamed_conv_process165_a = $unsigned({{2{i_unnamed_conv_process164_q[31]}}, i_unnamed_conv_process164_q});
    assign i_unnamed_conv_process165_b = $unsigned({{2{c_i32_127324_recast_x_q[31]}}, c_i32_127324_recast_x_q});
    assign i_unnamed_conv_process165_o = $unsigned($signed(i_unnamed_conv_process165_a) - $signed(i_unnamed_conv_process165_b));
    assign i_unnamed_conv_process165_c[0] = i_unnamed_conv_process165_o[33];

    // i_unnamed_conv_process167(MUX,599)@52
    assign i_unnamed_conv_process167_s = i_unnamed_conv_process165_c;
    always @(i_unnamed_conv_process167_s or c_i32_127324_recast_x_q or i_unnamed_conv_process164_q)
    begin
        unique case (i_unnamed_conv_process167_s)
            1'b0 : i_unnamed_conv_process167_q = c_i32_127324_recast_x_q;
            1'b1 : i_unnamed_conv_process167_q = i_unnamed_conv_process164_q;
            default : i_unnamed_conv_process167_q = 32'b0;
        endcase
    end

    // i_sub18_i_i_1_conv_process115(SUB,578)@50
    assign i_sub18_i_i_1_conv_process115_a = {1'b0, c_i32_0312_q};
    assign i_sub18_i_i_1_conv_process115_b = {1'b0, i_acl_54_conv_process112_q};
    assign i_sub18_i_i_1_conv_process115_o = $unsigned(i_sub18_i_i_1_conv_process115_a) - $unsigned(i_sub18_i_i_1_conv_process115_b);
    assign i_sub18_i_i_1_conv_process115_q = i_sub18_i_i_1_conv_process115_o[32:0];

    // bgTrunc_i_sub18_i_i_1_conv_process115_sel_x(BITSELECT,9)@50
    assign bgTrunc_i_sub18_i_i_1_conv_process115_sel_x_b = $unsigned(i_sub18_i_i_1_conv_process115_q[31:0]);

    // rightShiftStage2Idx1Rng16_uid1555_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1554)@48
    assign rightShiftStage2Idx1Rng16_uid1555_i_shr8_i_i_1_conv_process0_shift_x_b = rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q[31:16];

    // rightShiftStage2Idx1_uid1557_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1556)@48
    assign rightShiftStage2Idx1_uid1557_i_shr8_i_i_1_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage2Idx1Rng16_uid1555_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage1Idx3Rng12_uid1550_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1549)@48
    assign rightShiftStage1Idx3Rng12_uid1550_i_shr8_i_i_1_conv_process0_shift_x_b = rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q[31:12];

    // rightShiftStage1Idx3_uid1552_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1551)@48
    assign rightShiftStage1Idx3_uid1552_i_shr8_i_i_1_conv_process0_shift_x_q = {leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage1Idx3Rng12_uid1550_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage1Idx2Rng8_uid1547_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1546)@48
    assign rightShiftStage1Idx2Rng8_uid1547_i_shr8_i_i_1_conv_process0_shift_x_b = rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q[31:8];

    // rightShiftStage1Idx2_uid1549_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1548)@48
    assign rightShiftStage1Idx2_uid1549_i_shr8_i_i_1_conv_process0_shift_x_q = {cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q, rightShiftStage1Idx2Rng8_uid1547_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng4_uid1544_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1543)@48
    assign rightShiftStage1Idx1Rng4_uid1544_i_shr8_i_i_1_conv_process0_shift_x_b = rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1546_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1545)@48
    assign rightShiftStage1Idx1_uid1546_i_shr8_i_i_1_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage1Idx1Rng4_uid1544_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage0Idx3Rng3_uid1539_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1538)@47
    assign rightShiftStage0Idx3Rng3_uid1539_i_shr8_i_i_1_conv_process0_shift_x_b = i_and2_i_i_1_conv_process98_vt_join_q[31:3];

    // rightShiftStage0Idx3_uid1541_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1540)@47
    assign rightShiftStage0Idx3_uid1541_i_shr8_i_i_1_conv_process0_shift_x_q = {leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage0Idx3Rng3_uid1539_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid1536_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1535)@47
    assign rightShiftStage0Idx2Rng2_uid1536_i_shr8_i_i_1_conv_process0_shift_x_b = i_and2_i_i_1_conv_process98_vt_join_q[31:2];

    // rightShiftStage0Idx2_uid1538_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1537)@47
    assign rightShiftStage0Idx2_uid1538_i_shr8_i_i_1_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage0Idx2Rng2_uid1536_i_shr8_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1533_i_shr8_i_i_1_conv_process0_shift_x(BITSELECT,1532)@47
    assign rightShiftStage0Idx1Rng1_uid1533_i_shr8_i_i_1_conv_process0_shift_x_b = i_and2_i_i_1_conv_process98_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid1535_i_shr8_i_i_1_conv_process0_shift_x(BITJOIN,1534)@47
    assign rightShiftStage0Idx1_uid1535_i_shr8_i_i_1_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1533_i_shr8_i_i_1_conv_process0_shift_x_b};

    // valid_fanout_reg20(REG,1186)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process98_conv_process83(BLACKBOX,483)@25
    cnn_top_i_llvm_fpga_ffwd_dest_f32_unname0000cess98_conv_process0 thei_llvm_fpga_ffwd_dest_f32_unnamed_conv_process98_conv_process83 (
        .in_intel_reserved_ffwd_33_0(in_intel_reserved_ffwd_33_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_dest_data_out_33_0(i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process98_conv_process83_out_dest_data_out_33_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_13327(CONSTANT,309)
    assign c_i32_13327_q = $unsigned(32'b00000000000000000000000000001101);

    // i_add31_i_1_conv_process26_join(BITJOIN,1714)@6
    assign i_add31_i_1_conv_process26_join_q = {i_add31_i_1_conv_process26_BitSelect_for_a_b, GND_q, VCC_q};

    // i_add31_i_1_conv_process26_vt_select_31(BITSELECT,359)@6
    assign i_add31_i_1_conv_process26_vt_select_31_b = i_add31_i_1_conv_process26_join_q[31:2];

    // i_add31_i_1_conv_process26_vt_join(BITJOIN,358)@6
    assign i_add31_i_1_conv_process26_vt_join_q = {i_add31_i_1_conv_process26_vt_select_31_b, c_i2_1309_q};

    // dupName_7_comparator_x(LOGICAL,50)@6 + 1
    assign dupName_7_comparator_x_qi = $unsigned(i_add31_i_1_conv_process26_vt_join_q == c_i32_13327_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_7_comparator_x_delay ( .xin(dupName_7_comparator_x_qi), .xout(dupName_7_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist131_dupName_7_comparator_x_q_13(DELAY,1877)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist131_dupName_7_comparator_x_q_13 ( .xin(dupName_7_comparator_x_q), .xout(redist131_dupName_7_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist132_dupName_7_comparator_x_q_19(DELAY,1878)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist132_dupName_7_comparator_x_q_19 ( .xin(redist131_dupName_7_comparator_x_q_13_q), .xout(redist132_dupName_7_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_9326(CONSTANT,321)
    assign c_i32_9326_q = $unsigned(32'b00000000000000000000000000001001);

    // dupName_6_comparator_x(LOGICAL,49)@6 + 1
    assign dupName_6_comparator_x_qi = $unsigned(i_add31_i_1_conv_process26_vt_join_q == c_i32_9326_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_6_comparator_x_delay ( .xin(dupName_6_comparator_x_qi), .xout(dupName_6_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist133_dupName_6_comparator_x_q_13(DELAY,1879)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist133_dupName_6_comparator_x_q_13 ( .xin(dupName_6_comparator_x_q), .xout(redist133_dupName_6_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist134_dupName_6_comparator_x_q_19(DELAY,1880)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist134_dupName_6_comparator_x_q_19 ( .xin(redist133_dupName_6_comparator_x_q_13_q), .xout(redist134_dupName_6_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg21(REG,1187)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x(BLACKBOX,102)@25
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n73144_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x (
        .in_intel_reserved_ffwd_68_0_0_tpl(in_intel_reserved_ffwd_68_0_0_tpl),
        .in_intel_reserved_ffwd_68_0_1_tpl(in_intel_reserved_ffwd_68_0_1_tpl),
        .in_intel_reserved_ffwd_68_0_2_tpl(in_intel_reserved_ffwd_68_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_dest_data_out_68_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_0_tpl),
        .out_dest_data_out_68_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_1_tpl),
        .out_dest_data_out_68_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5325(CONSTANT,317)
    assign c_i32_5325_q = $unsigned(32'b00000000000000000000000000000101);

    // dupName_5_comparator_x(LOGICAL,48)@6 + 1
    assign dupName_5_comparator_x_qi = $unsigned(i_add31_i_1_conv_process26_vt_join_q == c_i32_5325_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_5_comparator_x_delay ( .xin(dupName_5_comparator_x_qi), .xout(dupName_5_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist135_dupName_5_comparator_x_q_13(DELAY,1881)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist135_dupName_5_comparator_x_q_13 ( .xin(dupName_5_comparator_x_q), .xout(redist135_dupName_5_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist136_dupName_5_comparator_x_q_19(DELAY,1882)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist136_dupName_5_comparator_x_q_19 ( .xin(redist135_dupName_5_comparator_x_q_13_q), .xout(redist136_dupName_5_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85(SELECTOR,469)@25 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process98_conv_process83_out_dest_data_out_33_0);
            if (redist132_dupName_7_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_2_tpl);
            end
            if (redist134_dupName_6_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_1_tpl);
            end
            if (redist136_dupName_5_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign73144_conv_process84_aunroll_x_out_dest_data_out_68_0_0_tpl);
            end
        end
    end

    // i_conv_i_1_conv_process78(BLACKBOX,439)@10
    // out out_primWireOut@19
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond000016oe0cp36cd0oq3cdj6z thei_conv_i_1_conv_process78 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_1_tpl),
        .out_primWireOut(i_conv_i_1_conv_process78_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist61_i_conv_i_1_conv_process78_out_primWireOut_1(DELAY,1807)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist61_i_conv_i_1_conv_process78_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist61_i_conv_i_1_conv_process78_out_primWireOut_1_q <= $unsigned(i_conv_i_1_conv_process78_out_primWireOut);
        end
    end

    // valid_fanout_reg18(REG,1184)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process97_conv_process79(BLACKBOX,482)@19
    cnn_top_i_llvm_fpga_ffwd_dest_f32_unname0000cess97_conv_process0 thei_llvm_fpga_ffwd_dest_f32_unnamed_conv_process97_conv_process79 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process97_conv_process79_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg19(REG,1185)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x(BLACKBOX,101)@19
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n69143_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x (
        .in_intel_reserved_ffwd_67_0_0_tpl(in_intel_reserved_ffwd_67_0_0_tpl),
        .in_intel_reserved_ffwd_67_0_1_tpl(in_intel_reserved_ffwd_67_0_1_tpl),
        .in_intel_reserved_ffwd_67_0_2_tpl(in_intel_reserved_ffwd_67_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_dest_data_out_67_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_0_tpl),
        .out_dest_data_out_67_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_1_tpl),
        .out_dest_data_out_67_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81(SELECTOR,468)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_unnamed_conv_process97_conv_process79_out_dest_data_out_17_0);
            if (redist131_dupName_7_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_2_tpl);
            end
            if (redist133_dupName_6_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_1_tpl);
            end
            if (redist135_dupName_5_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign69143_conv_process80_aunroll_x_out_dest_data_out_67_0_0_tpl);
            end
        end
    end

    // i_mul39_i_1_conv_process82(BLACKBOX,531)@20
    // out out_primWireOut@25
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0001j22644ck28744ck2675x thei_mul39_i_1_conv_process82 (
        .in_0(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt70_conv_process81_q),
        .in_1(redist61_i_conv_i_1_conv_process78_out_primWireOut_1_q),
        .out_primWireOut(i_mul39_i_1_conv_process82_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_i_mul39_i_1_conv_process82_out_primWireOut_1(DELAY,1784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_mul39_i_1_conv_process82_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist38_i_mul39_i_1_conv_process82_out_primWireOut_1_q <= $unsigned(i_mul39_i_1_conv_process82_out_primWireOut);
        end
    end

    // i_add44_i_1_conv_process86(BLACKBOX,368)@26
    // out out_primWireOut@40
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000ck28744ck26140c24ui5 thei_add44_i_1_conv_process86 (
        .in_0(redist38_i_mul39_i_1_conv_process82_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt74_conv_process85_q),
        .out_primWireOut(i_add44_i_1_conv_process86_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist80_i_add44_i_1_conv_process86_out_primWireOut_1(DELAY,1826)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q <= $unsigned(i_add44_i_1_conv_process86_out_primWireOut);
        end
    end

    // redist81_i_add44_i_1_conv_process86_out_primWireOut_2(DELAY,1827)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist81_i_add44_i_1_conv_process86_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist81_i_add44_i_1_conv_process86_out_primWireOut_2_q <= $unsigned(redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q);
        end
    end

    // redist82_i_add44_i_1_conv_process86_out_primWireOut_3(DELAY,1828)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist82_i_add44_i_1_conv_process86_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist82_i_add44_i_1_conv_process86_out_primWireOut_3_q <= $unsigned(redist81_i_add44_i_1_conv_process86_out_primWireOut_2_q);
        end
    end

    // frac_x_uid659_i_cmp46_i_1_conv_process87(BITSELECT,658)@41
    assign frac_x_uid659_i_cmp46_i_1_conv_process87_b = redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid662_i_cmp46_i_1_conv_process87(LOGICAL,661)@41
    assign fracXIsZero_uid662_i_cmp46_i_1_conv_process87_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_x_uid659_i_cmp46_i_1_conv_process87_b ? 1'b1 : 1'b0);

    // exp_x_uid658_i_cmp46_i_1_conv_process87(BITSELECT,657)@41
    assign exp_x_uid658_i_cmp46_i_1_conv_process87_b = redist80_i_add44_i_1_conv_process86_out_primWireOut_1_q[30:23];

    // expXIsZero_uid660_i_cmp46_i_1_conv_process87(LOGICAL,659)@41
    assign expXIsZero_uid660_i_cmp46_i_1_conv_process87_q = $unsigned(exp_x_uid658_i_cmp46_i_1_conv_process87_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_x_uid664_i_cmp46_i_1_conv_process87(LOGICAL,663)@41 + 1
    assign excZ_x_uid664_i_cmp46_i_1_conv_process87_qi = expXIsZero_uid660_i_cmp46_i_1_conv_process87_q & fracXIsZero_uid662_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid664_i_cmp46_i_1_conv_process87_delay ( .xin(excZ_x_uid664_i_cmp46_i_1_conv_process87_qi), .xout(excZ_x_uid664_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid712_i_cmp46_i_1_conv_process87(LOGICAL,711)@42
    assign invExcXZ_uid712_i_cmp46_i_1_conv_process87_q = ~ (excZ_x_uid664_i_cmp46_i_1_conv_process87_q);

    // oneNonZero_uid713_i_cmp46_i_1_conv_process87(LOGICAL,712)@42
    assign oneNonZero_uid713_i_cmp46_i_1_conv_process87_q = invExcXZ_uid712_i_cmp46_i_1_conv_process87_q | invExcYZ_uid711_i_cmp46_i_1_conv_process87_q;

    // signX_uid703_i_cmp46_i_1_conv_process87(BITSELECT,702)@42
    assign signX_uid703_i_cmp46_i_1_conv_process87_b = $unsigned(redist81_i_add44_i_1_conv_process86_out_primWireOut_2_q[31:31]);

    // concSXSY_uid706_i_cmp46_i_1_conv_process87(BITJOIN,705)@42
    assign concSXSY_uid706_i_cmp46_i_1_conv_process87_q = {signX_uid703_i_cmp46_i_1_conv_process87_b, signY_uid704_i_cmp46_i_1_conv_process87_b};

    // sxLTsy_uid707_i_cmp46_i_1_conv_process87(LOGICAL,706)@42
    assign sxLTsy_uid707_i_cmp46_i_1_conv_process87_q = $unsigned(concSXSY_uid706_i_cmp46_i_1_conv_process87_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid714_i_cmp46_i_1_conv_process87(LOGICAL,713)@42
    assign rc2_uid714_i_cmp46_i_1_conv_process87_q = sxLTsy_uid707_i_cmp46_i_1_conv_process87_q & oneNonZero_uid713_i_cmp46_i_1_conv_process87_q;

    // expFracX_uid694_i_cmp46_i_1_conv_process87(BITJOIN,693)@41
    assign expFracX_uid694_i_cmp46_i_1_conv_process87_q = {exp_x_uid658_i_cmp46_i_1_conv_process87_b, frac_x_uid659_i_cmp46_i_1_conv_process87_b};

    // efxGTefy_uid698_i_cmp46_i_1_conv_process87(COMPARE,697)@41 + 1
    assign efxGTefy_uid698_i_cmp46_i_1_conv_process87_a = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    assign efxGTefy_uid698_i_cmp46_i_1_conv_process87_b = {2'b00, expFracX_uid694_i_cmp46_i_1_conv_process87_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid698_i_cmp46_i_1_conv_process87_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid698_i_cmp46_i_1_conv_process87_o <= $unsigned(efxGTefy_uid698_i_cmp46_i_1_conv_process87_a) - $unsigned(efxGTefy_uid698_i_cmp46_i_1_conv_process87_b);
        end
    end
    assign efxGTefy_uid698_i_cmp46_i_1_conv_process87_c[0] = efxGTefy_uid698_i_cmp46_i_1_conv_process87_o[32];

    // efxLTefy_uid699_i_cmp46_i_1_conv_process87(COMPARE,698)@41 + 1
    assign efxLTefy_uid699_i_cmp46_i_1_conv_process87_a = {2'b00, expFracX_uid694_i_cmp46_i_1_conv_process87_q};
    assign efxLTefy_uid699_i_cmp46_i_1_conv_process87_b = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid699_i_cmp46_i_1_conv_process87_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid699_i_cmp46_i_1_conv_process87_o <= $unsigned(efxLTefy_uid699_i_cmp46_i_1_conv_process87_a) - $unsigned(efxLTefy_uid699_i_cmp46_i_1_conv_process87_b);
        end
    end
    assign efxLTefy_uid699_i_cmp46_i_1_conv_process87_c[0] = efxLTefy_uid699_i_cmp46_i_1_conv_process87_o[32];

    // expFracCompMux_uid710_i_cmp46_i_1_conv_process87(MUX,709)@42
    assign expFracCompMux_uid710_i_cmp46_i_1_conv_process87_s = signX_uid703_i_cmp46_i_1_conv_process87_b;
    always @(expFracCompMux_uid710_i_cmp46_i_1_conv_process87_s or efxLTefy_uid699_i_cmp46_i_1_conv_process87_c or efxGTefy_uid698_i_cmp46_i_1_conv_process87_c)
    begin
        unique case (expFracCompMux_uid710_i_cmp46_i_1_conv_process87_s)
            1'b0 : expFracCompMux_uid710_i_cmp46_i_1_conv_process87_q = efxLTefy_uid699_i_cmp46_i_1_conv_process87_c;
            1'b1 : expFracCompMux_uid710_i_cmp46_i_1_conv_process87_q = efxGTefy_uid698_i_cmp46_i_1_conv_process87_c;
            default : expFracCompMux_uid710_i_cmp46_i_1_conv_process87_q = 1'b0;
        endcase
    end

    // xorSigns_uid708_i_cmp46_i_1_conv_process87(LOGICAL,707)@42
    assign xorSigns_uid708_i_cmp46_i_1_conv_process87_q = signX_uid703_i_cmp46_i_1_conv_process87_b ^ signY_uid704_i_cmp46_i_1_conv_process87_b;

    // sxEQsy_uid709_i_cmp46_i_1_conv_process87(LOGICAL,708)@42
    assign sxEQsy_uid709_i_cmp46_i_1_conv_process87_q = ~ (xorSigns_uid708_i_cmp46_i_1_conv_process87_q);

    // sxEQsyExpFracCompMux_uid715_i_cmp46_i_1_conv_process87(LOGICAL,714)@42
    assign sxEQsyExpFracCompMux_uid715_i_cmp46_i_1_conv_process87_q = sxEQsy_uid709_i_cmp46_i_1_conv_process87_q & expFracCompMux_uid710_i_cmp46_i_1_conv_process87_q;

    // r_uid716_i_cmp46_i_1_conv_process87(LOGICAL,715)@42 + 1
    assign r_uid716_i_cmp46_i_1_conv_process87_qi = sxEQsyExpFracCompMux_uid715_i_cmp46_i_1_conv_process87_q | rc2_uid714_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid716_i_cmp46_i_1_conv_process87_delay ( .xin(r_uid716_i_cmp46_i_1_conv_process87_qi), .xout(r_uid716_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid663_i_cmp46_i_1_conv_process87(LOGICAL,662)@41
    assign fracXIsNotZero_uid663_i_cmp46_i_1_conv_process87_q = ~ (fracXIsZero_uid662_i_cmp46_i_1_conv_process87_q);

    // expXIsMax_uid661_i_cmp46_i_1_conv_process87(LOGICAL,660)@41
    assign expXIsMax_uid661_i_cmp46_i_1_conv_process87_q = $unsigned(exp_x_uid658_i_cmp46_i_1_conv_process87_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_x_uid666_i_cmp46_i_1_conv_process87(LOGICAL,665)@41 + 1
    assign excN_x_uid666_i_cmp46_i_1_conv_process87_qi = expXIsMax_uid661_i_cmp46_i_1_conv_process87_q & fracXIsNotZero_uid663_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid666_i_cmp46_i_1_conv_process87_delay ( .xin(excN_x_uid666_i_cmp46_i_1_conv_process87_qi), .xout(excN_x_uid666_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid689_i_cmp46_i_1_conv_process87(LOGICAL,688)@42 + 1
    assign oneIsNaN_uid689_i_cmp46_i_1_conv_process87_qi = excN_x_uid666_i_cmp46_i_1_conv_process87_q | excN_y_uid683_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid689_i_cmp46_i_1_conv_process87_delay ( .xin(oneIsNaN_uid689_i_cmp46_i_1_conv_process87_qi), .xout(oneIsNaN_uid689_i_cmp46_i_1_conv_process87_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid717_i_cmp46_i_1_conv_process87(MUX,716)@43
    assign rPostExc_uid717_i_cmp46_i_1_conv_process87_s = oneIsNaN_uid689_i_cmp46_i_1_conv_process87_q;
    always @(rPostExc_uid717_i_cmp46_i_1_conv_process87_s or r_uid716_i_cmp46_i_1_conv_process87_q or GND_q)
    begin
        unique case (rPostExc_uid717_i_cmp46_i_1_conv_process87_s)
            1'b0 : rPostExc_uid717_i_cmp46_i_1_conv_process87_q = r_uid716_i_cmp46_i_1_conv_process87_q;
            1'b1 : rPostExc_uid717_i_cmp46_i_1_conv_process87_q = GND_q;
            default : rPostExc_uid717_i_cmp46_i_1_conv_process87_q = 1'b0;
        endcase
    end

    // valid_fanout_reg22(REG,1188)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist110_sync_together392_aunroll_x_in_i_valid_41_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process88(BLACKBOX,486)@43
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process88 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process88_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_i_1_conv_process89(LOGICAL,544)@43
    assign i_or_cond_i_1_conv_process89_q = i_llvm_fpga_ffwd_dest_i1_cmp45_i134_conv_process88_out_dest_data_out_62_0 & rPostExc_uid717_i_cmp46_i_1_conv_process87_q;

    // i_spec_store_select_i_1_conv_process90(MUX,574)@43 + 1
    assign i_spec_store_select_i_1_conv_process90_s = i_or_cond_i_1_conv_process89_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_1_conv_process90_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_1_conv_process90_s)
                1'b0 : i_spec_store_select_i_1_conv_process90_q <= redist82_i_add44_i_1_conv_process86_out_primWireOut_3_q;
                1'b1 : i_spec_store_select_i_1_conv_process90_q <= c_float_0_000000e_00316_q;
                default : i_spec_store_select_i_1_conv_process90_q <= 32'b0;
            endcase
        end
    end

    // redist33_i_spec_store_select_i_1_conv_process90_q_2(DELAY,1779)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_spec_store_select_i_1_conv_process90_q_2_q <= '0;
        end
        else
        begin
            redist33_i_spec_store_select_i_1_conv_process90_q_2_q <= $unsigned(i_spec_store_select_i_1_conv_process90_q);
        end
    end

    // redist34_i_spec_store_select_i_1_conv_process90_q_3(DELAY,1780)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_spec_store_select_i_1_conv_process90_q_3_q <= '0;
        end
        else
        begin
            redist34_i_spec_store_select_i_1_conv_process90_q_3_q <= $unsigned(redist33_i_spec_store_select_i_1_conv_process90_q_2_q);
        end
    end

    // frac_y_uid932_i_cmp50_i_1_conv_process91(BITSELECT,931)@44
    assign frac_y_uid932_i_cmp50_i_1_conv_process91_b = i_spec_store_select_i_1_conv_process90_q[22:0];

    // fracXIsZero_uid935_i_cmp50_i_1_conv_process91(LOGICAL,934)@44
    assign fracXIsZero_uid935_i_cmp50_i_1_conv_process91_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_y_uid932_i_cmp50_i_1_conv_process91_b ? 1'b1 : 1'b0);

    // exp_y_uid931_i_cmp50_i_1_conv_process91(BITSELECT,930)@44
    assign exp_y_uid931_i_cmp50_i_1_conv_process91_b = i_spec_store_select_i_1_conv_process90_q[30:23];

    // expXIsZero_uid933_i_cmp50_i_1_conv_process91(LOGICAL,932)@44
    assign expXIsZero_uid933_i_cmp50_i_1_conv_process91_q = $unsigned(exp_y_uid931_i_cmp50_i_1_conv_process91_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_y_uid937_i_cmp50_i_1_conv_process91(LOGICAL,936)@44 + 1
    assign excZ_y_uid937_i_cmp50_i_1_conv_process91_qi = expXIsZero_uid933_i_cmp50_i_1_conv_process91_q & fracXIsZero_uid935_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid937_i_cmp50_i_1_conv_process91_delay ( .xin(excZ_y_uid937_i_cmp50_i_1_conv_process91_qi), .xout(excZ_y_uid937_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid967_i_cmp50_i_1_conv_process91(LOGICAL,966)@45
    assign invExcYZ_uid967_i_cmp50_i_1_conv_process91_q = ~ (excZ_y_uid937_i_cmp50_i_1_conv_process91_q);

    // oneNonZero_uid969_i_cmp50_i_1_conv_process91(LOGICAL,968)@45
    assign oneNonZero_uid969_i_cmp50_i_1_conv_process91_q = invExcXZ_uid968_i_cmp50_i_1_conv_process91_q | invExcYZ_uid967_i_cmp50_i_1_conv_process91_q;

    // signY_uid960_i_cmp50_i_1_conv_process91(BITSELECT,959)@45
    assign signY_uid960_i_cmp50_i_1_conv_process91_b = $unsigned(redist33_i_spec_store_select_i_1_conv_process90_q_2_q[31:31]);

    // concSXSY_uid962_i_cmp50_i_1_conv_process91(BITJOIN,961)@45
    assign concSXSY_uid962_i_cmp50_i_1_conv_process91_q = {redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q, signY_uid960_i_cmp50_i_1_conv_process91_b};

    // sxLTsy_uid963_i_cmp50_i_1_conv_process91(LOGICAL,962)@45
    assign sxLTsy_uid963_i_cmp50_i_1_conv_process91_q = $unsigned(concSXSY_uid962_i_cmp50_i_1_conv_process91_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid970_i_cmp50_i_1_conv_process91(LOGICAL,969)@45
    assign rc2_uid970_i_cmp50_i_1_conv_process91_q = sxLTsy_uid963_i_cmp50_i_1_conv_process91_q & oneNonZero_uid969_i_cmp50_i_1_conv_process91_q;

    // expFracY_uid952_i_cmp50_i_1_conv_process91(BITJOIN,951)@44
    assign expFracY_uid952_i_cmp50_i_1_conv_process91_q = {exp_y_uid931_i_cmp50_i_1_conv_process91_b, frac_y_uid932_i_cmp50_i_1_conv_process91_b};

    // efxGTefy_uid954_i_cmp50_i_1_conv_process91(COMPARE,953)@44
    assign efxGTefy_uid954_i_cmp50_i_1_conv_process91_a = {2'b00, expFracY_uid952_i_cmp50_i_1_conv_process91_q};
    assign efxGTefy_uid954_i_cmp50_i_1_conv_process91_b = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxGTefy_uid954_i_cmp50_i_1_conv_process91_o = $unsigned(efxGTefy_uid954_i_cmp50_i_1_conv_process91_a) - $unsigned(efxGTefy_uid954_i_cmp50_i_1_conv_process91_b);
    assign efxGTefy_uid954_i_cmp50_i_1_conv_process91_c[0] = efxGTefy_uid954_i_cmp50_i_1_conv_process91_o[32];

    // efxLTefy_uid955_i_cmp50_i_1_conv_process91(COMPARE,954)@44
    assign efxLTefy_uid955_i_cmp50_i_1_conv_process91_a = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxLTefy_uid955_i_cmp50_i_1_conv_process91_b = {2'b00, expFracY_uid952_i_cmp50_i_1_conv_process91_q};
    assign efxLTefy_uid955_i_cmp50_i_1_conv_process91_o = $unsigned(efxLTefy_uid955_i_cmp50_i_1_conv_process91_a) - $unsigned(efxLTefy_uid955_i_cmp50_i_1_conv_process91_b);
    assign efxLTefy_uid955_i_cmp50_i_1_conv_process91_c[0] = efxLTefy_uid955_i_cmp50_i_1_conv_process91_o[32];

    // expFracCompMux_uid966_i_cmp50_i_1_conv_process91(MUX,965)@44 + 1
    assign expFracCompMux_uid966_i_cmp50_i_1_conv_process91_s = signX_uid959_i_cmp50_i_1_conv_process91_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q <= 1'b0;
        end
        else
        begin
            unique case (expFracCompMux_uid966_i_cmp50_i_1_conv_process91_s)
                1'b0 : expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q <= efxLTefy_uid955_i_cmp50_i_1_conv_process91_c;
                1'b1 : expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q <= efxGTefy_uid954_i_cmp50_i_1_conv_process91_c;
                default : expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q <= 1'b0;
            endcase
        end
    end

    // xorSigns_uid964_i_cmp50_i_1_conv_process91(LOGICAL,963)@45
    assign xorSigns_uid964_i_cmp50_i_1_conv_process91_q = redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q ^ signY_uid960_i_cmp50_i_1_conv_process91_b;

    // sxEQsy_uid965_i_cmp50_i_1_conv_process91(LOGICAL,964)@45
    assign sxEQsy_uid965_i_cmp50_i_1_conv_process91_q = ~ (xorSigns_uid964_i_cmp50_i_1_conv_process91_q);

    // sxEQsyExpFracCompMux_uid971_i_cmp50_i_1_conv_process91(LOGICAL,970)@45
    assign sxEQsyExpFracCompMux_uid971_i_cmp50_i_1_conv_process91_q = sxEQsy_uid965_i_cmp50_i_1_conv_process91_q & expFracCompMux_uid966_i_cmp50_i_1_conv_process91_q;

    // r_uid972_i_cmp50_i_1_conv_process91(LOGICAL,971)@45 + 1
    assign r_uid972_i_cmp50_i_1_conv_process91_qi = sxEQsyExpFracCompMux_uid971_i_cmp50_i_1_conv_process91_q | rc2_uid970_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid972_i_cmp50_i_1_conv_process91_delay ( .xin(r_uid972_i_cmp50_i_1_conv_process91_qi), .xout(r_uid972_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid936_i_cmp50_i_1_conv_process91(LOGICAL,935)@44
    assign fracXIsNotZero_uid936_i_cmp50_i_1_conv_process91_q = ~ (fracXIsZero_uid935_i_cmp50_i_1_conv_process91_q);

    // expXIsMax_uid934_i_cmp50_i_1_conv_process91(LOGICAL,933)@44
    assign expXIsMax_uid934_i_cmp50_i_1_conv_process91_q = $unsigned(exp_y_uid931_i_cmp50_i_1_conv_process91_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_y_uid939_i_cmp50_i_1_conv_process91(LOGICAL,938)@44 + 1
    assign excN_y_uid939_i_cmp50_i_1_conv_process91_qi = expXIsMax_uid934_i_cmp50_i_1_conv_process91_q & fracXIsNotZero_uid936_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid939_i_cmp50_i_1_conv_process91_delay ( .xin(excN_y_uid939_i_cmp50_i_1_conv_process91_qi), .xout(excN_y_uid939_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid945_i_cmp50_i_1_conv_process91(LOGICAL,944)@45 + 1
    assign oneIsNaN_uid945_i_cmp50_i_1_conv_process91_qi = excN_x_uid922_i_cmp50_i_1_conv_process91_q | excN_y_uid939_i_cmp50_i_1_conv_process91_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid945_i_cmp50_i_1_conv_process91_delay ( .xin(oneIsNaN_uid945_i_cmp50_i_1_conv_process91_qi), .xout(oneIsNaN_uid945_i_cmp50_i_1_conv_process91_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid973_i_cmp50_i_1_conv_process91(MUX,972)@46
    assign rPostExc_uid973_i_cmp50_i_1_conv_process91_s = oneIsNaN_uid945_i_cmp50_i_1_conv_process91_q;
    always @(rPostExc_uid973_i_cmp50_i_1_conv_process91_s or r_uid972_i_cmp50_i_1_conv_process91_q or GND_q)
    begin
        unique case (rPostExc_uid973_i_cmp50_i_1_conv_process91_s)
            1'b0 : rPostExc_uid973_i_cmp50_i_1_conv_process91_q = r_uid972_i_cmp50_i_1_conv_process91_q;
            1'b1 : rPostExc_uid973_i_cmp50_i_1_conv_process91_q = GND_q;
            default : rPostExc_uid973_i_cmp50_i_1_conv_process91_q = 1'b0;
        endcase
    end

    // valid_fanout_reg23(REG,1189)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist111_sync_together392_aunroll_x_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process92(BLACKBOX,490)@46
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process92 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process92_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_1_conv_process93(LOGICAL,540)@46
    assign i_or_cond_1_conv_process93_q = i_llvm_fpga_ffwd_dest_i1_cmp48_i138_conv_process92_out_dest_data_out_63_0 & rPostExc_uid973_i_cmp50_i_1_conv_process91_q;

    // i_unnamed_conv_process94(MUX,614)@46
    assign i_unnamed_conv_process94_s = i_or_cond_1_conv_process93_q;
    always @(i_unnamed_conv_process94_s or redist34_i_spec_store_select_i_1_conv_process90_q_3_q or redist57_i_div50_conv_process21_out_primWireOut_3_q)
    begin
        unique case (i_unnamed_conv_process94_s)
            1'b0 : i_unnamed_conv_process94_q = redist34_i_spec_store_select_i_1_conv_process90_q_3_q;
            1'b1 : i_unnamed_conv_process94_q = redist57_i_div50_conv_process21_out_primWireOut_3_q;
            default : i_unnamed_conv_process94_q = 32'b0;
        endcase
    end

    // i_and2_i_i_1_conv_process98(LOGICAL,372)@46
    assign i_and2_i_i_1_conv_process98_q = i_unnamed_conv_process94_q & c_i32_8388607319_q;

    // i_and2_i_i_1_conv_process98_vt_select_22(BITSELECT,375)@46
    assign i_and2_i_i_1_conv_process98_vt_select_22_b = i_and2_i_i_1_conv_process98_q[22:0];

    // redist71_i_and2_i_i_1_conv_process98_vt_select_22_b_1(DELAY,1817)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist71_i_and2_i_i_1_conv_process98_vt_select_22_b_1_q <= '0;
        end
        else
        begin
            redist71_i_and2_i_i_1_conv_process98_vt_select_22_b_1_q <= $unsigned(i_and2_i_i_1_conv_process98_vt_select_22_b);
        end
    end

    // i_and2_i_i_1_conv_process98_vt_join(BITJOIN,374)@47
    assign i_and2_i_i_1_conv_process98_vt_join_q = {i_and2_i_i_1_conv_process98_vt_const_31_q, redist71_i_and2_i_i_1_conv_process98_vt_select_22_b_1_q};

    // rightShiftStage3Idx1Rng16_uid1284_i_and_i63_i_1_conv_process0_shift_x(BITSELECT,1283)@46
    assign rightShiftStage3Idx1Rng16_uid1284_i_and_i63_i_1_conv_process0_shift_x_b = rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid1286_i_and_i63_i_1_conv_process0_shift_x(BITJOIN,1285)@46
    assign rightShiftStage3Idx1_uid1286_i_and_i63_i_1_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage3Idx1Rng16_uid1284_i_and_i63_i_1_conv_process0_shift_x_b};

    // rightShiftStage2Idx1Rng4_uid1279_i_and_i63_i_1_conv_process0_shift_x(BITSELECT,1278)@46
    assign rightShiftStage2Idx1Rng4_uid1279_i_and_i63_i_1_conv_process0_shift_x_b = rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid1281_i_and_i63_i_1_conv_process0_shift_x(BITJOIN,1280)@46
    assign rightShiftStage2Idx1_uid1281_i_and_i63_i_1_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage2Idx1Rng4_uid1279_i_and_i63_i_1_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid1274_i_and_i63_i_1_conv_process0_shift_x(BITSELECT,1273)@46
    assign rightShiftStage1Idx1Rng2_uid1274_i_and_i63_i_1_conv_process0_shift_x_b = rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1276_i_and_i63_i_1_conv_process0_shift_x(BITJOIN,1275)@46
    assign rightShiftStage1Idx1_uid1276_i_and_i63_i_1_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage1Idx1Rng2_uid1274_i_and_i63_i_1_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1269_i_and_i63_i_1_conv_process0_shift_x(BITSELECT,1268)@46
    assign rightShiftStage0Idx1Rng1_uid1269_i_and_i63_i_1_conv_process0_shift_x_b = i_unnamed_conv_process94_q[31:1];

    // rightShiftStage0Idx1_uid1271_i_and_i63_i_1_conv_process0_shift_x(BITJOIN,1270)@46
    assign rightShiftStage0Idx1_uid1271_i_and_i63_i_1_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1269_i_and_i63_i_1_conv_process0_shift_x_b};

    // rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x(MUX,1272)@46
    assign rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_s or i_unnamed_conv_process94_q or rightShiftStage0Idx1_uid1271_i_and_i63_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q = i_unnamed_conv_process94_q;
            1'b1 : rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1271_i_and_i63_i_1_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x(MUX,1277)@46
    assign rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_s or rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1276_i_and_i63_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage0_uid1273_i_and_i63_i_1_conv_process0_shift_x_q;
            1'b1 : rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1276_i_and_i63_i_1_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x(MUX,1282)@46
    assign rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_s or rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1281_i_and_i63_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage1_uid1278_i_and_i63_i_1_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1281_i_and_i63_i_1_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x(MUX,1287)@46
    assign rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_s or rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q or rightShiftStage3Idx1_uid1286_i_and_i63_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage2_uid1283_i_and_i63_i_1_conv_process0_shift_x_q;
            1'b1 : rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_q = rightShiftStage3Idx1_uid1286_i_and_i63_i_1_conv_process0_shift_x_q;
            default : rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and_i63_i_1_conv_process96_vt_select_8(BITSELECT,406)@46
    assign i_and_i63_i_1_conv_process96_vt_select_8_b = rightShiftStage3_uid1288_i_and_i63_i_1_conv_process0_shift_x_q[8:0];

    // i_and_i63_i_1_conv_process96_vt_join(BITJOIN,405)@46
    assign i_and_i63_i_1_conv_process96_vt_join_q = {i_and_i63_i_1_conv_process96_vt_const_31_q, i_and_i63_i_1_conv_process96_vt_select_8_b};

    // i_shr1_i_i_1_conv_process97_BitSelect_for_a(BITSELECT,1729)@46
    assign i_shr1_i_i_1_conv_process97_BitSelect_for_a_b = i_and_i63_i_1_conv_process96_vt_join_q[7:0];

    // redist20_i_shr1_i_i_1_conv_process97_BitSelect_for_a_b_1(DELAY,1766)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_shr1_i_i_1_conv_process97_BitSelect_for_a_b_1_q <= '0;
        end
        else
        begin
            redist20_i_shr1_i_i_1_conv_process97_BitSelect_for_a_b_1_q <= $unsigned(i_shr1_i_i_1_conv_process97_BitSelect_for_a_b);
        end
    end

    // i_shr1_i_i_1_conv_process97_join(BITJOIN,1730)@47
    assign i_shr1_i_i_1_conv_process97_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, redist20_i_shr1_i_i_1_conv_process97_BitSelect_for_a_b_1_q};

    // i_shr1_i_i_1_conv_process97_vt_select_7(BITSELECT,557)@47
    assign i_shr1_i_i_1_conv_process97_vt_select_7_b = i_shr1_i_i_1_conv_process97_join_q[7:0];

    // i_shr1_i_i_1_conv_process97_vt_join(BITJOIN,556)@47
    assign i_shr1_i_i_1_conv_process97_vt_join_q = {i_shr1_i_i_1_conv_process97_vt_const_31_q, i_shr1_i_i_1_conv_process97_vt_select_7_b};

    // i_sub7_i_i_1_conv_process103(SUB,582)@47
    assign i_sub7_i_i_1_conv_process103_a = {1'b0, c_i32_149323_q};
    assign i_sub7_i_i_1_conv_process103_b = {1'b0, i_shr1_i_i_1_conv_process97_vt_join_q};
    assign i_sub7_i_i_1_conv_process103_o = $unsigned(i_sub7_i_i_1_conv_process103_a) - $unsigned(i_sub7_i_i_1_conv_process103_b);
    assign i_sub7_i_i_1_conv_process103_q = i_sub7_i_i_1_conv_process103_o[32:0];

    // bgTrunc_i_sub7_i_i_1_conv_process103_sel_x(BITSELECT,13)@47
    assign bgTrunc_i_sub7_i_i_1_conv_process103_sel_x_b = $unsigned(i_sub7_i_i_1_conv_process103_q[31:0]);

    // i_shr8_i_i_1_conv_process0_shift_narrow_x(BITSELECT,159)@47
    assign i_shr8_i_i_1_conv_process0_shift_narrow_x_b = bgTrunc_i_sub7_i_i_1_conv_process103_sel_x_b[4:0];

    // rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select(BITSELECT,1741)@47
    assign rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_b = i_shr8_i_i_1_conv_process0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c = i_shr8_i_i_1_conv_process0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d = i_shr8_i_i_1_conv_process0_shift_narrow_x_b[4:4];

    // rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x(MUX,1542)@47 + 1
    assign rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_s = rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_s)
                2'b00 : rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= i_and2_i_i_1_conv_process98_vt_join_q;
                2'b01 : rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= rightShiftStage0Idx1_uid1535_i_shr8_i_i_1_conv_process0_shift_x_q;
                2'b10 : rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= rightShiftStage0Idx2_uid1538_i_shr8_i_i_1_conv_process0_shift_x_q;
                2'b11 : rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= rightShiftStage0Idx3_uid1541_i_shr8_i_i_1_conv_process0_shift_x_q;
                default : rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist7_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1753)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist7_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x(MUX,1553)@48
    assign rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_s = redist7_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_s or rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1546_i_shr8_i_i_1_conv_process0_shift_x_q or rightShiftStage1Idx2_uid1549_i_shr8_i_i_1_conv_process0_shift_x_q or rightShiftStage1Idx3_uid1552_i_shr8_i_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_s)
            2'b00 : rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage0_uid1543_i_shr8_i_i_1_conv_process0_shift_x_q;
            2'b01 : rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1546_i_shr8_i_i_1_conv_process0_shift_x_q;
            2'b10 : rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage1Idx2_uid1549_i_shr8_i_i_1_conv_process0_shift_x_q;
            2'b11 : rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage1Idx3_uid1552_i_shr8_i_i_1_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist8_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1754)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist8_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x(MUX,1558)@48
    assign rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_s = redist8_rightShiftStageSel0Dto0_uid1542_i_shr8_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_s or rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1557_i_shr8_i_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage1_uid1554_i_shr8_i_i_1_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1557_i_shr8_i_i_1_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and9_i_i_1_conv_process105(LOGICAL,388)@48
    assign i_and9_i_i_1_conv_process105_q = rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q & c_i32_1314_q;

    // i_and9_i_i_1_conv_process105_vt_select_0(BITSELECT,391)@48
    assign i_and9_i_i_1_conv_process105_vt_select_0_b = i_and9_i_i_1_conv_process105_q[0:0];

    // redist67_i_and9_i_i_1_conv_process105_vt_select_0_b_1(DELAY,1813)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist67_i_and9_i_i_1_conv_process105_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist67_i_and9_i_i_1_conv_process105_vt_select_0_b_1_q <= $unsigned(i_and9_i_i_1_conv_process105_vt_select_0_b);
        end
    end

    // i_and9_i_i_1_conv_process105_vt_join(BITJOIN,390)@49
    assign i_and9_i_i_1_conv_process105_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist67_i_and9_i_i_1_conv_process105_vt_select_0_b_1_q};

    // leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1407)@48
    assign leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_in = leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid1409_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1408)@48
    assign leftShiftStage2Idx1_uid1409_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage2Idx1Rng16_uid1408_i_shl_i_i_1_conv_process0_shift_x_b, rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1402)@48
    assign leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_in = leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid1404_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1403)@48
    assign leftShiftStage1Idx3_uid1404_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage1Idx3Rng12_uid1403_i_shl_i_i_1_conv_process0_shift_x_b, leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1399)@48
    assign leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_in = leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid1401_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1400)@48
    assign leftShiftStage1Idx2_uid1401_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage1Idx2Rng8_uid1400_i_shl_i_i_1_conv_process0_shift_x_b, cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q};

    // leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x(BITSELECT,1396)@48
    assign leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_in = leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_b = leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid1398_i_shl_i_i_1_conv_process0_shift_x(BITJOIN,1397)@48
    assign leftShiftStage1Idx1_uid1398_i_shl_i_i_1_conv_process0_shift_x_q = {leftShiftStage1Idx1Rng4_uid1397_i_shl_i_i_1_conv_process0_shift_x_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // i_sub_i_i_1_conv_process102(ADD,586)@47
    assign i_sub_i_i_1_conv_process102_a = {1'b0, i_shr1_i_i_1_conv_process97_vt_join_q};
    assign i_sub_i_i_1_conv_process102_b = {1'b0, c_i32_127322_q};
    assign i_sub_i_i_1_conv_process102_o = $unsigned(i_sub_i_i_1_conv_process102_a) + $unsigned(i_sub_i_i_1_conv_process102_b);
    assign i_sub_i_i_1_conv_process102_q = i_sub_i_i_1_conv_process102_o[32:0];

    // bgTrunc_i_sub_i_i_1_conv_process102_sel_x(BITSELECT,17)@47
    assign bgTrunc_i_sub_i_i_1_conv_process102_sel_x_b = i_sub_i_i_1_conv_process102_q[31:0];

    // i_shl_i_i_1_conv_process0_shift_narrow_x(BITSELECT,119)@47
    assign i_shl_i_i_1_conv_process0_shift_narrow_x_b = bgTrunc_i_sub_i_i_1_conv_process102_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select(BITSELECT,1737)@47
    assign leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_b = i_shl_i_i_1_conv_process0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c = i_shl_i_i_1_conv_process0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d = i_shl_i_i_1_conv_process0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x(MUX,1394)@47 + 1
    assign leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_s = leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_s)
                2'b00 : leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= c_i32_1314_q;
                2'b01 : leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b10 : leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b11 : leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q;
                default : leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist15_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1761)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist15_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x(MUX,1405)@48
    assign leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_s = redist15_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_s or leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q or leftShiftStage1Idx1_uid1398_i_shl_i_i_1_conv_process0_shift_x_q or leftShiftStage1Idx2_uid1401_i_shl_i_i_1_conv_process0_shift_x_q or leftShiftStage1Idx3_uid1404_i_shl_i_i_1_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_s)
            2'b00 : leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage0_uid1395_i_shl_i_i_1_conv_process0_shift_x_q;
            2'b01 : leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage1Idx1_uid1398_i_shl_i_i_1_conv_process0_shift_x_q;
            2'b10 : leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage1Idx2_uid1401_i_shl_i_i_1_conv_process0_shift_x_q;
            2'b11 : leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage1Idx3_uid1404_i_shl_i_i_1_conv_process0_shift_x_q;
            default : leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist16_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1762)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist16_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x(MUX,1410)@48
    assign leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_s = redist16_leftShiftStageSel0Dto0_uid1394_i_shl_i_i_1_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_s or leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q or leftShiftStage2Idx1_uid1409_i_shl_i_i_1_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_s)
            1'b0 : leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage1_uid1406_i_shl_i_i_1_conv_process0_shift_x_q;
            1'b1 : leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_q = leftShiftStage2Idx1_uid1409_i_shl_i_i_1_conv_process0_shift_x_q;
            default : leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // xMSB_uid1503_i_shr12_i_i_1_conv_process0_shift_x(BITSELECT,1502)@48
    assign xMSB_uid1503_i_shr12_i_i_1_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q[31:31]);

    // rightShiftStage0Idx1Rng1_uid1505_i_shr12_i_i_1_conv_process0_shift_x(BITSELECT,1504)@48
    assign rightShiftStage0Idx1Rng1_uid1505_i_shr12_i_i_1_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid1506_i_shr12_i_i_1_conv_process0_shift_x(BITJOIN,1505)@48
    assign rightShiftStage0Idx1_uid1506_i_shr12_i_i_1_conv_process0_shift_x_q = {xMSB_uid1503_i_shr12_i_i_1_conv_process0_shift_x_b, rightShiftStage0Idx1Rng1_uid1505_i_shr12_i_i_1_conv_process0_shift_x_b};

    // rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x(MUX,1507)@48
    assign rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_s or rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q or rightShiftStage0Idx1_uid1506_i_shr12_i_i_1_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_q = rightShiftStage2_uid1559_i_shr8_i_i_1_conv_process0_shift_x_q;
            1'b1 : rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1506_i_shr12_i_i_1_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_or_i_i_1_conv_process108(LOGICAL,549)@48 + 1
    assign i_or_i_i_1_conv_process108_qi = rightShiftStage0_uid1508_i_shr12_i_i_1_conv_process0_shift_x_q | leftShiftStage2_uid1411_i_shl_i_i_1_conv_process0_shift_x_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_i_i_1_conv_process108_delay ( .xin(i_or_i_i_1_conv_process108_qi), .xout(i_or_i_i_1_conv_process108_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add13_i_i_1_conv_process109(ADD,352)@49
    assign i_add13_i_i_1_conv_process109_a = {1'b0, i_or_i_i_1_conv_process108_q};
    assign i_add13_i_i_1_conv_process109_b = {1'b0, i_and9_i_i_1_conv_process105_vt_join_q};
    assign i_add13_i_i_1_conv_process109_o = $unsigned(i_add13_i_i_1_conv_process109_a) + $unsigned(i_add13_i_i_1_conv_process109_b);
    assign i_add13_i_i_1_conv_process109_q = i_add13_i_i_1_conv_process109_o[32:0];

    // bgTrunc_i_add13_i_i_1_conv_process109_sel_x(BITSELECT,2)@49
    assign bgTrunc_i_add13_i_i_1_conv_process109_sel_x_b = i_add13_i_i_1_conv_process109_q[31:0];

    // i_cmp_i64_i_1_conv_process99(LOGICAL,435)@47
    assign i_cmp_i64_i_1_conv_process99_q = $unsigned(i_shr1_i_i_1_conv_process97_vt_join_q == c_i32_126320_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_52_conv_process110_sel_x(BITSELECT,67)@47
    assign i_acl_52_conv_process110_sel_x_b = {31'b0000000000000000000000000000000, i_cmp_i64_i_1_conv_process99_q[0:0]};

    // i_acl_52_conv_process110_vt_select_0(BITSELECT,337)@47
    assign i_acl_52_conv_process110_vt_select_0_b = i_acl_52_conv_process110_sel_x_b[0:0];

    // redist86_i_acl_52_conv_process110_vt_select_0_b_2(DELAY,1832)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist86_i_acl_52_conv_process110_vt_select_0_b_2_delay_0 <= '0;
            redist86_i_acl_52_conv_process110_vt_select_0_b_2_q <= '0;
        end
        else
        begin
            redist86_i_acl_52_conv_process110_vt_select_0_b_2_delay_0 <= $unsigned(i_acl_52_conv_process110_vt_select_0_b);
            redist86_i_acl_52_conv_process110_vt_select_0_b_2_q <= redist86_i_acl_52_conv_process110_vt_select_0_b_2_delay_0;
        end
    end

    // i_acl_52_conv_process110_vt_join(BITJOIN,336)@49
    assign i_acl_52_conv_process110_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist86_i_acl_52_conv_process110_vt_select_0_b_2_q};

    // i_cmp3_i_i_1_conv_process101(COMPARE,423)@47
    assign i_cmp3_i_i_1_conv_process101_a = {2'b00, c_i32_125321_q};
    assign i_cmp3_i_i_1_conv_process101_b = {2'b00, i_shr1_i_i_1_conv_process97_vt_join_q};
    assign i_cmp3_i_i_1_conv_process101_o = $unsigned(i_cmp3_i_i_1_conv_process101_a) - $unsigned(i_cmp3_i_i_1_conv_process101_b);
    assign i_cmp3_i_i_1_conv_process101_c[0] = i_cmp3_i_i_1_conv_process101_o[33];

    // i_acl_53_conv_process111(LOGICAL,338)@47 + 1
    assign i_acl_53_conv_process111_qi = i_cmp_i64_i_1_conv_process99_q ^ i_cmp3_i_i_1_conv_process101_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_53_conv_process111_delay ( .xin(i_acl_53_conv_process111_qi), .xout(i_acl_53_conv_process111_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist85_i_acl_53_conv_process111_q_2(DELAY,1831)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist85_i_acl_53_conv_process111_q_2_q <= '0;
        end
        else
        begin
            redist85_i_acl_53_conv_process111_q_2_q <= $unsigned(i_acl_53_conv_process111_q);
        end
    end

    // i_acl_54_conv_process112(MUX,339)@49 + 1
    assign i_acl_54_conv_process112_s = redist85_i_acl_53_conv_process111_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_54_conv_process112_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_54_conv_process112_s)
                1'b0 : i_acl_54_conv_process112_q <= i_acl_52_conv_process110_vt_join_q;
                1'b1 : i_acl_54_conv_process112_q <= bgTrunc_i_add13_i_i_1_conv_process109_sel_x_b;
                default : i_acl_54_conv_process112_q <= 32'b0;
            endcase
        end
    end

    // i_cmp16_i_i_1_conv_process113_cmp_sign(LOGICAL,1719)@46 + 1
    assign i_cmp16_i_i_1_conv_process113_cmp_sign_qi = $unsigned(i_unnamed_conv_process94_q[31:31]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp16_i_i_1_conv_process113_cmp_sign_delay ( .xin(i_cmp16_i_i_1_conv_process113_cmp_sign_qi), .xout(i_cmp16_i_i_1_conv_process113_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4(DELAY,1770)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_0 <= '0;
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_1 <= '0;
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_q <= '0;
        end
        else
        begin
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_0 <= $unsigned(i_cmp16_i_i_1_conv_process113_cmp_sign_q);
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_1 <= redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_0;
            redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_q <= redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_delay_1;
        end
    end

    // i_spec_select188_1_conv_process116(MUX,570)@50 + 1
    assign i_spec_select188_1_conv_process116_s = redist24_i_cmp16_i_i_1_conv_process113_cmp_sign_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_select188_1_conv_process116_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_select188_1_conv_process116_s)
                1'b0 : i_spec_select188_1_conv_process116_q <= i_acl_54_conv_process112_q;
                1'b1 : i_spec_select188_1_conv_process116_q <= bgTrunc_i_sub18_i_i_1_conv_process115_sel_x_b;
                default : i_spec_select188_1_conv_process116_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process117(COMPARE,590)@51
    assign i_unnamed_conv_process117_a = $unsigned({{2{c_i32_127322_recast_x_q[31]}}, c_i32_127322_recast_x_q});
    assign i_unnamed_conv_process117_b = $unsigned({{2{i_spec_select188_1_conv_process116_q[31]}}, i_spec_select188_1_conv_process116_q});
    assign i_unnamed_conv_process117_o = $unsigned($signed(i_unnamed_conv_process117_a) - $signed(i_unnamed_conv_process117_b));
    assign i_unnamed_conv_process117_c[0] = i_unnamed_conv_process117_o[33];

    // i_unnamed_conv_process119(MUX,591)@51 + 1
    assign i_unnamed_conv_process119_s = i_unnamed_conv_process117_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process119_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_conv_process119_s)
                1'b0 : i_unnamed_conv_process119_q <= c_i32_127322_q;
                1'b1 : i_unnamed_conv_process119_q <= i_spec_select188_1_conv_process116_q;
                default : i_unnamed_conv_process119_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process120(COMPARE,592)@52
    assign i_unnamed_conv_process120_a = $unsigned({{2{i_unnamed_conv_process119_q[31]}}, i_unnamed_conv_process119_q});
    assign i_unnamed_conv_process120_b = $unsigned({{2{c_i32_127324_recast_x_q[31]}}, c_i32_127324_recast_x_q});
    assign i_unnamed_conv_process120_o = $unsigned($signed(i_unnamed_conv_process120_a) - $signed(i_unnamed_conv_process120_b));
    assign i_unnamed_conv_process120_c[0] = i_unnamed_conv_process120_o[33];

    // i_unnamed_conv_process122(MUX,593)@52
    assign i_unnamed_conv_process122_s = i_unnamed_conv_process120_c;
    always @(i_unnamed_conv_process122_s or c_i32_127324_recast_x_q or i_unnamed_conv_process119_q)
    begin
        unique case (i_unnamed_conv_process122_s)
            1'b0 : i_unnamed_conv_process122_q = c_i32_127324_recast_x_q;
            1'b1 : i_unnamed_conv_process122_q = i_unnamed_conv_process119_q;
            default : i_unnamed_conv_process122_q = 32'b0;
        endcase
    end

    // i_sub18_i_i_conv_process70(SUB,581)@50
    assign i_sub18_i_i_conv_process70_a = {1'b0, c_i32_0312_q};
    assign i_sub18_i_i_conv_process70_b = {1'b0, i_acl_51_conv_process67_q};
    assign i_sub18_i_i_conv_process70_o = $unsigned(i_sub18_i_i_conv_process70_a) - $unsigned(i_sub18_i_i_conv_process70_b);
    assign i_sub18_i_i_conv_process70_q = i_sub18_i_i_conv_process70_o[32:0];

    // bgTrunc_i_sub18_i_i_conv_process70_sel_x(BITSELECT,12)@50
    assign bgTrunc_i_sub18_i_i_conv_process70_sel_x_b = $unsigned(i_sub18_i_i_conv_process70_q[31:0]);

    // rightShiftStage2Idx1Rng16_uid1645_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1644)@48
    assign rightShiftStage2Idx1Rng16_uid1645_i_shr8_i_i_conv_process0_shift_x_b = rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q[31:16];

    // rightShiftStage2Idx1_uid1647_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1646)@48
    assign rightShiftStage2Idx1_uid1647_i_shr8_i_i_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage2Idx1Rng16_uid1645_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage1Idx3Rng12_uid1640_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1639)@48
    assign rightShiftStage1Idx3Rng12_uid1640_i_shr8_i_i_conv_process0_shift_x_b = rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q[31:12];

    // rightShiftStage1Idx3_uid1642_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1641)@48
    assign rightShiftStage1Idx3_uid1642_i_shr8_i_i_conv_process0_shift_x_q = {leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage1Idx3Rng12_uid1640_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage1Idx2Rng8_uid1637_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1636)@48
    assign rightShiftStage1Idx2Rng8_uid1637_i_shr8_i_i_conv_process0_shift_x_b = rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q[31:8];

    // rightShiftStage1Idx2_uid1639_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1638)@48
    assign rightShiftStage1Idx2_uid1639_i_shr8_i_i_conv_process0_shift_x_q = {cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q, rightShiftStage1Idx2Rng8_uid1637_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng4_uid1634_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1633)@48
    assign rightShiftStage1Idx1Rng4_uid1634_i_shr8_i_i_conv_process0_shift_x_b = rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q[31:4];

    // rightShiftStage1Idx1_uid1636_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1635)@48
    assign rightShiftStage1Idx1_uid1636_i_shr8_i_i_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage1Idx1Rng4_uid1634_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage0Idx3Rng3_uid1629_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1628)@47
    assign rightShiftStage0Idx3Rng3_uid1629_i_shr8_i_i_conv_process0_shift_x_b = i_and2_i_i_conv_process53_vt_join_q[31:3];

    // rightShiftStage0Idx3_uid1631_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1630)@47
    assign rightShiftStage0Idx3_uid1631_i_shr8_i_i_conv_process0_shift_x_q = {leftShiftStage0Idx3Pad3_uid1391_i_shl_i_i_1_conv_process0_shift_x_q, rightShiftStage0Idx3Rng3_uid1629_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid1626_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1625)@47
    assign rightShiftStage0Idx2Rng2_uid1626_i_shr8_i_i_conv_process0_shift_x_b = i_and2_i_i_conv_process53_vt_join_q[31:2];

    // rightShiftStage0Idx2_uid1628_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1627)@47
    assign rightShiftStage0Idx2_uid1628_i_shr8_i_i_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage0Idx2Rng2_uid1626_i_shr8_i_i_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1623_i_shr8_i_i_conv_process0_shift_x(BITSELECT,1622)@47
    assign rightShiftStage0Idx1Rng1_uid1623_i_shr8_i_i_conv_process0_shift_x_b = i_and2_i_i_conv_process53_vt_join_q[31:1];

    // rightShiftStage0Idx1_uid1625_i_shr8_i_i_conv_process0_shift_x(BITJOIN,1624)@47
    assign rightShiftStage0Idx1_uid1625_i_shr8_i_i_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1623_i_shr8_i_i_conv_process0_shift_x_b};

    // valid_fanout_reg14(REG,1180)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process38(BLACKBOX,478)@25
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process38 (
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_dest_data_out_32_0(i_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process38_out_dest_data_out_32_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3315(CONSTANT,316)
    assign c_i32_3315_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,37)@6 + 1
    assign dupName_1_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out == c_i32_3315_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist139_dupName_1_comparator_x_q_13(DELAY,1885)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist139_dupName_1_comparator_x_q_13 ( .xin(dupName_1_comparator_x_q), .xout(redist139_dupName_1_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist140_dupName_1_comparator_x_q_19(DELAY,1886)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist140_dupName_1_comparator_x_q_19 ( .xin(redist139_dupName_1_comparator_x_q_13_q), .xout(redist140_dupName_1_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_2313(CONSTANT,313)
    assign c_i32_2313_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,30)@6 + 1
    assign dupName_0_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out == c_i32_2313_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist141_dupName_0_comparator_x_q_13(DELAY,1887)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist141_dupName_0_comparator_x_q_13 ( .xin(dupName_0_comparator_x_q), .xout(redist141_dupName_0_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist142_dupName_0_comparator_x_q_19(DELAY,1888)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist142_dupName_0_comparator_x_q_19 ( .xin(redist141_dupName_0_comparator_x_q_13_q), .xout(redist142_dupName_0_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg15(REG,1181)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist108_sync_together392_aunroll_x_in_i_valid_23_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x(BLACKBOX,100)@25
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n65142_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x (
        .in_intel_reserved_ffwd_66_0_0_tpl(in_intel_reserved_ffwd_66_0_0_tpl),
        .in_intel_reserved_ffwd_66_0_1_tpl(in_intel_reserved_ffwd_66_0_1_tpl),
        .in_intel_reserved_ffwd_66_0_2_tpl(in_intel_reserved_ffwd_66_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_dest_data_out_66_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_0_tpl),
        .out_dest_data_out_66_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_1_tpl),
        .out_dest_data_out_66_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_comparator_x(LOGICAL,43)@6 + 1
    assign dupName_2_comparator_x_qi = $unsigned(i_llvm_fpga_pop_i32_i_0_i111466_pop86_conv_process22_out_data_out == c_i32_1314_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist137_dupName_2_comparator_x_q_13(DELAY,1883)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist137_dupName_2_comparator_x_q_13 ( .xin(dupName_2_comparator_x_q), .xout(redist137_dupName_2_comparator_x_q_13_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist138_dupName_2_comparator_x_q_19(DELAY,1884)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist138_dupName_2_comparator_x_q_19 ( .xin(redist137_dupName_2_comparator_x_q_13_q), .xout(redist138_dupName_2_comparator_x_q_19_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40(SELECTOR,467)@25 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select19794_conv_process38_out_dest_data_out_32_0);
            if (redist140_dupName_1_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_2_tpl);
            end
            if (redist142_dupName_0_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_1_tpl);
            end
            if (redist138_dupName_2_comparator_x_q_19_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign65142_conv_process39_aunroll_x_out_dest_data_out_66_0_0_tpl);
            end
        end
    end

    // i_conv_i_conv_process33(BLACKBOX,442)@10
    // out out_primWireOut@19
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond000016oe0cp36cd0oq3cdj6z thei_conv_i_conv_process33 (
        .in_0(i_llvm_fpga_mem_memcoalesce_load_conv_process_fpgaunique_227_conv_process31_aunroll_x_out_o_readdata_0_tpl),
        .out_primWireOut(i_conv_i_conv_process33_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist58_i_conv_i_conv_process33_out_primWireOut_1(DELAY,1804)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_i_conv_i_conv_process33_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist58_i_conv_i_conv_process33_out_primWireOut_1_q <= $unsigned(i_conv_i_conv_process33_out_primWireOut);
        end
    end

    // valid_fanout_reg12(REG,1178)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process34(BLACKBOX,481)@19
    cnn_top_i_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process0 thei_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process34 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process34_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg13(REG,1179)@18 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist107_sync_together392_aunroll_x_in_i_valid_17_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x(BLACKBOX,99)@19
    cnn_top_i_llvm_fpga_ffwd_dest_s_case_ass0000n62141_conv_process0 thei_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x (
        .in_intel_reserved_ffwd_65_0_0_tpl(in_intel_reserved_ffwd_65_0_0_tpl),
        .in_intel_reserved_ffwd_65_0_1_tpl(in_intel_reserved_ffwd_65_0_1_tpl),
        .in_intel_reserved_ffwd_65_0_2_tpl(in_intel_reserved_ffwd_65_0_2_tpl),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_dest_data_out_65_0_0_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_0_tpl),
        .out_dest_data_out_65_0_1_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_1_tpl),
        .out_dest_data_out_65_0_2_tpl(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_2_tpl),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36(SELECTOR,474)@19 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q <= $unsigned(i_llvm_fpga_ffwd_dest_f32_spec_select79_conv_process34_out_dest_data_out_16_0);
            if (redist139_dupName_1_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_2_tpl);
            end
            if (redist141_dupName_0_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_1_tpl);
            end
            if (redist137_dupName_2_comparator_x_q_13_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q <= $unsigned(i_llvm_fpga_ffwd_dest_s_case_assign_struct_conv_process_fpgaunique_0s_case_assign62141_conv_process35_aunroll_x_out_dest_data_out_65_0_0_tpl);
            end
        end
    end

    // i_mul39_i_conv_process37(BLACKBOX,534)@20
    // out out_primWireOut@25
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0001j22644ck28744ck2675x thei_mul39_i_conv_process37 (
        .in_0(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt_conv_process36_q),
        .in_1(redist58_i_conv_i_conv_process33_out_primWireOut_1_q),
        .out_primWireOut(i_mul39_i_conv_process37_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_mul39_i_conv_process37_out_primWireOut_1(DELAY,1781)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_mul39_i_conv_process37_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist35_i_mul39_i_conv_process37_out_primWireOut_1_q <= $unsigned(i_mul39_i_conv_process37_out_primWireOut);
        end
    end

    // i_add44_i_conv_process41(BLACKBOX,371)@26
    // out out_primWireOut@40
    cnn_top_flt_i_sfc_logic_s_c0_in_for_cond0000ck28744ck26140c24ui5 thei_add44_i_conv_process41 (
        .in_0(redist35_i_mul39_i_conv_process37_out_primWireOut_1_q),
        .in_1(i_llvm_fpga_case_f32_i32_v3i32_s_case_assign_struct_conv_process_fpgaunique_0s_case_stmt66_conv_process40_q),
        .out_primWireOut(i_add44_i_conv_process41_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist72_i_add44_i_conv_process41_out_primWireOut_1(DELAY,1818)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist72_i_add44_i_conv_process41_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist72_i_add44_i_conv_process41_out_primWireOut_1_q <= $unsigned(i_add44_i_conv_process41_out_primWireOut);
        end
    end

    // redist73_i_add44_i_conv_process41_out_primWireOut_2(DELAY,1819)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist73_i_add44_i_conv_process41_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist73_i_add44_i_conv_process41_out_primWireOut_2_q <= $unsigned(redist72_i_add44_i_conv_process41_out_primWireOut_1_q);
        end
    end

    // redist74_i_add44_i_conv_process41_out_primWireOut_3(DELAY,1820)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist74_i_add44_i_conv_process41_out_primWireOut_3_q <= '0;
        end
        else
        begin
            redist74_i_add44_i_conv_process41_out_primWireOut_3_q <= $unsigned(redist73_i_add44_i_conv_process41_out_primWireOut_2_q);
        end
    end

    // frac_x_uid851_i_cmp46_i_conv_process42(BITSELECT,850)@41
    assign frac_x_uid851_i_cmp46_i_conv_process42_b = redist72_i_add44_i_conv_process41_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid854_i_cmp46_i_conv_process42(LOGICAL,853)@41
    assign fracXIsZero_uid854_i_cmp46_i_conv_process42_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_x_uid851_i_cmp46_i_conv_process42_b ? 1'b1 : 1'b0);

    // exp_x_uid850_i_cmp46_i_conv_process42(BITSELECT,849)@41
    assign exp_x_uid850_i_cmp46_i_conv_process42_b = redist72_i_add44_i_conv_process41_out_primWireOut_1_q[30:23];

    // expXIsZero_uid852_i_cmp46_i_conv_process42(LOGICAL,851)@41
    assign expXIsZero_uid852_i_cmp46_i_conv_process42_q = $unsigned(exp_x_uid850_i_cmp46_i_conv_process42_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_x_uid856_i_cmp46_i_conv_process42(LOGICAL,855)@41 + 1
    assign excZ_x_uid856_i_cmp46_i_conv_process42_qi = expXIsZero_uid852_i_cmp46_i_conv_process42_q & fracXIsZero_uid854_i_cmp46_i_conv_process42_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid856_i_cmp46_i_conv_process42_delay ( .xin(excZ_x_uid856_i_cmp46_i_conv_process42_qi), .xout(excZ_x_uid856_i_cmp46_i_conv_process42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcXZ_uid904_i_cmp46_i_conv_process42(LOGICAL,903)@42
    assign invExcXZ_uid904_i_cmp46_i_conv_process42_q = ~ (excZ_x_uid856_i_cmp46_i_conv_process42_q);

    // oneNonZero_uid905_i_cmp46_i_conv_process42(LOGICAL,904)@42
    assign oneNonZero_uid905_i_cmp46_i_conv_process42_q = invExcXZ_uid904_i_cmp46_i_conv_process42_q | invExcYZ_uid711_i_cmp46_i_1_conv_process87_q;

    // signX_uid895_i_cmp46_i_conv_process42(BITSELECT,894)@42
    assign signX_uid895_i_cmp46_i_conv_process42_b = $unsigned(redist73_i_add44_i_conv_process41_out_primWireOut_2_q[31:31]);

    // concSXSY_uid898_i_cmp46_i_conv_process42(BITJOIN,897)@42
    assign concSXSY_uid898_i_cmp46_i_conv_process42_q = {signX_uid895_i_cmp46_i_conv_process42_b, signY_uid704_i_cmp46_i_1_conv_process87_b};

    // sxLTsy_uid899_i_cmp46_i_conv_process42(LOGICAL,898)@42
    assign sxLTsy_uid899_i_cmp46_i_conv_process42_q = $unsigned(concSXSY_uid898_i_cmp46_i_conv_process42_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid906_i_cmp46_i_conv_process42(LOGICAL,905)@42
    assign rc2_uid906_i_cmp46_i_conv_process42_q = sxLTsy_uid899_i_cmp46_i_conv_process42_q & oneNonZero_uid905_i_cmp46_i_conv_process42_q;

    // expFracX_uid886_i_cmp46_i_conv_process42(BITJOIN,885)@41
    assign expFracX_uid886_i_cmp46_i_conv_process42_q = {exp_x_uid850_i_cmp46_i_conv_process42_b, frac_x_uid851_i_cmp46_i_conv_process42_b};

    // efxGTefy_uid890_i_cmp46_i_conv_process42(COMPARE,889)@41 + 1
    assign efxGTefy_uid890_i_cmp46_i_conv_process42_a = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    assign efxGTefy_uid890_i_cmp46_i_conv_process42_b = {2'b00, expFracX_uid886_i_cmp46_i_conv_process42_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid890_i_cmp46_i_conv_process42_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid890_i_cmp46_i_conv_process42_o <= $unsigned(efxGTefy_uid890_i_cmp46_i_conv_process42_a) - $unsigned(efxGTefy_uid890_i_cmp46_i_conv_process42_b);
        end
    end
    assign efxGTefy_uid890_i_cmp46_i_conv_process42_c[0] = efxGTefy_uid890_i_cmp46_i_conv_process42_o[32];

    // efxLTefy_uid891_i_cmp46_i_conv_process42(COMPARE,890)@41 + 1
    assign efxLTefy_uid891_i_cmp46_i_conv_process42_a = {2'b00, expFracX_uid886_i_cmp46_i_conv_process42_q};
    assign efxLTefy_uid891_i_cmp46_i_conv_process42_b = {2'b00, expFracY_uid696_i_cmp46_i_1_conv_process87_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid891_i_cmp46_i_conv_process42_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid891_i_cmp46_i_conv_process42_o <= $unsigned(efxLTefy_uid891_i_cmp46_i_conv_process42_a) - $unsigned(efxLTefy_uid891_i_cmp46_i_conv_process42_b);
        end
    end
    assign efxLTefy_uid891_i_cmp46_i_conv_process42_c[0] = efxLTefy_uid891_i_cmp46_i_conv_process42_o[32];

    // expFracCompMux_uid902_i_cmp46_i_conv_process42(MUX,901)@42
    assign expFracCompMux_uid902_i_cmp46_i_conv_process42_s = signX_uid895_i_cmp46_i_conv_process42_b;
    always @(expFracCompMux_uid902_i_cmp46_i_conv_process42_s or efxLTefy_uid891_i_cmp46_i_conv_process42_c or efxGTefy_uid890_i_cmp46_i_conv_process42_c)
    begin
        unique case (expFracCompMux_uid902_i_cmp46_i_conv_process42_s)
            1'b0 : expFracCompMux_uid902_i_cmp46_i_conv_process42_q = efxLTefy_uid891_i_cmp46_i_conv_process42_c;
            1'b1 : expFracCompMux_uid902_i_cmp46_i_conv_process42_q = efxGTefy_uid890_i_cmp46_i_conv_process42_c;
            default : expFracCompMux_uid902_i_cmp46_i_conv_process42_q = 1'b0;
        endcase
    end

    // xorSigns_uid900_i_cmp46_i_conv_process42(LOGICAL,899)@42
    assign xorSigns_uid900_i_cmp46_i_conv_process42_q = signX_uid895_i_cmp46_i_conv_process42_b ^ signY_uid704_i_cmp46_i_1_conv_process87_b;

    // sxEQsy_uid901_i_cmp46_i_conv_process42(LOGICAL,900)@42
    assign sxEQsy_uid901_i_cmp46_i_conv_process42_q = ~ (xorSigns_uid900_i_cmp46_i_conv_process42_q);

    // sxEQsyExpFracCompMux_uid907_i_cmp46_i_conv_process42(LOGICAL,906)@42
    assign sxEQsyExpFracCompMux_uid907_i_cmp46_i_conv_process42_q = sxEQsy_uid901_i_cmp46_i_conv_process42_q & expFracCompMux_uid902_i_cmp46_i_conv_process42_q;

    // r_uid908_i_cmp46_i_conv_process42(LOGICAL,907)@42 + 1
    assign r_uid908_i_cmp46_i_conv_process42_qi = sxEQsyExpFracCompMux_uid907_i_cmp46_i_conv_process42_q | rc2_uid906_i_cmp46_i_conv_process42_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid908_i_cmp46_i_conv_process42_delay ( .xin(r_uid908_i_cmp46_i_conv_process42_qi), .xout(r_uid908_i_cmp46_i_conv_process42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid855_i_cmp46_i_conv_process42(LOGICAL,854)@41
    assign fracXIsNotZero_uid855_i_cmp46_i_conv_process42_q = ~ (fracXIsZero_uid854_i_cmp46_i_conv_process42_q);

    // expXIsMax_uid853_i_cmp46_i_conv_process42(LOGICAL,852)@41
    assign expXIsMax_uid853_i_cmp46_i_conv_process42_q = $unsigned(exp_x_uid850_i_cmp46_i_conv_process42_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_x_uid858_i_cmp46_i_conv_process42(LOGICAL,857)@41 + 1
    assign excN_x_uid858_i_cmp46_i_conv_process42_qi = expXIsMax_uid853_i_cmp46_i_conv_process42_q & fracXIsNotZero_uid855_i_cmp46_i_conv_process42_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid858_i_cmp46_i_conv_process42_delay ( .xin(excN_x_uid858_i_cmp46_i_conv_process42_qi), .xout(excN_x_uid858_i_cmp46_i_conv_process42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid881_i_cmp46_i_conv_process42(LOGICAL,880)@42 + 1
    assign oneIsNaN_uid881_i_cmp46_i_conv_process42_qi = excN_x_uid858_i_cmp46_i_conv_process42_q | excN_y_uid683_i_cmp46_i_1_conv_process87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid881_i_cmp46_i_conv_process42_delay ( .xin(oneIsNaN_uid881_i_cmp46_i_conv_process42_qi), .xout(oneIsNaN_uid881_i_cmp46_i_conv_process42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid909_i_cmp46_i_conv_process42(MUX,908)@43
    assign rPostExc_uid909_i_cmp46_i_conv_process42_s = oneIsNaN_uid881_i_cmp46_i_conv_process42_q;
    always @(rPostExc_uid909_i_cmp46_i_conv_process42_s or r_uid908_i_cmp46_i_conv_process42_q or GND_q)
    begin
        unique case (rPostExc_uid909_i_cmp46_i_conv_process42_s)
            1'b0 : rPostExc_uid909_i_cmp46_i_conv_process42_q = r_uid908_i_cmp46_i_conv_process42_q;
            1'b1 : rPostExc_uid909_i_cmp46_i_conv_process42_q = GND_q;
            default : rPostExc_uid909_i_cmp46_i_conv_process42_q = 1'b0;
        endcase
    end

    // valid_fanout_reg16(REG,1182)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist110_sync_together392_aunroll_x_in_i_valid_41_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process43(BLACKBOX,487)@43
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process43 (
        .in_intel_reserved_ffwd_62_0(in_intel_reserved_ffwd_62_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_dest_data_out_62_0(i_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process43_out_dest_data_out_62_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_i_conv_process44(LOGICAL,547)@43
    assign i_or_cond_i_conv_process44_q = i_llvm_fpga_ffwd_dest_i1_cmp45_i135_conv_process43_out_dest_data_out_62_0 & rPostExc_uid909_i_cmp46_i_conv_process42_q;

    // i_spec_store_select_i_conv_process45(MUX,577)@43 + 1
    assign i_spec_store_select_i_conv_process45_s = i_or_cond_i_conv_process44_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_store_select_i_conv_process45_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_store_select_i_conv_process45_s)
                1'b0 : i_spec_store_select_i_conv_process45_q <= redist74_i_add44_i_conv_process41_out_primWireOut_3_q;
                1'b1 : i_spec_store_select_i_conv_process45_q <= c_float_0_000000e_00316_q;
                default : i_spec_store_select_i_conv_process45_q <= 32'b0;
            endcase
        end
    end

    // redist27_i_spec_store_select_i_conv_process45_q_2(DELAY,1773)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_spec_store_select_i_conv_process45_q_2_q <= '0;
        end
        else
        begin
            redist27_i_spec_store_select_i_conv_process45_q_2_q <= $unsigned(i_spec_store_select_i_conv_process45_q);
        end
    end

    // redist28_i_spec_store_select_i_conv_process45_q_3(DELAY,1774)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_spec_store_select_i_conv_process45_q_3_q <= '0;
        end
        else
        begin
            redist28_i_spec_store_select_i_conv_process45_q_3_q <= $unsigned(redist27_i_spec_store_select_i_conv_process45_q_2_q);
        end
    end

    // frac_y_uid1124_i_cmp50_i_conv_process46(BITSELECT,1123)@44
    assign frac_y_uid1124_i_cmp50_i_conv_process46_b = i_spec_store_select_i_conv_process45_q[22:0];

    // fracXIsZero_uid1127_i_cmp50_i_conv_process46(LOGICAL,1126)@44
    assign fracXIsZero_uid1127_i_cmp50_i_conv_process46_q = $unsigned(i_and_i63_i_1_conv_process96_vt_const_31_q == frac_y_uid1124_i_cmp50_i_conv_process46_b ? 1'b1 : 1'b0);

    // exp_y_uid1123_i_cmp50_i_conv_process46(BITSELECT,1122)@44
    assign exp_y_uid1123_i_cmp50_i_conv_process46_b = i_spec_store_select_i_conv_process45_q[30:23];

    // expXIsZero_uid1125_i_cmp50_i_conv_process46(LOGICAL,1124)@44
    assign expXIsZero_uid1125_i_cmp50_i_conv_process46_q = $unsigned(exp_y_uid1123_i_cmp50_i_conv_process46_b == cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excZ_y_uid1129_i_cmp50_i_conv_process46(LOGICAL,1128)@44 + 1
    assign excZ_y_uid1129_i_cmp50_i_conv_process46_qi = expXIsZero_uid1125_i_cmp50_i_conv_process46_q & fracXIsZero_uid1127_i_cmp50_i_conv_process46_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid1129_i_cmp50_i_conv_process46_delay ( .xin(excZ_y_uid1129_i_cmp50_i_conv_process46_qi), .xout(excZ_y_uid1129_i_cmp50_i_conv_process46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // invExcYZ_uid1159_i_cmp50_i_conv_process46(LOGICAL,1158)@45
    assign invExcYZ_uid1159_i_cmp50_i_conv_process46_q = ~ (excZ_y_uid1129_i_cmp50_i_conv_process46_q);

    // oneNonZero_uid1161_i_cmp50_i_conv_process46(LOGICAL,1160)@45
    assign oneNonZero_uid1161_i_cmp50_i_conv_process46_q = invExcXZ_uid968_i_cmp50_i_1_conv_process91_q | invExcYZ_uid1159_i_cmp50_i_conv_process46_q;

    // signY_uid1152_i_cmp50_i_conv_process46(BITSELECT,1151)@45
    assign signY_uid1152_i_cmp50_i_conv_process46_b = $unsigned(redist27_i_spec_store_select_i_conv_process45_q_2_q[31:31]);

    // concSXSY_uid1154_i_cmp50_i_conv_process46(BITJOIN,1153)@45
    assign concSXSY_uid1154_i_cmp50_i_conv_process46_q = {redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q, signY_uid1152_i_cmp50_i_conv_process46_b};

    // sxLTsy_uid1155_i_cmp50_i_conv_process46(LOGICAL,1154)@45
    assign sxLTsy_uid1155_i_cmp50_i_conv_process46_q = $unsigned(concSXSY_uid1154_i_cmp50_i_conv_process46_q == i_add31_i_2_conv_process27_vt_const_1_q ? 1'b1 : 1'b0);

    // rc2_uid1162_i_cmp50_i_conv_process46(LOGICAL,1161)@45
    assign rc2_uid1162_i_cmp50_i_conv_process46_q = sxLTsy_uid1155_i_cmp50_i_conv_process46_q & oneNonZero_uid1161_i_cmp50_i_conv_process46_q;

    // expFracY_uid1144_i_cmp50_i_conv_process46(BITJOIN,1143)@44
    assign expFracY_uid1144_i_cmp50_i_conv_process46_q = {exp_y_uid1123_i_cmp50_i_conv_process46_b, frac_y_uid1124_i_cmp50_i_conv_process46_b};

    // efxGTefy_uid1146_i_cmp50_i_conv_process46(COMPARE,1145)@44
    assign efxGTefy_uid1146_i_cmp50_i_conv_process46_a = {2'b00, expFracY_uid1144_i_cmp50_i_conv_process46_q};
    assign efxGTefy_uid1146_i_cmp50_i_conv_process46_b = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxGTefy_uid1146_i_cmp50_i_conv_process46_o = $unsigned(efxGTefy_uid1146_i_cmp50_i_conv_process46_a) - $unsigned(efxGTefy_uid1146_i_cmp50_i_conv_process46_b);
    assign efxGTefy_uid1146_i_cmp50_i_conv_process46_c[0] = efxGTefy_uid1146_i_cmp50_i_conv_process46_o[32];

    // efxLTefy_uid1147_i_cmp50_i_conv_process46(COMPARE,1146)@44
    assign efxLTefy_uid1147_i_cmp50_i_conv_process46_a = {2'b00, expFracX_uid950_i_cmp50_i_1_conv_process91_q};
    assign efxLTefy_uid1147_i_cmp50_i_conv_process46_b = {2'b00, expFracY_uid1144_i_cmp50_i_conv_process46_q};
    assign efxLTefy_uid1147_i_cmp50_i_conv_process46_o = $unsigned(efxLTefy_uid1147_i_cmp50_i_conv_process46_a) - $unsigned(efxLTefy_uid1147_i_cmp50_i_conv_process46_b);
    assign efxLTefy_uid1147_i_cmp50_i_conv_process46_c[0] = efxLTefy_uid1147_i_cmp50_i_conv_process46_o[32];

    // expFracCompMux_uid1158_i_cmp50_i_conv_process46(MUX,1157)@44 + 1
    assign expFracCompMux_uid1158_i_cmp50_i_conv_process46_s = signX_uid959_i_cmp50_i_1_conv_process91_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracCompMux_uid1158_i_cmp50_i_conv_process46_q <= 1'b0;
        end
        else
        begin
            unique case (expFracCompMux_uid1158_i_cmp50_i_conv_process46_s)
                1'b0 : expFracCompMux_uid1158_i_cmp50_i_conv_process46_q <= efxLTefy_uid1147_i_cmp50_i_conv_process46_c;
                1'b1 : expFracCompMux_uid1158_i_cmp50_i_conv_process46_q <= efxGTefy_uid1146_i_cmp50_i_conv_process46_c;
                default : expFracCompMux_uid1158_i_cmp50_i_conv_process46_q <= 1'b0;
            endcase
        end
    end

    // xorSigns_uid1156_i_cmp50_i_conv_process46(LOGICAL,1155)@45
    assign xorSigns_uid1156_i_cmp50_i_conv_process46_q = redist25_signX_uid959_i_cmp50_i_1_conv_process91_b_1_q ^ signY_uid1152_i_cmp50_i_conv_process46_b;

    // sxEQsy_uid1157_i_cmp50_i_conv_process46(LOGICAL,1156)@45
    assign sxEQsy_uid1157_i_cmp50_i_conv_process46_q = ~ (xorSigns_uid1156_i_cmp50_i_conv_process46_q);

    // sxEQsyExpFracCompMux_uid1163_i_cmp50_i_conv_process46(LOGICAL,1162)@45
    assign sxEQsyExpFracCompMux_uid1163_i_cmp50_i_conv_process46_q = sxEQsy_uid1157_i_cmp50_i_conv_process46_q & expFracCompMux_uid1158_i_cmp50_i_conv_process46_q;

    // r_uid1164_i_cmp50_i_conv_process46(LOGICAL,1163)@45 + 1
    assign r_uid1164_i_cmp50_i_conv_process46_qi = sxEQsyExpFracCompMux_uid1163_i_cmp50_i_conv_process46_q | rc2_uid1162_i_cmp50_i_conv_process46_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid1164_i_cmp50_i_conv_process46_delay ( .xin(r_uid1164_i_cmp50_i_conv_process46_qi), .xout(r_uid1164_i_cmp50_i_conv_process46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid1128_i_cmp50_i_conv_process46(LOGICAL,1127)@44
    assign fracXIsNotZero_uid1128_i_cmp50_i_conv_process46_q = ~ (fracXIsZero_uid1127_i_cmp50_i_conv_process46_q);

    // expXIsMax_uid1126_i_cmp50_i_conv_process46(LOGICAL,1125)@44
    assign expXIsMax_uid1126_i_cmp50_i_conv_process46_q = $unsigned(exp_y_uid1123_i_cmp50_i_conv_process46_b == cstAllOWE_uid655_i_cmp46_i_1_conv_process87_q ? 1'b1 : 1'b0);

    // excN_y_uid1131_i_cmp50_i_conv_process46(LOGICAL,1130)@44 + 1
    assign excN_y_uid1131_i_cmp50_i_conv_process46_qi = expXIsMax_uid1126_i_cmp50_i_conv_process46_q & fracXIsNotZero_uid1128_i_cmp50_i_conv_process46_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid1131_i_cmp50_i_conv_process46_delay ( .xin(excN_y_uid1131_i_cmp50_i_conv_process46_qi), .xout(excN_y_uid1131_i_cmp50_i_conv_process46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // oneIsNaN_uid1137_i_cmp50_i_conv_process46(LOGICAL,1136)@45 + 1
    assign oneIsNaN_uid1137_i_cmp50_i_conv_process46_qi = excN_x_uid922_i_cmp50_i_1_conv_process91_q | excN_y_uid1131_i_cmp50_i_conv_process46_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid1137_i_cmp50_i_conv_process46_delay ( .xin(oneIsNaN_uid1137_i_cmp50_i_conv_process46_qi), .xout(oneIsNaN_uid1137_i_cmp50_i_conv_process46_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rPostExc_uid1165_i_cmp50_i_conv_process46(MUX,1164)@46
    assign rPostExc_uid1165_i_cmp50_i_conv_process46_s = oneIsNaN_uid1137_i_cmp50_i_conv_process46_q;
    always @(rPostExc_uid1165_i_cmp50_i_conv_process46_s or r_uid1164_i_cmp50_i_conv_process46_q or GND_q)
    begin
        unique case (rPostExc_uid1165_i_cmp50_i_conv_process46_s)
            1'b0 : rPostExc_uid1165_i_cmp50_i_conv_process46_q = r_uid1164_i_cmp50_i_conv_process46_q;
            1'b1 : rPostExc_uid1165_i_cmp50_i_conv_process46_q = GND_q;
            default : rPostExc_uid1165_i_cmp50_i_conv_process46_q = 1'b0;
        endcase
    end

    // valid_fanout_reg17(REG,1183)@45 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist111_sync_together392_aunroll_x_in_i_valid_44_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process47(BLACKBOX,491)@46
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process0 thei_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process47 (
        .in_intel_reserved_ffwd_63_0(in_intel_reserved_ffwd_63_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_dest_data_out_63_0(i_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process47_out_dest_data_out_63_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or_cond_conv_process48(LOGICAL,543)@46
    assign i_or_cond_conv_process48_q = i_llvm_fpga_ffwd_dest_i1_cmp48_i139_conv_process47_out_dest_data_out_63_0 & rPostExc_uid1165_i_cmp50_i_conv_process46_q;

    // i_unnamed_conv_process49(MUX,608)@46
    assign i_unnamed_conv_process49_s = i_or_cond_conv_process48_q;
    always @(i_unnamed_conv_process49_s or redist28_i_spec_store_select_i_conv_process45_q_3_q or redist57_i_div50_conv_process21_out_primWireOut_3_q)
    begin
        unique case (i_unnamed_conv_process49_s)
            1'b0 : i_unnamed_conv_process49_q = redist28_i_spec_store_select_i_conv_process45_q_3_q;
            1'b1 : i_unnamed_conv_process49_q = redist57_i_div50_conv_process21_out_primWireOut_3_q;
            default : i_unnamed_conv_process49_q = 32'b0;
        endcase
    end

    // i_and2_i_i_conv_process53(LOGICAL,384)@46
    assign i_and2_i_i_conv_process53_q = i_unnamed_conv_process49_q & c_i32_8388607319_q;

    // i_and2_i_i_conv_process53_vt_select_22(BITSELECT,387)@46
    assign i_and2_i_i_conv_process53_vt_select_22_b = i_and2_i_i_conv_process53_q[22:0];

    // redist68_i_and2_i_i_conv_process53_vt_select_22_b_1(DELAY,1814)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist68_i_and2_i_i_conv_process53_vt_select_22_b_1_q <= '0;
        end
        else
        begin
            redist68_i_and2_i_i_conv_process53_vt_select_22_b_1_q <= $unsigned(i_and2_i_i_conv_process53_vt_select_22_b);
        end
    end

    // i_and2_i_i_conv_process53_vt_join(BITJOIN,386)@47
    assign i_and2_i_i_conv_process53_vt_join_q = {i_and2_i_i_1_conv_process98_vt_const_31_q, redist68_i_and2_i_i_conv_process53_vt_select_22_b_1_q};

    // rightShiftStage3Idx1Rng16_uid1353_i_and_i63_i_conv_process0_shift_x(BITSELECT,1352)@46
    assign rightShiftStage3Idx1Rng16_uid1353_i_and_i63_i_conv_process0_shift_x_b = rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q[31:16];

    // rightShiftStage3Idx1_uid1355_i_and_i63_i_conv_process0_shift_x(BITJOIN,1354)@46
    assign rightShiftStage3Idx1_uid1355_i_and_i63_i_conv_process0_shift_x_q = {rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q, rightShiftStage3Idx1Rng16_uid1353_i_and_i63_i_conv_process0_shift_x_b};

    // rightShiftStage2Idx1Rng4_uid1348_i_and_i63_i_conv_process0_shift_x(BITSELECT,1347)@46
    assign rightShiftStage2Idx1Rng4_uid1348_i_and_i63_i_conv_process0_shift_x_b = rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q[31:4];

    // rightShiftStage2Idx1_uid1350_i_and_i63_i_conv_process0_shift_x(BITJOIN,1349)@46
    assign rightShiftStage2Idx1_uid1350_i_and_i63_i_conv_process0_shift_x_q = {i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q, rightShiftStage2Idx1Rng4_uid1348_i_and_i63_i_conv_process0_shift_x_b};

    // rightShiftStage1Idx1Rng2_uid1343_i_and_i63_i_conv_process0_shift_x(BITSELECT,1342)@46
    assign rightShiftStage1Idx1Rng2_uid1343_i_and_i63_i_conv_process0_shift_x_b = rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q[31:2];

    // rightShiftStage1Idx1_uid1345_i_and_i63_i_conv_process0_shift_x(BITJOIN,1344)@46
    assign rightShiftStage1Idx1_uid1345_i_and_i63_i_conv_process0_shift_x_q = {i_temp_i_sroa_0_0_sroa_idx_conv_process0_c_i2_01_x_q, rightShiftStage1Idx1Rng2_uid1343_i_and_i63_i_conv_process0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid1338_i_and_i63_i_conv_process0_shift_x(BITSELECT,1337)@46
    assign rightShiftStage0Idx1Rng1_uid1338_i_and_i63_i_conv_process0_shift_x_b = i_unnamed_conv_process49_q[31:1];

    // rightShiftStage0Idx1_uid1340_i_and_i63_i_conv_process0_shift_x(BITJOIN,1339)@46
    assign rightShiftStage0Idx1_uid1340_i_and_i63_i_conv_process0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid1338_i_and_i63_i_conv_process0_shift_x_b};

    // rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x(MUX,1341)@46
    assign rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_s or i_unnamed_conv_process49_q or rightShiftStage0Idx1_uid1340_i_and_i63_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q = i_unnamed_conv_process49_q;
            1'b1 : rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1340_i_and_i63_i_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x(MUX,1346)@46
    assign rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_s or rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1345_i_and_i63_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage0_uid1342_i_and_i63_i_conv_process0_shift_x_q;
            1'b1 : rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1345_i_and_i63_i_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x(MUX,1351)@46
    assign rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_s or rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1350_i_and_i63_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage1_uid1347_i_and_i63_i_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1350_i_and_i63_i_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x(MUX,1356)@46
    assign rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_s or rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q or rightShiftStage3Idx1_uid1355_i_and_i63_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage2_uid1352_i_and_i63_i_conv_process0_shift_x_q;
            1'b1 : rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_q = rightShiftStage3Idx1_uid1355_i_and_i63_i_conv_process0_shift_x_q;
            default : rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and_i63_i_conv_process51_vt_select_8(BITSELECT,415)@46
    assign i_and_i63_i_conv_process51_vt_select_8_b = rightShiftStage3_uid1357_i_and_i63_i_conv_process0_shift_x_q[8:0];

    // i_and_i63_i_conv_process51_vt_join(BITJOIN,414)@46
    assign i_and_i63_i_conv_process51_vt_join_q = {i_and_i63_i_1_conv_process96_vt_const_31_q, i_and_i63_i_conv_process51_vt_select_8_b};

    // i_shr1_i_i_conv_process52_BitSelect_for_a(BITSELECT,1735)@46
    assign i_shr1_i_i_conv_process52_BitSelect_for_a_b = i_and_i63_i_conv_process51_vt_join_q[7:0];

    // redist17_i_shr1_i_i_conv_process52_BitSelect_for_a_b_1(DELAY,1763)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_shr1_i_i_conv_process52_BitSelect_for_a_b_1_q <= '0;
        end
        else
        begin
            redist17_i_shr1_i_i_conv_process52_BitSelect_for_a_b_1_q <= $unsigned(i_shr1_i_i_conv_process52_BitSelect_for_a_b);
        end
    end

    // i_shr1_i_i_conv_process52_join(BITJOIN,1736)@47
    assign i_shr1_i_i_conv_process52_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, redist17_i_shr1_i_i_conv_process52_BitSelect_for_a_b_1_q};

    // i_shr1_i_i_conv_process52_vt_select_7(BITSELECT,569)@47
    assign i_shr1_i_i_conv_process52_vt_select_7_b = i_shr1_i_i_conv_process52_join_q[7:0];

    // i_shr1_i_i_conv_process52_vt_join(BITJOIN,568)@47
    assign i_shr1_i_i_conv_process52_vt_join_q = {i_shr1_i_i_1_conv_process97_vt_const_31_q, i_shr1_i_i_conv_process52_vt_select_7_b};

    // i_sub7_i_i_conv_process58(SUB,585)@47
    assign i_sub7_i_i_conv_process58_a = {1'b0, c_i32_149323_q};
    assign i_sub7_i_i_conv_process58_b = {1'b0, i_shr1_i_i_conv_process52_vt_join_q};
    assign i_sub7_i_i_conv_process58_o = $unsigned(i_sub7_i_i_conv_process58_a) - $unsigned(i_sub7_i_i_conv_process58_b);
    assign i_sub7_i_i_conv_process58_q = i_sub7_i_i_conv_process58_o[32:0];

    // bgTrunc_i_sub7_i_i_conv_process58_sel_x(BITSELECT,16)@47
    assign bgTrunc_i_sub7_i_i_conv_process58_sel_x_b = $unsigned(i_sub7_i_i_conv_process58_q[31:0]);

    // i_shr8_i_i_conv_process0_shift_narrow_x(BITSELECT,171)@47
    assign i_shr8_i_i_conv_process0_shift_narrow_x_b = bgTrunc_i_sub7_i_i_conv_process58_sel_x_b[4:0];

    // rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select(BITSELECT,1744)@47
    assign rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_b = i_shr8_i_i_conv_process0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c = i_shr8_i_i_conv_process0_shift_narrow_x_b[3:2];
    assign rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d = i_shr8_i_i_conv_process0_shift_narrow_x_b[4:4];

    // rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x(MUX,1632)@47 + 1
    assign rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_s = rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_s)
                2'b00 : rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= i_and2_i_i_conv_process53_vt_join_q;
                2'b01 : rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= rightShiftStage0Idx1_uid1625_i_shr8_i_i_conv_process0_shift_x_q;
                2'b10 : rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= rightShiftStage0Idx2_uid1628_i_shr8_i_i_conv_process0_shift_x_q;
                2'b11 : rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= rightShiftStage0Idx3_uid1631_i_shr8_i_i_conv_process0_shift_x_q;
                default : rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist1_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1747)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x(MUX,1643)@48
    assign rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_s = redist1_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_s or rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q or rightShiftStage1Idx1_uid1636_i_shr8_i_i_conv_process0_shift_x_q or rightShiftStage1Idx2_uid1639_i_shr8_i_i_conv_process0_shift_x_q or rightShiftStage1Idx3_uid1642_i_shr8_i_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_s)
            2'b00 : rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage0_uid1633_i_shr8_i_i_conv_process0_shift_x_q;
            2'b01 : rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage1Idx1_uid1636_i_shr8_i_i_conv_process0_shift_x_q;
            2'b10 : rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage1Idx2_uid1639_i_shr8_i_i_conv_process0_shift_x_q;
            2'b11 : rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage1Idx3_uid1642_i_shr8_i_i_conv_process0_shift_x_q;
            default : rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist2_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1748)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist2_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x(MUX,1648)@48
    assign rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_s = redist2_rightShiftStageSel0Dto0_uid1632_i_shr8_i_i_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_s or rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q or rightShiftStage2Idx1_uid1647_i_shr8_i_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage1_uid1644_i_shr8_i_i_conv_process0_shift_x_q;
            1'b1 : rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q = rightShiftStage2Idx1_uid1647_i_shr8_i_i_conv_process0_shift_x_q;
            default : rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_and9_i_i_conv_process60(LOGICAL,400)@48
    assign i_and9_i_i_conv_process60_q = rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q & c_i32_1314_q;

    // i_and9_i_i_conv_process60_vt_select_0(BITSELECT,403)@48
    assign i_and9_i_i_conv_process60_vt_select_0_b = i_and9_i_i_conv_process60_q[0:0];

    // redist64_i_and9_i_i_conv_process60_vt_select_0_b_1(DELAY,1810)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist64_i_and9_i_i_conv_process60_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist64_i_and9_i_i_conv_process60_vt_select_0_b_1_q <= $unsigned(i_and9_i_i_conv_process60_vt_select_0_b);
        end
    end

    // i_and9_i_i_conv_process60_vt_join(BITJOIN,402)@49
    assign i_and9_i_i_conv_process60_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist64_i_and9_i_i_conv_process60_vt_select_0_b_1_q};

    // leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x(BITSELECT,1497)@48
    assign leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_in = leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_b = leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid1499_i_shl_i_i_conv_process0_shift_x(BITJOIN,1498)@48
    assign leftShiftStage2Idx1_uid1499_i_shl_i_i_conv_process0_shift_x_q = {leftShiftStage2Idx1Rng16_uid1498_i_shl_i_i_conv_process0_shift_x_b, rightShiftStage3Idx1Pad16_uid1285_i_and_i63_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x(BITSELECT,1492)@48
    assign leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_in = leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_b = leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid1494_i_shl_i_i_conv_process0_shift_x(BITJOIN,1493)@48
    assign leftShiftStage1Idx3_uid1494_i_shl_i_i_conv_process0_shift_x_q = {leftShiftStage1Idx3Rng12_uid1493_i_shl_i_i_conv_process0_shift_x_b, leftShiftStage1Idx3Pad12_uid1402_i_shl_i_i_1_conv_process0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x(BITSELECT,1489)@48
    assign leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_in = leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_b = leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid1491_i_shl_i_i_conv_process0_shift_x(BITJOIN,1490)@48
    assign leftShiftStage1Idx2_uid1491_i_shl_i_i_conv_process0_shift_x_q = {leftShiftStage1Idx2Rng8_uid1490_i_shl_i_i_conv_process0_shift_x_b, cstAllZWE_uid657_i_cmp46_i_1_conv_process87_q};

    // leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x(BITSELECT,1486)@48
    assign leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_in = leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_b = leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid1488_i_shl_i_i_conv_process0_shift_x(BITJOIN,1487)@48
    assign leftShiftStage1Idx1_uid1488_i_shl_i_i_conv_process0_shift_x_q = {leftShiftStage1Idx1Rng4_uid1487_i_shl_i_i_conv_process0_shift_x_b, i_memcoalesce_bitcast_conv_process_fpgaunique_55_conv_process29_vt_const_3_q};

    // i_sub_i_i_conv_process57(ADD,589)@47
    assign i_sub_i_i_conv_process57_a = {1'b0, i_shr1_i_i_conv_process52_vt_join_q};
    assign i_sub_i_i_conv_process57_b = {1'b0, c_i32_127322_q};
    assign i_sub_i_i_conv_process57_o = $unsigned(i_sub_i_i_conv_process57_a) + $unsigned(i_sub_i_i_conv_process57_b);
    assign i_sub_i_i_conv_process57_q = i_sub_i_i_conv_process57_o[32:0];

    // bgTrunc_i_sub_i_i_conv_process57_sel_x(BITSELECT,20)@47
    assign bgTrunc_i_sub_i_i_conv_process57_sel_x_b = i_sub_i_i_conv_process57_q[31:0];

    // i_shl_i_i_conv_process0_shift_narrow_x(BITSELECT,131)@47
    assign i_shl_i_i_conv_process0_shift_narrow_x_b = bgTrunc_i_sub_i_i_conv_process57_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select(BITSELECT,1740)@47
    assign leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_b = i_shl_i_i_conv_process0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c = i_shl_i_i_conv_process0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d = i_shl_i_i_conv_process0_shift_narrow_x_b[4:4];

    // leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x(MUX,1484)@47 + 1
    assign leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_s = leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_s)
                2'b00 : leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= c_i32_1314_q;
                2'b01 : leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= leftShiftStage0Idx1_uid1387_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b10 : leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= leftShiftStage0Idx2_uid1390_i_shl_i_i_1_conv_process0_shift_x_q;
                2'b11 : leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= leftShiftStage0Idx3_uid1393_i_shl_i_i_1_conv_process0_shift_x_q;
                default : leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist9_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c_1(DELAY,1755)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist9_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c);
        end
    end

    // leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x(MUX,1495)@48
    assign leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_s = redist9_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_c_1_q;
    always @(leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_s or leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q or leftShiftStage1Idx1_uid1488_i_shl_i_i_conv_process0_shift_x_q or leftShiftStage1Idx2_uid1491_i_shl_i_i_conv_process0_shift_x_q or leftShiftStage1Idx3_uid1494_i_shl_i_i_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_s)
            2'b00 : leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage0_uid1485_i_shl_i_i_conv_process0_shift_x_q;
            2'b01 : leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage1Idx1_uid1488_i_shl_i_i_conv_process0_shift_x_q;
            2'b10 : leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage1Idx2_uid1491_i_shl_i_i_conv_process0_shift_x_q;
            2'b11 : leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage1Idx3_uid1494_i_shl_i_i_conv_process0_shift_x_q;
            default : leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // redist10_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d_1(DELAY,1756)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist10_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x(MUX,1500)@48
    assign leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_s = redist10_leftShiftStageSel0Dto0_uid1484_i_shl_i_i_conv_process0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_s or leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q or leftShiftStage2Idx1_uid1499_i_shl_i_i_conv_process0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_s)
            1'b0 : leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage1_uid1496_i_shl_i_i_conv_process0_shift_x_q;
            1'b1 : leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_q = leftShiftStage2Idx1_uid1499_i_shl_i_i_conv_process0_shift_x_q;
            default : leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // xMSB_uid1524_i_shr12_i_i_conv_process0_shift_x(BITSELECT,1523)@48
    assign xMSB_uid1524_i_shr12_i_i_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q[31:31]);

    // rightShiftStage0Idx1Rng1_uid1526_i_shr12_i_i_conv_process0_shift_x(BITSELECT,1525)@48
    assign rightShiftStage0Idx1Rng1_uid1526_i_shr12_i_i_conv_process0_shift_x_b = $unsigned(rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q[31:1]);

    // rightShiftStage0Idx1_uid1527_i_shr12_i_i_conv_process0_shift_x(BITJOIN,1526)@48
    assign rightShiftStage0Idx1_uid1527_i_shr12_i_i_conv_process0_shift_x_q = {xMSB_uid1524_i_shr12_i_i_conv_process0_shift_x_b, rightShiftStage0Idx1Rng1_uid1526_i_shr12_i_i_conv_process0_shift_x_b};

    // rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x(MUX,1528)@48
    assign rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_s or rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q or rightShiftStage0Idx1_uid1527_i_shr12_i_i_conv_process0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_s)
            1'b0 : rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_q = rightShiftStage2_uid1649_i_shr8_i_i_conv_process0_shift_x_q;
            1'b1 : rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_q = rightShiftStage0Idx1_uid1527_i_shr12_i_i_conv_process0_shift_x_q;
            default : rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_q = 32'b0;
        endcase
    end

    // i_or_i_i_conv_process63(LOGICAL,552)@48 + 1
    assign i_or_i_i_conv_process63_qi = rightShiftStage0_uid1529_i_shr12_i_i_conv_process0_shift_x_q | leftShiftStage2_uid1501_i_shl_i_i_conv_process0_shift_x_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or_i_i_conv_process63_delay ( .xin(i_or_i_i_conv_process63_qi), .xout(i_or_i_i_conv_process63_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add13_i_i_conv_process64(ADD,355)@49
    assign i_add13_i_i_conv_process64_a = {1'b0, i_or_i_i_conv_process63_q};
    assign i_add13_i_i_conv_process64_b = {1'b0, i_and9_i_i_conv_process60_vt_join_q};
    assign i_add13_i_i_conv_process64_o = $unsigned(i_add13_i_i_conv_process64_a) + $unsigned(i_add13_i_i_conv_process64_b);
    assign i_add13_i_i_conv_process64_q = i_add13_i_i_conv_process64_o[32:0];

    // bgTrunc_i_add13_i_i_conv_process64_sel_x(BITSELECT,5)@49
    assign bgTrunc_i_add13_i_i_conv_process64_sel_x_b = i_add13_i_i_conv_process64_q[31:0];

    // i_cmp_i64_i_conv_process54(LOGICAL,438)@47
    assign i_cmp_i64_i_conv_process54_q = $unsigned(i_shr1_i_i_conv_process52_vt_join_q == c_i32_126320_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_49_conv_process65_sel_x(BITSELECT,66)@47
    assign i_acl_49_conv_process65_sel_x_b = {31'b0000000000000000000000000000000, i_cmp_i64_i_conv_process54_q[0:0]};

    // i_acl_49_conv_process65_vt_select_0(BITSELECT,331)@47
    assign i_acl_49_conv_process65_vt_select_0_b = i_acl_49_conv_process65_sel_x_b[0:0];

    // redist88_i_acl_49_conv_process65_vt_select_0_b_2(DELAY,1834)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist88_i_acl_49_conv_process65_vt_select_0_b_2_delay_0 <= '0;
            redist88_i_acl_49_conv_process65_vt_select_0_b_2_q <= '0;
        end
        else
        begin
            redist88_i_acl_49_conv_process65_vt_select_0_b_2_delay_0 <= $unsigned(i_acl_49_conv_process65_vt_select_0_b);
            redist88_i_acl_49_conv_process65_vt_select_0_b_2_q <= redist88_i_acl_49_conv_process65_vt_select_0_b_2_delay_0;
        end
    end

    // i_acl_49_conv_process65_vt_join(BITJOIN,330)@49
    assign i_acl_49_conv_process65_vt_join_q = {i_acl_49_conv_process65_vt_const_31_q, redist88_i_acl_49_conv_process65_vt_select_0_b_2_q};

    // i_cmp3_i_i_conv_process56(COMPARE,426)@47
    assign i_cmp3_i_i_conv_process56_a = {2'b00, c_i32_125321_q};
    assign i_cmp3_i_i_conv_process56_b = {2'b00, i_shr1_i_i_conv_process52_vt_join_q};
    assign i_cmp3_i_i_conv_process56_o = $unsigned(i_cmp3_i_i_conv_process56_a) - $unsigned(i_cmp3_i_i_conv_process56_b);
    assign i_cmp3_i_i_conv_process56_c[0] = i_cmp3_i_i_conv_process56_o[33];

    // i_acl_50_conv_process66(LOGICAL,332)@47 + 1
    assign i_acl_50_conv_process66_qi = i_cmp_i64_i_conv_process54_q ^ i_cmp3_i_i_conv_process56_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_50_conv_process66_delay ( .xin(i_acl_50_conv_process66_qi), .xout(i_acl_50_conv_process66_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist87_i_acl_50_conv_process66_q_2(DELAY,1833)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist87_i_acl_50_conv_process66_q_2_q <= '0;
        end
        else
        begin
            redist87_i_acl_50_conv_process66_q_2_q <= $unsigned(i_acl_50_conv_process66_q);
        end
    end

    // i_acl_51_conv_process67(MUX,333)@49 + 1
    assign i_acl_51_conv_process67_s = redist87_i_acl_50_conv_process66_q_2_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_51_conv_process67_q <= 32'b0;
        end
        else
        begin
            unique case (i_acl_51_conv_process67_s)
                1'b0 : i_acl_51_conv_process67_q <= i_acl_49_conv_process65_vt_join_q;
                1'b1 : i_acl_51_conv_process67_q <= bgTrunc_i_add13_i_i_conv_process64_sel_x_b;
                default : i_acl_51_conv_process67_q <= 32'b0;
            endcase
        end
    end

    // i_cmp16_i_i_conv_process68_cmp_sign(LOGICAL,1725)@46 + 1
    assign i_cmp16_i_i_conv_process68_cmp_sign_qi = $unsigned(i_unnamed_conv_process49_q[31:31]);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp16_i_i_conv_process68_cmp_sign_delay ( .xin(i_cmp16_i_i_conv_process68_cmp_sign_qi), .xout(i_cmp16_i_i_conv_process68_cmp_sign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4(DELAY,1767)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_0 <= '0;
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_1 <= '0;
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_q <= '0;
        end
        else
        begin
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_0 <= $unsigned(i_cmp16_i_i_conv_process68_cmp_sign_q);
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_1 <= redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_0;
            redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_q <= redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_delay_1;
        end
    end

    // i_spec_select188_conv_process71(MUX,573)@50 + 1
    assign i_spec_select188_conv_process71_s = redist21_i_cmp16_i_i_conv_process68_cmp_sign_q_4_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_spec_select188_conv_process71_q <= 32'b0;
        end
        else
        begin
            unique case (i_spec_select188_conv_process71_s)
                1'b0 : i_spec_select188_conv_process71_q <= i_acl_51_conv_process67_q;
                1'b1 : i_spec_select188_conv_process71_q <= bgTrunc_i_sub18_i_i_conv_process70_sel_x_b;
                default : i_spec_select188_conv_process71_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process72(COMPARE,610)@51
    assign i_unnamed_conv_process72_a = $unsigned({{2{c_i32_127322_recast_x_q[31]}}, c_i32_127322_recast_x_q});
    assign i_unnamed_conv_process72_b = $unsigned({{2{i_spec_select188_conv_process71_q[31]}}, i_spec_select188_conv_process71_q});
    assign i_unnamed_conv_process72_o = $unsigned($signed(i_unnamed_conv_process72_a) - $signed(i_unnamed_conv_process72_b));
    assign i_unnamed_conv_process72_c[0] = i_unnamed_conv_process72_o[33];

    // i_unnamed_conv_process74(MUX,611)@51 + 1
    assign i_unnamed_conv_process74_s = i_unnamed_conv_process72_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_conv_process74_q <= 32'b0;
        end
        else
        begin
            unique case (i_unnamed_conv_process74_s)
                1'b0 : i_unnamed_conv_process74_q <= c_i32_127322_q;
                1'b1 : i_unnamed_conv_process74_q <= i_spec_select188_conv_process71_q;
                default : i_unnamed_conv_process74_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_conv_process75(COMPARE,612)@52
    assign i_unnamed_conv_process75_a = $unsigned({{2{i_unnamed_conv_process74_q[31]}}, i_unnamed_conv_process74_q});
    assign i_unnamed_conv_process75_b = $unsigned({{2{c_i32_127324_recast_x_q[31]}}, c_i32_127324_recast_x_q});
    assign i_unnamed_conv_process75_o = $unsigned($signed(i_unnamed_conv_process75_a) - $signed(i_unnamed_conv_process75_b));
    assign i_unnamed_conv_process75_c[0] = i_unnamed_conv_process75_o[33];

    // i_unnamed_conv_process77(MUX,613)@52
    assign i_unnamed_conv_process77_s = i_unnamed_conv_process75_c;
    always @(i_unnamed_conv_process77_s or c_i32_127324_recast_x_q or i_unnamed_conv_process74_q)
    begin
        unique case (i_unnamed_conv_process77_s)
            1'b0 : i_unnamed_conv_process77_q = c_i32_127324_recast_x_q;
            1'b1 : i_unnamed_conv_process77_q = i_unnamed_conv_process74_q;
            default : i_unnamed_conv_process77_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,97)@52
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_2214_q, i_unnamed_conv_process212_q, i_unnamed_conv_process167_q, i_unnamed_conv_process122_q, i_unnamed_conv_process77_q};

    // i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x(CHOOSEBITS,96)@52
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[103:103], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[102:102], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[101:101], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[100:100], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[99:99], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[98:98], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[97:97], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[96:96], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_a[0:0]};

    // redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1(DELAY,1864)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1_q <= '0;
        end
        else
        begin
            redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1_q <= $unsigned(i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q);
        end
    end

    // valid_fanout_reg36(REG,1202)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,1203)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217(BLACKBOX,513)@2
    // out out_feedback_out_95@20000000
    // out out_feedback_valid_out_95@20000000
    cnn_top_i_llvm_fpga_push_i1_or_cond189297_push95_conv_process0 thei_llvm_fpga_push_i1_or_cond189297_push95_conv_process217 (
        .in_data_in(i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out),
        .in_feedback_stall_in_95(i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_feedback_stall_out_95),
        .in_keep_going(redist49_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(),
        .out_feedback_out_95(i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_out_95),
        .out_feedback_valid_out_95(i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_valid_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist93_sync_together392_aunroll_x_in_c0_eni14_4_tpl_1(DELAY,1839)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist93_sync_together392_aunroll_x_in_c0_eni14_4_tpl_1_q <= '0;
        end
        else
        begin
            redist93_sync_together392_aunroll_x_in_c0_eni14_4_tpl_1_q <= $unsigned(in_c0_eni14_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216(BLACKBOX,498)@2
    // out out_feedback_stall_out_95@20000000
    cnn_top_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process0 thei_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216 (
        .in_data_in(redist93_sync_together392_aunroll_x_in_c0_eni14_4_tpl_1_q),
        .in_dir(redist89_sync_together392_aunroll_x_in_c0_eni14_1_tpl_1_q),
        .in_feedback_in_95(i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_out_95),
        .in_feedback_valid_in_95(i_llvm_fpga_push_i1_or_cond189297_push95_conv_process217_out_feedback_valid_out_95),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out),
        .out_feedback_stall_out_95(i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_feedback_stall_out_95),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist45_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out_51(DELAY,1791)
    dspba_delay_ver #( .width(1), .depth(51), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist45_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out_51 ( .xin(i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out), .xout(redist45_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_i_i_i_3_conv_process218(MUX,553)@53
    assign i_or_i_i_i_3_conv_process218_s = redist45_i_llvm_fpga_pop_i1_or_cond189297_pop95_conv_process216_out_data_out_51_q;
    always @(i_or_i_i_i_3_conv_process218_s or c_i32_0312_q or redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1_q)
    begin
        unique case (i_or_i_i_i_3_conv_process218_s)
            1'b0 : i_or_i_i_i_3_conv_process218_q = c_i32_0312_q;
            1'b1 : i_or_i_i_i_3_conv_process218_q = redist118_i_llvm_fpga_bit_shuffle_i32_s_s_in_for_cond24_i_preheader_conv_process_fpgaunique_0s_v32i32_reduction_conv_process_2_shuffle_conv_process0_NO_NAME_x_q_1_q;
            default : i_or_i_i_i_3_conv_process218_q = 32'b0;
        endcase
    end

    // redist55_i_first_cleanup_xor_or_conv_process30_q_51(DELAY,1801)
    dspba_delay_ver #( .width(1), .depth(47), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist55_i_first_cleanup_xor_or_conv_process30_q_51 ( .xin(redist54_i_first_cleanup_xor_or_conv_process30_q_4_q), .xout(redist55_i_first_cleanup_xor_or_conv_process30_q_51_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist53_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_52(DELAY,1799)
    dspba_delay_ver #( .width(1), .depth(46), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist53_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_52 ( .xin(redist52_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_6_q), .xout(redist53_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_52_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,218)@53
    assign out_c0_exi14769_0_tpl = GND_q;
    assign out_c0_exi14769_1_tpl = redist53_i_llvm_fpga_pipeline_keep_going_conv_process6_out_data_out_52_q;
    assign out_c0_exi14769_2_tpl = redist55_i_first_cleanup_xor_or_conv_process30_q_51_q;
    assign out_c0_exi14769_3_tpl = i_or_i_i_i_3_conv_process218_q;
    assign out_c0_exi14769_4_tpl = i_temp_i_sroa_0_0_sroa_idx_conv_process0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi14769_5_tpl = redist39_i_masked_conv_process239_q_51_q;
    assign out_c0_exi14769_6_tpl = redist43_i_llvm_fpga_pop_i32_offset_0_i475_replace_phi287_pop90_conv_process240_out_data_out_51_mem_q;
    assign out_c0_exi14769_7_tpl = redist44_i_llvm_fpga_pop_i1_pop91_conv_process242_out_data_out_51_q;
    assign out_c0_exi14769_8_tpl = redist46_i_llvm_fpga_pop_i1_notcmp169289_pop92_conv_process244_out_data_out_47_q;
    assign out_c0_exi14769_9_tpl = redist48_i_llvm_fpga_pop_i1_notcmp165298_pop96_conv_process246_out_data_out_47_q;
    assign out_c0_exi14769_10_tpl = redist40_i_llvm_fpga_pop_i32_pop97_conv_process248_out_data_out_51_mem_q;
    assign out_c0_exi14769_11_tpl = redist100_sync_together392_aunroll_x_in_c0_eni14_11_tpl_52_mem_q;
    assign out_c0_exi14769_12_tpl = redist101_sync_together392_aunroll_x_in_c0_eni14_12_tpl_52_q;
    assign out_c0_exi14769_13_tpl = redist102_sync_together392_aunroll_x_in_c0_eni14_13_tpl_52_q;
    assign out_c0_exi14769_14_tpl = redist103_sync_together392_aunroll_x_in_c0_eni14_14_tpl_52_mem_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_conv_process19 = GND_q;

    // ext_sig_sync_out(GPOUT,327)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_conv_process6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_conv_process6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,638)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_conv_process6_out_pipeline_valid_out;

endmodule
