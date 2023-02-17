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

// SystemVerilog created from cnn_top_i_sfc_s_c0_in_for_cond68_prehead0000r30919_load_weight01
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_s_c0_in_for_cond68_prehead0000r30919_load_weight01 (
    output wire [0:0] out_c0_exit345_0_tpl,
    output wire [0:0] out_c0_exit345_1_tpl,
    output wire [0:0] out_c0_exit345_2_tpl,
    output wire [7:0] out_c0_exit345_3_tpl,
    output wire [7:0] out_c0_exit345_4_tpl,
    output wire [7:0] out_c0_exit345_5_tpl,
    output wire [7:0] out_c0_exit345_6_tpl,
    output wire [7:0] out_c0_exit345_7_tpl,
    output wire [7:0] out_c0_exit345_8_tpl,
    output wire [7:0] out_c0_exit345_9_tpl,
    output wire [7:0] out_c0_exit345_10_tpl,
    output wire [7:0] out_c0_exit345_11_tpl,
    output wire [7:0] out_c0_exit345_12_tpl,
    output wire [7:0] out_c0_exit345_13_tpl,
    output wire [7:0] out_c0_exit345_14_tpl,
    output wire [7:0] out_c0_exit345_15_tpl,
    output wire [7:0] out_c0_exit345_16_tpl,
    output wire [7:0] out_c0_exit345_17_tpl,
    output wire [7:0] out_c0_exit345_18_tpl,
    output wire [7:0] out_c0_exit345_19_tpl,
    output wire [7:0] out_c0_exit345_20_tpl,
    output wire [7:0] out_c0_exit345_21_tpl,
    output wire [7:0] out_c0_exit345_22_tpl,
    output wire [7:0] out_c0_exit345_23_tpl,
    output wire [7:0] out_c0_exit345_24_tpl,
    output wire [7:0] out_c0_exit345_25_tpl,
    output wire [7:0] out_c0_exit345_26_tpl,
    output wire [7:0] out_c0_exit345_27_tpl,
    output wire [7:0] out_c0_exit345_28_tpl,
    output wire [7:0] out_c0_exit345_29_tpl,
    output wire [7:0] out_c0_exit345_30_tpl,
    output wire [7:0] out_c0_exit345_31_tpl,
    output wire [7:0] out_c0_exit345_32_tpl,
    output wire [7:0] out_c0_exit345_33_tpl,
    output wire [7:0] out_c0_exit345_34_tpl,
    output wire [7:0] out_c0_exit345_35_tpl,
    output wire [7:0] out_c0_exit345_36_tpl,
    output wire [7:0] out_c0_exit345_37_tpl,
    output wire [7:0] out_c0_exit345_38_tpl,
    output wire [7:0] out_c0_exit345_39_tpl,
    output wire [7:0] out_c0_exit345_40_tpl,
    output wire [7:0] out_c0_exit345_41_tpl,
    output wire [7:0] out_c0_exit345_42_tpl,
    output wire [7:0] out_c0_exit345_43_tpl,
    output wire [7:0] out_c0_exit345_44_tpl,
    output wire [7:0] out_c0_exit345_45_tpl,
    output wire [7:0] out_c0_exit345_46_tpl,
    output wire [7:0] out_c0_exit345_47_tpl,
    output wire [7:0] out_c0_exit345_48_tpl,
    output wire [7:0] out_c0_exit345_49_tpl,
    output wire [7:0] out_c0_exit345_50_tpl,
    output wire [7:0] out_c0_exit345_51_tpl,
    output wire [7:0] out_c0_exit345_52_tpl,
    output wire [7:0] out_c0_exit345_53_tpl,
    output wire [7:0] out_c0_exit345_54_tpl,
    output wire [7:0] out_c0_exit345_55_tpl,
    output wire [7:0] out_c0_exit345_56_tpl,
    output wire [7:0] out_c0_exit345_57_tpl,
    output wire [7:0] out_c0_exit345_58_tpl,
    output wire [7:0] out_c0_exit345_59_tpl,
    output wire [7:0] out_c0_exit345_60_tpl,
    output wire [7:0] out_c0_exit345_61_tpl,
    output wire [7:0] out_c0_exit345_62_tpl,
    output wire [7:0] out_c0_exit345_63_tpl,
    output wire [7:0] out_c0_exit345_64_tpl,
    output wire [7:0] out_c0_exit345_65_tpl,
    output wire [7:0] out_c0_exit345_66_tpl,
    output wire [7:0] out_c0_exit345_67_tpl,
    output wire [7:0] out_c0_exit345_68_tpl,
    output wire [7:0] out_c0_exit345_69_tpl,
    output wire [7:0] out_c0_exit345_70_tpl,
    output wire [7:0] out_c0_exit345_71_tpl,
    output wire [7:0] out_c0_exit345_72_tpl,
    output wire [7:0] out_c0_exit345_73_tpl,
    output wire [7:0] out_c0_exit345_74_tpl,
    output wire [7:0] out_c0_exit345_75_tpl,
    output wire [7:0] out_c0_exit345_76_tpl,
    output wire [7:0] out_c0_exit345_77_tpl,
    output wire [7:0] out_c0_exit345_78_tpl,
    output wire [7:0] out_c0_exit345_79_tpl,
    output wire [7:0] out_c0_exit345_80_tpl,
    output wire [7:0] out_c0_exit345_81_tpl,
    output wire [7:0] out_c0_exit345_82_tpl,
    output wire [7:0] out_c0_exit345_83_tpl,
    output wire [7:0] out_c0_exit345_84_tpl,
    output wire [7:0] out_c0_exit345_85_tpl,
    output wire [7:0] out_c0_exit345_86_tpl,
    output wire [7:0] out_c0_exit345_87_tpl,
    output wire [7:0] out_c0_exit345_88_tpl,
    output wire [7:0] out_c0_exit345_89_tpl,
    output wire [7:0] out_c0_exit345_90_tpl,
    output wire [7:0] out_c0_exit345_91_tpl,
    output wire [7:0] out_c0_exit345_92_tpl,
    output wire [7:0] out_c0_exit345_93_tpl,
    output wire [7:0] out_c0_exit345_94_tpl,
    output wire [7:0] out_c0_exit345_95_tpl,
    output wire [7:0] out_c0_exit345_96_tpl,
    output wire [7:0] out_c0_exit345_97_tpl,
    output wire [7:0] out_c0_exit345_98_tpl,
    output wire [7:0] out_c0_exit345_99_tpl,
    output wire [7:0] out_c0_exit345_100_tpl,
    output wire [7:0] out_c0_exit345_101_tpl,
    output wire [7:0] out_c0_exit345_102_tpl,
    output wire [7:0] out_c0_exit345_103_tpl,
    output wire [7:0] out_c0_exit345_104_tpl,
    output wire [7:0] out_c0_exit345_105_tpl,
    output wire [7:0] out_c0_exit345_106_tpl,
    output wire [7:0] out_c0_exit345_107_tpl,
    output wire [7:0] out_c0_exit345_108_tpl,
    output wire [7:0] out_c0_exit345_109_tpl,
    output wire [7:0] out_c0_exit345_110_tpl,
    output wire [7:0] out_c0_exit345_111_tpl,
    output wire [7:0] out_c0_exit345_112_tpl,
    output wire [7:0] out_c0_exit345_113_tpl,
    output wire [7:0] out_c0_exit345_114_tpl,
    output wire [7:0] out_c0_exit345_115_tpl,
    output wire [7:0] out_c0_exit345_116_tpl,
    output wire [7:0] out_c0_exit345_117_tpl,
    output wire [7:0] out_c0_exit345_118_tpl,
    output wire [7:0] out_c0_exit345_119_tpl,
    output wire [7:0] out_c0_exit345_120_tpl,
    output wire [7:0] out_c0_exit345_121_tpl,
    output wire [7:0] out_c0_exit345_122_tpl,
    output wire [7:0] out_c0_exit345_123_tpl,
    output wire [7:0] out_c0_exit345_124_tpl,
    output wire [7:0] out_c0_exit345_125_tpl,
    output wire [7:0] out_c0_exit345_126_tpl,
    output wire [7:0] out_c0_exit345_127_tpl,
    output wire [7:0] out_c0_exit345_128_tpl,
    output wire [7:0] out_c0_exit345_129_tpl,
    output wire [7:0] out_c0_exit345_130_tpl,
    output wire [0:0] out_c0_exit345_131_tpl,
    output wire [0:0] out_c0_exit345_132_tpl,
    output wire [0:0] out_c0_exit345_133_tpl,
    output wire [0:0] out_c0_exit345_134_tpl,
    output wire [0:0] out_c0_exit345_135_tpl,
    output wire [31:0] out_c0_exit345_136_tpl,
    output wire [0:0] out_c0_exit345_137_tpl,
    output wire [31:0] out_c0_exit345_138_tpl,
    output wire [0:0] out_c0_exit345_139_tpl,
    output wire [31:0] out_c0_exit345_140_tpl,
    output wire [0:0] out_c0_exit345_141_tpl,
    output wire [0:0] out_c0_exit345_142_tpl,
    output wire [31:0] out_c0_exit345_143_tpl,
    output wire [31:0] out_c0_exit345_144_tpl,
    output wire [0:0] out_c0_exit345_145_tpl,
    output wire [31:0] out_c0_exit345_146_tpl,
    output wire [0:0] out_c0_exit345_147_tpl,
    output wire [0:0] out_c0_exit345_148_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out,
    output wire [31:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write,
    output wire [1023:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata,
    input wire [0:0] in_c0_eni22_0_tpl,
    input wire [0:0] in_c0_eni22_1_tpl,
    input wire [31:0] in_c0_eni22_2_tpl,
    input wire [0:0] in_c0_eni22_3_tpl,
    input wire [31:0] in_c0_eni22_4_tpl,
    input wire [0:0] in_c0_eni22_5_tpl,
    input wire [31:0] in_c0_eni22_6_tpl,
    input wire [0:0] in_c0_eni22_7_tpl,
    input wire [0:0] in_c0_eni22_8_tpl,
    input wire [0:0] in_c0_eni22_9_tpl,
    input wire [31:0] in_c0_eni22_10_tpl,
    input wire [0:0] in_c0_eni22_11_tpl,
    input wire [31:0] in_c0_eni22_12_tpl,
    input wire [0:0] in_c0_eni22_13_tpl,
    input wire [31:0] in_c0_eni22_14_tpl,
    input wire [0:0] in_c0_eni22_15_tpl,
    input wire [0:0] in_c0_eni22_16_tpl,
    input wire [31:0] in_c0_eni22_17_tpl,
    input wire [31:0] in_c0_eni22_18_tpl,
    input wire [0:0] in_c0_eni22_19_tpl,
    input wire [31:0] in_c0_eni22_20_tpl,
    input wire [0:0] in_c0_eni22_21_tpl,
    input wire [0:0] in_c0_eni22_22_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [1023:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_2_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_3_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_4_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_7_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_10_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_11_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_12_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_13_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_14_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_15_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_16_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_17_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_18_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_19_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_20_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_21_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_22_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_23_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_24_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_25_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_26_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_27_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_28_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_29_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_30_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_31_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_32_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_33_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_34_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_35_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_36_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_37_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_38_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_39_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_40_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_41_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_42_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_43_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_44_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_45_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_46_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_47_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_48_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_49_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_50_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_51_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_52_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_53_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_54_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_55_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_56_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_57_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_58_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_59_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_60_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_61_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_62_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_63_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_64_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_65_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_66_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_67_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_68_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_69_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_70_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_71_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_72_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_73_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_74_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_75_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_76_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_77_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_78_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_79_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_80_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_81_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_82_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_83_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_84_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_85_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_86_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_87_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_88_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_89_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_90_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_91_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_92_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_93_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_94_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_95_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_96_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_97_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_98_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_99_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_100_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_101_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_102_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_103_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_104_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_105_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_106_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_107_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_108_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_109_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_110_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_111_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_112_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_113_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_114_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_115_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_116_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_117_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_118_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_119_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_120_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_121_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_122_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_123_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_124_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_125_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_126_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_127_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_128_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_129_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_130_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_131_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_132_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_133_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_134_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_135_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_136_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_137_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_138_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_139_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_140_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_141_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_142_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_143_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_144_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_145_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_146_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_147_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_148_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_2_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_3_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_4_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_5_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_6_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_7_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_8_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_9_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_10_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_11_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_12_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_13_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_14_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_15_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_16_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_17_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_18_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_19_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_20_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_21_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_22_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_23_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_24_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_25_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_26_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_27_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_28_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_29_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_30_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_31_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_32_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_33_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_34_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_35_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_36_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_37_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_38_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_39_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_40_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_41_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_42_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_43_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_44_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_45_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_46_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_47_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_48_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_49_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_50_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_51_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_52_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_53_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_54_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_55_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_56_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_57_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_58_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_59_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_60_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_61_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_62_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_63_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_64_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_65_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_66_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_67_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_68_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_69_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_70_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_71_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_72_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_73_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_74_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_75_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_76_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_77_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_78_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_79_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_80_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_81_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_82_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_83_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_84_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_85_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_86_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_87_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_88_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_89_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_90_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_91_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_92_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_93_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_94_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_95_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_96_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_97_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_98_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_99_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_100_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_101_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_102_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_103_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_104_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_105_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_106_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_107_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_108_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_109_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_110_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_111_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_112_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_113_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_114_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_115_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_116_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_117_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_118_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_119_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_120_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_121_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_122_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_123_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_124_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_125_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_126_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_127_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_128_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_129_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_130_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_131_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_132_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_133_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_134_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_135_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_136_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_137_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_138_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_139_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_140_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_141_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_142_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_143_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_144_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_145_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_146_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_147_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_148_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;
    wire [127:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;
    wire [1023:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_pipeline_valid_out;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,16)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,15)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x(BLACKBOX,12)@1
    // out out_c0_exi21344_0_tpl@7
    // out out_c0_exi21344_1_tpl@7
    // out out_c0_exi21344_2_tpl@7
    // out out_c0_exi21344_3_tpl@7
    // out out_c0_exi21344_4_tpl@7
    // out out_c0_exi21344_5_tpl@7
    // out out_c0_exi21344_6_tpl@7
    // out out_c0_exi21344_7_tpl@7
    // out out_c0_exi21344_8_tpl@7
    // out out_c0_exi21344_9_tpl@7
    // out out_c0_exi21344_10_tpl@7
    // out out_c0_exi21344_11_tpl@7
    // out out_c0_exi21344_12_tpl@7
    // out out_c0_exi21344_13_tpl@7
    // out out_c0_exi21344_14_tpl@7
    // out out_c0_exi21344_15_tpl@7
    // out out_c0_exi21344_16_tpl@7
    // out out_c0_exi21344_17_tpl@7
    // out out_c0_exi21344_18_tpl@7
    // out out_c0_exi21344_19_tpl@7
    // out out_c0_exi21344_20_tpl@7
    // out out_c0_exi21344_21_tpl@7
    // out out_c0_exi21344_22_tpl@7
    // out out_c0_exi21344_23_tpl@7
    // out out_c0_exi21344_24_tpl@7
    // out out_c0_exi21344_25_tpl@7
    // out out_c0_exi21344_26_tpl@7
    // out out_c0_exi21344_27_tpl@7
    // out out_c0_exi21344_28_tpl@7
    // out out_c0_exi21344_29_tpl@7
    // out out_c0_exi21344_30_tpl@7
    // out out_c0_exi21344_31_tpl@7
    // out out_c0_exi21344_32_tpl@7
    // out out_c0_exi21344_33_tpl@7
    // out out_c0_exi21344_34_tpl@7
    // out out_c0_exi21344_35_tpl@7
    // out out_c0_exi21344_36_tpl@7
    // out out_c0_exi21344_37_tpl@7
    // out out_c0_exi21344_38_tpl@7
    // out out_c0_exi21344_39_tpl@7
    // out out_c0_exi21344_40_tpl@7
    // out out_c0_exi21344_41_tpl@7
    // out out_c0_exi21344_42_tpl@7
    // out out_c0_exi21344_43_tpl@7
    // out out_c0_exi21344_44_tpl@7
    // out out_c0_exi21344_45_tpl@7
    // out out_c0_exi21344_46_tpl@7
    // out out_c0_exi21344_47_tpl@7
    // out out_c0_exi21344_48_tpl@7
    // out out_c0_exi21344_49_tpl@7
    // out out_c0_exi21344_50_tpl@7
    // out out_c0_exi21344_51_tpl@7
    // out out_c0_exi21344_52_tpl@7
    // out out_c0_exi21344_53_tpl@7
    // out out_c0_exi21344_54_tpl@7
    // out out_c0_exi21344_55_tpl@7
    // out out_c0_exi21344_56_tpl@7
    // out out_c0_exi21344_57_tpl@7
    // out out_c0_exi21344_58_tpl@7
    // out out_c0_exi21344_59_tpl@7
    // out out_c0_exi21344_60_tpl@7
    // out out_c0_exi21344_61_tpl@7
    // out out_c0_exi21344_62_tpl@7
    // out out_c0_exi21344_63_tpl@7
    // out out_c0_exi21344_64_tpl@7
    // out out_c0_exi21344_65_tpl@7
    // out out_c0_exi21344_66_tpl@7
    // out out_c0_exi21344_67_tpl@7
    // out out_c0_exi21344_68_tpl@7
    // out out_c0_exi21344_69_tpl@7
    // out out_c0_exi21344_70_tpl@7
    // out out_c0_exi21344_71_tpl@7
    // out out_c0_exi21344_72_tpl@7
    // out out_c0_exi21344_73_tpl@7
    // out out_c0_exi21344_74_tpl@7
    // out out_c0_exi21344_75_tpl@7
    // out out_c0_exi21344_76_tpl@7
    // out out_c0_exi21344_77_tpl@7
    // out out_c0_exi21344_78_tpl@7
    // out out_c0_exi21344_79_tpl@7
    // out out_c0_exi21344_80_tpl@7
    // out out_c0_exi21344_81_tpl@7
    // out out_c0_exi21344_82_tpl@7
    // out out_c0_exi21344_83_tpl@7
    // out out_c0_exi21344_84_tpl@7
    // out out_c0_exi21344_85_tpl@7
    // out out_c0_exi21344_86_tpl@7
    // out out_c0_exi21344_87_tpl@7
    // out out_c0_exi21344_88_tpl@7
    // out out_c0_exi21344_89_tpl@7
    // out out_c0_exi21344_90_tpl@7
    // out out_c0_exi21344_91_tpl@7
    // out out_c0_exi21344_92_tpl@7
    // out out_c0_exi21344_93_tpl@7
    // out out_c0_exi21344_94_tpl@7
    // out out_c0_exi21344_95_tpl@7
    // out out_c0_exi21344_96_tpl@7
    // out out_c0_exi21344_97_tpl@7
    // out out_c0_exi21344_98_tpl@7
    // out out_c0_exi21344_99_tpl@7
    // out out_c0_exi21344_100_tpl@7
    // out out_c0_exi21344_101_tpl@7
    // out out_c0_exi21344_102_tpl@7
    // out out_c0_exi21344_103_tpl@7
    // out out_c0_exi21344_104_tpl@7
    // out out_c0_exi21344_105_tpl@7
    // out out_c0_exi21344_106_tpl@7
    // out out_c0_exi21344_107_tpl@7
    // out out_c0_exi21344_108_tpl@7
    // out out_c0_exi21344_109_tpl@7
    // out out_c0_exi21344_110_tpl@7
    // out out_c0_exi21344_111_tpl@7
    // out out_c0_exi21344_112_tpl@7
    // out out_c0_exi21344_113_tpl@7
    // out out_c0_exi21344_114_tpl@7
    // out out_c0_exi21344_115_tpl@7
    // out out_c0_exi21344_116_tpl@7
    // out out_c0_exi21344_117_tpl@7
    // out out_c0_exi21344_118_tpl@7
    // out out_c0_exi21344_119_tpl@7
    // out out_c0_exi21344_120_tpl@7
    // out out_c0_exi21344_121_tpl@7
    // out out_c0_exi21344_122_tpl@7
    // out out_c0_exi21344_123_tpl@7
    // out out_c0_exi21344_124_tpl@7
    // out out_c0_exi21344_125_tpl@7
    // out out_c0_exi21344_126_tpl@7
    // out out_c0_exi21344_127_tpl@7
    // out out_c0_exi21344_128_tpl@7
    // out out_c0_exi21344_129_tpl@7
    // out out_c0_exi21344_130_tpl@7
    // out out_c0_exi21344_131_tpl@7
    // out out_c0_exi21344_132_tpl@7
    // out out_c0_exi21344_133_tpl@7
    // out out_c0_exi21344_134_tpl@7
    // out out_c0_exi21344_135_tpl@7
    // out out_c0_exi21344_136_tpl@7
    // out out_c0_exi21344_137_tpl@7
    // out out_c0_exi21344_138_tpl@7
    // out out_c0_exi21344_139_tpl@7
    // out out_c0_exi21344_140_tpl@7
    // out out_c0_exi21344_141_tpl@7
    // out out_c0_exi21344_142_tpl@7
    // out out_c0_exi21344_143_tpl@7
    // out out_c0_exi21344_144_tpl@7
    // out out_c0_exi21344_145_tpl@7
    // out out_c0_exi21344_146_tpl@7
    // out out_c0_exi21344_147_tpl@7
    // out out_c0_exi21344_148_tpl@7
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_load_weight019@7
    cnn_top_i_sfc_logic_s_c0_in_for_cond68_p0000r30919_load_weight00 thei_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x (
        .in_c0_eni22_0_tpl(in_c0_eni22_0_tpl),
        .in_c0_eni22_1_tpl(in_c0_eni22_1_tpl),
        .in_c0_eni22_2_tpl(in_c0_eni22_2_tpl),
        .in_c0_eni22_3_tpl(in_c0_eni22_3_tpl),
        .in_c0_eni22_4_tpl(in_c0_eni22_4_tpl),
        .in_c0_eni22_5_tpl(in_c0_eni22_5_tpl),
        .in_c0_eni22_6_tpl(in_c0_eni22_6_tpl),
        .in_c0_eni22_7_tpl(in_c0_eni22_7_tpl),
        .in_c0_eni22_8_tpl(in_c0_eni22_8_tpl),
        .in_c0_eni22_9_tpl(in_c0_eni22_9_tpl),
        .in_c0_eni22_10_tpl(in_c0_eni22_10_tpl),
        .in_c0_eni22_11_tpl(in_c0_eni22_11_tpl),
        .in_c0_eni22_12_tpl(in_c0_eni22_12_tpl),
        .in_c0_eni22_13_tpl(in_c0_eni22_13_tpl),
        .in_c0_eni22_14_tpl(in_c0_eni22_14_tpl),
        .in_c0_eni22_15_tpl(in_c0_eni22_15_tpl),
        .in_c0_eni22_16_tpl(in_c0_eni22_16_tpl),
        .in_c0_eni22_17_tpl(in_c0_eni22_17_tpl),
        .in_c0_eni22_18_tpl(in_c0_eni22_18_tpl),
        .in_c0_eni22_19_tpl(in_c0_eni22_19_tpl),
        .in_c0_eni22_20_tpl(in_c0_eni22_20_tpl),
        .in_c0_eni22_21_tpl(in_c0_eni22_21_tpl),
        .in_c0_eni22_22_tpl(in_c0_eni22_22_tpl),
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exi21344_0_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_0_tpl),
        .out_c0_exi21344_1_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_1_tpl),
        .out_c0_exi21344_2_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_2_tpl),
        .out_c0_exi21344_3_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_3_tpl),
        .out_c0_exi21344_4_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_4_tpl),
        .out_c0_exi21344_5_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_5_tpl),
        .out_c0_exi21344_6_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_6_tpl),
        .out_c0_exi21344_7_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_7_tpl),
        .out_c0_exi21344_8_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_8_tpl),
        .out_c0_exi21344_9_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_9_tpl),
        .out_c0_exi21344_10_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_10_tpl),
        .out_c0_exi21344_11_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_11_tpl),
        .out_c0_exi21344_12_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_12_tpl),
        .out_c0_exi21344_13_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_13_tpl),
        .out_c0_exi21344_14_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_14_tpl),
        .out_c0_exi21344_15_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_15_tpl),
        .out_c0_exi21344_16_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_16_tpl),
        .out_c0_exi21344_17_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_17_tpl),
        .out_c0_exi21344_18_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_18_tpl),
        .out_c0_exi21344_19_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_19_tpl),
        .out_c0_exi21344_20_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_20_tpl),
        .out_c0_exi21344_21_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_21_tpl),
        .out_c0_exi21344_22_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_22_tpl),
        .out_c0_exi21344_23_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_23_tpl),
        .out_c0_exi21344_24_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_24_tpl),
        .out_c0_exi21344_25_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_25_tpl),
        .out_c0_exi21344_26_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_26_tpl),
        .out_c0_exi21344_27_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_27_tpl),
        .out_c0_exi21344_28_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_28_tpl),
        .out_c0_exi21344_29_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_29_tpl),
        .out_c0_exi21344_30_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_30_tpl),
        .out_c0_exi21344_31_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_31_tpl),
        .out_c0_exi21344_32_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_32_tpl),
        .out_c0_exi21344_33_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_33_tpl),
        .out_c0_exi21344_34_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_34_tpl),
        .out_c0_exi21344_35_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_35_tpl),
        .out_c0_exi21344_36_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_36_tpl),
        .out_c0_exi21344_37_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_37_tpl),
        .out_c0_exi21344_38_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_38_tpl),
        .out_c0_exi21344_39_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_39_tpl),
        .out_c0_exi21344_40_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_40_tpl),
        .out_c0_exi21344_41_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_41_tpl),
        .out_c0_exi21344_42_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_42_tpl),
        .out_c0_exi21344_43_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_43_tpl),
        .out_c0_exi21344_44_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_44_tpl),
        .out_c0_exi21344_45_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_45_tpl),
        .out_c0_exi21344_46_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_46_tpl),
        .out_c0_exi21344_47_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_47_tpl),
        .out_c0_exi21344_48_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_48_tpl),
        .out_c0_exi21344_49_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_49_tpl),
        .out_c0_exi21344_50_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_50_tpl),
        .out_c0_exi21344_51_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_51_tpl),
        .out_c0_exi21344_52_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_52_tpl),
        .out_c0_exi21344_53_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_53_tpl),
        .out_c0_exi21344_54_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_54_tpl),
        .out_c0_exi21344_55_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_55_tpl),
        .out_c0_exi21344_56_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_56_tpl),
        .out_c0_exi21344_57_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_57_tpl),
        .out_c0_exi21344_58_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_58_tpl),
        .out_c0_exi21344_59_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_59_tpl),
        .out_c0_exi21344_60_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_60_tpl),
        .out_c0_exi21344_61_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_61_tpl),
        .out_c0_exi21344_62_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_62_tpl),
        .out_c0_exi21344_63_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_63_tpl),
        .out_c0_exi21344_64_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_64_tpl),
        .out_c0_exi21344_65_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_65_tpl),
        .out_c0_exi21344_66_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_66_tpl),
        .out_c0_exi21344_67_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_67_tpl),
        .out_c0_exi21344_68_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_68_tpl),
        .out_c0_exi21344_69_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_69_tpl),
        .out_c0_exi21344_70_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_70_tpl),
        .out_c0_exi21344_71_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_71_tpl),
        .out_c0_exi21344_72_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_72_tpl),
        .out_c0_exi21344_73_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_73_tpl),
        .out_c0_exi21344_74_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_74_tpl),
        .out_c0_exi21344_75_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_75_tpl),
        .out_c0_exi21344_76_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_76_tpl),
        .out_c0_exi21344_77_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_77_tpl),
        .out_c0_exi21344_78_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_78_tpl),
        .out_c0_exi21344_79_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_79_tpl),
        .out_c0_exi21344_80_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_80_tpl),
        .out_c0_exi21344_81_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_81_tpl),
        .out_c0_exi21344_82_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_82_tpl),
        .out_c0_exi21344_83_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_83_tpl),
        .out_c0_exi21344_84_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_84_tpl),
        .out_c0_exi21344_85_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_85_tpl),
        .out_c0_exi21344_86_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_86_tpl),
        .out_c0_exi21344_87_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_87_tpl),
        .out_c0_exi21344_88_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_88_tpl),
        .out_c0_exi21344_89_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_89_tpl),
        .out_c0_exi21344_90_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_90_tpl),
        .out_c0_exi21344_91_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_91_tpl),
        .out_c0_exi21344_92_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_92_tpl),
        .out_c0_exi21344_93_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_93_tpl),
        .out_c0_exi21344_94_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_94_tpl),
        .out_c0_exi21344_95_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_95_tpl),
        .out_c0_exi21344_96_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_96_tpl),
        .out_c0_exi21344_97_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_97_tpl),
        .out_c0_exi21344_98_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_98_tpl),
        .out_c0_exi21344_99_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_99_tpl),
        .out_c0_exi21344_100_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_100_tpl),
        .out_c0_exi21344_101_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_101_tpl),
        .out_c0_exi21344_102_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_102_tpl),
        .out_c0_exi21344_103_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_103_tpl),
        .out_c0_exi21344_104_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_104_tpl),
        .out_c0_exi21344_105_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_105_tpl),
        .out_c0_exi21344_106_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_106_tpl),
        .out_c0_exi21344_107_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_107_tpl),
        .out_c0_exi21344_108_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_108_tpl),
        .out_c0_exi21344_109_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_109_tpl),
        .out_c0_exi21344_110_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_110_tpl),
        .out_c0_exi21344_111_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_111_tpl),
        .out_c0_exi21344_112_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_112_tpl),
        .out_c0_exi21344_113_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_113_tpl),
        .out_c0_exi21344_114_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_114_tpl),
        .out_c0_exi21344_115_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_115_tpl),
        .out_c0_exi21344_116_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_116_tpl),
        .out_c0_exi21344_117_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_117_tpl),
        .out_c0_exi21344_118_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_118_tpl),
        .out_c0_exi21344_119_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_119_tpl),
        .out_c0_exi21344_120_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_120_tpl),
        .out_c0_exi21344_121_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_121_tpl),
        .out_c0_exi21344_122_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_122_tpl),
        .out_c0_exi21344_123_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_123_tpl),
        .out_c0_exi21344_124_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_124_tpl),
        .out_c0_exi21344_125_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_125_tpl),
        .out_c0_exi21344_126_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_126_tpl),
        .out_c0_exi21344_127_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_127_tpl),
        .out_c0_exi21344_128_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_128_tpl),
        .out_c0_exi21344_129_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_129_tpl),
        .out_c0_exi21344_130_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_130_tpl),
        .out_c0_exi21344_131_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_131_tpl),
        .out_c0_exi21344_132_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_132_tpl),
        .out_c0_exi21344_133_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_133_tpl),
        .out_c0_exi21344_134_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_134_tpl),
        .out_c0_exi21344_135_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_135_tpl),
        .out_c0_exi21344_136_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_136_tpl),
        .out_c0_exi21344_137_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_137_tpl),
        .out_c0_exi21344_138_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_138_tpl),
        .out_c0_exi21344_139_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_139_tpl),
        .out_c0_exi21344_140_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_140_tpl),
        .out_c0_exi21344_141_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_141_tpl),
        .out_c0_exi21344_142_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_142_tpl),
        .out_c0_exi21344_143_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_143_tpl),
        .out_c0_exi21344_144_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_144_tpl),
        .out_c0_exi21344_145_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_145_tpl),
        .out_c0_exi21344_146_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_146_tpl),
        .out_c0_exi21344_147_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_147_tpl),
        .out_c0_exi21344_148_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_148_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_load_weight019(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x(BLACKBOX,11)@7
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@10
    // out out_data_out_1_tpl@10
    // out out_data_out_2_tpl@10
    // out out_data_out_3_tpl@10
    // out out_data_out_4_tpl@10
    // out out_data_out_5_tpl@10
    // out out_data_out_6_tpl@10
    // out out_data_out_7_tpl@10
    // out out_data_out_8_tpl@10
    // out out_data_out_9_tpl@10
    // out out_data_out_10_tpl@10
    // out out_data_out_11_tpl@10
    // out out_data_out_12_tpl@10
    // out out_data_out_13_tpl@10
    // out out_data_out_14_tpl@10
    // out out_data_out_15_tpl@10
    // out out_data_out_16_tpl@10
    // out out_data_out_17_tpl@10
    // out out_data_out_18_tpl@10
    // out out_data_out_19_tpl@10
    // out out_data_out_20_tpl@10
    // out out_data_out_21_tpl@10
    // out out_data_out_22_tpl@10
    // out out_data_out_23_tpl@10
    // out out_data_out_24_tpl@10
    // out out_data_out_25_tpl@10
    // out out_data_out_26_tpl@10
    // out out_data_out_27_tpl@10
    // out out_data_out_28_tpl@10
    // out out_data_out_29_tpl@10
    // out out_data_out_30_tpl@10
    // out out_data_out_31_tpl@10
    // out out_data_out_32_tpl@10
    // out out_data_out_33_tpl@10
    // out out_data_out_34_tpl@10
    // out out_data_out_35_tpl@10
    // out out_data_out_36_tpl@10
    // out out_data_out_37_tpl@10
    // out out_data_out_38_tpl@10
    // out out_data_out_39_tpl@10
    // out out_data_out_40_tpl@10
    // out out_data_out_41_tpl@10
    // out out_data_out_42_tpl@10
    // out out_data_out_43_tpl@10
    // out out_data_out_44_tpl@10
    // out out_data_out_45_tpl@10
    // out out_data_out_46_tpl@10
    // out out_data_out_47_tpl@10
    // out out_data_out_48_tpl@10
    // out out_data_out_49_tpl@10
    // out out_data_out_50_tpl@10
    // out out_data_out_51_tpl@10
    // out out_data_out_52_tpl@10
    // out out_data_out_53_tpl@10
    // out out_data_out_54_tpl@10
    // out out_data_out_55_tpl@10
    // out out_data_out_56_tpl@10
    // out out_data_out_57_tpl@10
    // out out_data_out_58_tpl@10
    // out out_data_out_59_tpl@10
    // out out_data_out_60_tpl@10
    // out out_data_out_61_tpl@10
    // out out_data_out_62_tpl@10
    // out out_data_out_63_tpl@10
    // out out_data_out_64_tpl@10
    // out out_data_out_65_tpl@10
    // out out_data_out_66_tpl@10
    // out out_data_out_67_tpl@10
    // out out_data_out_68_tpl@10
    // out out_data_out_69_tpl@10
    // out out_data_out_70_tpl@10
    // out out_data_out_71_tpl@10
    // out out_data_out_72_tpl@10
    // out out_data_out_73_tpl@10
    // out out_data_out_74_tpl@10
    // out out_data_out_75_tpl@10
    // out out_data_out_76_tpl@10
    // out out_data_out_77_tpl@10
    // out out_data_out_78_tpl@10
    // out out_data_out_79_tpl@10
    // out out_data_out_80_tpl@10
    // out out_data_out_81_tpl@10
    // out out_data_out_82_tpl@10
    // out out_data_out_83_tpl@10
    // out out_data_out_84_tpl@10
    // out out_data_out_85_tpl@10
    // out out_data_out_86_tpl@10
    // out out_data_out_87_tpl@10
    // out out_data_out_88_tpl@10
    // out out_data_out_89_tpl@10
    // out out_data_out_90_tpl@10
    // out out_data_out_91_tpl@10
    // out out_data_out_92_tpl@10
    // out out_data_out_93_tpl@10
    // out out_data_out_94_tpl@10
    // out out_data_out_95_tpl@10
    // out out_data_out_96_tpl@10
    // out out_data_out_97_tpl@10
    // out out_data_out_98_tpl@10
    // out out_data_out_99_tpl@10
    // out out_data_out_100_tpl@10
    // out out_data_out_101_tpl@10
    // out out_data_out_102_tpl@10
    // out out_data_out_103_tpl@10
    // out out_data_out_104_tpl@10
    // out out_data_out_105_tpl@10
    // out out_data_out_106_tpl@10
    // out out_data_out_107_tpl@10
    // out out_data_out_108_tpl@10
    // out out_data_out_109_tpl@10
    // out out_data_out_110_tpl@10
    // out out_data_out_111_tpl@10
    // out out_data_out_112_tpl@10
    // out out_data_out_113_tpl@10
    // out out_data_out_114_tpl@10
    // out out_data_out_115_tpl@10
    // out out_data_out_116_tpl@10
    // out out_data_out_117_tpl@10
    // out out_data_out_118_tpl@10
    // out out_data_out_119_tpl@10
    // out out_data_out_120_tpl@10
    // out out_data_out_121_tpl@10
    // out out_data_out_122_tpl@10
    // out out_data_out_123_tpl@10
    // out out_data_out_124_tpl@10
    // out out_data_out_125_tpl@10
    // out out_data_out_126_tpl@10
    // out out_data_out_127_tpl@10
    // out out_data_out_128_tpl@10
    // out out_data_out_129_tpl@10
    // out out_data_out_130_tpl@10
    // out out_data_out_131_tpl@10
    // out out_data_out_132_tpl@10
    // out out_data_out_133_tpl@10
    // out out_data_out_134_tpl@10
    // out out_data_out_135_tpl@10
    // out out_data_out_136_tpl@10
    // out out_data_out_137_tpl@10
    // out out_data_out_138_tpl@10
    // out out_data_out_139_tpl@10
    // out out_data_out_140_tpl@10
    // out out_data_out_141_tpl@10
    // out out_data_out_142_tpl@10
    // out out_data_out_143_tpl@10
    // out out_data_out_144_tpl@10
    // out out_data_out_145_tpl@10
    // out out_data_out_146_tpl@10
    // out out_data_out_147_tpl@10
    // out out_data_out_148_tpl@10
    // out out_stall_entry@20000000
    // out out_valid_out@10
    cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0000xit345_load_weight00 thei_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_34_tpl),
        .in_data_in_35_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_35_tpl),
        .in_data_in_36_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_36_tpl),
        .in_data_in_37_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_37_tpl),
        .in_data_in_38_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_38_tpl),
        .in_data_in_39_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_39_tpl),
        .in_data_in_40_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_40_tpl),
        .in_data_in_41_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_41_tpl),
        .in_data_in_42_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_42_tpl),
        .in_data_in_43_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_43_tpl),
        .in_data_in_44_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_44_tpl),
        .in_data_in_45_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_45_tpl),
        .in_data_in_46_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_46_tpl),
        .in_data_in_47_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_47_tpl),
        .in_data_in_48_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_48_tpl),
        .in_data_in_49_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_49_tpl),
        .in_data_in_50_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_50_tpl),
        .in_data_in_51_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_51_tpl),
        .in_data_in_52_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_52_tpl),
        .in_data_in_53_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_53_tpl),
        .in_data_in_54_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_54_tpl),
        .in_data_in_55_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_55_tpl),
        .in_data_in_56_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_56_tpl),
        .in_data_in_57_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_57_tpl),
        .in_data_in_58_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_58_tpl),
        .in_data_in_59_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_59_tpl),
        .in_data_in_60_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_60_tpl),
        .in_data_in_61_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_61_tpl),
        .in_data_in_62_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_62_tpl),
        .in_data_in_63_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_63_tpl),
        .in_data_in_64_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_64_tpl),
        .in_data_in_65_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_65_tpl),
        .in_data_in_66_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_66_tpl),
        .in_data_in_67_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_67_tpl),
        .in_data_in_68_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_68_tpl),
        .in_data_in_69_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_69_tpl),
        .in_data_in_70_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_70_tpl),
        .in_data_in_71_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_71_tpl),
        .in_data_in_72_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_72_tpl),
        .in_data_in_73_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_73_tpl),
        .in_data_in_74_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_74_tpl),
        .in_data_in_75_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_75_tpl),
        .in_data_in_76_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_76_tpl),
        .in_data_in_77_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_77_tpl),
        .in_data_in_78_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_78_tpl),
        .in_data_in_79_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_79_tpl),
        .in_data_in_80_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_80_tpl),
        .in_data_in_81_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_81_tpl),
        .in_data_in_82_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_82_tpl),
        .in_data_in_83_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_83_tpl),
        .in_data_in_84_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_84_tpl),
        .in_data_in_85_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_85_tpl),
        .in_data_in_86_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_86_tpl),
        .in_data_in_87_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_87_tpl),
        .in_data_in_88_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_88_tpl),
        .in_data_in_89_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_89_tpl),
        .in_data_in_90_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_90_tpl),
        .in_data_in_91_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_91_tpl),
        .in_data_in_92_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_92_tpl),
        .in_data_in_93_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_93_tpl),
        .in_data_in_94_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_94_tpl),
        .in_data_in_95_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_95_tpl),
        .in_data_in_96_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_96_tpl),
        .in_data_in_97_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_97_tpl),
        .in_data_in_98_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_98_tpl),
        .in_data_in_99_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_99_tpl),
        .in_data_in_100_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_100_tpl),
        .in_data_in_101_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_101_tpl),
        .in_data_in_102_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_102_tpl),
        .in_data_in_103_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_103_tpl),
        .in_data_in_104_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_104_tpl),
        .in_data_in_105_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_105_tpl),
        .in_data_in_106_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_106_tpl),
        .in_data_in_107_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_107_tpl),
        .in_data_in_108_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_108_tpl),
        .in_data_in_109_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_109_tpl),
        .in_data_in_110_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_110_tpl),
        .in_data_in_111_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_111_tpl),
        .in_data_in_112_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_112_tpl),
        .in_data_in_113_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_113_tpl),
        .in_data_in_114_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_114_tpl),
        .in_data_in_115_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_115_tpl),
        .in_data_in_116_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_116_tpl),
        .in_data_in_117_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_117_tpl),
        .in_data_in_118_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_118_tpl),
        .in_data_in_119_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_119_tpl),
        .in_data_in_120_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_120_tpl),
        .in_data_in_121_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_121_tpl),
        .in_data_in_122_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_122_tpl),
        .in_data_in_123_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_123_tpl),
        .in_data_in_124_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_124_tpl),
        .in_data_in_125_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_125_tpl),
        .in_data_in_126_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_126_tpl),
        .in_data_in_127_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_127_tpl),
        .in_data_in_128_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_128_tpl),
        .in_data_in_129_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_129_tpl),
        .in_data_in_130_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_130_tpl),
        .in_data_in_131_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_131_tpl),
        .in_data_in_132_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_132_tpl),
        .in_data_in_133_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_133_tpl),
        .in_data_in_134_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_134_tpl),
        .in_data_in_135_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_135_tpl),
        .in_data_in_136_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_136_tpl),
        .in_data_in_137_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_137_tpl),
        .in_data_in_138_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_138_tpl),
        .in_data_in_139_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_139_tpl),
        .in_data_in_140_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_140_tpl),
        .in_data_in_141_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_141_tpl),
        .in_data_in_142_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_142_tpl),
        .in_data_in_143_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_143_tpl),
        .in_data_in_144_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_144_tpl),
        .in_data_in_145_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_145_tpl),
        .in_data_in_146_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_146_tpl),
        .in_data_in_147_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_147_tpl),
        .in_data_in_148_tpl(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_c0_exi21344_148_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_34_tpl),
        .out_data_out_35_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_35_tpl),
        .out_data_out_36_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_36_tpl),
        .out_data_out_37_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_37_tpl),
        .out_data_out_38_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_38_tpl),
        .out_data_out_39_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_39_tpl),
        .out_data_out_40_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_40_tpl),
        .out_data_out_41_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_41_tpl),
        .out_data_out_42_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_42_tpl),
        .out_data_out_43_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_43_tpl),
        .out_data_out_44_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_44_tpl),
        .out_data_out_45_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_45_tpl),
        .out_data_out_46_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_46_tpl),
        .out_data_out_47_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_47_tpl),
        .out_data_out_48_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_48_tpl),
        .out_data_out_49_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_49_tpl),
        .out_data_out_50_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_50_tpl),
        .out_data_out_51_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_51_tpl),
        .out_data_out_52_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_52_tpl),
        .out_data_out_53_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_53_tpl),
        .out_data_out_54_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_54_tpl),
        .out_data_out_55_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_55_tpl),
        .out_data_out_56_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_56_tpl),
        .out_data_out_57_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_57_tpl),
        .out_data_out_58_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_58_tpl),
        .out_data_out_59_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_59_tpl),
        .out_data_out_60_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_60_tpl),
        .out_data_out_61_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_61_tpl),
        .out_data_out_62_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_62_tpl),
        .out_data_out_63_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_63_tpl),
        .out_data_out_64_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_64_tpl),
        .out_data_out_65_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_65_tpl),
        .out_data_out_66_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_66_tpl),
        .out_data_out_67_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_67_tpl),
        .out_data_out_68_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_68_tpl),
        .out_data_out_69_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_69_tpl),
        .out_data_out_70_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_70_tpl),
        .out_data_out_71_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_71_tpl),
        .out_data_out_72_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_72_tpl),
        .out_data_out_73_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_73_tpl),
        .out_data_out_74_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_74_tpl),
        .out_data_out_75_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_75_tpl),
        .out_data_out_76_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_76_tpl),
        .out_data_out_77_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_77_tpl),
        .out_data_out_78_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_78_tpl),
        .out_data_out_79_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_79_tpl),
        .out_data_out_80_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_80_tpl),
        .out_data_out_81_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_81_tpl),
        .out_data_out_82_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_82_tpl),
        .out_data_out_83_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_83_tpl),
        .out_data_out_84_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_84_tpl),
        .out_data_out_85_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_85_tpl),
        .out_data_out_86_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_86_tpl),
        .out_data_out_87_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_87_tpl),
        .out_data_out_88_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_88_tpl),
        .out_data_out_89_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_89_tpl),
        .out_data_out_90_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_90_tpl),
        .out_data_out_91_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_91_tpl),
        .out_data_out_92_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_92_tpl),
        .out_data_out_93_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_93_tpl),
        .out_data_out_94_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_94_tpl),
        .out_data_out_95_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_95_tpl),
        .out_data_out_96_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_96_tpl),
        .out_data_out_97_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_97_tpl),
        .out_data_out_98_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_98_tpl),
        .out_data_out_99_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_99_tpl),
        .out_data_out_100_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_100_tpl),
        .out_data_out_101_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_101_tpl),
        .out_data_out_102_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_102_tpl),
        .out_data_out_103_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_103_tpl),
        .out_data_out_104_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_104_tpl),
        .out_data_out_105_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_105_tpl),
        .out_data_out_106_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_106_tpl),
        .out_data_out_107_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_107_tpl),
        .out_data_out_108_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_108_tpl),
        .out_data_out_109_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_109_tpl),
        .out_data_out_110_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_110_tpl),
        .out_data_out_111_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_111_tpl),
        .out_data_out_112_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_112_tpl),
        .out_data_out_113_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_113_tpl),
        .out_data_out_114_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_114_tpl),
        .out_data_out_115_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_115_tpl),
        .out_data_out_116_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_116_tpl),
        .out_data_out_117_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_117_tpl),
        .out_data_out_118_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_118_tpl),
        .out_data_out_119_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_119_tpl),
        .out_data_out_120_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_120_tpl),
        .out_data_out_121_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_121_tpl),
        .out_data_out_122_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_122_tpl),
        .out_data_out_123_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_123_tpl),
        .out_data_out_124_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_124_tpl),
        .out_data_out_125_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_125_tpl),
        .out_data_out_126_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_126_tpl),
        .out_data_out_127_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_127_tpl),
        .out_data_out_128_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_128_tpl),
        .out_data_out_129_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_129_tpl),
        .out_data_out_130_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_130_tpl),
        .out_data_out_131_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_131_tpl),
        .out_data_out_132_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_132_tpl),
        .out_data_out_133_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_133_tpl),
        .out_data_out_134_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_134_tpl),
        .out_data_out_135_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_135_tpl),
        .out_data_out_136_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_136_tpl),
        .out_data_out_137_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_137_tpl),
        .out_data_out_138_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_138_tpl),
        .out_data_out_139_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_139_tpl),
        .out_data_out_140_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_140_tpl),
        .out_data_out_141_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_141_tpl),
        .out_data_out_142_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_142_tpl),
        .out_data_out_143_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_143_tpl),
        .out_data_out_144_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_144_tpl),
        .out_data_out_145_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_145_tpl),
        .out_data_out_146_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_146_tpl),
        .out_data_out_147_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_147_tpl),
        .out_data_out_148_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_148_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@10
    assign out_c0_exit345_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit345_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit345_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit345_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit345_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit345_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit345_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit345_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit345_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit345_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit345_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit345_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit345_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit345_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit345_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit345_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit345_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit345_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit345_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit345_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit345_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit345_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit345_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit345_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit345_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit345_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit345_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit345_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit345_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_28_tpl;
    assign out_c0_exit345_29_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_29_tpl;
    assign out_c0_exit345_30_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_30_tpl;
    assign out_c0_exit345_31_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_31_tpl;
    assign out_c0_exit345_32_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_32_tpl;
    assign out_c0_exit345_33_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_33_tpl;
    assign out_c0_exit345_34_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_34_tpl;
    assign out_c0_exit345_35_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_35_tpl;
    assign out_c0_exit345_36_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_36_tpl;
    assign out_c0_exit345_37_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_37_tpl;
    assign out_c0_exit345_38_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_38_tpl;
    assign out_c0_exit345_39_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_39_tpl;
    assign out_c0_exit345_40_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_40_tpl;
    assign out_c0_exit345_41_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_41_tpl;
    assign out_c0_exit345_42_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_42_tpl;
    assign out_c0_exit345_43_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_43_tpl;
    assign out_c0_exit345_44_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_44_tpl;
    assign out_c0_exit345_45_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_45_tpl;
    assign out_c0_exit345_46_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_46_tpl;
    assign out_c0_exit345_47_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_47_tpl;
    assign out_c0_exit345_48_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_48_tpl;
    assign out_c0_exit345_49_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_49_tpl;
    assign out_c0_exit345_50_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_50_tpl;
    assign out_c0_exit345_51_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_51_tpl;
    assign out_c0_exit345_52_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_52_tpl;
    assign out_c0_exit345_53_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_53_tpl;
    assign out_c0_exit345_54_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_54_tpl;
    assign out_c0_exit345_55_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_55_tpl;
    assign out_c0_exit345_56_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_56_tpl;
    assign out_c0_exit345_57_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_57_tpl;
    assign out_c0_exit345_58_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_58_tpl;
    assign out_c0_exit345_59_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_59_tpl;
    assign out_c0_exit345_60_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_60_tpl;
    assign out_c0_exit345_61_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_61_tpl;
    assign out_c0_exit345_62_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_62_tpl;
    assign out_c0_exit345_63_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_63_tpl;
    assign out_c0_exit345_64_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_64_tpl;
    assign out_c0_exit345_65_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_65_tpl;
    assign out_c0_exit345_66_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_66_tpl;
    assign out_c0_exit345_67_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_67_tpl;
    assign out_c0_exit345_68_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_68_tpl;
    assign out_c0_exit345_69_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_69_tpl;
    assign out_c0_exit345_70_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_70_tpl;
    assign out_c0_exit345_71_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_71_tpl;
    assign out_c0_exit345_72_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_72_tpl;
    assign out_c0_exit345_73_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_73_tpl;
    assign out_c0_exit345_74_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_74_tpl;
    assign out_c0_exit345_75_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_75_tpl;
    assign out_c0_exit345_76_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_76_tpl;
    assign out_c0_exit345_77_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_77_tpl;
    assign out_c0_exit345_78_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_78_tpl;
    assign out_c0_exit345_79_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_79_tpl;
    assign out_c0_exit345_80_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_80_tpl;
    assign out_c0_exit345_81_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_81_tpl;
    assign out_c0_exit345_82_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_82_tpl;
    assign out_c0_exit345_83_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_83_tpl;
    assign out_c0_exit345_84_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_84_tpl;
    assign out_c0_exit345_85_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_85_tpl;
    assign out_c0_exit345_86_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_86_tpl;
    assign out_c0_exit345_87_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_87_tpl;
    assign out_c0_exit345_88_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_88_tpl;
    assign out_c0_exit345_89_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_89_tpl;
    assign out_c0_exit345_90_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_90_tpl;
    assign out_c0_exit345_91_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_91_tpl;
    assign out_c0_exit345_92_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_92_tpl;
    assign out_c0_exit345_93_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_93_tpl;
    assign out_c0_exit345_94_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_94_tpl;
    assign out_c0_exit345_95_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_95_tpl;
    assign out_c0_exit345_96_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_96_tpl;
    assign out_c0_exit345_97_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_97_tpl;
    assign out_c0_exit345_98_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_98_tpl;
    assign out_c0_exit345_99_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_99_tpl;
    assign out_c0_exit345_100_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_100_tpl;
    assign out_c0_exit345_101_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_101_tpl;
    assign out_c0_exit345_102_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_102_tpl;
    assign out_c0_exit345_103_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_103_tpl;
    assign out_c0_exit345_104_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_104_tpl;
    assign out_c0_exit345_105_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_105_tpl;
    assign out_c0_exit345_106_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_106_tpl;
    assign out_c0_exit345_107_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_107_tpl;
    assign out_c0_exit345_108_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_108_tpl;
    assign out_c0_exit345_109_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_109_tpl;
    assign out_c0_exit345_110_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_110_tpl;
    assign out_c0_exit345_111_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_111_tpl;
    assign out_c0_exit345_112_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_112_tpl;
    assign out_c0_exit345_113_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_113_tpl;
    assign out_c0_exit345_114_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_114_tpl;
    assign out_c0_exit345_115_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_115_tpl;
    assign out_c0_exit345_116_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_116_tpl;
    assign out_c0_exit345_117_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_117_tpl;
    assign out_c0_exit345_118_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_118_tpl;
    assign out_c0_exit345_119_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_119_tpl;
    assign out_c0_exit345_120_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_120_tpl;
    assign out_c0_exit345_121_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_121_tpl;
    assign out_c0_exit345_122_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_122_tpl;
    assign out_c0_exit345_123_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_123_tpl;
    assign out_c0_exit345_124_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_124_tpl;
    assign out_c0_exit345_125_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_125_tpl;
    assign out_c0_exit345_126_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_126_tpl;
    assign out_c0_exit345_127_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_127_tpl;
    assign out_c0_exit345_128_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_128_tpl;
    assign out_c0_exit345_129_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_129_tpl;
    assign out_c0_exit345_130_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_130_tpl;
    assign out_c0_exit345_131_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_131_tpl;
    assign out_c0_exit345_132_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_132_tpl;
    assign out_c0_exit345_133_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_133_tpl;
    assign out_c0_exit345_134_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_134_tpl;
    assign out_c0_exit345_135_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_135_tpl;
    assign out_c0_exit345_136_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_136_tpl;
    assign out_c0_exit345_137_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_137_tpl;
    assign out_c0_exit345_138_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_138_tpl;
    assign out_c0_exit345_139_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_139_tpl;
    assign out_c0_exit345_140_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_140_tpl;
    assign out_c0_exit345_141_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_141_tpl;
    assign out_c0_exit345_142_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_142_tpl;
    assign out_c0_exit345_143_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_143_tpl;
    assign out_c0_exit345_144_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_144_tpl;
    assign out_c0_exit345_145_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_145_tpl;
    assign out_c0_exit345_146_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_146_tpl;
    assign out_c0_exit345_147_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_147_tpl;
    assign out_c0_exit345_148_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_data_out_148_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,4)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,5)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,6)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,7)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,8)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,9)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,10)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out = i_sfc_logic_s_c0_in_for_cond68_preheader_load_weight0s_c0_enter30919_load_weight00_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out;

    // sync_out(GPOUT,26)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight01_aunroll_x_out_stall_entry;

endmodule
