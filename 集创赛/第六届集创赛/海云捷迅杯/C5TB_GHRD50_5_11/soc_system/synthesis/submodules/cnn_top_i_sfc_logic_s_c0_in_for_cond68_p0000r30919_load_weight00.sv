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

// SystemVerilog created from cnn_top_i_sfc_logic_s_c0_in_for_cond68_p0000r30919_load_weight00
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_sfc_logic_s_c0_in_for_cond68_p0000r30919_load_weight00 (
    output wire [31:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write,
    output wire [1023:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata,
    output wire [127:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount,
    output wire [0:0] out_c0_exi21344_0_tpl,
    output wire [0:0] out_c0_exi21344_1_tpl,
    output wire [0:0] out_c0_exi21344_2_tpl,
    output wire [7:0] out_c0_exi21344_3_tpl,
    output wire [7:0] out_c0_exi21344_4_tpl,
    output wire [7:0] out_c0_exi21344_5_tpl,
    output wire [7:0] out_c0_exi21344_6_tpl,
    output wire [7:0] out_c0_exi21344_7_tpl,
    output wire [7:0] out_c0_exi21344_8_tpl,
    output wire [7:0] out_c0_exi21344_9_tpl,
    output wire [7:0] out_c0_exi21344_10_tpl,
    output wire [7:0] out_c0_exi21344_11_tpl,
    output wire [7:0] out_c0_exi21344_12_tpl,
    output wire [7:0] out_c0_exi21344_13_tpl,
    output wire [7:0] out_c0_exi21344_14_tpl,
    output wire [7:0] out_c0_exi21344_15_tpl,
    output wire [7:0] out_c0_exi21344_16_tpl,
    output wire [7:0] out_c0_exi21344_17_tpl,
    output wire [7:0] out_c0_exi21344_18_tpl,
    output wire [7:0] out_c0_exi21344_19_tpl,
    output wire [7:0] out_c0_exi21344_20_tpl,
    output wire [7:0] out_c0_exi21344_21_tpl,
    output wire [7:0] out_c0_exi21344_22_tpl,
    output wire [7:0] out_c0_exi21344_23_tpl,
    output wire [7:0] out_c0_exi21344_24_tpl,
    output wire [7:0] out_c0_exi21344_25_tpl,
    output wire [7:0] out_c0_exi21344_26_tpl,
    output wire [7:0] out_c0_exi21344_27_tpl,
    output wire [7:0] out_c0_exi21344_28_tpl,
    output wire [7:0] out_c0_exi21344_29_tpl,
    output wire [7:0] out_c0_exi21344_30_tpl,
    output wire [7:0] out_c0_exi21344_31_tpl,
    output wire [7:0] out_c0_exi21344_32_tpl,
    output wire [7:0] out_c0_exi21344_33_tpl,
    output wire [7:0] out_c0_exi21344_34_tpl,
    output wire [7:0] out_c0_exi21344_35_tpl,
    output wire [7:0] out_c0_exi21344_36_tpl,
    output wire [7:0] out_c0_exi21344_37_tpl,
    output wire [7:0] out_c0_exi21344_38_tpl,
    output wire [7:0] out_c0_exi21344_39_tpl,
    output wire [7:0] out_c0_exi21344_40_tpl,
    output wire [7:0] out_c0_exi21344_41_tpl,
    output wire [7:0] out_c0_exi21344_42_tpl,
    output wire [7:0] out_c0_exi21344_43_tpl,
    output wire [7:0] out_c0_exi21344_44_tpl,
    output wire [7:0] out_c0_exi21344_45_tpl,
    output wire [7:0] out_c0_exi21344_46_tpl,
    output wire [7:0] out_c0_exi21344_47_tpl,
    output wire [7:0] out_c0_exi21344_48_tpl,
    output wire [7:0] out_c0_exi21344_49_tpl,
    output wire [7:0] out_c0_exi21344_50_tpl,
    output wire [7:0] out_c0_exi21344_51_tpl,
    output wire [7:0] out_c0_exi21344_52_tpl,
    output wire [7:0] out_c0_exi21344_53_tpl,
    output wire [7:0] out_c0_exi21344_54_tpl,
    output wire [7:0] out_c0_exi21344_55_tpl,
    output wire [7:0] out_c0_exi21344_56_tpl,
    output wire [7:0] out_c0_exi21344_57_tpl,
    output wire [7:0] out_c0_exi21344_58_tpl,
    output wire [7:0] out_c0_exi21344_59_tpl,
    output wire [7:0] out_c0_exi21344_60_tpl,
    output wire [7:0] out_c0_exi21344_61_tpl,
    output wire [7:0] out_c0_exi21344_62_tpl,
    output wire [7:0] out_c0_exi21344_63_tpl,
    output wire [7:0] out_c0_exi21344_64_tpl,
    output wire [7:0] out_c0_exi21344_65_tpl,
    output wire [7:0] out_c0_exi21344_66_tpl,
    output wire [7:0] out_c0_exi21344_67_tpl,
    output wire [7:0] out_c0_exi21344_68_tpl,
    output wire [7:0] out_c0_exi21344_69_tpl,
    output wire [7:0] out_c0_exi21344_70_tpl,
    output wire [7:0] out_c0_exi21344_71_tpl,
    output wire [7:0] out_c0_exi21344_72_tpl,
    output wire [7:0] out_c0_exi21344_73_tpl,
    output wire [7:0] out_c0_exi21344_74_tpl,
    output wire [7:0] out_c0_exi21344_75_tpl,
    output wire [7:0] out_c0_exi21344_76_tpl,
    output wire [7:0] out_c0_exi21344_77_tpl,
    output wire [7:0] out_c0_exi21344_78_tpl,
    output wire [7:0] out_c0_exi21344_79_tpl,
    output wire [7:0] out_c0_exi21344_80_tpl,
    output wire [7:0] out_c0_exi21344_81_tpl,
    output wire [7:0] out_c0_exi21344_82_tpl,
    output wire [7:0] out_c0_exi21344_83_tpl,
    output wire [7:0] out_c0_exi21344_84_tpl,
    output wire [7:0] out_c0_exi21344_85_tpl,
    output wire [7:0] out_c0_exi21344_86_tpl,
    output wire [7:0] out_c0_exi21344_87_tpl,
    output wire [7:0] out_c0_exi21344_88_tpl,
    output wire [7:0] out_c0_exi21344_89_tpl,
    output wire [7:0] out_c0_exi21344_90_tpl,
    output wire [7:0] out_c0_exi21344_91_tpl,
    output wire [7:0] out_c0_exi21344_92_tpl,
    output wire [7:0] out_c0_exi21344_93_tpl,
    output wire [7:0] out_c0_exi21344_94_tpl,
    output wire [7:0] out_c0_exi21344_95_tpl,
    output wire [7:0] out_c0_exi21344_96_tpl,
    output wire [7:0] out_c0_exi21344_97_tpl,
    output wire [7:0] out_c0_exi21344_98_tpl,
    output wire [7:0] out_c0_exi21344_99_tpl,
    output wire [7:0] out_c0_exi21344_100_tpl,
    output wire [7:0] out_c0_exi21344_101_tpl,
    output wire [7:0] out_c0_exi21344_102_tpl,
    output wire [7:0] out_c0_exi21344_103_tpl,
    output wire [7:0] out_c0_exi21344_104_tpl,
    output wire [7:0] out_c0_exi21344_105_tpl,
    output wire [7:0] out_c0_exi21344_106_tpl,
    output wire [7:0] out_c0_exi21344_107_tpl,
    output wire [7:0] out_c0_exi21344_108_tpl,
    output wire [7:0] out_c0_exi21344_109_tpl,
    output wire [7:0] out_c0_exi21344_110_tpl,
    output wire [7:0] out_c0_exi21344_111_tpl,
    output wire [7:0] out_c0_exi21344_112_tpl,
    output wire [7:0] out_c0_exi21344_113_tpl,
    output wire [7:0] out_c0_exi21344_114_tpl,
    output wire [7:0] out_c0_exi21344_115_tpl,
    output wire [7:0] out_c0_exi21344_116_tpl,
    output wire [7:0] out_c0_exi21344_117_tpl,
    output wire [7:0] out_c0_exi21344_118_tpl,
    output wire [7:0] out_c0_exi21344_119_tpl,
    output wire [7:0] out_c0_exi21344_120_tpl,
    output wire [7:0] out_c0_exi21344_121_tpl,
    output wire [7:0] out_c0_exi21344_122_tpl,
    output wire [7:0] out_c0_exi21344_123_tpl,
    output wire [7:0] out_c0_exi21344_124_tpl,
    output wire [7:0] out_c0_exi21344_125_tpl,
    output wire [7:0] out_c0_exi21344_126_tpl,
    output wire [7:0] out_c0_exi21344_127_tpl,
    output wire [7:0] out_c0_exi21344_128_tpl,
    output wire [7:0] out_c0_exi21344_129_tpl,
    output wire [7:0] out_c0_exi21344_130_tpl,
    output wire [0:0] out_c0_exi21344_131_tpl,
    output wire [0:0] out_c0_exi21344_132_tpl,
    output wire [0:0] out_c0_exi21344_133_tpl,
    output wire [0:0] out_c0_exi21344_134_tpl,
    output wire [0:0] out_c0_exi21344_135_tpl,
    output wire [31:0] out_c0_exi21344_136_tpl,
    output wire [0:0] out_c0_exi21344_137_tpl,
    output wire [31:0] out_c0_exi21344_138_tpl,
    output wire [0:0] out_c0_exi21344_139_tpl,
    output wire [31:0] out_c0_exi21344_140_tpl,
    output wire [0:0] out_c0_exi21344_141_tpl,
    output wire [0:0] out_c0_exi21344_142_tpl,
    output wire [31:0] out_c0_exi21344_143_tpl,
    output wire [31:0] out_c0_exi21344_144_tpl,
    output wire [0:0] out_c0_exi21344_145_tpl,
    output wire [31:0] out_c0_exi21344_146_tpl,
    output wire [0:0] out_c0_exi21344_147_tpl,
    output wire [0:0] out_c0_exi21344_148_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_load_weight019,
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
    input wire [1023:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [11:0] dupName_19_i_unnamed_load_weight00_dupName_0_trunc_sel_x_b;
    wire [11:0] dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b;
    wire [11:0] dupName_19_i_unnamed_load_weight00_dupName_3_trunc_sel_x_b;
    wire [11:0] dupName_19_i_unnamed_load_weight00_dupName_5_trunc_sel_x_b;
    wire [12:0] dupName_19_i_unnamed_load_weight00_dupName_0_add_x_a;
    wire [12:0] dupName_19_i_unnamed_load_weight00_dupName_0_add_x_b;
    logic [12:0] dupName_19_i_unnamed_load_weight00_dupName_0_add_x_o;
    wire [12:0] dupName_19_i_unnamed_load_weight00_dupName_0_add_x_q;
    wire [7:0] dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b;
    wire [11:0] dupName_19_i_unnamed_load_weight00_dupName_0_shift_join_x_q;
    wire [12:0] dupName_19_i_unnamed_load_weight00_add_x_a;
    wire [12:0] dupName_19_i_unnamed_load_weight00_add_x_b;
    logic [12:0] dupName_19_i_unnamed_load_weight00_add_x_o;
    wire [12:0] dupName_19_i_unnamed_load_weight00_add_x_q;
    wire [63:0] dupName_19_i_unnamed_load_weight00_append_upper_bits_x_q;
    wire [3:0] dupName_19_i_unnamed_load_weight00_c_i4_02_x_q;
    wire [7:0] dupName_19_i_unnamed_load_weight00_c_i8_01_x_q;
    wire [3:0] dupName_19_i_unnamed_load_weight00_narrow_x_b;
    wire [11:0] dupName_19_i_unnamed_load_weight00_shift_join_x_q;
    wire [3:0] bgTrunc_i_fpga_indvars_iv_next_load_weight0158_sel_x_b;
    wire [0:0] i_first_cleanup66_load_weight03_sel_x_b;
    wire [63:0] i_idxprom80_load_weight014_sel_x_b;
    wire [63:0] i_idxprom84_load_weight021_sel_x_b;
    wire [0:0] i_last_initeration62_load_weight010_sel_x_b;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_0_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_1_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_2_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_3_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_4_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_5_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_6_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_7_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_8_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_9_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_10_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_11_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_12_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_13_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_14_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_15_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_16_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_17_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_18_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_19_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_20_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_21_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_22_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_23_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_24_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_25_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_26_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_27_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_28_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_29_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_30_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_31_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_32_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_33_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_34_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_35_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_36_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_37_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_38_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_39_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_40_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_41_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_42_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_43_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_44_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_45_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_46_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_47_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_48_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_49_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_50_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_51_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_52_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_53_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_54_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_55_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_56_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_57_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_58_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_59_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_60_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_61_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_62_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_63_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_64_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_65_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_66_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_67_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_68_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_69_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_70_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_71_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_72_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_73_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_74_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_75_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_76_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_77_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_78_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_79_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_80_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_81_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_82_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_83_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_84_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_85_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_86_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_87_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_88_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_89_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_90_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_91_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_92_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_93_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_94_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_95_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_96_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_97_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_98_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_99_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_100_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_101_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_102_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_103_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_104_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_105_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_106_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_107_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_108_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_109_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_110_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_111_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_112_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_113_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_114_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_115_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_116_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_117_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_118_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_119_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_120_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_121_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_122_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_123_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_124_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_125_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_126_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_127_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;
    wire [1:0] c_i2_1204_q;
    wire [3:0] c_i4_1216_q;
    wire [3:0] c_i4_3214_q;
    wire [63:0] c_load_weight0_weight_buff_pmem_q;
    wire [1:0] i_cleanups_shl65_load_weight05_vt_join_q;
    wire [0:0] i_cleanups_shl65_load_weight05_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor67_load_weight04_q;
    wire [0:0] i_first_cleanup_xor67_or_load_weight024_qi;
    reg [0:0] i_first_cleanup_xor67_or_load_weight024_q;
    wire [4:0] i_fpga_indvars_iv_next_load_weight0158_a;
    wire [4:0] i_fpga_indvars_iv_next_load_weight0158_b;
    logic [4:0] i_fpga_indvars_iv_next_load_weight0158_o;
    wire [4:0] i_fpga_indvars_iv_next_load_weight0158_q;
    wire [2:0] i_idxprom84_load_weight021_vt_const_2_q;
    wire [31:0] i_idxprom84_load_weight021_vt_const_63_q;
    wire [63:0] i_idxprom84_load_weight021_vt_join_q;
    wire [28:0] i_idxprom84_load_weight021_vt_select_31_b;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going61_load_weight06_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop49_load_weight0167_out_feedback_stall_out_49;
    wire [0:0] i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_pop52_load_weight015_out_feedback_stall_out_52;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_feedback_stall_out_47;
    wire [1:0] i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_feedback_stall_out_53;
    wire [31:0] i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_feedback_stall_out_48;
    wire [31:0] i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_feedback_stall_out_50;
    wire [3:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_valid_out_55;
    wire [0:0] i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_valid_out_49;
    wire [0:0] i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_valid_out_52;
    wire [7:0] i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_valid_out_47;
    wire [7:0] i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_valid_out_53;
    wire [31:0] i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_valid_out_48;
    wire [31:0] i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_valid_out_50;
    wire [7:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_valid_out_45;
    wire [0:0] i_masked70_load_weight0166_qi;
    reg [0:0] i_masked70_load_weight0166_q;
    wire [6:0] i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_const_6_q;
    wire [63:0] i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_join_q;
    wire [56:0] i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_select_63_b;
    wire [31:0] i_mul82_load_weight020_vt_join_q;
    wire [28:0] i_mul82_load_weight020_vt_select_31_b;
    wire [0:0] i_next_cleanups69_load_weight0164_s;
    reg [1:0] i_next_cleanups69_load_weight0164_q;
    wire [1:0] i_next_initerations60_load_weight08_vt_join_q;
    wire [0:0] i_next_initerations60_load_weight08_vt_select_0_b;
    wire [0:0] i_notcmp57_load_weight0161_q;
    wire [0:0] i_or68_load_weight0163_q;
    wire [0:0] i_phi_decision312_xor_load_weight017_q;
    wire [0:0] i_unnamed_load_weight0160_q;
    wire [63:0] i_unnamed_load_weight022_vt_join_q;
    wire [56:0] i_unnamed_load_weight022_vt_select_63_b;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid177_i_cleanups_shl65_load_weight00_shift_x_q;
    wire [0:0] leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_s;
    reg [1:0] leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid185_i_mul82_load_weight00_shift_x_q;
    wire [0:0] leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_s;
    reg [31:0] leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q;
    wire [1:0] leftShiftStage1Idx1Pad2_uid188_i_mul82_load_weight00_shift_x_q;
    wire [29:0] leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_in;
    wire [29:0] leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid190_i_mul82_load_weight00_shift_x_q;
    wire [0:0] leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_s;
    reg [31:0] leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid196_i_next_initerations60_load_weight00_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid198_i_next_initerations60_load_weight00_shift_x_q;
    wire [0:0] rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_s;
    reg [1:0] rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_q;
    wire [0:0] i_exitcond_load_weight0156_cmp_nsign_qi;
    reg [0:0] i_exitcond_load_weight0156_cmp_nsign_q;
    wire [11:0] dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_b;
    wire [51:0] dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c;
    reg [51:0] redist0_dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c_1_q;
    reg [0:0] redist1_valid_fanout_reg0_q_4_q;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist1_valid_fanout_reg0_q_4_delay_2;
    reg [0:0] redist2_i_masked70_load_weight0166_q_5_q;
    reg [0:0] redist2_i_masked70_load_weight0166_q_5_delay_0;
    reg [0:0] redist2_i_masked70_load_weight0166_q_5_delay_1;
    reg [0:0] redist2_i_masked70_load_weight0166_q_5_delay_2;
    reg [0:0] redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q;
    reg [0:0] redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_q;
    reg [0:0] redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_0;
    reg [0:0] redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_1;
    reg [0:0] redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_2;
    reg [0:0] redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_3;
    reg [0:0] redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_q;
    reg [0:0] redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_0;
    reg [0:0] redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_1;
    reg [0:0] redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_2;
    reg [0:0] redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_3;
    reg [0:0] redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_q;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_0;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_1;
    reg [0:0] redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_2;
    reg [0:0] redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_0;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_1;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_2;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_0;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_1;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_2;
    reg [0:0] redist13_i_first_cleanup_xor67_or_load_weight024_q_5_q;
    reg [0:0] redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_0;
    reg [0:0] redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_1;
    reg [0:0] redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_2;
    reg [0:0] redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q;
    reg [31:0] redist15_sync_together247_aunroll_x_in_c0_eni22_2_tpl_1_q;
    reg [31:0] redist16_sync_together247_aunroll_x_in_c0_eni22_4_tpl_1_q;
    reg [0:0] redist17_sync_together247_aunroll_x_in_c0_eni22_5_tpl_1_q;
    reg [31:0] redist18_sync_together247_aunroll_x_in_c0_eni22_6_tpl_1_q;
    reg [0:0] redist19_sync_together247_aunroll_x_in_c0_eni22_7_tpl_1_q;
    reg [0:0] redist20_sync_together247_aunroll_x_in_c0_eni22_8_tpl_1_q;
    reg [0:0] redist21_sync_together247_aunroll_x_in_c0_eni22_9_tpl_1_q;
    reg [0:0] redist23_sync_together247_aunroll_x_in_c0_eni22_11_tpl_6_q;
    reg [0:0] redist25_sync_together247_aunroll_x_in_c0_eni22_13_tpl_6_q;
    reg [0:0] redist27_sync_together247_aunroll_x_in_c0_eni22_15_tpl_6_q;
    reg [0:0] redist28_sync_together247_aunroll_x_in_c0_eni22_16_tpl_6_q;
    reg [0:0] redist31_sync_together247_aunroll_x_in_c0_eni22_19_tpl_6_q;
    reg [0:0] redist33_sync_together247_aunroll_x_in_c0_eni22_21_tpl_6_q;
    reg [0:0] redist34_sync_together247_aunroll_x_in_c0_eni22_22_tpl_6_q;
    reg [0:0] redist35_sync_together247_aunroll_x_in_i_valid_1_q;
    reg [7:0] redist36_dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b_1_q;
    reg [11:0] redist37_dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b_1_q;
    wire redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_reset0;
    wire [31:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ia;
    wire [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_aa;
    wire [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ab;
    wire [31:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_iq;
    wire [31:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_q;
    wire [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i;
    (* preserve *) reg redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_eq;
    reg [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_wraddr_q;
    wire [2:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_last_q;
    wire [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmpReg_q;
    wire [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_notEnable_q;
    wire [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena_q;
    wire [0:0] redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_enaAnd_q;
    wire redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_reset0;
    wire [31:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ia;
    wire [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_aa;
    wire [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ab;
    wire [31:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_iq;
    wire [31:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_q;
    wire [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i;
    (* preserve *) reg redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_eq;
    reg [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_wraddr_q;
    wire [2:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_last_q;
    wire [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmpReg_q;
    wire [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_notEnable_q;
    wire [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena_q;
    wire [0:0] redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_enaAnd_q;
    wire redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_reset0;
    wire [31:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ia;
    wire [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_aa;
    wire [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ab;
    wire [31:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_iq;
    wire [31:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_q;
    wire [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i;
    (* preserve *) reg redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_eq;
    reg [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_wraddr_q;
    wire [2:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_last_q;
    wire [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmpReg_q;
    wire [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_notEnable_q;
    wire [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena_q;
    wire [0:0] redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_enaAnd_q;
    wire redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_reset0;
    wire [31:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ia;
    wire [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_aa;
    wire [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ab;
    wire [31:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_iq;
    wire [31:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_q;
    wire [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i;
    (* preserve *) reg redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_eq;
    reg [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_wraddr_q;
    wire [2:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_last_q;
    wire [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmpReg_q;
    wire [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_notEnable_q;
    wire [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena_q;
    wire [0:0] redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_enaAnd_q;
    wire redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_reset0;
    wire [31:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ia;
    wire [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_aa;
    wire [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ab;
    wire [31:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_iq;
    wire [31:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_q;
    wire [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i;
    (* preserve *) reg redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_eq;
    reg [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_wraddr_q;
    wire [2:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_last_q;
    wire [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmpReg_q;
    wire [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_notEnable_q;
    wire [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena_q;
    wire [0:0] redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_enaAnd_q;
    wire redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_reset0;
    wire [31:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ia;
    wire [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_aa;
    wire [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ab;
    wire [31:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_iq;
    wire [31:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_q;
    wire [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_q;
    (* preserve *) reg [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i;
    (* preserve *) reg redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_eq;
    reg [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_wraddr_q;
    wire [2:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_last_q;
    wire [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmpReg_q;
    wire [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_notEnable_q;
    wire [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena_q;
    wire [0:0] redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist35_sync_together247_aunroll_x_in_i_valid_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together247_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist35_sync_together247_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,153)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist35_sync_together247_aunroll_x_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i4_1216(CONSTANT,74)
    assign c_i4_1216_q = $unsigned(4'b1111);

    // i_fpga_indvars_iv_next_load_weight0158(ADD,87)@1
    assign i_fpga_indvars_iv_next_load_weight0158_a = {1'b0, i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_data_out};
    assign i_fpga_indvars_iv_next_load_weight0158_b = {1'b0, c_i4_1216_q};
    assign i_fpga_indvars_iv_next_load_weight0158_o = $unsigned(i_fpga_indvars_iv_next_load_weight0158_a) + $unsigned(i_fpga_indvars_iv_next_load_weight0158_b);
    assign i_fpga_indvars_iv_next_load_weight0158_q = i_fpga_indvars_iv_next_load_weight0158_o[4:0];

    // bgTrunc_i_fpga_indvars_iv_next_load_weight0158_sel_x(BITSELECT,22)@1
    assign bgTrunc_i_fpga_indvars_iv_next_load_weight0158_sel_x_b = i_fpga_indvars_iv_next_load_weight0158_q[3:0];

    // i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159(BLACKBOX,120)@1
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    cnn_top_i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight00 thei_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_load_weight0158_sel_x_b),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_feedback_stall_out_45),
        .in_keep_going61(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_3214(CONSTANT,75)
    assign c_i4_3214_q = $unsigned(4'b0011);

    // i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155(BLACKBOX,107)@1
    // out out_feedback_stall_out_45@20000000
    cnn_top_i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight00 thei_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155 (
        .in_data_in(c_i4_3214_q),
        .in_dir(in_c0_eni22_1_tpl),
        .in_feedback_in_45(i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i4_fpga_indvars_iv_push45_load_weight0159_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_load_weight0156_cmp_nsign(LOGICAL,202)@1 + 1
    assign i_exitcond_load_weight0156_cmp_nsign_qi = $unsigned(~ (i_llvm_fpga_pop_i4_fpga_indvars_iv_pop45_load_weight0155_out_data_out[3:3]));
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_exitcond_load_weight0156_cmp_nsign_delay ( .xin(i_exitcond_load_weight0156_cmp_nsign_qi), .xout(i_exitcond_load_weight0156_cmp_nsign_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_push52_load_weight016(BLACKBOX,114)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    cnn_top_i_llvm_fpga_push_i1_push52_load_weight00 thei_llvm_fpga_push_i1_push52_load_weight016 (
        .in_data_in(redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_pop52_load_weight015_out_feedback_stall_out_52),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist35_sync_together247_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_pop52_load_weight015(BLACKBOX,101)@1
    // out out_feedback_stall_out_52@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop52_load_weight00 thei_llvm_fpga_pop_i1_pop52_load_weight015 (
        .in_data_in(in_c0_eni22_3_tpl),
        .in_dir(in_c0_eni22_1_tpl),
        .in_feedback_in_52(i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_push52_load_weight016_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_pop52_load_weight015_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out);
        end
    end

    // i_unnamed_load_weight0160(LOGICAL,135)@2
    assign i_unnamed_load_weight0160_q = redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q & i_exitcond_load_weight0156_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond71_load_weight0162(BLACKBOX,112)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    cnn_top_i_llvm_fpga_push_i1_notexitcond71_load_weight00 thei_llvm_fpga_push_i1_notexitcond71_load_weight0162 (
        .in_data_in(i_unnamed_load_weight0160_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_not_exitcond_stall_out),
        .in_first_cleanup66(i_first_cleanup66_load_weight03_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist35_sync_together247_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,148)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid196_i_next_initerations60_load_weight00_shift_x(BITSELECT,195)@2
    assign rightShiftStage0Idx1Rng1_uid196_i_next_initerations60_load_weight00_shift_x_b = i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_data_out[1:1];

    // rightShiftStage0Idx1_uid198_i_next_initerations60_load_weight00_shift_x(BITJOIN,197)@2
    assign rightShiftStage0Idx1_uid198_i_next_initerations60_load_weight00_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid196_i_next_initerations60_load_weight00_shift_x_b};

    // valid_fanout_reg1(REG,146)@1 + 1
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

    // valid_fanout_reg2(REG,147)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations59_push46_load_weight09(BLACKBOX,116)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    cnn_top_i_llvm_fpga_push_i2_initerations59_push46_load_weight00 thei_llvm_fpga_push_i2_initerations59_push46_load_weight09 (
        .in_data_in(i_next_initerations60_load_weight08_vt_join_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_feedback_stall_out_46),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07(BLACKBOX,103)@2
    // out out_feedback_stall_out_46@20000000
    cnn_top_i_llvm_fpga_pop_i2_initerations59_pop46_load_weight00 thei_llvm_fpga_pop_i2_initerations59_pop46_load_weight07 (
        .in_data_in(c_i2_1204_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i2_initerations59_push46_load_weight09_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x(MUX,199)@2
    assign rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_s or i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_data_out or rightShiftStage0Idx1_uid198_i_next_initerations60_load_weight00_shift_x_q)
    begin
        unique case (rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_s)
            1'b0 : rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_q = i_llvm_fpga_pop_i2_initerations59_pop46_load_weight07_out_data_out;
            1'b1 : rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_q = rightShiftStage0Idx1_uid198_i_next_initerations60_load_weight00_shift_x_q;
            default : rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations60_load_weight08_vt_select_0(BITSELECT,131)@2
    assign i_next_initerations60_load_weight08_vt_select_0_b = rightShiftStage0_uid200_i_next_initerations60_load_weight00_shift_x_q[0:0];

    // i_next_initerations60_load_weight08_vt_join(BITJOIN,130)@2
    assign i_next_initerations60_load_weight08_vt_join_q = {GND_q, i_next_initerations60_load_weight08_vt_select_0_b};

    // i_last_initeration62_load_weight010_sel_x(BITSELECT,32)@2
    assign i_last_initeration62_load_weight010_sel_x_b = i_next_initerations60_load_weight08_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration63_load_weight011(BLACKBOX,108)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    cnn_top_i_llvm_fpga_push_i1_lastiniteration63_load_weight00 thei_llvm_fpga_push_i1_lastiniteration63_load_weight011 (
        .in_data_in(i_last_initeration62_load_weight010_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_initeration_stall_out),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going61_load_weight06(BLACKBOX,96)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    cnn_top_i_llvm_fpga_pipeline_keep_going61_load_weight00 thei_llvm_fpga_pipeline_keep_going61_load_weight06 (
        .in_data_in(in_c0_eni22_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration63_load_weight011_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond71_load_weight0162_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x(BITSELECT,175)@2
    assign leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_in = i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_b = leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid177_i_cleanups_shl65_load_weight00_shift_x(BITJOIN,176)@2
    assign leftShiftStage0Idx1_uid177_i_cleanups_shl65_load_weight00_shift_x_q = {leftShiftStage0Idx1Rng1_uid176_i_cleanups_shl65_load_weight00_shift_x_b, GND_q};

    // leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x(MUX,178)@2
    assign leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_s or i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out or leftShiftStage0Idx1_uid177_i_cleanups_shl65_load_weight00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_s)
            1'b0 : leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_q = i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out;
            1'b1 : leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_q = leftShiftStage0Idx1_uid177_i_cleanups_shl65_load_weight00_shift_x_q;
            default : leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl65_load_weight05_vt_select_1(BITSELECT,82)@2
    assign i_cleanups_shl65_load_weight05_vt_select_1_b = leftShiftStage0_uid179_i_cleanups_shl65_load_weight00_shift_x_q[1:1];

    // i_cleanups_shl65_load_weight05_vt_join(BITJOIN,81)@2
    assign i_cleanups_shl65_load_weight05_vt_join_q = {i_cleanups_shl65_load_weight05_vt_select_1_b, GND_q};

    // i_notcmp57_load_weight0161(LOGICAL,132)@2
    assign i_notcmp57_load_weight0161_q = i_unnamed_load_weight0160_q ^ VCC_q;

    // i_or68_load_weight0163(LOGICAL,133)@2
    assign i_or68_load_weight0163_q = i_notcmp57_load_weight0161_q | i_first_cleanup_xor67_load_weight04_q;

    // i_next_cleanups69_load_weight0164(MUX,128)@2
    assign i_next_cleanups69_load_weight0164_s = i_or68_load_weight0163_q;
    always @(i_next_cleanups69_load_weight0164_s or i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out or i_cleanups_shl65_load_weight05_vt_join_q)
    begin
        unique case (i_next_cleanups69_load_weight0164_s)
            1'b0 : i_next_cleanups69_load_weight0164_q = i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out;
            1'b1 : i_next_cleanups69_load_weight0164_q = i_cleanups_shl65_load_weight05_vt_join_q;
            default : i_next_cleanups69_load_weight0164_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165(BLACKBOX,115)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    cnn_top_i_llvm_fpga_push_i2_cleanups64_push47_load_weight00 thei_llvm_fpga_push_i2_cleanups64_push47_load_weight0165 (
        .in_data_in(i_next_cleanups69_load_weight0164_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_feedback_stall_out_47),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist35_sync_together247_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q <= $unsigned(in_c0_eni22_1_tpl);
        end
    end

    // c_i2_1204(CONSTANT,72)
    assign c_i2_1204_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02(BLACKBOX,102)@2
    // out out_feedback_stall_out_47@20000000
    cnn_top_i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight00 thei_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02 (
        .in_data_in(c_i2_1204_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i2_cleanups64_push47_load_weight0165_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist35_sync_together247_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup66_load_weight03_sel_x(BITSELECT,29)@2
    assign i_first_cleanup66_load_weight03_sel_x_b = i_llvm_fpga_pop_i2_cleanups64_pop47_load_weight02_out_data_out[0:0];

    // i_first_cleanup_xor67_load_weight04(LOGICAL,85)@2
    assign i_first_cleanup_xor67_load_weight04_q = i_first_cleanup66_load_weight03_sel_x_b ^ VCC_q;

    // i_phi_decision312_xor_load_weight017(LOGICAL,134)@2
    assign i_phi_decision312_xor_load_weight017_q = redist3_i_llvm_fpga_pop_i1_pop52_load_weight015_out_data_out_1_q ^ VCC_q;

    // i_first_cleanup_xor67_or_load_weight024(LOGICAL,86)@2 + 1
    assign i_first_cleanup_xor67_or_load_weight024_qi = i_phi_decision312_xor_load_weight017_q | i_first_cleanup_xor67_load_weight04_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_first_cleanup_xor67_or_load_weight024_delay ( .xin(i_first_cleanup_xor67_or_load_weight024_qi), .xout(i_first_cleanup_xor67_or_load_weight024_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_load_weight0_weight_buff_pmem(CONSTANT,77)
    assign c_load_weight0_weight_buff_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select(BITSELECT,203)@2
    assign dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_b = c_load_weight0_weight_buff_pmem_q[11:0];
    assign dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c = c_load_weight0_weight_buff_pmem_q[63:12];

    // redist0_dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c_1_q <= $unsigned(dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c);
        end
    end

    // i_idxprom84_load_weight021_vt_const_63(CONSTANT,92)
    assign i_idxprom84_load_weight021_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x(BITSELECT,188)@2
    assign leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_in = leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q[29:0];
    assign leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_b = leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_in[29:0];

    // leftShiftStage1Idx1Pad2_uid188_i_mul82_load_weight00_shift_x(CONSTANT,187)
    assign leftShiftStage1Idx1Pad2_uid188_i_mul82_load_weight00_shift_x_q = $unsigned(2'b00);

    // leftShiftStage1Idx1_uid190_i_mul82_load_weight00_shift_x(BITJOIN,189)@2
    assign leftShiftStage1Idx1_uid190_i_mul82_load_weight00_shift_x_q = {leftShiftStage1Idx1Rng2_uid189_i_mul82_load_weight00_shift_x_b, leftShiftStage1Idx1Pad2_uid188_i_mul82_load_weight00_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x(BITSELECT,183)@2
    assign leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_in = i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_b = leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid185_i_mul82_load_weight00_shift_x(BITJOIN,184)@2
    assign leftShiftStage0Idx1_uid185_i_mul82_load_weight00_shift_x_q = {leftShiftStage0Idx1Rng1_uid184_i_mul82_load_weight00_shift_x_b, GND_q};

    // valid_fanout_reg6(REG,151)@1 + 1
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

    // valid_fanout_reg7(REG,152)@1 + 1
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

    // i_llvm_fpga_push_i32_li_07594_push48_load_weight019(BLACKBOX,118)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    cnn_top_i_llvm_fpga_push_i32_li_07594_push48_load_weight00 thei_llvm_fpga_push_i32_li_07594_push48_load_weight019 (
        .in_data_in(i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_feedback_stall_out_48),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_sync_together247_aunroll_x_in_c0_eni22_4_tpl_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together247_aunroll_x_in_c0_eni22_4_tpl_1_q <= '0;
        end
        else
        begin
            redist16_sync_together247_aunroll_x_in_c0_eni22_4_tpl_1_q <= $unsigned(in_c0_eni22_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018(BLACKBOX,105)@2
    // out out_feedback_stall_out_48@20000000
    cnn_top_i_llvm_fpga_pop_i32_li_07594_pop48_load_weight00 thei_llvm_fpga_pop_i32_li_07594_pop48_load_weight018 (
        .in_data_in(redist16_sync_together247_aunroll_x_in_c0_eni22_4_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_li_07594_push48_load_weight019_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0_uid187_i_mul82_load_weight00_shift_x(MUX,186)@2
    assign leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_s or i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out or leftShiftStage0Idx1_uid185_i_mul82_load_weight00_shift_x_q)
    begin
        unique case (leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_s)
            1'b0 : leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q = i_llvm_fpga_pop_i32_li_07594_pop48_load_weight018_out_data_out;
            1'b1 : leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q = leftShiftStage0Idx1_uid185_i_mul82_load_weight00_shift_x_q;
            default : leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid192_i_mul82_load_weight00_shift_x(MUX,191)@2
    assign leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_s or leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q or leftShiftStage1Idx1_uid190_i_mul82_load_weight00_shift_x_q)
    begin
        unique case (leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_s)
            1'b0 : leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_q = leftShiftStage0_uid187_i_mul82_load_weight00_shift_x_q;
            1'b1 : leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_q = leftShiftStage1Idx1_uid190_i_mul82_load_weight00_shift_x_q;
            default : leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_q = 32'b0;
        endcase
    end

    // i_mul82_load_weight020_vt_select_31(BITSELECT,127)@2
    assign i_mul82_load_weight020_vt_select_31_b = leftShiftStage1_uid192_i_mul82_load_weight00_shift_x_q[31:3];

    // i_mul82_load_weight020_vt_join(BITJOIN,126)@2
    assign i_mul82_load_weight020_vt_join_q = {i_mul82_load_weight020_vt_select_31_b, i_idxprom84_load_weight021_vt_const_2_q};

    // i_idxprom84_load_weight021_sel_x(BITSELECT,31)@2
    assign i_idxprom84_load_weight021_sel_x_b = {32'b00000000000000000000000000000000, i_mul82_load_weight020_vt_join_q[31:0]};

    // i_idxprom84_load_weight021_vt_select_31(BITSELECT,94)@2
    assign i_idxprom84_load_weight021_vt_select_31_b = i_idxprom84_load_weight021_sel_x_b[31:3];

    // i_idxprom84_load_weight021_vt_const_2(CONSTANT,91)
    assign i_idxprom84_load_weight021_vt_const_2_q = $unsigned(3'b000);

    // i_idxprom84_load_weight021_vt_join(BITJOIN,93)@2
    assign i_idxprom84_load_weight021_vt_join_q = {i_idxprom84_load_weight021_vt_const_63_q, i_idxprom84_load_weight021_vt_select_31_b, i_idxprom84_load_weight021_vt_const_2_q};

    // dupName_19_i_unnamed_load_weight00_dupName_3_trunc_sel_x(BITSELECT,4)@2
    assign dupName_19_i_unnamed_load_weight00_dupName_3_trunc_sel_x_b = i_idxprom84_load_weight021_vt_join_q[11:0];

    // dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x(BITSELECT,7)@2
    assign dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b = dupName_19_i_unnamed_load_weight00_dupName_3_trunc_sel_x_b[7:0];

    // redist36_dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b_1(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b_1_q <= '0;
        end
        else
        begin
            redist36_dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b_1_q <= $unsigned(dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b);
        end
    end

    // dupName_19_i_unnamed_load_weight00_c_i4_02_x(CONSTANT,16)
    assign dupName_19_i_unnamed_load_weight00_c_i4_02_x_q = $unsigned(4'b0000);

    // dupName_19_i_unnamed_load_weight00_dupName_0_shift_join_x(BITJOIN,8)@3
    assign dupName_19_i_unnamed_load_weight00_dupName_0_shift_join_x_q = {redist36_dupName_19_i_unnamed_load_weight00_dupName_0_narrow_x_b_1_q, dupName_19_i_unnamed_load_weight00_c_i4_02_x_q};

    // valid_fanout_reg4(REG,149)@1 + 1
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

    // valid_fanout_reg5(REG,150)@1 + 1
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

    // i_llvm_fpga_push_i32_add79104_push53_load_weight013(BLACKBOX,117)@2
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    cnn_top_i_llvm_fpga_push_i32_add79104_push53_load_weight00 thei_llvm_fpga_push_i32_add79104_push53_load_weight013 (
        .in_data_in(i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_data_out),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_feedback_stall_out_53),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_valid_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_sync_together247_aunroll_x_in_c0_eni22_2_tpl_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together247_aunroll_x_in_c0_eni22_2_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together247_aunroll_x_in_c0_eni22_2_tpl_1_q <= $unsigned(in_c0_eni22_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add79104_pop53_load_weight012(BLACKBOX,104)@2
    // out out_feedback_stall_out_53@20000000
    cnn_top_i_llvm_fpga_pop_i32_add79104_pop53_load_weight00 thei_llvm_fpga_pop_i32_add79104_pop53_load_weight012 (
        .in_data_in(redist15_sync_together247_aunroll_x_in_c0_eni22_2_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_53(i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i32_add79104_push53_load_weight013_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_feedback_stall_out_53),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom80_load_weight014_sel_x(BITSELECT,30)@2
    assign i_idxprom80_load_weight014_sel_x_b = $unsigned({{32{i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_data_out[31]}}, i_llvm_fpga_pop_i32_add79104_pop53_load_weight012_out_data_out[31:0]});

    // dupName_19_i_unnamed_load_weight00_dupName_0_trunc_sel_x(BITSELECT,2)@2
    assign dupName_19_i_unnamed_load_weight00_dupName_0_trunc_sel_x_b = i_idxprom80_load_weight014_sel_x_b[11:0];

    // dupName_19_i_unnamed_load_weight00_narrow_x(BITSELECT,18)@2
    assign dupName_19_i_unnamed_load_weight00_narrow_x_b = dupName_19_i_unnamed_load_weight00_dupName_0_trunc_sel_x_b[3:0];

    // dupName_19_i_unnamed_load_weight00_c_i8_01_x(CONSTANT,17)
    assign dupName_19_i_unnamed_load_weight00_c_i8_01_x_q = $unsigned(8'b00000000);

    // dupName_19_i_unnamed_load_weight00_shift_join_x(BITJOIN,19)@2
    assign dupName_19_i_unnamed_load_weight00_shift_join_x_q = {dupName_19_i_unnamed_load_weight00_narrow_x_b, dupName_19_i_unnamed_load_weight00_c_i8_01_x_q};

    // dupName_19_i_unnamed_load_weight00_add_x(ADD,14)@2
    assign dupName_19_i_unnamed_load_weight00_add_x_a = {1'b0, dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_b};
    assign dupName_19_i_unnamed_load_weight00_add_x_b = {1'b0, dupName_19_i_unnamed_load_weight00_shift_join_x_q};
    assign dupName_19_i_unnamed_load_weight00_add_x_o = $unsigned(dupName_19_i_unnamed_load_weight00_add_x_a) + $unsigned(dupName_19_i_unnamed_load_weight00_add_x_b);
    assign dupName_19_i_unnamed_load_weight00_add_x_q = dupName_19_i_unnamed_load_weight00_add_x_o[12:0];

    // dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x(BITSELECT,3)@2
    assign dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b = dupName_19_i_unnamed_load_weight00_add_x_q[11:0];

    // redist37_dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b_1(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist37_dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b_1_q <= $unsigned(dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b);
        end
    end

    // dupName_19_i_unnamed_load_weight00_dupName_0_add_x(ADD,6)@3
    assign dupName_19_i_unnamed_load_weight00_dupName_0_add_x_a = {1'b0, redist37_dupName_19_i_unnamed_load_weight00_dupName_2_trunc_sel_x_b_1_q};
    assign dupName_19_i_unnamed_load_weight00_dupName_0_add_x_b = {1'b0, dupName_19_i_unnamed_load_weight00_dupName_0_shift_join_x_q};
    assign dupName_19_i_unnamed_load_weight00_dupName_0_add_x_o = $unsigned(dupName_19_i_unnamed_load_weight00_dupName_0_add_x_a) + $unsigned(dupName_19_i_unnamed_load_weight00_dupName_0_add_x_b);
    assign dupName_19_i_unnamed_load_weight00_dupName_0_add_x_q = dupName_19_i_unnamed_load_weight00_dupName_0_add_x_o[12:0];

    // dupName_19_i_unnamed_load_weight00_dupName_5_trunc_sel_x(BITSELECT,5)@3
    assign dupName_19_i_unnamed_load_weight00_dupName_5_trunc_sel_x_b = dupName_19_i_unnamed_load_weight00_dupName_0_add_x_q[11:0];

    // dupName_19_i_unnamed_load_weight00_append_upper_bits_x(BITJOIN,15)@3
    assign dupName_19_i_unnamed_load_weight00_append_upper_bits_x_q = {redist0_dupName_19_i_unnamed_load_weight00_trunc_sel_x_merged_bit_select_c_1_q, dupName_19_i_unnamed_load_weight00_dupName_5_trunc_sel_x_b};

    // i_unnamed_load_weight022_vt_select_63(BITSELECT,138)@3
    assign i_unnamed_load_weight022_vt_select_63_b = dupName_19_i_unnamed_load_weight00_append_upper_bits_x_q[63:7];

    // i_unnamed_load_weight022_vt_join(BITJOIN,137)@3
    assign i_unnamed_load_weight022_vt_join_q = {i_unnamed_load_weight022_vt_select_63_b, i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_const_6_q};

    // i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_select_63(BITSELECT,124)@3
    assign i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_select_63_b = i_unnamed_load_weight022_vt_join_q[63:7];

    // i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_const_6(CONSTANT,122)
    assign i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_const_6_q = $unsigned(7'b0000000);

    // i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_join(BITJOIN,123)@3
    assign i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_join_q = {i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_select_63_b, i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_const_6_q};

    // i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x(BLACKBOX,33)@3
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@7
    // out out_o_readdata_1_tpl@7
    // out out_o_readdata_2_tpl@7
    // out out_o_readdata_3_tpl@7
    // out out_o_readdata_4_tpl@7
    // out out_o_readdata_5_tpl@7
    // out out_o_readdata_6_tpl@7
    // out out_o_readdata_7_tpl@7
    // out out_o_readdata_8_tpl@7
    // out out_o_readdata_9_tpl@7
    // out out_o_readdata_10_tpl@7
    // out out_o_readdata_11_tpl@7
    // out out_o_readdata_12_tpl@7
    // out out_o_readdata_13_tpl@7
    // out out_o_readdata_14_tpl@7
    // out out_o_readdata_15_tpl@7
    // out out_o_readdata_16_tpl@7
    // out out_o_readdata_17_tpl@7
    // out out_o_readdata_18_tpl@7
    // out out_o_readdata_19_tpl@7
    // out out_o_readdata_20_tpl@7
    // out out_o_readdata_21_tpl@7
    // out out_o_readdata_22_tpl@7
    // out out_o_readdata_23_tpl@7
    // out out_o_readdata_24_tpl@7
    // out out_o_readdata_25_tpl@7
    // out out_o_readdata_26_tpl@7
    // out out_o_readdata_27_tpl@7
    // out out_o_readdata_28_tpl@7
    // out out_o_readdata_29_tpl@7
    // out out_o_readdata_30_tpl@7
    // out out_o_readdata_31_tpl@7
    // out out_o_readdata_32_tpl@7
    // out out_o_readdata_33_tpl@7
    // out out_o_readdata_34_tpl@7
    // out out_o_readdata_35_tpl@7
    // out out_o_readdata_36_tpl@7
    // out out_o_readdata_37_tpl@7
    // out out_o_readdata_38_tpl@7
    // out out_o_readdata_39_tpl@7
    // out out_o_readdata_40_tpl@7
    // out out_o_readdata_41_tpl@7
    // out out_o_readdata_42_tpl@7
    // out out_o_readdata_43_tpl@7
    // out out_o_readdata_44_tpl@7
    // out out_o_readdata_45_tpl@7
    // out out_o_readdata_46_tpl@7
    // out out_o_readdata_47_tpl@7
    // out out_o_readdata_48_tpl@7
    // out out_o_readdata_49_tpl@7
    // out out_o_readdata_50_tpl@7
    // out out_o_readdata_51_tpl@7
    // out out_o_readdata_52_tpl@7
    // out out_o_readdata_53_tpl@7
    // out out_o_readdata_54_tpl@7
    // out out_o_readdata_55_tpl@7
    // out out_o_readdata_56_tpl@7
    // out out_o_readdata_57_tpl@7
    // out out_o_readdata_58_tpl@7
    // out out_o_readdata_59_tpl@7
    // out out_o_readdata_60_tpl@7
    // out out_o_readdata_61_tpl@7
    // out out_o_readdata_62_tpl@7
    // out out_o_readdata_63_tpl@7
    // out out_o_readdata_64_tpl@7
    // out out_o_readdata_65_tpl@7
    // out out_o_readdata_66_tpl@7
    // out out_o_readdata_67_tpl@7
    // out out_o_readdata_68_tpl@7
    // out out_o_readdata_69_tpl@7
    // out out_o_readdata_70_tpl@7
    // out out_o_readdata_71_tpl@7
    // out out_o_readdata_72_tpl@7
    // out out_o_readdata_73_tpl@7
    // out out_o_readdata_74_tpl@7
    // out out_o_readdata_75_tpl@7
    // out out_o_readdata_76_tpl@7
    // out out_o_readdata_77_tpl@7
    // out out_o_readdata_78_tpl@7
    // out out_o_readdata_79_tpl@7
    // out out_o_readdata_80_tpl@7
    // out out_o_readdata_81_tpl@7
    // out out_o_readdata_82_tpl@7
    // out out_o_readdata_83_tpl@7
    // out out_o_readdata_84_tpl@7
    // out out_o_readdata_85_tpl@7
    // out out_o_readdata_86_tpl@7
    // out out_o_readdata_87_tpl@7
    // out out_o_readdata_88_tpl@7
    // out out_o_readdata_89_tpl@7
    // out out_o_readdata_90_tpl@7
    // out out_o_readdata_91_tpl@7
    // out out_o_readdata_92_tpl@7
    // out out_o_readdata_93_tpl@7
    // out out_o_readdata_94_tpl@7
    // out out_o_readdata_95_tpl@7
    // out out_o_readdata_96_tpl@7
    // out out_o_readdata_97_tpl@7
    // out out_o_readdata_98_tpl@7
    // out out_o_readdata_99_tpl@7
    // out out_o_readdata_100_tpl@7
    // out out_o_readdata_101_tpl@7
    // out out_o_readdata_102_tpl@7
    // out out_o_readdata_103_tpl@7
    // out out_o_readdata_104_tpl@7
    // out out_o_readdata_105_tpl@7
    // out out_o_readdata_106_tpl@7
    // out out_o_readdata_107_tpl@7
    // out out_o_readdata_108_tpl@7
    // out out_o_readdata_109_tpl@7
    // out out_o_readdata_110_tpl@7
    // out out_o_readdata_111_tpl@7
    // out out_o_readdata_112_tpl@7
    // out out_o_readdata_113_tpl@7
    // out out_o_readdata_114_tpl@7
    // out out_o_readdata_115_tpl@7
    // out out_o_readdata_116_tpl@7
    // out out_o_readdata_117_tpl@7
    // out out_o_readdata_118_tpl@7
    // out out_o_readdata_119_tpl@7
    // out out_o_readdata_120_tpl@7
    // out out_o_readdata_121_tpl@7
    // out out_o_readdata_122_tpl@7
    // out out_o_readdata_123_tpl@7
    // out out_o_readdata_124_tpl@7
    // out out_o_readdata_125_tpl@7
    // out out_o_readdata_126_tpl@7
    // out out_o_readdata_127_tpl@7
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write@20000000
    // out out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata@20000000
    // out out_o_stall@6
    // out out_o_valid@7
    cnn_top_i_llvm_fpga_mem_memcoalesce_load0000e_1384_load_weight00 thei_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_load_weight0_fpgaunique_158_load_weight023_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor67_or_load_weight024_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdata),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_readdatavalid),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_waitrequest),
        .in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack(in_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_3_tpl),
        .out_o_readdata_4_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_4_tpl),
        .out_o_readdata_5_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_5_tpl),
        .out_o_readdata_6_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_6_tpl),
        .out_o_readdata_7_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_7_tpl),
        .out_o_readdata_8_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_8_tpl),
        .out_o_readdata_9_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_9_tpl),
        .out_o_readdata_10_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_10_tpl),
        .out_o_readdata_11_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_11_tpl),
        .out_o_readdata_12_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_12_tpl),
        .out_o_readdata_13_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_13_tpl),
        .out_o_readdata_14_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_14_tpl),
        .out_o_readdata_15_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_15_tpl),
        .out_o_readdata_16_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_16_tpl),
        .out_o_readdata_17_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_17_tpl),
        .out_o_readdata_18_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_18_tpl),
        .out_o_readdata_19_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_19_tpl),
        .out_o_readdata_20_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_20_tpl),
        .out_o_readdata_21_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_21_tpl),
        .out_o_readdata_22_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_22_tpl),
        .out_o_readdata_23_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_23_tpl),
        .out_o_readdata_24_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_24_tpl),
        .out_o_readdata_25_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_25_tpl),
        .out_o_readdata_26_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_26_tpl),
        .out_o_readdata_27_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_27_tpl),
        .out_o_readdata_28_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_28_tpl),
        .out_o_readdata_29_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_29_tpl),
        .out_o_readdata_30_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_30_tpl),
        .out_o_readdata_31_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_31_tpl),
        .out_o_readdata_32_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_32_tpl),
        .out_o_readdata_33_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_33_tpl),
        .out_o_readdata_34_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_34_tpl),
        .out_o_readdata_35_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_35_tpl),
        .out_o_readdata_36_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_36_tpl),
        .out_o_readdata_37_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_37_tpl),
        .out_o_readdata_38_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_38_tpl),
        .out_o_readdata_39_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_39_tpl),
        .out_o_readdata_40_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_40_tpl),
        .out_o_readdata_41_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_41_tpl),
        .out_o_readdata_42_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_42_tpl),
        .out_o_readdata_43_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_43_tpl),
        .out_o_readdata_44_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_44_tpl),
        .out_o_readdata_45_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_45_tpl),
        .out_o_readdata_46_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_46_tpl),
        .out_o_readdata_47_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_47_tpl),
        .out_o_readdata_48_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_48_tpl),
        .out_o_readdata_49_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_49_tpl),
        .out_o_readdata_50_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_50_tpl),
        .out_o_readdata_51_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_51_tpl),
        .out_o_readdata_52_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_52_tpl),
        .out_o_readdata_53_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_53_tpl),
        .out_o_readdata_54_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_54_tpl),
        .out_o_readdata_55_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_55_tpl),
        .out_o_readdata_56_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_56_tpl),
        .out_o_readdata_57_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_57_tpl),
        .out_o_readdata_58_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_58_tpl),
        .out_o_readdata_59_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_59_tpl),
        .out_o_readdata_60_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_60_tpl),
        .out_o_readdata_61_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_61_tpl),
        .out_o_readdata_62_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_62_tpl),
        .out_o_readdata_63_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_63_tpl),
        .out_o_readdata_64_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_64_tpl),
        .out_o_readdata_65_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_65_tpl),
        .out_o_readdata_66_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_66_tpl),
        .out_o_readdata_67_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_67_tpl),
        .out_o_readdata_68_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_68_tpl),
        .out_o_readdata_69_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_69_tpl),
        .out_o_readdata_70_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_70_tpl),
        .out_o_readdata_71_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_71_tpl),
        .out_o_readdata_72_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_72_tpl),
        .out_o_readdata_73_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_73_tpl),
        .out_o_readdata_74_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_74_tpl),
        .out_o_readdata_75_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_75_tpl),
        .out_o_readdata_76_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_76_tpl),
        .out_o_readdata_77_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_77_tpl),
        .out_o_readdata_78_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_78_tpl),
        .out_o_readdata_79_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_79_tpl),
        .out_o_readdata_80_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_80_tpl),
        .out_o_readdata_81_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_81_tpl),
        .out_o_readdata_82_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_82_tpl),
        .out_o_readdata_83_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_83_tpl),
        .out_o_readdata_84_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_84_tpl),
        .out_o_readdata_85_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_85_tpl),
        .out_o_readdata_86_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_86_tpl),
        .out_o_readdata_87_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_87_tpl),
        .out_o_readdata_88_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_88_tpl),
        .out_o_readdata_89_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_89_tpl),
        .out_o_readdata_90_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_90_tpl),
        .out_o_readdata_91_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_91_tpl),
        .out_o_readdata_92_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_92_tpl),
        .out_o_readdata_93_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_93_tpl),
        .out_o_readdata_94_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_94_tpl),
        .out_o_readdata_95_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_95_tpl),
        .out_o_readdata_96_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_96_tpl),
        .out_o_readdata_97_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_97_tpl),
        .out_o_readdata_98_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_98_tpl),
        .out_o_readdata_99_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_99_tpl),
        .out_o_readdata_100_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_100_tpl),
        .out_o_readdata_101_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_101_tpl),
        .out_o_readdata_102_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_102_tpl),
        .out_o_readdata_103_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_103_tpl),
        .out_o_readdata_104_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_104_tpl),
        .out_o_readdata_105_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_105_tpl),
        .out_o_readdata_106_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_106_tpl),
        .out_o_readdata_107_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_107_tpl),
        .out_o_readdata_108_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_108_tpl),
        .out_o_readdata_109_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_109_tpl),
        .out_o_readdata_110_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_110_tpl),
        .out_o_readdata_111_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_111_tpl),
        .out_o_readdata_112_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_112_tpl),
        .out_o_readdata_113_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_113_tpl),
        .out_o_readdata_114_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_114_tpl),
        .out_o_readdata_115_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_115_tpl),
        .out_o_readdata_116_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_116_tpl),
        .out_o_readdata_117_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_117_tpl),
        .out_o_readdata_118_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_118_tpl),
        .out_o_readdata_119_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_119_tpl),
        .out_o_readdata_120_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_120_tpl),
        .out_o_readdata_121_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_121_tpl),
        .out_o_readdata_122_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_122_tpl),
        .out_o_readdata_123_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_123_tpl),
        .out_o_readdata_124_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_124_tpl),
        .out_o_readdata_125_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_125_tpl),
        .out_o_readdata_126_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_126_tpl),
        .out_o_readdata_127_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_127_tpl),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write),
        .out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,24)
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_address;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_enable;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_read;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_write;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_writedata;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_byteenable;
    assign out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight0_avm_burstcount;

    // valid_fanout_reg0(REG,145)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist35_sync_together247_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist1_valid_fanout_reg0_q_4(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist1_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist1_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist1_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist1_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist1_valid_fanout_reg0_q_4_delay_1 <= redist1_valid_fanout_reg0_q_4_delay_0;
            redist1_valid_fanout_reg0_q_4_delay_2 <= redist1_valid_fanout_reg0_q_4_delay_1;
            redist1_valid_fanout_reg0_q_4_q <= redist1_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // redist34_sync_together247_aunroll_x_in_c0_eni22_22_tpl_6(DELAY,238)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_sync_together247_aunroll_x_in_c0_eni22_22_tpl_6 ( .xin(in_c0_eni22_22_tpl), .xout(redist34_sync_together247_aunroll_x_in_c0_eni22_22_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_sync_together247_aunroll_x_in_c0_eni22_21_tpl_6(DELAY,237)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together247_aunroll_x_in_c0_eni22_21_tpl_6 ( .xin(in_c0_eni22_21_tpl), .xout(redist33_sync_together247_aunroll_x_in_c0_eni22_21_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_notEnable(LOGICAL,298)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_nor(LOGICAL,299)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_nor_q = ~ (redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_notEnable_q | redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena_q);

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_last(CONSTANT,295)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmp(LOGICAL,296)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmp_q = $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_last_q == redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmpReg(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmpReg_q <= $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmp_q);
        end
    end

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena(REG,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_nor_q == 1'b1)
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena_q <= $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_cmpReg_q);
        end
    end

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_enaAnd(LOGICAL,301)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_enaAnd_q = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_sticky_ena_q & VCC_q;

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt(COUNTER,293)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i <= 3'd0;
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i == 3'd3)
            begin
                redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i <= $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_q = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_i[2:0];

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_wraddr(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_wraddr_q <= $unsigned(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_q);
        end
    end

    // redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem(DUALMEM,292)
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ia = $unsigned(in_c0_eni22_20_tpl);
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_aa = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_wraddr_q;
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ab = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_rdcnt_q;
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_dmem (
        .clocken1(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_aa),
        .data_a(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_ab),
        .q_b(redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_iq),
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
    assign redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_q = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_iq[31:0];

    // redist31_sync_together247_aunroll_x_in_c0_eni22_19_tpl_6(DELAY,235)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together247_aunroll_x_in_c0_eni22_19_tpl_6 ( .xin(in_c0_eni22_19_tpl), .xout(redist31_sync_together247_aunroll_x_in_c0_eni22_19_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_notEnable(LOGICAL,288)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_nor(LOGICAL,289)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_nor_q = ~ (redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_notEnable_q | redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena_q);

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_last(CONSTANT,285)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmp(LOGICAL,286)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmp_q = $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_last_q == redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmpReg(REG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmpReg_q <= $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmp_q);
        end
    end

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena(REG,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_nor_q == 1'b1)
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena_q <= $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_cmpReg_q);
        end
    end

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_enaAnd(LOGICAL,291)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_enaAnd_q = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_sticky_ena_q & VCC_q;

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt(COUNTER,283)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i <= 3'd0;
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i == 3'd3)
            begin
                redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i <= $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i <= $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_q = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_i[2:0];

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_wraddr(REG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_wraddr_q <= $unsigned(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_q);
        end
    end

    // redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem(DUALMEM,282)
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ia = $unsigned(in_c0_eni22_18_tpl);
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_aa = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_wraddr_q;
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ab = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_rdcnt_q;
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_dmem (
        .clocken1(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_aa),
        .data_a(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_ab),
        .q_b(redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_iq),
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
    assign redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_q = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_iq[31:0];

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_notEnable(LOGICAL,278)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_nor(LOGICAL,279)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_nor_q = ~ (redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_notEnable_q | redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena_q);

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_last(CONSTANT,275)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmp(LOGICAL,276)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmp_q = $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_last_q == redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmpReg(REG,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmpReg_q <= $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmp_q);
        end
    end

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena(REG,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_nor_q == 1'b1)
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena_q <= $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_cmpReg_q);
        end
    end

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_enaAnd(LOGICAL,281)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_enaAnd_q = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_sticky_ena_q & VCC_q;

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt(COUNTER,273)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i <= 3'd0;
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i == 3'd3)
            begin
                redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i <= $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i <= $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_q = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_i[2:0];

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_wraddr(REG,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_wraddr_q <= $unsigned(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_q);
        end
    end

    // redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem(DUALMEM,272)
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ia = $unsigned(in_c0_eni22_17_tpl);
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_aa = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_wraddr_q;
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ab = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_rdcnt_q;
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_dmem (
        .clocken1(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_aa),
        .data_a(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_ab),
        .q_b(redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_iq),
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
    assign redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_q = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_iq[31:0];

    // redist28_sync_together247_aunroll_x_in_c0_eni22_16_tpl_6(DELAY,232)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_sync_together247_aunroll_x_in_c0_eni22_16_tpl_6 ( .xin(in_c0_eni22_16_tpl), .xout(redist28_sync_together247_aunroll_x_in_c0_eni22_16_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist27_sync_together247_aunroll_x_in_c0_eni22_15_tpl_6(DELAY,231)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_sync_together247_aunroll_x_in_c0_eni22_15_tpl_6 ( .xin(in_c0_eni22_15_tpl), .xout(redist27_sync_together247_aunroll_x_in_c0_eni22_15_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_notEnable(LOGICAL,268)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_nor(LOGICAL,269)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_nor_q = ~ (redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_notEnable_q | redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena_q);

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_last(CONSTANT,265)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmp(LOGICAL,266)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmp_q = $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_last_q == redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmpReg(REG,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmpReg_q <= $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmp_q);
        end
    end

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena(REG,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_nor_q == 1'b1)
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena_q <= $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_cmpReg_q);
        end
    end

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_enaAnd(LOGICAL,271)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_enaAnd_q = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_sticky_ena_q & VCC_q;

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt(COUNTER,263)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i <= 3'd0;
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i == 3'd3)
            begin
                redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i <= $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i <= $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_q = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_i[2:0];

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_wraddr(REG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_wraddr_q <= $unsigned(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_q);
        end
    end

    // redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem(DUALMEM,262)
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ia = $unsigned(in_c0_eni22_14_tpl);
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_aa = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_wraddr_q;
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ab = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_rdcnt_q;
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_dmem (
        .clocken1(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_aa),
        .data_a(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_ab),
        .q_b(redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_iq),
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
    assign redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_q = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_iq[31:0];

    // redist25_sync_together247_aunroll_x_in_c0_eni22_13_tpl_6(DELAY,229)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist25_sync_together247_aunroll_x_in_c0_eni22_13_tpl_6 ( .xin(in_c0_eni22_13_tpl), .xout(redist25_sync_together247_aunroll_x_in_c0_eni22_13_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_notEnable(LOGICAL,258)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_nor(LOGICAL,259)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_nor_q = ~ (redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_notEnable_q | redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena_q);

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_last(CONSTANT,255)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmp(LOGICAL,256)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmp_q = $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_last_q == redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmpReg(REG,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmpReg_q <= $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmp_q);
        end
    end

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena(REG,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_nor_q == 1'b1)
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena_q <= $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_cmpReg_q);
        end
    end

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_enaAnd(LOGICAL,261)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_enaAnd_q = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_sticky_ena_q & VCC_q;

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt(COUNTER,253)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i <= 3'd0;
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i == 3'd3)
            begin
                redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i <= $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i <= $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_q = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_i[2:0];

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_wraddr(REG,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_wraddr_q <= $unsigned(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_q);
        end
    end

    // redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem(DUALMEM,252)
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ia = $unsigned(in_c0_eni22_12_tpl);
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_aa = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_wraddr_q;
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ab = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_rdcnt_q;
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_dmem (
        .clocken1(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_aa),
        .data_a(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_ab),
        .q_b(redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_iq),
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
    assign redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_q = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_iq[31:0];

    // redist23_sync_together247_aunroll_x_in_c0_eni22_11_tpl_6(DELAY,227)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_sync_together247_aunroll_x_in_c0_eni22_11_tpl_6 ( .xin(in_c0_eni22_11_tpl), .xout(redist23_sync_together247_aunroll_x_in_c0_eni22_11_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_notEnable(LOGICAL,248)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_nor(LOGICAL,249)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_nor_q = ~ (redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_notEnable_q | redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena_q);

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_last(CONSTANT,245)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_last_q = $unsigned(3'b011);

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmp(LOGICAL,246)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmp_q = $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_last_q == redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_q ? 1'b1 : 1'b0);

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmpReg(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmpReg_q <= $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmp_q);
        end
    end

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_nor_q == 1'b1)
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena_q <= $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_cmpReg_q);
        end
    end

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_enaAnd(LOGICAL,251)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_enaAnd_q = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_sticky_ena_q & VCC_q;

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt(COUNTER,243)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i <= 3'd0;
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i == 3'd3)
            begin
                redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i <= $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i <= $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_q = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_i[2:0];

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_wraddr_q <= $unsigned(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_q);
        end
    end

    // redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem(DUALMEM,242)
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ia = $unsigned(in_c0_eni22_10_tpl);
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_aa = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_wraddr_q;
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ab = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_rdcnt_q;
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
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
    ) redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_dmem (
        .clocken1(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_aa),
        .data_a(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_ab),
        .q_b(redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_iq),
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
    assign redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_q = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_iq[31:0];

    // valid_fanout_reg17(REG,162)@1 + 1
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

    // valid_fanout_reg18(REG,163)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist35_sync_together247_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176(BLACKBOX,109)@3
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp74107_push55_load_weight00 thei_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176 (
        .in_data_in(redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1_q),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_feedback_stall_out_55),
        .in_keep_going61(redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_valid_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_sync_together247_aunroll_x_in_c0_eni22_9_tpl_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together247_aunroll_x_in_c0_eni22_9_tpl_1_q <= '0;
        end
        else
        begin
            redist21_sync_together247_aunroll_x_in_c0_eni22_9_tpl_1_q <= $unsigned(in_c0_eni22_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175(BLACKBOX,97)@2
    // out out_feedback_stall_out_55@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight00 thei_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175 (
        .in_data_in(redist21_sync_together247_aunroll_x_in_c0_eni22_9_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_55(i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i1_notcmp74107_push55_load_weight0176_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_feedback_stall_out_55),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_0 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_1 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_2 <= '0;
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_0 <= $unsigned(redist8_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_1_q);
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_1 <= redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_0;
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_2 <= redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_1;
            redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_q <= redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_delay_2;
        end
    end

    // valid_fanout_reg15(REG,160)@1 + 1
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

    // valid_fanout_reg16(REG,161)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist35_sync_together247_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174(BLACKBOX,110)@3
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp78106_push54_load_weight00 thei_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174 (
        .in_data_in(redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1_q),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_feedback_stall_out_54),
        .in_keep_going61(redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_valid_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_sync_together247_aunroll_x_in_c0_eni22_8_tpl_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together247_aunroll_x_in_c0_eni22_8_tpl_1_q <= '0;
        end
        else
        begin
            redist20_sync_together247_aunroll_x_in_c0_eni22_8_tpl_1_q <= $unsigned(in_c0_eni22_8_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173(BLACKBOX,98)@2
    // out out_feedback_stall_out_54@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight00 thei_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173 (
        .in_data_in(redist20_sync_together247_aunroll_x_in_c0_eni22_8_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_notcmp78106_push54_load_weight0174_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_feedback_stall_out_54),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out);
        end
    end

    // redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_0 <= '0;
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_1 <= '0;
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_2 <= '0;
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_0 <= $unsigned(redist6_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_1_q);
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_1 <= redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_0;
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_2 <= redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_1;
            redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_q <= redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_delay_2;
        end
    end

    // valid_fanout_reg13(REG,158)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,159)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172(BLACKBOX,111)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    cnn_top_i_llvm_fpga_push_i1_notcmp82102_push51_load_weight00 thei_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_feedback_stall_out_51),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_sync_together247_aunroll_x_in_c0_eni22_7_tpl_1(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together247_aunroll_x_in_c0_eni22_7_tpl_1_q <= '0;
        end
        else
        begin
            redist19_sync_together247_aunroll_x_in_c0_eni22_7_tpl_1_q <= $unsigned(in_c0_eni22_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171(BLACKBOX,99)@2
    // out out_feedback_stall_out_51@20000000
    cnn_top_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight00 thei_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171 (
        .in_data_in(redist19_sync_together247_aunroll_x_in_c0_eni22_7_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_notcmp82102_push51_load_weight0172_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_0 <= '0;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_1 <= '0;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_2 <= '0;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_3 <= '0;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out);
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_1 <= redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_0;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_2 <= redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_1;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_3 <= redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_2;
            redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_q <= redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_delay_3;
        end
    end

    // valid_fanout_reg9(REG,154)@1 + 1
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

    // valid_fanout_reg10(REG,155)@1 + 1
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

    // i_llvm_fpga_push_i1_push49_load_weight0168(BLACKBOX,113)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    cnn_top_i_llvm_fpga_push_i1_push49_load_weight00 thei_llvm_fpga_push_i1_push49_load_weight0168 (
        .in_data_in(i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i1_pop49_load_weight0167_out_feedback_stall_out_49),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_sync_together247_aunroll_x_in_c0_eni22_5_tpl_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together247_aunroll_x_in_c0_eni22_5_tpl_1_q <= '0;
        end
        else
        begin
            redist17_sync_together247_aunroll_x_in_c0_eni22_5_tpl_1_q <= $unsigned(in_c0_eni22_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_pop49_load_weight0167(BLACKBOX,100)@2
    // out out_feedback_stall_out_49@20000000
    cnn_top_i_llvm_fpga_pop_i1_pop49_load_weight00 thei_llvm_fpga_pop_i1_pop49_load_weight0167 (
        .in_data_in(redist17_sync_together247_aunroll_x_in_c0_eni22_5_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i1_push49_load_weight0168_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i1_pop49_load_weight0167_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_0 <= '0;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_1 <= '0;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_2 <= '0;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_3 <= '0;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out);
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_1 <= redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_0;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_2 <= redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_1;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_3 <= redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_2;
            redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_q <= redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_delay_3;
        end
    end

    // i_masked70_load_weight0166(LOGICAL,121)@2 + 1
    assign i_masked70_load_weight0166_qi = i_notcmp57_load_weight0161_q & i_first_cleanup66_load_weight03_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked70_load_weight0166_delay ( .xin(i_masked70_load_weight0166_qi), .xout(i_masked70_load_weight0166_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_masked70_load_weight0166_q_5(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_masked70_load_weight0166_q_5_delay_0 <= '0;
            redist2_i_masked70_load_weight0166_q_5_delay_1 <= '0;
            redist2_i_masked70_load_weight0166_q_5_delay_2 <= '0;
            redist2_i_masked70_load_weight0166_q_5_q <= '0;
        end
        else
        begin
            redist2_i_masked70_load_weight0166_q_5_delay_0 <= $unsigned(i_masked70_load_weight0166_q);
            redist2_i_masked70_load_weight0166_q_5_delay_1 <= redist2_i_masked70_load_weight0166_q_5_delay_0;
            redist2_i_masked70_load_weight0166_q_5_delay_2 <= redist2_i_masked70_load_weight0166_q_5_delay_1;
            redist2_i_masked70_load_weight0166_q_5_q <= redist2_i_masked70_load_weight0166_q_5_delay_2;
        end
    end

    // redist13_i_first_cleanup_xor67_or_load_weight024_q_5(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_0 <= '0;
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_1 <= '0;
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_2 <= '0;
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_q <= '0;
        end
        else
        begin
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_0 <= $unsigned(i_first_cleanup_xor67_or_load_weight024_q);
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_1 <= redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_0;
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_2 <= redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_1;
            redist13_i_first_cleanup_xor67_or_load_weight024_q_5_q <= redist13_i_first_cleanup_xor67_or_load_weight024_q_5_delay_2;
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_0 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_1 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_2 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_0 <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_2_q);
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_1 <= redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_0;
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_2 <= redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_1;
            redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_q <= redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,42)@7
    assign out_c0_exi21344_0_tpl = GND_q;
    assign out_c0_exi21344_1_tpl = redist12_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_6_q;
    assign out_c0_exi21344_2_tpl = redist13_i_first_cleanup_xor67_or_load_weight024_q_5_q;
    assign out_c0_exi21344_3_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_0_tpl;
    assign out_c0_exi21344_4_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_1_tpl;
    assign out_c0_exi21344_5_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_2_tpl;
    assign out_c0_exi21344_6_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_3_tpl;
    assign out_c0_exi21344_7_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_4_tpl;
    assign out_c0_exi21344_8_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_5_tpl;
    assign out_c0_exi21344_9_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_6_tpl;
    assign out_c0_exi21344_10_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_7_tpl;
    assign out_c0_exi21344_11_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_8_tpl;
    assign out_c0_exi21344_12_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_9_tpl;
    assign out_c0_exi21344_13_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_10_tpl;
    assign out_c0_exi21344_14_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_11_tpl;
    assign out_c0_exi21344_15_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_12_tpl;
    assign out_c0_exi21344_16_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_13_tpl;
    assign out_c0_exi21344_17_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_14_tpl;
    assign out_c0_exi21344_18_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_15_tpl;
    assign out_c0_exi21344_19_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_16_tpl;
    assign out_c0_exi21344_20_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_17_tpl;
    assign out_c0_exi21344_21_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_18_tpl;
    assign out_c0_exi21344_22_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_19_tpl;
    assign out_c0_exi21344_23_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_20_tpl;
    assign out_c0_exi21344_24_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_21_tpl;
    assign out_c0_exi21344_25_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_22_tpl;
    assign out_c0_exi21344_26_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_23_tpl;
    assign out_c0_exi21344_27_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_24_tpl;
    assign out_c0_exi21344_28_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_25_tpl;
    assign out_c0_exi21344_29_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_26_tpl;
    assign out_c0_exi21344_30_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_27_tpl;
    assign out_c0_exi21344_31_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_28_tpl;
    assign out_c0_exi21344_32_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_29_tpl;
    assign out_c0_exi21344_33_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_30_tpl;
    assign out_c0_exi21344_34_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_31_tpl;
    assign out_c0_exi21344_35_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_32_tpl;
    assign out_c0_exi21344_36_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_33_tpl;
    assign out_c0_exi21344_37_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_34_tpl;
    assign out_c0_exi21344_38_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_35_tpl;
    assign out_c0_exi21344_39_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_36_tpl;
    assign out_c0_exi21344_40_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_37_tpl;
    assign out_c0_exi21344_41_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_38_tpl;
    assign out_c0_exi21344_42_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_39_tpl;
    assign out_c0_exi21344_43_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_40_tpl;
    assign out_c0_exi21344_44_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_41_tpl;
    assign out_c0_exi21344_45_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_42_tpl;
    assign out_c0_exi21344_46_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_43_tpl;
    assign out_c0_exi21344_47_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_44_tpl;
    assign out_c0_exi21344_48_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_45_tpl;
    assign out_c0_exi21344_49_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_46_tpl;
    assign out_c0_exi21344_50_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_47_tpl;
    assign out_c0_exi21344_51_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_48_tpl;
    assign out_c0_exi21344_52_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_49_tpl;
    assign out_c0_exi21344_53_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_50_tpl;
    assign out_c0_exi21344_54_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_51_tpl;
    assign out_c0_exi21344_55_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_52_tpl;
    assign out_c0_exi21344_56_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_53_tpl;
    assign out_c0_exi21344_57_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_54_tpl;
    assign out_c0_exi21344_58_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_55_tpl;
    assign out_c0_exi21344_59_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_56_tpl;
    assign out_c0_exi21344_60_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_57_tpl;
    assign out_c0_exi21344_61_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_58_tpl;
    assign out_c0_exi21344_62_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_59_tpl;
    assign out_c0_exi21344_63_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_60_tpl;
    assign out_c0_exi21344_64_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_61_tpl;
    assign out_c0_exi21344_65_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_62_tpl;
    assign out_c0_exi21344_66_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_63_tpl;
    assign out_c0_exi21344_67_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_64_tpl;
    assign out_c0_exi21344_68_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_65_tpl;
    assign out_c0_exi21344_69_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_66_tpl;
    assign out_c0_exi21344_70_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_67_tpl;
    assign out_c0_exi21344_71_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_68_tpl;
    assign out_c0_exi21344_72_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_69_tpl;
    assign out_c0_exi21344_73_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_70_tpl;
    assign out_c0_exi21344_74_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_71_tpl;
    assign out_c0_exi21344_75_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_72_tpl;
    assign out_c0_exi21344_76_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_73_tpl;
    assign out_c0_exi21344_77_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_74_tpl;
    assign out_c0_exi21344_78_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_75_tpl;
    assign out_c0_exi21344_79_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_76_tpl;
    assign out_c0_exi21344_80_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_77_tpl;
    assign out_c0_exi21344_81_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_78_tpl;
    assign out_c0_exi21344_82_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_79_tpl;
    assign out_c0_exi21344_83_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_80_tpl;
    assign out_c0_exi21344_84_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_81_tpl;
    assign out_c0_exi21344_85_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_82_tpl;
    assign out_c0_exi21344_86_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_83_tpl;
    assign out_c0_exi21344_87_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_84_tpl;
    assign out_c0_exi21344_88_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_85_tpl;
    assign out_c0_exi21344_89_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_86_tpl;
    assign out_c0_exi21344_90_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_87_tpl;
    assign out_c0_exi21344_91_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_88_tpl;
    assign out_c0_exi21344_92_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_89_tpl;
    assign out_c0_exi21344_93_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_90_tpl;
    assign out_c0_exi21344_94_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_91_tpl;
    assign out_c0_exi21344_95_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_92_tpl;
    assign out_c0_exi21344_96_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_93_tpl;
    assign out_c0_exi21344_97_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_94_tpl;
    assign out_c0_exi21344_98_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_95_tpl;
    assign out_c0_exi21344_99_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_96_tpl;
    assign out_c0_exi21344_100_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_97_tpl;
    assign out_c0_exi21344_101_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_98_tpl;
    assign out_c0_exi21344_102_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_99_tpl;
    assign out_c0_exi21344_103_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_100_tpl;
    assign out_c0_exi21344_104_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_101_tpl;
    assign out_c0_exi21344_105_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_102_tpl;
    assign out_c0_exi21344_106_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_103_tpl;
    assign out_c0_exi21344_107_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_104_tpl;
    assign out_c0_exi21344_108_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_105_tpl;
    assign out_c0_exi21344_109_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_106_tpl;
    assign out_c0_exi21344_110_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_107_tpl;
    assign out_c0_exi21344_111_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_108_tpl;
    assign out_c0_exi21344_112_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_109_tpl;
    assign out_c0_exi21344_113_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_110_tpl;
    assign out_c0_exi21344_114_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_111_tpl;
    assign out_c0_exi21344_115_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_112_tpl;
    assign out_c0_exi21344_116_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_113_tpl;
    assign out_c0_exi21344_117_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_114_tpl;
    assign out_c0_exi21344_118_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_115_tpl;
    assign out_c0_exi21344_119_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_116_tpl;
    assign out_c0_exi21344_120_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_117_tpl;
    assign out_c0_exi21344_121_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_118_tpl;
    assign out_c0_exi21344_122_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_119_tpl;
    assign out_c0_exi21344_123_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_120_tpl;
    assign out_c0_exi21344_124_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_121_tpl;
    assign out_c0_exi21344_125_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_122_tpl;
    assign out_c0_exi21344_126_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_123_tpl;
    assign out_c0_exi21344_127_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_124_tpl;
    assign out_c0_exi21344_128_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_125_tpl;
    assign out_c0_exi21344_129_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_126_tpl;
    assign out_c0_exi21344_130_tpl = i_llvm_fpga_mem_memcoalesce_load_load_weight0_fpgaunique_1384_load_weight025_aunroll_x_out_o_readdata_127_tpl;
    assign out_c0_exi21344_131_tpl = redist2_i_masked70_load_weight0166_q_5_q;
    assign out_c0_exi21344_132_tpl = redist4_i_llvm_fpga_pop_i1_pop49_load_weight0167_out_data_out_5_q;
    assign out_c0_exi21344_133_tpl = redist5_i_llvm_fpga_pop_i1_notcmp82102_pop51_load_weight0171_out_data_out_5_q;
    assign out_c0_exi21344_134_tpl = redist7_i_llvm_fpga_pop_i1_notcmp78106_pop54_load_weight0173_out_data_out_5_q;
    assign out_c0_exi21344_135_tpl = redist9_i_llvm_fpga_pop_i1_notcmp74107_pop55_load_weight0175_out_data_out_5_q;
    assign out_c0_exi21344_136_tpl = redist22_sync_together247_aunroll_x_in_c0_eni22_10_tpl_6_mem_q;
    assign out_c0_exi21344_137_tpl = redist23_sync_together247_aunroll_x_in_c0_eni22_11_tpl_6_q;
    assign out_c0_exi21344_138_tpl = redist24_sync_together247_aunroll_x_in_c0_eni22_12_tpl_6_mem_q;
    assign out_c0_exi21344_139_tpl = redist25_sync_together247_aunroll_x_in_c0_eni22_13_tpl_6_q;
    assign out_c0_exi21344_140_tpl = redist26_sync_together247_aunroll_x_in_c0_eni22_14_tpl_6_mem_q;
    assign out_c0_exi21344_141_tpl = redist27_sync_together247_aunroll_x_in_c0_eni22_15_tpl_6_q;
    assign out_c0_exi21344_142_tpl = redist28_sync_together247_aunroll_x_in_c0_eni22_16_tpl_6_q;
    assign out_c0_exi21344_143_tpl = redist29_sync_together247_aunroll_x_in_c0_eni22_17_tpl_6_mem_q;
    assign out_c0_exi21344_144_tpl = redist30_sync_together247_aunroll_x_in_c0_eni22_18_tpl_6_mem_q;
    assign out_c0_exi21344_145_tpl = redist31_sync_together247_aunroll_x_in_c0_eni22_19_tpl_6_q;
    assign out_c0_exi21344_146_tpl = redist32_sync_together247_aunroll_x_in_c0_eni22_20_tpl_6_mem_q;
    assign out_c0_exi21344_147_tpl = redist33_sync_together247_aunroll_x_in_c0_eni22_21_tpl_6_q;
    assign out_c0_exi21344_148_tpl = redist34_sync_together247_aunroll_x_in_c0_eni22_22_tpl_6_q;
    assign out_o_valid = redist1_valid_fanout_reg0_q_4_q;
    assign out_unnamed_load_weight019 = GND_q;

    // ext_sig_sync_out(GPOUT,79)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_valid_out = i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight06_exiting_stall_out = i_llvm_fpga_pipeline_keep_going61_load_weight06_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,142)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going61_load_weight06_out_pipeline_valid_out;

    // i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169(BLACKBOX,106)@2
    // out out_feedback_stall_out_50@20000000
    cnn_top_i_llvm_fpga_pop_i32_mul7899_pop50_load_weight00 thei_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169 (
        .in_data_in(redist18_sync_together247_aunroll_x_in_c0_eni22_6_tpl_1_q),
        .in_dir(redist14_sync_together247_aunroll_x_in_c0_eni22_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_mul7899_push50_load_weight0170(BLACKBOX,119)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    cnn_top_i_llvm_fpga_push_i32_mul7899_push50_load_weight00 thei_llvm_fpga_push_i32_mul7899_push50_load_weight0170 (
        .in_data_in(i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_mul7899_pop50_load_weight0169_out_feedback_stall_out_50),
        .in_keep_going61(redist10_i_llvm_fpga_pipeline_keep_going61_load_weight06_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_mul7899_push50_load_weight0170_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg11(REG,156)@1 + 1
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

    // valid_fanout_reg12(REG,157)@1 + 1
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

    // redist18_sync_together247_aunroll_x_in_c0_eni22_6_tpl_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together247_aunroll_x_in_c0_eni22_6_tpl_1_q <= '0;
        end
        else
        begin
            redist18_sync_together247_aunroll_x_in_c0_eni22_6_tpl_1_q <= $unsigned(in_c0_eni22_6_tpl);
        end
    end

endmodule
