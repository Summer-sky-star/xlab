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

// SystemVerilog created from cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0006d_weight01_data_fifo
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_sfc_exit_s_c0_out_fo0006d_weight01_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [7:0] out_o_data_3_tpl,
    output wire [7:0] out_o_data_4_tpl,
    output wire [7:0] out_o_data_5_tpl,
    output wire [7:0] out_o_data_6_tpl,
    output wire [7:0] out_o_data_7_tpl,
    output wire [7:0] out_o_data_8_tpl,
    output wire [7:0] out_o_data_9_tpl,
    output wire [7:0] out_o_data_10_tpl,
    output wire [7:0] out_o_data_11_tpl,
    output wire [7:0] out_o_data_12_tpl,
    output wire [7:0] out_o_data_13_tpl,
    output wire [7:0] out_o_data_14_tpl,
    output wire [7:0] out_o_data_15_tpl,
    output wire [7:0] out_o_data_16_tpl,
    output wire [7:0] out_o_data_17_tpl,
    output wire [7:0] out_o_data_18_tpl,
    output wire [7:0] out_o_data_19_tpl,
    output wire [7:0] out_o_data_20_tpl,
    output wire [7:0] out_o_data_21_tpl,
    output wire [7:0] out_o_data_22_tpl,
    output wire [7:0] out_o_data_23_tpl,
    output wire [7:0] out_o_data_24_tpl,
    output wire [7:0] out_o_data_25_tpl,
    output wire [7:0] out_o_data_26_tpl,
    output wire [7:0] out_o_data_27_tpl,
    output wire [7:0] out_o_data_28_tpl,
    output wire [7:0] out_o_data_29_tpl,
    output wire [7:0] out_o_data_30_tpl,
    output wire [7:0] out_o_data_31_tpl,
    output wire [7:0] out_o_data_32_tpl,
    output wire [7:0] out_o_data_33_tpl,
    output wire [7:0] out_o_data_34_tpl,
    output wire [7:0] out_o_data_35_tpl,
    output wire [7:0] out_o_data_36_tpl,
    output wire [7:0] out_o_data_37_tpl,
    output wire [7:0] out_o_data_38_tpl,
    output wire [7:0] out_o_data_39_tpl,
    output wire [7:0] out_o_data_40_tpl,
    output wire [7:0] out_o_data_41_tpl,
    output wire [7:0] out_o_data_42_tpl,
    output wire [7:0] out_o_data_43_tpl,
    output wire [7:0] out_o_data_44_tpl,
    output wire [7:0] out_o_data_45_tpl,
    output wire [7:0] out_o_data_46_tpl,
    output wire [7:0] out_o_data_47_tpl,
    output wire [7:0] out_o_data_48_tpl,
    output wire [7:0] out_o_data_49_tpl,
    output wire [7:0] out_o_data_50_tpl,
    output wire [7:0] out_o_data_51_tpl,
    output wire [7:0] out_o_data_52_tpl,
    output wire [7:0] out_o_data_53_tpl,
    output wire [7:0] out_o_data_54_tpl,
    output wire [7:0] out_o_data_55_tpl,
    output wire [7:0] out_o_data_56_tpl,
    output wire [7:0] out_o_data_57_tpl,
    output wire [7:0] out_o_data_58_tpl,
    output wire [7:0] out_o_data_59_tpl,
    output wire [7:0] out_o_data_60_tpl,
    output wire [7:0] out_o_data_61_tpl,
    output wire [7:0] out_o_data_62_tpl,
    output wire [7:0] out_o_data_63_tpl,
    output wire [7:0] out_o_data_64_tpl,
    output wire [7:0] out_o_data_65_tpl,
    output wire [7:0] out_o_data_66_tpl,
    output wire [7:0] out_o_data_67_tpl,
    output wire [7:0] out_o_data_68_tpl,
    output wire [7:0] out_o_data_69_tpl,
    output wire [7:0] out_o_data_70_tpl,
    output wire [7:0] out_o_data_71_tpl,
    output wire [7:0] out_o_data_72_tpl,
    output wire [7:0] out_o_data_73_tpl,
    output wire [7:0] out_o_data_74_tpl,
    output wire [7:0] out_o_data_75_tpl,
    output wire [7:0] out_o_data_76_tpl,
    output wire [7:0] out_o_data_77_tpl,
    output wire [7:0] out_o_data_78_tpl,
    output wire [7:0] out_o_data_79_tpl,
    output wire [7:0] out_o_data_80_tpl,
    output wire [7:0] out_o_data_81_tpl,
    output wire [7:0] out_o_data_82_tpl,
    output wire [7:0] out_o_data_83_tpl,
    output wire [7:0] out_o_data_84_tpl,
    output wire [7:0] out_o_data_85_tpl,
    output wire [7:0] out_o_data_86_tpl,
    output wire [7:0] out_o_data_87_tpl,
    output wire [7:0] out_o_data_88_tpl,
    output wire [7:0] out_o_data_89_tpl,
    output wire [7:0] out_o_data_90_tpl,
    output wire [7:0] out_o_data_91_tpl,
    output wire [7:0] out_o_data_92_tpl,
    output wire [7:0] out_o_data_93_tpl,
    output wire [7:0] out_o_data_94_tpl,
    output wire [7:0] out_o_data_95_tpl,
    output wire [7:0] out_o_data_96_tpl,
    output wire [7:0] out_o_data_97_tpl,
    output wire [7:0] out_o_data_98_tpl,
    output wire [7:0] out_o_data_99_tpl,
    output wire [7:0] out_o_data_100_tpl,
    output wire [7:0] out_o_data_101_tpl,
    output wire [7:0] out_o_data_102_tpl,
    output wire [7:0] out_o_data_103_tpl,
    output wire [7:0] out_o_data_104_tpl,
    output wire [7:0] out_o_data_105_tpl,
    output wire [7:0] out_o_data_106_tpl,
    output wire [7:0] out_o_data_107_tpl,
    output wire [7:0] out_o_data_108_tpl,
    output wire [7:0] out_o_data_109_tpl,
    output wire [7:0] out_o_data_110_tpl,
    output wire [7:0] out_o_data_111_tpl,
    output wire [7:0] out_o_data_112_tpl,
    output wire [7:0] out_o_data_113_tpl,
    output wire [7:0] out_o_data_114_tpl,
    output wire [7:0] out_o_data_115_tpl,
    output wire [7:0] out_o_data_116_tpl,
    output wire [7:0] out_o_data_117_tpl,
    output wire [7:0] out_o_data_118_tpl,
    output wire [7:0] out_o_data_119_tpl,
    output wire [7:0] out_o_data_120_tpl,
    output wire [7:0] out_o_data_121_tpl,
    output wire [7:0] out_o_data_122_tpl,
    output wire [7:0] out_o_data_123_tpl,
    output wire [7:0] out_o_data_124_tpl,
    output wire [7:0] out_o_data_125_tpl,
    output wire [7:0] out_o_data_126_tpl,
    output wire [7:0] out_o_data_127_tpl,
    output wire [7:0] out_o_data_128_tpl,
    output wire [7:0] out_o_data_129_tpl,
    output wire [7:0] out_o_data_130_tpl,
    output wire [0:0] out_o_data_131_tpl,
    output wire [0:0] out_o_data_132_tpl,
    output wire [0:0] out_o_data_133_tpl,
    output wire [0:0] out_o_data_134_tpl,
    output wire [0:0] out_o_data_135_tpl,
    output wire [31:0] out_o_data_136_tpl,
    output wire [0:0] out_o_data_137_tpl,
    output wire [31:0] out_o_data_138_tpl,
    output wire [0:0] out_o_data_139_tpl,
    output wire [31:0] out_o_data_140_tpl,
    output wire [0:0] out_o_data_141_tpl,
    output wire [0:0] out_o_data_142_tpl,
    output wire [31:0] out_o_data_143_tpl,
    output wire [31:0] out_o_data_144_tpl,
    output wire [0:0] out_o_data_145_tpl,
    output wire [31:0] out_o_data_146_tpl,
    output wire [0:0] out_o_data_147_tpl,
    output wire [0:0] out_o_data_148_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [7:0] in_i_data_3_tpl,
    input wire [7:0] in_i_data_4_tpl,
    input wire [7:0] in_i_data_5_tpl,
    input wire [7:0] in_i_data_6_tpl,
    input wire [7:0] in_i_data_7_tpl,
    input wire [7:0] in_i_data_8_tpl,
    input wire [7:0] in_i_data_9_tpl,
    input wire [7:0] in_i_data_10_tpl,
    input wire [7:0] in_i_data_11_tpl,
    input wire [7:0] in_i_data_12_tpl,
    input wire [7:0] in_i_data_13_tpl,
    input wire [7:0] in_i_data_14_tpl,
    input wire [7:0] in_i_data_15_tpl,
    input wire [7:0] in_i_data_16_tpl,
    input wire [7:0] in_i_data_17_tpl,
    input wire [7:0] in_i_data_18_tpl,
    input wire [7:0] in_i_data_19_tpl,
    input wire [7:0] in_i_data_20_tpl,
    input wire [7:0] in_i_data_21_tpl,
    input wire [7:0] in_i_data_22_tpl,
    input wire [7:0] in_i_data_23_tpl,
    input wire [7:0] in_i_data_24_tpl,
    input wire [7:0] in_i_data_25_tpl,
    input wire [7:0] in_i_data_26_tpl,
    input wire [7:0] in_i_data_27_tpl,
    input wire [7:0] in_i_data_28_tpl,
    input wire [7:0] in_i_data_29_tpl,
    input wire [7:0] in_i_data_30_tpl,
    input wire [7:0] in_i_data_31_tpl,
    input wire [7:0] in_i_data_32_tpl,
    input wire [7:0] in_i_data_33_tpl,
    input wire [7:0] in_i_data_34_tpl,
    input wire [7:0] in_i_data_35_tpl,
    input wire [7:0] in_i_data_36_tpl,
    input wire [7:0] in_i_data_37_tpl,
    input wire [7:0] in_i_data_38_tpl,
    input wire [7:0] in_i_data_39_tpl,
    input wire [7:0] in_i_data_40_tpl,
    input wire [7:0] in_i_data_41_tpl,
    input wire [7:0] in_i_data_42_tpl,
    input wire [7:0] in_i_data_43_tpl,
    input wire [7:0] in_i_data_44_tpl,
    input wire [7:0] in_i_data_45_tpl,
    input wire [7:0] in_i_data_46_tpl,
    input wire [7:0] in_i_data_47_tpl,
    input wire [7:0] in_i_data_48_tpl,
    input wire [7:0] in_i_data_49_tpl,
    input wire [7:0] in_i_data_50_tpl,
    input wire [7:0] in_i_data_51_tpl,
    input wire [7:0] in_i_data_52_tpl,
    input wire [7:0] in_i_data_53_tpl,
    input wire [7:0] in_i_data_54_tpl,
    input wire [7:0] in_i_data_55_tpl,
    input wire [7:0] in_i_data_56_tpl,
    input wire [7:0] in_i_data_57_tpl,
    input wire [7:0] in_i_data_58_tpl,
    input wire [7:0] in_i_data_59_tpl,
    input wire [7:0] in_i_data_60_tpl,
    input wire [7:0] in_i_data_61_tpl,
    input wire [7:0] in_i_data_62_tpl,
    input wire [7:0] in_i_data_63_tpl,
    input wire [7:0] in_i_data_64_tpl,
    input wire [7:0] in_i_data_65_tpl,
    input wire [7:0] in_i_data_66_tpl,
    input wire [7:0] in_i_data_67_tpl,
    input wire [7:0] in_i_data_68_tpl,
    input wire [7:0] in_i_data_69_tpl,
    input wire [7:0] in_i_data_70_tpl,
    input wire [7:0] in_i_data_71_tpl,
    input wire [7:0] in_i_data_72_tpl,
    input wire [7:0] in_i_data_73_tpl,
    input wire [7:0] in_i_data_74_tpl,
    input wire [7:0] in_i_data_75_tpl,
    input wire [7:0] in_i_data_76_tpl,
    input wire [7:0] in_i_data_77_tpl,
    input wire [7:0] in_i_data_78_tpl,
    input wire [7:0] in_i_data_79_tpl,
    input wire [7:0] in_i_data_80_tpl,
    input wire [7:0] in_i_data_81_tpl,
    input wire [7:0] in_i_data_82_tpl,
    input wire [7:0] in_i_data_83_tpl,
    input wire [7:0] in_i_data_84_tpl,
    input wire [7:0] in_i_data_85_tpl,
    input wire [7:0] in_i_data_86_tpl,
    input wire [7:0] in_i_data_87_tpl,
    input wire [7:0] in_i_data_88_tpl,
    input wire [7:0] in_i_data_89_tpl,
    input wire [7:0] in_i_data_90_tpl,
    input wire [7:0] in_i_data_91_tpl,
    input wire [7:0] in_i_data_92_tpl,
    input wire [7:0] in_i_data_93_tpl,
    input wire [7:0] in_i_data_94_tpl,
    input wire [7:0] in_i_data_95_tpl,
    input wire [7:0] in_i_data_96_tpl,
    input wire [7:0] in_i_data_97_tpl,
    input wire [7:0] in_i_data_98_tpl,
    input wire [7:0] in_i_data_99_tpl,
    input wire [7:0] in_i_data_100_tpl,
    input wire [7:0] in_i_data_101_tpl,
    input wire [7:0] in_i_data_102_tpl,
    input wire [7:0] in_i_data_103_tpl,
    input wire [7:0] in_i_data_104_tpl,
    input wire [7:0] in_i_data_105_tpl,
    input wire [7:0] in_i_data_106_tpl,
    input wire [7:0] in_i_data_107_tpl,
    input wire [7:0] in_i_data_108_tpl,
    input wire [7:0] in_i_data_109_tpl,
    input wire [7:0] in_i_data_110_tpl,
    input wire [7:0] in_i_data_111_tpl,
    input wire [7:0] in_i_data_112_tpl,
    input wire [7:0] in_i_data_113_tpl,
    input wire [7:0] in_i_data_114_tpl,
    input wire [7:0] in_i_data_115_tpl,
    input wire [7:0] in_i_data_116_tpl,
    input wire [7:0] in_i_data_117_tpl,
    input wire [7:0] in_i_data_118_tpl,
    input wire [7:0] in_i_data_119_tpl,
    input wire [7:0] in_i_data_120_tpl,
    input wire [7:0] in_i_data_121_tpl,
    input wire [7:0] in_i_data_122_tpl,
    input wire [7:0] in_i_data_123_tpl,
    input wire [7:0] in_i_data_124_tpl,
    input wire [7:0] in_i_data_125_tpl,
    input wire [7:0] in_i_data_126_tpl,
    input wire [7:0] in_i_data_127_tpl,
    input wire [7:0] in_i_data_128_tpl,
    input wire [7:0] in_i_data_129_tpl,
    input wire [7:0] in_i_data_130_tpl,
    input wire [0:0] in_i_data_131_tpl,
    input wire [0:0] in_i_data_132_tpl,
    input wire [0:0] in_i_data_133_tpl,
    input wire [0:0] in_i_data_134_tpl,
    input wire [0:0] in_i_data_135_tpl,
    input wire [31:0] in_i_data_136_tpl,
    input wire [0:0] in_i_data_137_tpl,
    input wire [31:0] in_i_data_138_tpl,
    input wire [0:0] in_i_data_139_tpl,
    input wire [31:0] in_i_data_140_tpl,
    input wire [0:0] in_i_data_141_tpl,
    input wire [0:0] in_i_data_142_tpl,
    input wire [31:0] in_i_data_143_tpl,
    input wire [31:0] in_i_data_144_tpl,
    input wire [0:0] in_i_data_145_tpl,
    input wire [31:0] in_i_data_146_tpl,
    input wire [0:0] in_i_data_147_tpl,
    input wire [0:0] in_i_data_148_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc1222_in;
    wire [0:0] adapt_scalar_trunc1222_q;
    wire [0:0] adapt_scalar_trunc1224_in;
    wire [0:0] adapt_scalar_trunc1224_q;
    wire [0:0] adapt_scalar_trunc1226_in;
    wire [0:0] adapt_scalar_trunc1226_q;
    wire [0:0] adapt_scalar_trunc2272_in;
    wire [0:0] adapt_scalar_trunc2272_q;
    wire [0:0] adapt_scalar_trunc2274_in;
    wire [0:0] adapt_scalar_trunc2274_q;
    wire [0:0] adapt_scalar_trunc2276_in;
    wire [0:0] adapt_scalar_trunc2276_q;
    wire [0:0] adapt_scalar_trunc2278_in;
    wire [0:0] adapt_scalar_trunc2278_q;
    wire [0:0] adapt_scalar_trunc2280_in;
    wire [0:0] adapt_scalar_trunc2280_q;
    wire [0:0] adapt_scalar_trunc2284_in;
    wire [0:0] adapt_scalar_trunc2284_q;
    wire [0:0] adapt_scalar_trunc2288_in;
    wire [0:0] adapt_scalar_trunc2288_q;
    wire [0:0] adapt_scalar_trunc2292_in;
    wire [0:0] adapt_scalar_trunc2292_q;
    wire [0:0] adapt_scalar_trunc2294_in;
    wire [0:0] adapt_scalar_trunc2294_q;
    wire [0:0] adapt_scalar_trunc2300_in;
    wire [0:0] adapt_scalar_trunc2300_q;
    wire [0:0] adapt_scalar_trunc2304_in;
    wire [0:0] adapt_scalar_trunc2304_q;
    wire [0:0] adapt_scalar_trunc2306_in;
    wire [0:0] adapt_scalar_trunc2306_q;
    wire [15:0] c_i16_01211_q;
    wire [23:0] c_i24_01203_q;
    wire [6:0] c_i7_01192_q;
    wire [1439:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] dsdk_ip_adapt_bitjoin100_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1000_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1005_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1007_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1009_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1014_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1016_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1018_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1023_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1025_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1027_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1032_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1034_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1036_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1044_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1046_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1048_q;
    wire [7:0] dsdk_ip_adapt_bitjoin105_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1053_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1055_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1057_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1062_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1064_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1066_q;
    wire [7:0] dsdk_ip_adapt_bitjoin107_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1071_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1073_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1075_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1080_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1082_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1084_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1089_q;
    wire [7:0] dsdk_ip_adapt_bitjoin109_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1091_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1093_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1098_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1100_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1102_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1107_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1109_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1111_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1116_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1118_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1120_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1125_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1127_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1129_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1134_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1136_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1138_q;
    wire [7:0] dsdk_ip_adapt_bitjoin114_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1143_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1145_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1147_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1152_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1154_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1156_q;
    wire [7:0] dsdk_ip_adapt_bitjoin116_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1161_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1163_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1165_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1170_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1172_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1174_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1179_q;
    wire [7:0] dsdk_ip_adapt_bitjoin118_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1181_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1183_q;
    wire [7:0] dsdk_ip_adapt_bitjoin123_q;
    wire [7:0] dsdk_ip_adapt_bitjoin125_q;
    wire [7:0] dsdk_ip_adapt_bitjoin127_q;
    wire [7:0] dsdk_ip_adapt_bitjoin132_q;
    wire [7:0] dsdk_ip_adapt_bitjoin134_q;
    wire [7:0] dsdk_ip_adapt_bitjoin136_q;
    wire [7:0] dsdk_ip_adapt_bitjoin141_q;
    wire [7:0] dsdk_ip_adapt_bitjoin143_q;
    wire [7:0] dsdk_ip_adapt_bitjoin145_q;
    wire [7:0] dsdk_ip_adapt_bitjoin15_q;
    wire [7:0] dsdk_ip_adapt_bitjoin150_q;
    wire [7:0] dsdk_ip_adapt_bitjoin152_q;
    wire [7:0] dsdk_ip_adapt_bitjoin154_q;
    wire [7:0] dsdk_ip_adapt_bitjoin162_q;
    wire [7:0] dsdk_ip_adapt_bitjoin164_q;
    wire [7:0] dsdk_ip_adapt_bitjoin166_q;
    wire [7:0] dsdk_ip_adapt_bitjoin17_q;
    wire [7:0] dsdk_ip_adapt_bitjoin171_q;
    wire [7:0] dsdk_ip_adapt_bitjoin173_q;
    wire [7:0] dsdk_ip_adapt_bitjoin175_q;
    wire [7:0] dsdk_ip_adapt_bitjoin180_q;
    wire [7:0] dsdk_ip_adapt_bitjoin182_q;
    wire [7:0] dsdk_ip_adapt_bitjoin184_q;
    wire [7:0] dsdk_ip_adapt_bitjoin189_q;
    wire [7:0] dsdk_ip_adapt_bitjoin19_q;
    wire [7:0] dsdk_ip_adapt_bitjoin191_q;
    wire [7:0] dsdk_ip_adapt_bitjoin193_q;
    wire [7:0] dsdk_ip_adapt_bitjoin198_q;
    wire [7:0] dsdk_ip_adapt_bitjoin200_q;
    wire [7:0] dsdk_ip_adapt_bitjoin202_q;
    wire [7:0] dsdk_ip_adapt_bitjoin207_q;
    wire [7:0] dsdk_ip_adapt_bitjoin209_q;
    wire [7:0] dsdk_ip_adapt_bitjoin211_q;
    wire [7:0] dsdk_ip_adapt_bitjoin216_q;
    wire [7:0] dsdk_ip_adapt_bitjoin218_q;
    wire [7:0] dsdk_ip_adapt_bitjoin220_q;
    wire [7:0] dsdk_ip_adapt_bitjoin225_q;
    wire [7:0] dsdk_ip_adapt_bitjoin227_q;
    wire [7:0] dsdk_ip_adapt_bitjoin229_q;
    wire [7:0] dsdk_ip_adapt_bitjoin234_q;
    wire [7:0] dsdk_ip_adapt_bitjoin236_q;
    wire [7:0] dsdk_ip_adapt_bitjoin238_q;
    wire [7:0] dsdk_ip_adapt_bitjoin24_q;
    wire [7:0] dsdk_ip_adapt_bitjoin243_q;
    wire [7:0] dsdk_ip_adapt_bitjoin245_q;
    wire [7:0] dsdk_ip_adapt_bitjoin247_q;
    wire [7:0] dsdk_ip_adapt_bitjoin252_q;
    wire [7:0] dsdk_ip_adapt_bitjoin254_q;
    wire [7:0] dsdk_ip_adapt_bitjoin256_q;
    wire [7:0] dsdk_ip_adapt_bitjoin26_q;
    wire [7:0] dsdk_ip_adapt_bitjoin261_q;
    wire [7:0] dsdk_ip_adapt_bitjoin263_q;
    wire [7:0] dsdk_ip_adapt_bitjoin265_q;
    wire [7:0] dsdk_ip_adapt_bitjoin270_q;
    wire [7:0] dsdk_ip_adapt_bitjoin272_q;
    wire [7:0] dsdk_ip_adapt_bitjoin274_q;
    wire [7:0] dsdk_ip_adapt_bitjoin279_q;
    wire [7:0] dsdk_ip_adapt_bitjoin28_q;
    wire [7:0] dsdk_ip_adapt_bitjoin281_q;
    wire [7:0] dsdk_ip_adapt_bitjoin283_q;
    wire [7:0] dsdk_ip_adapt_bitjoin288_q;
    wire [7:0] dsdk_ip_adapt_bitjoin290_q;
    wire [7:0] dsdk_ip_adapt_bitjoin292_q;
    wire [7:0] dsdk_ip_adapt_bitjoin297_q;
    wire [7:0] dsdk_ip_adapt_bitjoin299_q;
    wire [7:0] dsdk_ip_adapt_bitjoin301_q;
    wire [7:0] dsdk_ip_adapt_bitjoin309_q;
    wire [7:0] dsdk_ip_adapt_bitjoin311_q;
    wire [7:0] dsdk_ip_adapt_bitjoin313_q;
    wire [7:0] dsdk_ip_adapt_bitjoin318_q;
    wire [7:0] dsdk_ip_adapt_bitjoin320_q;
    wire [7:0] dsdk_ip_adapt_bitjoin322_q;
    wire [7:0] dsdk_ip_adapt_bitjoin327_q;
    wire [7:0] dsdk_ip_adapt_bitjoin329_q;
    wire [7:0] dsdk_ip_adapt_bitjoin33_q;
    wire [7:0] dsdk_ip_adapt_bitjoin331_q;
    wire [7:0] dsdk_ip_adapt_bitjoin336_q;
    wire [7:0] dsdk_ip_adapt_bitjoin338_q;
    wire [7:0] dsdk_ip_adapt_bitjoin340_q;
    wire [7:0] dsdk_ip_adapt_bitjoin345_q;
    wire [7:0] dsdk_ip_adapt_bitjoin347_q;
    wire [7:0] dsdk_ip_adapt_bitjoin349_q;
    wire [7:0] dsdk_ip_adapt_bitjoin35_q;
    wire [7:0] dsdk_ip_adapt_bitjoin354_q;
    wire [7:0] dsdk_ip_adapt_bitjoin356_q;
    wire [7:0] dsdk_ip_adapt_bitjoin358_q;
    wire [7:0] dsdk_ip_adapt_bitjoin363_q;
    wire [7:0] dsdk_ip_adapt_bitjoin365_q;
    wire [7:0] dsdk_ip_adapt_bitjoin367_q;
    wire [7:0] dsdk_ip_adapt_bitjoin37_q;
    wire [7:0] dsdk_ip_adapt_bitjoin372_q;
    wire [7:0] dsdk_ip_adapt_bitjoin374_q;
    wire [7:0] dsdk_ip_adapt_bitjoin376_q;
    wire [7:0] dsdk_ip_adapt_bitjoin381_q;
    wire [7:0] dsdk_ip_adapt_bitjoin383_q;
    wire [7:0] dsdk_ip_adapt_bitjoin385_q;
    wire [7:0] dsdk_ip_adapt_bitjoin390_q;
    wire [7:0] dsdk_ip_adapt_bitjoin392_q;
    wire [7:0] dsdk_ip_adapt_bitjoin394_q;
    wire [7:0] dsdk_ip_adapt_bitjoin399_q;
    wire [7:0] dsdk_ip_adapt_bitjoin401_q;
    wire [7:0] dsdk_ip_adapt_bitjoin403_q;
    wire [7:0] dsdk_ip_adapt_bitjoin408_q;
    wire [7:0] dsdk_ip_adapt_bitjoin410_q;
    wire [7:0] dsdk_ip_adapt_bitjoin412_q;
    wire [7:0] dsdk_ip_adapt_bitjoin417_q;
    wire [7:0] dsdk_ip_adapt_bitjoin419_q;
    wire [7:0] dsdk_ip_adapt_bitjoin42_q;
    wire [7:0] dsdk_ip_adapt_bitjoin421_q;
    wire [7:0] dsdk_ip_adapt_bitjoin426_q;
    wire [7:0] dsdk_ip_adapt_bitjoin428_q;
    wire [7:0] dsdk_ip_adapt_bitjoin430_q;
    wire [7:0] dsdk_ip_adapt_bitjoin435_q;
    wire [7:0] dsdk_ip_adapt_bitjoin437_q;
    wire [7:0] dsdk_ip_adapt_bitjoin439_q;
    wire [7:0] dsdk_ip_adapt_bitjoin44_q;
    wire [7:0] dsdk_ip_adapt_bitjoin444_q;
    wire [7:0] dsdk_ip_adapt_bitjoin446_q;
    wire [7:0] dsdk_ip_adapt_bitjoin448_q;
    wire [7:0] dsdk_ip_adapt_bitjoin456_q;
    wire [7:0] dsdk_ip_adapt_bitjoin458_q;
    wire [7:0] dsdk_ip_adapt_bitjoin46_q;
    wire [7:0] dsdk_ip_adapt_bitjoin460_q;
    wire [7:0] dsdk_ip_adapt_bitjoin465_q;
    wire [7:0] dsdk_ip_adapt_bitjoin467_q;
    wire [7:0] dsdk_ip_adapt_bitjoin469_q;
    wire [7:0] dsdk_ip_adapt_bitjoin474_q;
    wire [7:0] dsdk_ip_adapt_bitjoin476_q;
    wire [7:0] dsdk_ip_adapt_bitjoin478_q;
    wire [7:0] dsdk_ip_adapt_bitjoin483_q;
    wire [7:0] dsdk_ip_adapt_bitjoin485_q;
    wire [7:0] dsdk_ip_adapt_bitjoin487_q;
    wire [7:0] dsdk_ip_adapt_bitjoin492_q;
    wire [7:0] dsdk_ip_adapt_bitjoin494_q;
    wire [7:0] dsdk_ip_adapt_bitjoin496_q;
    wire [7:0] dsdk_ip_adapt_bitjoin501_q;
    wire [7:0] dsdk_ip_adapt_bitjoin503_q;
    wire [7:0] dsdk_ip_adapt_bitjoin505_q;
    wire [7:0] dsdk_ip_adapt_bitjoin51_q;
    wire [7:0] dsdk_ip_adapt_bitjoin510_q;
    wire [7:0] dsdk_ip_adapt_bitjoin512_q;
    wire [7:0] dsdk_ip_adapt_bitjoin514_q;
    wire [7:0] dsdk_ip_adapt_bitjoin519_q;
    wire [7:0] dsdk_ip_adapt_bitjoin521_q;
    wire [7:0] dsdk_ip_adapt_bitjoin523_q;
    wire [7:0] dsdk_ip_adapt_bitjoin528_q;
    wire [7:0] dsdk_ip_adapt_bitjoin53_q;
    wire [7:0] dsdk_ip_adapt_bitjoin530_q;
    wire [7:0] dsdk_ip_adapt_bitjoin532_q;
    wire [7:0] dsdk_ip_adapt_bitjoin537_q;
    wire [7:0] dsdk_ip_adapt_bitjoin539_q;
    wire [7:0] dsdk_ip_adapt_bitjoin541_q;
    wire [7:0] dsdk_ip_adapt_bitjoin546_q;
    wire [7:0] dsdk_ip_adapt_bitjoin548_q;
    wire [7:0] dsdk_ip_adapt_bitjoin55_q;
    wire [7:0] dsdk_ip_adapt_bitjoin550_q;
    wire [7:0] dsdk_ip_adapt_bitjoin555_q;
    wire [7:0] dsdk_ip_adapt_bitjoin557_q;
    wire [7:0] dsdk_ip_adapt_bitjoin559_q;
    wire [7:0] dsdk_ip_adapt_bitjoin564_q;
    wire [7:0] dsdk_ip_adapt_bitjoin566_q;
    wire [7:0] dsdk_ip_adapt_bitjoin568_q;
    wire [7:0] dsdk_ip_adapt_bitjoin573_q;
    wire [7:0] dsdk_ip_adapt_bitjoin575_q;
    wire [7:0] dsdk_ip_adapt_bitjoin577_q;
    wire [7:0] dsdk_ip_adapt_bitjoin582_q;
    wire [7:0] dsdk_ip_adapt_bitjoin584_q;
    wire [7:0] dsdk_ip_adapt_bitjoin586_q;
    wire [7:0] dsdk_ip_adapt_bitjoin591_q;
    wire [7:0] dsdk_ip_adapt_bitjoin593_q;
    wire [7:0] dsdk_ip_adapt_bitjoin595_q;
    wire [7:0] dsdk_ip_adapt_bitjoin60_q;
    wire [7:0] dsdk_ip_adapt_bitjoin603_q;
    wire [7:0] dsdk_ip_adapt_bitjoin605_q;
    wire [7:0] dsdk_ip_adapt_bitjoin607_q;
    wire [7:0] dsdk_ip_adapt_bitjoin612_q;
    wire [7:0] dsdk_ip_adapt_bitjoin614_q;
    wire [7:0] dsdk_ip_adapt_bitjoin616_q;
    wire [7:0] dsdk_ip_adapt_bitjoin62_q;
    wire [7:0] dsdk_ip_adapt_bitjoin621_q;
    wire [7:0] dsdk_ip_adapt_bitjoin623_q;
    wire [7:0] dsdk_ip_adapt_bitjoin625_q;
    wire [7:0] dsdk_ip_adapt_bitjoin630_q;
    wire [7:0] dsdk_ip_adapt_bitjoin632_q;
    wire [7:0] dsdk_ip_adapt_bitjoin634_q;
    wire [7:0] dsdk_ip_adapt_bitjoin639_q;
    wire [7:0] dsdk_ip_adapt_bitjoin64_q;
    wire [7:0] dsdk_ip_adapt_bitjoin641_q;
    wire [7:0] dsdk_ip_adapt_bitjoin643_q;
    wire [7:0] dsdk_ip_adapt_bitjoin648_q;
    wire [7:0] dsdk_ip_adapt_bitjoin650_q;
    wire [7:0] dsdk_ip_adapt_bitjoin652_q;
    wire [7:0] dsdk_ip_adapt_bitjoin657_q;
    wire [7:0] dsdk_ip_adapt_bitjoin659_q;
    wire [7:0] dsdk_ip_adapt_bitjoin661_q;
    wire [7:0] dsdk_ip_adapt_bitjoin666_q;
    wire [7:0] dsdk_ip_adapt_bitjoin668_q;
    wire [7:0] dsdk_ip_adapt_bitjoin670_q;
    wire [7:0] dsdk_ip_adapt_bitjoin675_q;
    wire [7:0] dsdk_ip_adapt_bitjoin677_q;
    wire [7:0] dsdk_ip_adapt_bitjoin679_q;
    wire [7:0] dsdk_ip_adapt_bitjoin684_q;
    wire [7:0] dsdk_ip_adapt_bitjoin686_q;
    wire [7:0] dsdk_ip_adapt_bitjoin688_q;
    wire [7:0] dsdk_ip_adapt_bitjoin69_q;
    wire [7:0] dsdk_ip_adapt_bitjoin693_q;
    wire [7:0] dsdk_ip_adapt_bitjoin695_q;
    wire [7:0] dsdk_ip_adapt_bitjoin697_q;
    wire [7:0] dsdk_ip_adapt_bitjoin702_q;
    wire [7:0] dsdk_ip_adapt_bitjoin704_q;
    wire [7:0] dsdk_ip_adapt_bitjoin706_q;
    wire [7:0] dsdk_ip_adapt_bitjoin71_q;
    wire [7:0] dsdk_ip_adapt_bitjoin711_q;
    wire [7:0] dsdk_ip_adapt_bitjoin713_q;
    wire [7:0] dsdk_ip_adapt_bitjoin715_q;
    wire [7:0] dsdk_ip_adapt_bitjoin720_q;
    wire [7:0] dsdk_ip_adapt_bitjoin722_q;
    wire [7:0] dsdk_ip_adapt_bitjoin724_q;
    wire [7:0] dsdk_ip_adapt_bitjoin729_q;
    wire [7:0] dsdk_ip_adapt_bitjoin73_q;
    wire [7:0] dsdk_ip_adapt_bitjoin731_q;
    wire [7:0] dsdk_ip_adapt_bitjoin733_q;
    wire [7:0] dsdk_ip_adapt_bitjoin738_q;
    wire [7:0] dsdk_ip_adapt_bitjoin740_q;
    wire [7:0] dsdk_ip_adapt_bitjoin742_q;
    wire [7:0] dsdk_ip_adapt_bitjoin750_q;
    wire [7:0] dsdk_ip_adapt_bitjoin752_q;
    wire [7:0] dsdk_ip_adapt_bitjoin754_q;
    wire [7:0] dsdk_ip_adapt_bitjoin759_q;
    wire [7:0] dsdk_ip_adapt_bitjoin761_q;
    wire [7:0] dsdk_ip_adapt_bitjoin763_q;
    wire [7:0] dsdk_ip_adapt_bitjoin768_q;
    wire [7:0] dsdk_ip_adapt_bitjoin770_q;
    wire [7:0] dsdk_ip_adapt_bitjoin772_q;
    wire [7:0] dsdk_ip_adapt_bitjoin777_q;
    wire [7:0] dsdk_ip_adapt_bitjoin779_q;
    wire [7:0] dsdk_ip_adapt_bitjoin78_q;
    wire [7:0] dsdk_ip_adapt_bitjoin781_q;
    wire [7:0] dsdk_ip_adapt_bitjoin786_q;
    wire [7:0] dsdk_ip_adapt_bitjoin788_q;
    wire [7:0] dsdk_ip_adapt_bitjoin790_q;
    wire [7:0] dsdk_ip_adapt_bitjoin795_q;
    wire [7:0] dsdk_ip_adapt_bitjoin797_q;
    wire [7:0] dsdk_ip_adapt_bitjoin799_q;
    wire [7:0] dsdk_ip_adapt_bitjoin80_q;
    wire [7:0] dsdk_ip_adapt_bitjoin804_q;
    wire [7:0] dsdk_ip_adapt_bitjoin806_q;
    wire [7:0] dsdk_ip_adapt_bitjoin808_q;
    wire [7:0] dsdk_ip_adapt_bitjoin813_q;
    wire [7:0] dsdk_ip_adapt_bitjoin815_q;
    wire [7:0] dsdk_ip_adapt_bitjoin817_q;
    wire [7:0] dsdk_ip_adapt_bitjoin82_q;
    wire [7:0] dsdk_ip_adapt_bitjoin822_q;
    wire [7:0] dsdk_ip_adapt_bitjoin824_q;
    wire [7:0] dsdk_ip_adapt_bitjoin826_q;
    wire [7:0] dsdk_ip_adapt_bitjoin831_q;
    wire [7:0] dsdk_ip_adapt_bitjoin833_q;
    wire [7:0] dsdk_ip_adapt_bitjoin835_q;
    wire [7:0] dsdk_ip_adapt_bitjoin840_q;
    wire [7:0] dsdk_ip_adapt_bitjoin842_q;
    wire [7:0] dsdk_ip_adapt_bitjoin844_q;
    wire [7:0] dsdk_ip_adapt_bitjoin849_q;
    wire [7:0] dsdk_ip_adapt_bitjoin851_q;
    wire [7:0] dsdk_ip_adapt_bitjoin853_q;
    wire [7:0] dsdk_ip_adapt_bitjoin858_q;
    wire [7:0] dsdk_ip_adapt_bitjoin860_q;
    wire [7:0] dsdk_ip_adapt_bitjoin862_q;
    wire [7:0] dsdk_ip_adapt_bitjoin867_q;
    wire [7:0] dsdk_ip_adapt_bitjoin869_q;
    wire [7:0] dsdk_ip_adapt_bitjoin87_q;
    wire [7:0] dsdk_ip_adapt_bitjoin871_q;
    wire [7:0] dsdk_ip_adapt_bitjoin876_q;
    wire [7:0] dsdk_ip_adapt_bitjoin878_q;
    wire [7:0] dsdk_ip_adapt_bitjoin880_q;
    wire [7:0] dsdk_ip_adapt_bitjoin885_q;
    wire [7:0] dsdk_ip_adapt_bitjoin887_q;
    wire [7:0] dsdk_ip_adapt_bitjoin889_q;
    wire [7:0] dsdk_ip_adapt_bitjoin89_q;
    wire [7:0] dsdk_ip_adapt_bitjoin897_q;
    wire [7:0] dsdk_ip_adapt_bitjoin899_q;
    wire [1023:0] dsdk_ip_adapt_bitjoin9_q;
    wire [7:0] dsdk_ip_adapt_bitjoin901_q;
    wire [7:0] dsdk_ip_adapt_bitjoin906_q;
    wire [7:0] dsdk_ip_adapt_bitjoin908_q;
    wire [7:0] dsdk_ip_adapt_bitjoin91_q;
    wire [7:0] dsdk_ip_adapt_bitjoin910_q;
    wire [7:0] dsdk_ip_adapt_bitjoin915_q;
    wire [7:0] dsdk_ip_adapt_bitjoin917_q;
    wire [7:0] dsdk_ip_adapt_bitjoin919_q;
    wire [7:0] dsdk_ip_adapt_bitjoin924_q;
    wire [7:0] dsdk_ip_adapt_bitjoin926_q;
    wire [7:0] dsdk_ip_adapt_bitjoin928_q;
    wire [7:0] dsdk_ip_adapt_bitjoin933_q;
    wire [7:0] dsdk_ip_adapt_bitjoin935_q;
    wire [7:0] dsdk_ip_adapt_bitjoin937_q;
    wire [7:0] dsdk_ip_adapt_bitjoin942_q;
    wire [7:0] dsdk_ip_adapt_bitjoin944_q;
    wire [7:0] dsdk_ip_adapt_bitjoin946_q;
    wire [7:0] dsdk_ip_adapt_bitjoin951_q;
    wire [7:0] dsdk_ip_adapt_bitjoin953_q;
    wire [7:0] dsdk_ip_adapt_bitjoin955_q;
    wire [7:0] dsdk_ip_adapt_bitjoin96_q;
    wire [7:0] dsdk_ip_adapt_bitjoin960_q;
    wire [7:0] dsdk_ip_adapt_bitjoin962_q;
    wire [7:0] dsdk_ip_adapt_bitjoin964_q;
    wire [7:0] dsdk_ip_adapt_bitjoin969_q;
    wire [7:0] dsdk_ip_adapt_bitjoin971_q;
    wire [7:0] dsdk_ip_adapt_bitjoin973_q;
    wire [7:0] dsdk_ip_adapt_bitjoin978_q;
    wire [7:0] dsdk_ip_adapt_bitjoin98_q;
    wire [7:0] dsdk_ip_adapt_bitjoin980_q;
    wire [7:0] dsdk_ip_adapt_bitjoin982_q;
    wire [7:0] dsdk_ip_adapt_bitjoin987_q;
    wire [7:0] dsdk_ip_adapt_bitjoin989_q;
    wire [7:0] dsdk_ip_adapt_bitjoin991_q;
    wire [7:0] dsdk_ip_adapt_bitjoin996_q;
    wire [7:0] dsdk_ip_adapt_bitjoin998_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin1042_q;
    wire [1023:0] dsdk_ip_array_adapt_bitjoin11_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin13_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin160_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin307_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin454_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin601_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin748_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin895_q;
    wire [7:0] element_extension1191_q;
    wire [7:0] element_extension1193_q;
    wire [7:0] element_extension1195_q;
    wire [7:0] element_extension1197_q;
    wire [7:0] element_extension1199_q;
    wire [7:0] element_extension1201_q;
    wire [7:0] element_extension1204_q;
    wire [7:0] element_extension1207_q;
    wire [7:0] element_extension1209_q;
    wire [7:0] element_extension1212_q;
    wire [7:0] element_extension1215_q;
    wire [7:0] element_extension1217_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [1439:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full_bitsignaltemp;
    wire [1439:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect1221_b;
    wire [0:0] ip_dsdk_adapt_bitselect1223_b;
    wire [0:0] ip_dsdk_adapt_bitselect1225_b;
    wire [1023:0] ip_dsdk_adapt_bitselect1227_b;
    wire [127:0] ip_dsdk_adapt_bitselect1231_b;
    wire [7:0] ip_dsdk_adapt_bitselect1233_b;
    wire [7:0] ip_dsdk_adapt_bitselect1241_b;
    wire [7:0] ip_dsdk_adapt_bitselect1249_b;
    wire [7:0] ip_dsdk_adapt_bitselect1257_b;
    wire [7:0] ip_dsdk_adapt_bitselect1265_b;
    wire [7:0] ip_dsdk_adapt_bitselect1273_b;
    wire [7:0] ip_dsdk_adapt_bitselect1281_b;
    wire [7:0] ip_dsdk_adapt_bitselect1289_b;
    wire [7:0] ip_dsdk_adapt_bitselect1297_b;
    wire [7:0] ip_dsdk_adapt_bitselect1305_b;
    wire [7:0] ip_dsdk_adapt_bitselect1313_b;
    wire [7:0] ip_dsdk_adapt_bitselect1321_b;
    wire [7:0] ip_dsdk_adapt_bitselect1329_b;
    wire [7:0] ip_dsdk_adapt_bitselect1337_b;
    wire [7:0] ip_dsdk_adapt_bitselect1345_b;
    wire [7:0] ip_dsdk_adapt_bitselect1353_b;
    wire [127:0] ip_dsdk_adapt_bitselect1361_b;
    wire [7:0] ip_dsdk_adapt_bitselect1363_b;
    wire [7:0] ip_dsdk_adapt_bitselect1371_b;
    wire [7:0] ip_dsdk_adapt_bitselect1379_b;
    wire [7:0] ip_dsdk_adapt_bitselect1387_b;
    wire [7:0] ip_dsdk_adapt_bitselect1395_b;
    wire [7:0] ip_dsdk_adapt_bitselect1403_b;
    wire [7:0] ip_dsdk_adapt_bitselect1411_b;
    wire [7:0] ip_dsdk_adapt_bitselect1419_b;
    wire [7:0] ip_dsdk_adapt_bitselect1427_b;
    wire [7:0] ip_dsdk_adapt_bitselect1435_b;
    wire [7:0] ip_dsdk_adapt_bitselect1443_b;
    wire [7:0] ip_dsdk_adapt_bitselect1451_b;
    wire [7:0] ip_dsdk_adapt_bitselect1459_b;
    wire [7:0] ip_dsdk_adapt_bitselect1467_b;
    wire [7:0] ip_dsdk_adapt_bitselect1475_b;
    wire [7:0] ip_dsdk_adapt_bitselect1483_b;
    wire [127:0] ip_dsdk_adapt_bitselect1491_b;
    wire [7:0] ip_dsdk_adapt_bitselect1493_b;
    wire [7:0] ip_dsdk_adapt_bitselect1501_b;
    wire [7:0] ip_dsdk_adapt_bitselect1509_b;
    wire [7:0] ip_dsdk_adapt_bitselect1517_b;
    wire [7:0] ip_dsdk_adapt_bitselect1525_b;
    wire [7:0] ip_dsdk_adapt_bitselect1533_b;
    wire [7:0] ip_dsdk_adapt_bitselect1541_b;
    wire [7:0] ip_dsdk_adapt_bitselect1549_b;
    wire [7:0] ip_dsdk_adapt_bitselect1557_b;
    wire [7:0] ip_dsdk_adapt_bitselect1565_b;
    wire [7:0] ip_dsdk_adapt_bitselect1573_b;
    wire [7:0] ip_dsdk_adapt_bitselect1581_b;
    wire [7:0] ip_dsdk_adapt_bitselect1589_b;
    wire [7:0] ip_dsdk_adapt_bitselect1597_b;
    wire [7:0] ip_dsdk_adapt_bitselect1605_b;
    wire [7:0] ip_dsdk_adapt_bitselect1613_b;
    wire [127:0] ip_dsdk_adapt_bitselect1621_b;
    wire [7:0] ip_dsdk_adapt_bitselect1623_b;
    wire [7:0] ip_dsdk_adapt_bitselect1631_b;
    wire [7:0] ip_dsdk_adapt_bitselect1639_b;
    wire [7:0] ip_dsdk_adapt_bitselect1647_b;
    wire [7:0] ip_dsdk_adapt_bitselect1655_b;
    wire [7:0] ip_dsdk_adapt_bitselect1663_b;
    wire [7:0] ip_dsdk_adapt_bitselect1671_b;
    wire [7:0] ip_dsdk_adapt_bitselect1679_b;
    wire [7:0] ip_dsdk_adapt_bitselect1687_b;
    wire [7:0] ip_dsdk_adapt_bitselect1695_b;
    wire [7:0] ip_dsdk_adapt_bitselect1703_b;
    wire [7:0] ip_dsdk_adapt_bitselect1711_b;
    wire [7:0] ip_dsdk_adapt_bitselect1719_b;
    wire [7:0] ip_dsdk_adapt_bitselect1727_b;
    wire [7:0] ip_dsdk_adapt_bitselect1735_b;
    wire [7:0] ip_dsdk_adapt_bitselect1743_b;
    wire [127:0] ip_dsdk_adapt_bitselect1751_b;
    wire [7:0] ip_dsdk_adapt_bitselect1753_b;
    wire [7:0] ip_dsdk_adapt_bitselect1761_b;
    wire [7:0] ip_dsdk_adapt_bitselect1769_b;
    wire [7:0] ip_dsdk_adapt_bitselect1777_b;
    wire [7:0] ip_dsdk_adapt_bitselect1785_b;
    wire [7:0] ip_dsdk_adapt_bitselect1793_b;
    wire [7:0] ip_dsdk_adapt_bitselect1801_b;
    wire [7:0] ip_dsdk_adapt_bitselect1809_b;
    wire [7:0] ip_dsdk_adapt_bitselect1817_b;
    wire [7:0] ip_dsdk_adapt_bitselect1825_b;
    wire [7:0] ip_dsdk_adapt_bitselect1833_b;
    wire [7:0] ip_dsdk_adapt_bitselect1841_b;
    wire [7:0] ip_dsdk_adapt_bitselect1849_b;
    wire [7:0] ip_dsdk_adapt_bitselect1857_b;
    wire [7:0] ip_dsdk_adapt_bitselect1865_b;
    wire [7:0] ip_dsdk_adapt_bitselect1873_b;
    wire [127:0] ip_dsdk_adapt_bitselect1881_b;
    wire [7:0] ip_dsdk_adapt_bitselect1883_b;
    wire [7:0] ip_dsdk_adapt_bitselect1891_b;
    wire [7:0] ip_dsdk_adapt_bitselect1899_b;
    wire [7:0] ip_dsdk_adapt_bitselect1907_b;
    wire [7:0] ip_dsdk_adapt_bitselect1915_b;
    wire [7:0] ip_dsdk_adapt_bitselect1923_b;
    wire [7:0] ip_dsdk_adapt_bitselect1931_b;
    wire [7:0] ip_dsdk_adapt_bitselect1939_b;
    wire [7:0] ip_dsdk_adapt_bitselect1947_b;
    wire [7:0] ip_dsdk_adapt_bitselect1955_b;
    wire [7:0] ip_dsdk_adapt_bitselect1963_b;
    wire [7:0] ip_dsdk_adapt_bitselect1971_b;
    wire [7:0] ip_dsdk_adapt_bitselect1979_b;
    wire [7:0] ip_dsdk_adapt_bitselect1987_b;
    wire [7:0] ip_dsdk_adapt_bitselect1995_b;
    wire [7:0] ip_dsdk_adapt_bitselect2003_b;
    wire [127:0] ip_dsdk_adapt_bitselect2011_b;
    wire [7:0] ip_dsdk_adapt_bitselect2013_b;
    wire [7:0] ip_dsdk_adapt_bitselect2021_b;
    wire [7:0] ip_dsdk_adapt_bitselect2029_b;
    wire [7:0] ip_dsdk_adapt_bitselect2037_b;
    wire [7:0] ip_dsdk_adapt_bitselect2045_b;
    wire [7:0] ip_dsdk_adapt_bitselect2053_b;
    wire [7:0] ip_dsdk_adapt_bitselect2061_b;
    wire [7:0] ip_dsdk_adapt_bitselect2069_b;
    wire [7:0] ip_dsdk_adapt_bitselect2077_b;
    wire [7:0] ip_dsdk_adapt_bitselect2085_b;
    wire [7:0] ip_dsdk_adapt_bitselect2093_b;
    wire [7:0] ip_dsdk_adapt_bitselect2101_b;
    wire [7:0] ip_dsdk_adapt_bitselect2109_b;
    wire [7:0] ip_dsdk_adapt_bitselect2117_b;
    wire [7:0] ip_dsdk_adapt_bitselect2125_b;
    wire [7:0] ip_dsdk_adapt_bitselect2133_b;
    wire [127:0] ip_dsdk_adapt_bitselect2141_b;
    wire [7:0] ip_dsdk_adapt_bitselect2143_b;
    wire [7:0] ip_dsdk_adapt_bitselect2151_b;
    wire [7:0] ip_dsdk_adapt_bitselect2159_b;
    wire [7:0] ip_dsdk_adapt_bitselect2167_b;
    wire [7:0] ip_dsdk_adapt_bitselect2175_b;
    wire [7:0] ip_dsdk_adapt_bitselect2183_b;
    wire [7:0] ip_dsdk_adapt_bitselect2191_b;
    wire [7:0] ip_dsdk_adapt_bitselect2199_b;
    wire [7:0] ip_dsdk_adapt_bitselect2207_b;
    wire [7:0] ip_dsdk_adapt_bitselect2215_b;
    wire [7:0] ip_dsdk_adapt_bitselect2223_b;
    wire [7:0] ip_dsdk_adapt_bitselect2231_b;
    wire [7:0] ip_dsdk_adapt_bitselect2239_b;
    wire [7:0] ip_dsdk_adapt_bitselect2247_b;
    wire [7:0] ip_dsdk_adapt_bitselect2255_b;
    wire [7:0] ip_dsdk_adapt_bitselect2263_b;
    wire [0:0] ip_dsdk_adapt_bitselect2271_b;
    wire [0:0] ip_dsdk_adapt_bitselect2273_b;
    wire [0:0] ip_dsdk_adapt_bitselect2275_b;
    wire [0:0] ip_dsdk_adapt_bitselect2277_b;
    wire [0:0] ip_dsdk_adapt_bitselect2279_b;
    wire [31:0] ip_dsdk_adapt_bitselect2281_b;
    wire [0:0] ip_dsdk_adapt_bitselect2283_b;
    wire [31:0] ip_dsdk_adapt_bitselect2285_b;
    wire [0:0] ip_dsdk_adapt_bitselect2287_b;
    wire [31:0] ip_dsdk_adapt_bitselect2289_b;
    wire [0:0] ip_dsdk_adapt_bitselect2291_b;
    wire [0:0] ip_dsdk_adapt_bitselect2293_b;
    wire [31:0] ip_dsdk_adapt_bitselect2295_b;
    wire [31:0] ip_dsdk_adapt_bitselect2297_b;
    wire [0:0] ip_dsdk_adapt_bitselect2299_b;
    wire [31:0] ip_dsdk_adapt_bitselect2301_b;
    wire [0:0] ip_dsdk_adapt_bitselect2303_b;
    wire [0:0] ip_dsdk_adapt_bitselect2305_b;


    // ip_dsdk_adapt_bitselect2305(BITSELECT,1386)
    assign ip_dsdk_adapt_bitselect2305_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1416:1416];

    // adapt_scalar_trunc2306(ROUND,18)
    assign adapt_scalar_trunc2306_in = ip_dsdk_adapt_bitselect2305_b;
    assign adapt_scalar_trunc2306_q = adapt_scalar_trunc2306_in[0:0];

    // ip_dsdk_adapt_bitselect2303(BITSELECT,1385)
    assign ip_dsdk_adapt_bitselect2303_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1408:1408];

    // adapt_scalar_trunc2304(ROUND,17)
    assign adapt_scalar_trunc2304_in = ip_dsdk_adapt_bitselect2303_b;
    assign adapt_scalar_trunc2304_q = adapt_scalar_trunc2304_in[0:0];

    // ip_dsdk_adapt_bitselect2301(BITSELECT,1384)
    assign ip_dsdk_adapt_bitselect2301_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1407:1376];

    // ip_dsdk_adapt_bitselect2299(BITSELECT,1383)
    assign ip_dsdk_adapt_bitselect2299_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1344:1344];

    // adapt_scalar_trunc2300(ROUND,16)
    assign adapt_scalar_trunc2300_in = ip_dsdk_adapt_bitselect2299_b;
    assign adapt_scalar_trunc2300_q = adapt_scalar_trunc2300_in[0:0];

    // ip_dsdk_adapt_bitselect2297(BITSELECT,1382)
    assign ip_dsdk_adapt_bitselect2297_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1343:1312];

    // ip_dsdk_adapt_bitselect2295(BITSELECT,1381)
    assign ip_dsdk_adapt_bitselect2295_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1311:1280];

    // ip_dsdk_adapt_bitselect2293(BITSELECT,1380)
    assign ip_dsdk_adapt_bitselect2293_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1256:1256];

    // adapt_scalar_trunc2294(ROUND,15)
    assign adapt_scalar_trunc2294_in = ip_dsdk_adapt_bitselect2293_b;
    assign adapt_scalar_trunc2294_q = adapt_scalar_trunc2294_in[0:0];

    // ip_dsdk_adapt_bitselect2291(BITSELECT,1379)
    assign ip_dsdk_adapt_bitselect2291_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1248:1248];

    // adapt_scalar_trunc2292(ROUND,14)
    assign adapt_scalar_trunc2292_in = ip_dsdk_adapt_bitselect2291_b;
    assign adapt_scalar_trunc2292_q = adapt_scalar_trunc2292_in[0:0];

    // ip_dsdk_adapt_bitselect2289(BITSELECT,1378)
    assign ip_dsdk_adapt_bitselect2289_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1247:1216];

    // ip_dsdk_adapt_bitselect2287(BITSELECT,1377)
    assign ip_dsdk_adapt_bitselect2287_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1184:1184];

    // adapt_scalar_trunc2288(ROUND,13)
    assign adapt_scalar_trunc2288_in = ip_dsdk_adapt_bitselect2287_b;
    assign adapt_scalar_trunc2288_q = adapt_scalar_trunc2288_in[0:0];

    // ip_dsdk_adapt_bitselect2285(BITSELECT,1376)
    assign ip_dsdk_adapt_bitselect2285_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1183:1152];

    // ip_dsdk_adapt_bitselect2283(BITSELECT,1375)
    assign ip_dsdk_adapt_bitselect2283_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1120:1120];

    // adapt_scalar_trunc2284(ROUND,12)
    assign adapt_scalar_trunc2284_in = ip_dsdk_adapt_bitselect2283_b;
    assign adapt_scalar_trunc2284_q = adapt_scalar_trunc2284_in[0:0];

    // ip_dsdk_adapt_bitselect2281(BITSELECT,1374)
    assign ip_dsdk_adapt_bitselect2281_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1119:1088];

    // ip_dsdk_adapt_bitselect2279(BITSELECT,1373)
    assign ip_dsdk_adapt_bitselect2279_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1080:1080];

    // adapt_scalar_trunc2280(ROUND,11)
    assign adapt_scalar_trunc2280_in = ip_dsdk_adapt_bitselect2279_b;
    assign adapt_scalar_trunc2280_q = adapt_scalar_trunc2280_in[0:0];

    // ip_dsdk_adapt_bitselect2277(BITSELECT,1372)
    assign ip_dsdk_adapt_bitselect2277_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1072:1072];

    // adapt_scalar_trunc2278(ROUND,10)
    assign adapt_scalar_trunc2278_in = ip_dsdk_adapt_bitselect2277_b;
    assign adapt_scalar_trunc2278_q = adapt_scalar_trunc2278_in[0:0];

    // ip_dsdk_adapt_bitselect2275(BITSELECT,1371)
    assign ip_dsdk_adapt_bitselect2275_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1064:1064];

    // adapt_scalar_trunc2276(ROUND,9)
    assign adapt_scalar_trunc2276_in = ip_dsdk_adapt_bitselect2275_b;
    assign adapt_scalar_trunc2276_q = adapt_scalar_trunc2276_in[0:0];

    // ip_dsdk_adapt_bitselect2273(BITSELECT,1370)
    assign ip_dsdk_adapt_bitselect2273_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1056:1056];

    // adapt_scalar_trunc2274(ROUND,8)
    assign adapt_scalar_trunc2274_in = ip_dsdk_adapt_bitselect2273_b;
    assign adapt_scalar_trunc2274_q = adapt_scalar_trunc2274_in[0:0];

    // ip_dsdk_adapt_bitselect2271(BITSELECT,1369)
    assign ip_dsdk_adapt_bitselect2271_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1048:1048];

    // adapt_scalar_trunc2272(ROUND,7)
    assign adapt_scalar_trunc2272_in = ip_dsdk_adapt_bitselect2271_b;
    assign adapt_scalar_trunc2272_q = adapt_scalar_trunc2272_in[0:0];

    // ip_dsdk_adapt_bitselect1227(BITSELECT,847)
    assign ip_dsdk_adapt_bitselect1227_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[1047:24];

    // ip_dsdk_adapt_bitselect2141(BITSELECT,1304)
    assign ip_dsdk_adapt_bitselect2141_b = ip_dsdk_adapt_bitselect1227_b[1023:896];

    // ip_dsdk_adapt_bitselect2263(BITSELECT,1365)
    assign ip_dsdk_adapt_bitselect2263_b = ip_dsdk_adapt_bitselect2141_b[127:120];

    // ip_dsdk_adapt_bitselect2255(BITSELECT,1361)
    assign ip_dsdk_adapt_bitselect2255_b = ip_dsdk_adapt_bitselect2141_b[119:112];

    // ip_dsdk_adapt_bitselect2247(BITSELECT,1357)
    assign ip_dsdk_adapt_bitselect2247_b = ip_dsdk_adapt_bitselect2141_b[111:104];

    // ip_dsdk_adapt_bitselect2239(BITSELECT,1353)
    assign ip_dsdk_adapt_bitselect2239_b = ip_dsdk_adapt_bitselect2141_b[103:96];

    // ip_dsdk_adapt_bitselect2231(BITSELECT,1349)
    assign ip_dsdk_adapt_bitselect2231_b = ip_dsdk_adapt_bitselect2141_b[95:88];

    // ip_dsdk_adapt_bitselect2223(BITSELECT,1345)
    assign ip_dsdk_adapt_bitselect2223_b = ip_dsdk_adapt_bitselect2141_b[87:80];

    // ip_dsdk_adapt_bitselect2215(BITSELECT,1341)
    assign ip_dsdk_adapt_bitselect2215_b = ip_dsdk_adapt_bitselect2141_b[79:72];

    // ip_dsdk_adapt_bitselect2207(BITSELECT,1337)
    assign ip_dsdk_adapt_bitselect2207_b = ip_dsdk_adapt_bitselect2141_b[71:64];

    // ip_dsdk_adapt_bitselect2199(BITSELECT,1333)
    assign ip_dsdk_adapt_bitselect2199_b = ip_dsdk_adapt_bitselect2141_b[63:56];

    // ip_dsdk_adapt_bitselect2191(BITSELECT,1329)
    assign ip_dsdk_adapt_bitselect2191_b = ip_dsdk_adapt_bitselect2141_b[55:48];

    // ip_dsdk_adapt_bitselect2183(BITSELECT,1325)
    assign ip_dsdk_adapt_bitselect2183_b = ip_dsdk_adapt_bitselect2141_b[47:40];

    // ip_dsdk_adapt_bitselect2175(BITSELECT,1321)
    assign ip_dsdk_adapt_bitselect2175_b = ip_dsdk_adapt_bitselect2141_b[39:32];

    // ip_dsdk_adapt_bitselect2167(BITSELECT,1317)
    assign ip_dsdk_adapt_bitselect2167_b = ip_dsdk_adapt_bitselect2141_b[31:24];

    // ip_dsdk_adapt_bitselect2159(BITSELECT,1313)
    assign ip_dsdk_adapt_bitselect2159_b = ip_dsdk_adapt_bitselect2141_b[23:16];

    // ip_dsdk_adapt_bitselect2151(BITSELECT,1309)
    assign ip_dsdk_adapt_bitselect2151_b = ip_dsdk_adapt_bitselect2141_b[15:8];

    // ip_dsdk_adapt_bitselect2143(BITSELECT,1305)
    assign ip_dsdk_adapt_bitselect2143_b = ip_dsdk_adapt_bitselect2141_b[7:0];

    // ip_dsdk_adapt_bitselect2011(BITSELECT,1239)
    assign ip_dsdk_adapt_bitselect2011_b = ip_dsdk_adapt_bitselect1227_b[895:768];

    // ip_dsdk_adapt_bitselect2133(BITSELECT,1300)
    assign ip_dsdk_adapt_bitselect2133_b = ip_dsdk_adapt_bitselect2011_b[127:120];

    // ip_dsdk_adapt_bitselect2125(BITSELECT,1296)
    assign ip_dsdk_adapt_bitselect2125_b = ip_dsdk_adapt_bitselect2011_b[119:112];

    // ip_dsdk_adapt_bitselect2117(BITSELECT,1292)
    assign ip_dsdk_adapt_bitselect2117_b = ip_dsdk_adapt_bitselect2011_b[111:104];

    // ip_dsdk_adapt_bitselect2109(BITSELECT,1288)
    assign ip_dsdk_adapt_bitselect2109_b = ip_dsdk_adapt_bitselect2011_b[103:96];

    // ip_dsdk_adapt_bitselect2101(BITSELECT,1284)
    assign ip_dsdk_adapt_bitselect2101_b = ip_dsdk_adapt_bitselect2011_b[95:88];

    // ip_dsdk_adapt_bitselect2093(BITSELECT,1280)
    assign ip_dsdk_adapt_bitselect2093_b = ip_dsdk_adapt_bitselect2011_b[87:80];

    // ip_dsdk_adapt_bitselect2085(BITSELECT,1276)
    assign ip_dsdk_adapt_bitselect2085_b = ip_dsdk_adapt_bitselect2011_b[79:72];

    // ip_dsdk_adapt_bitselect2077(BITSELECT,1272)
    assign ip_dsdk_adapt_bitselect2077_b = ip_dsdk_adapt_bitselect2011_b[71:64];

    // ip_dsdk_adapt_bitselect2069(BITSELECT,1268)
    assign ip_dsdk_adapt_bitselect2069_b = ip_dsdk_adapt_bitselect2011_b[63:56];

    // ip_dsdk_adapt_bitselect2061(BITSELECT,1264)
    assign ip_dsdk_adapt_bitselect2061_b = ip_dsdk_adapt_bitselect2011_b[55:48];

    // ip_dsdk_adapt_bitselect2053(BITSELECT,1260)
    assign ip_dsdk_adapt_bitselect2053_b = ip_dsdk_adapt_bitselect2011_b[47:40];

    // ip_dsdk_adapt_bitselect2045(BITSELECT,1256)
    assign ip_dsdk_adapt_bitselect2045_b = ip_dsdk_adapt_bitselect2011_b[39:32];

    // ip_dsdk_adapt_bitselect2037(BITSELECT,1252)
    assign ip_dsdk_adapt_bitselect2037_b = ip_dsdk_adapt_bitselect2011_b[31:24];

    // ip_dsdk_adapt_bitselect2029(BITSELECT,1248)
    assign ip_dsdk_adapt_bitselect2029_b = ip_dsdk_adapt_bitselect2011_b[23:16];

    // ip_dsdk_adapt_bitselect2021(BITSELECT,1244)
    assign ip_dsdk_adapt_bitselect2021_b = ip_dsdk_adapt_bitselect2011_b[15:8];

    // ip_dsdk_adapt_bitselect2013(BITSELECT,1240)
    assign ip_dsdk_adapt_bitselect2013_b = ip_dsdk_adapt_bitselect2011_b[7:0];

    // ip_dsdk_adapt_bitselect1881(BITSELECT,1174)
    assign ip_dsdk_adapt_bitselect1881_b = ip_dsdk_adapt_bitselect1227_b[767:640];

    // ip_dsdk_adapt_bitselect2003(BITSELECT,1235)
    assign ip_dsdk_adapt_bitselect2003_b = ip_dsdk_adapt_bitselect1881_b[127:120];

    // ip_dsdk_adapt_bitselect1995(BITSELECT,1231)
    assign ip_dsdk_adapt_bitselect1995_b = ip_dsdk_adapt_bitselect1881_b[119:112];

    // ip_dsdk_adapt_bitselect1987(BITSELECT,1227)
    assign ip_dsdk_adapt_bitselect1987_b = ip_dsdk_adapt_bitselect1881_b[111:104];

    // ip_dsdk_adapt_bitselect1979(BITSELECT,1223)
    assign ip_dsdk_adapt_bitselect1979_b = ip_dsdk_adapt_bitselect1881_b[103:96];

    // ip_dsdk_adapt_bitselect1971(BITSELECT,1219)
    assign ip_dsdk_adapt_bitselect1971_b = ip_dsdk_adapt_bitselect1881_b[95:88];

    // ip_dsdk_adapt_bitselect1963(BITSELECT,1215)
    assign ip_dsdk_adapt_bitselect1963_b = ip_dsdk_adapt_bitselect1881_b[87:80];

    // ip_dsdk_adapt_bitselect1955(BITSELECT,1211)
    assign ip_dsdk_adapt_bitselect1955_b = ip_dsdk_adapt_bitselect1881_b[79:72];

    // ip_dsdk_adapt_bitselect1947(BITSELECT,1207)
    assign ip_dsdk_adapt_bitselect1947_b = ip_dsdk_adapt_bitselect1881_b[71:64];

    // ip_dsdk_adapt_bitselect1939(BITSELECT,1203)
    assign ip_dsdk_adapt_bitselect1939_b = ip_dsdk_adapt_bitselect1881_b[63:56];

    // ip_dsdk_adapt_bitselect1931(BITSELECT,1199)
    assign ip_dsdk_adapt_bitselect1931_b = ip_dsdk_adapt_bitselect1881_b[55:48];

    // ip_dsdk_adapt_bitselect1923(BITSELECT,1195)
    assign ip_dsdk_adapt_bitselect1923_b = ip_dsdk_adapt_bitselect1881_b[47:40];

    // ip_dsdk_adapt_bitselect1915(BITSELECT,1191)
    assign ip_dsdk_adapt_bitselect1915_b = ip_dsdk_adapt_bitselect1881_b[39:32];

    // ip_dsdk_adapt_bitselect1907(BITSELECT,1187)
    assign ip_dsdk_adapt_bitselect1907_b = ip_dsdk_adapt_bitselect1881_b[31:24];

    // ip_dsdk_adapt_bitselect1899(BITSELECT,1183)
    assign ip_dsdk_adapt_bitselect1899_b = ip_dsdk_adapt_bitselect1881_b[23:16];

    // ip_dsdk_adapt_bitselect1891(BITSELECT,1179)
    assign ip_dsdk_adapt_bitselect1891_b = ip_dsdk_adapt_bitselect1881_b[15:8];

    // ip_dsdk_adapt_bitselect1883(BITSELECT,1175)
    assign ip_dsdk_adapt_bitselect1883_b = ip_dsdk_adapt_bitselect1881_b[7:0];

    // ip_dsdk_adapt_bitselect1751(BITSELECT,1109)
    assign ip_dsdk_adapt_bitselect1751_b = ip_dsdk_adapt_bitselect1227_b[639:512];

    // ip_dsdk_adapt_bitselect1873(BITSELECT,1170)
    assign ip_dsdk_adapt_bitselect1873_b = ip_dsdk_adapt_bitselect1751_b[127:120];

    // ip_dsdk_adapt_bitselect1865(BITSELECT,1166)
    assign ip_dsdk_adapt_bitselect1865_b = ip_dsdk_adapt_bitselect1751_b[119:112];

    // ip_dsdk_adapt_bitselect1857(BITSELECT,1162)
    assign ip_dsdk_adapt_bitselect1857_b = ip_dsdk_adapt_bitselect1751_b[111:104];

    // ip_dsdk_adapt_bitselect1849(BITSELECT,1158)
    assign ip_dsdk_adapt_bitselect1849_b = ip_dsdk_adapt_bitselect1751_b[103:96];

    // ip_dsdk_adapt_bitselect1841(BITSELECT,1154)
    assign ip_dsdk_adapt_bitselect1841_b = ip_dsdk_adapt_bitselect1751_b[95:88];

    // ip_dsdk_adapt_bitselect1833(BITSELECT,1150)
    assign ip_dsdk_adapt_bitselect1833_b = ip_dsdk_adapt_bitselect1751_b[87:80];

    // ip_dsdk_adapt_bitselect1825(BITSELECT,1146)
    assign ip_dsdk_adapt_bitselect1825_b = ip_dsdk_adapt_bitselect1751_b[79:72];

    // ip_dsdk_adapt_bitselect1817(BITSELECT,1142)
    assign ip_dsdk_adapt_bitselect1817_b = ip_dsdk_adapt_bitselect1751_b[71:64];

    // ip_dsdk_adapt_bitselect1809(BITSELECT,1138)
    assign ip_dsdk_adapt_bitselect1809_b = ip_dsdk_adapt_bitselect1751_b[63:56];

    // ip_dsdk_adapt_bitselect1801(BITSELECT,1134)
    assign ip_dsdk_adapt_bitselect1801_b = ip_dsdk_adapt_bitselect1751_b[55:48];

    // ip_dsdk_adapt_bitselect1793(BITSELECT,1130)
    assign ip_dsdk_adapt_bitselect1793_b = ip_dsdk_adapt_bitselect1751_b[47:40];

    // ip_dsdk_adapt_bitselect1785(BITSELECT,1126)
    assign ip_dsdk_adapt_bitselect1785_b = ip_dsdk_adapt_bitselect1751_b[39:32];

    // ip_dsdk_adapt_bitselect1777(BITSELECT,1122)
    assign ip_dsdk_adapt_bitselect1777_b = ip_dsdk_adapt_bitselect1751_b[31:24];

    // ip_dsdk_adapt_bitselect1769(BITSELECT,1118)
    assign ip_dsdk_adapt_bitselect1769_b = ip_dsdk_adapt_bitselect1751_b[23:16];

    // ip_dsdk_adapt_bitselect1761(BITSELECT,1114)
    assign ip_dsdk_adapt_bitselect1761_b = ip_dsdk_adapt_bitselect1751_b[15:8];

    // ip_dsdk_adapt_bitselect1753(BITSELECT,1110)
    assign ip_dsdk_adapt_bitselect1753_b = ip_dsdk_adapt_bitselect1751_b[7:0];

    // ip_dsdk_adapt_bitselect1621(BITSELECT,1044)
    assign ip_dsdk_adapt_bitselect1621_b = ip_dsdk_adapt_bitselect1227_b[511:384];

    // ip_dsdk_adapt_bitselect1743(BITSELECT,1105)
    assign ip_dsdk_adapt_bitselect1743_b = ip_dsdk_adapt_bitselect1621_b[127:120];

    // ip_dsdk_adapt_bitselect1735(BITSELECT,1101)
    assign ip_dsdk_adapt_bitselect1735_b = ip_dsdk_adapt_bitselect1621_b[119:112];

    // ip_dsdk_adapt_bitselect1727(BITSELECT,1097)
    assign ip_dsdk_adapt_bitselect1727_b = ip_dsdk_adapt_bitselect1621_b[111:104];

    // ip_dsdk_adapt_bitselect1719(BITSELECT,1093)
    assign ip_dsdk_adapt_bitselect1719_b = ip_dsdk_adapt_bitselect1621_b[103:96];

    // ip_dsdk_adapt_bitselect1711(BITSELECT,1089)
    assign ip_dsdk_adapt_bitselect1711_b = ip_dsdk_adapt_bitselect1621_b[95:88];

    // ip_dsdk_adapt_bitselect1703(BITSELECT,1085)
    assign ip_dsdk_adapt_bitselect1703_b = ip_dsdk_adapt_bitselect1621_b[87:80];

    // ip_dsdk_adapt_bitselect1695(BITSELECT,1081)
    assign ip_dsdk_adapt_bitselect1695_b = ip_dsdk_adapt_bitselect1621_b[79:72];

    // ip_dsdk_adapt_bitselect1687(BITSELECT,1077)
    assign ip_dsdk_adapt_bitselect1687_b = ip_dsdk_adapt_bitselect1621_b[71:64];

    // ip_dsdk_adapt_bitselect1679(BITSELECT,1073)
    assign ip_dsdk_adapt_bitselect1679_b = ip_dsdk_adapt_bitselect1621_b[63:56];

    // ip_dsdk_adapt_bitselect1671(BITSELECT,1069)
    assign ip_dsdk_adapt_bitselect1671_b = ip_dsdk_adapt_bitselect1621_b[55:48];

    // ip_dsdk_adapt_bitselect1663(BITSELECT,1065)
    assign ip_dsdk_adapt_bitselect1663_b = ip_dsdk_adapt_bitselect1621_b[47:40];

    // ip_dsdk_adapt_bitselect1655(BITSELECT,1061)
    assign ip_dsdk_adapt_bitselect1655_b = ip_dsdk_adapt_bitselect1621_b[39:32];

    // ip_dsdk_adapt_bitselect1647(BITSELECT,1057)
    assign ip_dsdk_adapt_bitselect1647_b = ip_dsdk_adapt_bitselect1621_b[31:24];

    // ip_dsdk_adapt_bitselect1639(BITSELECT,1053)
    assign ip_dsdk_adapt_bitselect1639_b = ip_dsdk_adapt_bitselect1621_b[23:16];

    // ip_dsdk_adapt_bitselect1631(BITSELECT,1049)
    assign ip_dsdk_adapt_bitselect1631_b = ip_dsdk_adapt_bitselect1621_b[15:8];

    // ip_dsdk_adapt_bitselect1623(BITSELECT,1045)
    assign ip_dsdk_adapt_bitselect1623_b = ip_dsdk_adapt_bitselect1621_b[7:0];

    // ip_dsdk_adapt_bitselect1491(BITSELECT,979)
    assign ip_dsdk_adapt_bitselect1491_b = ip_dsdk_adapt_bitselect1227_b[383:256];

    // ip_dsdk_adapt_bitselect1613(BITSELECT,1040)
    assign ip_dsdk_adapt_bitselect1613_b = ip_dsdk_adapt_bitselect1491_b[127:120];

    // ip_dsdk_adapt_bitselect1605(BITSELECT,1036)
    assign ip_dsdk_adapt_bitselect1605_b = ip_dsdk_adapt_bitselect1491_b[119:112];

    // ip_dsdk_adapt_bitselect1597(BITSELECT,1032)
    assign ip_dsdk_adapt_bitselect1597_b = ip_dsdk_adapt_bitselect1491_b[111:104];

    // ip_dsdk_adapt_bitselect1589(BITSELECT,1028)
    assign ip_dsdk_adapt_bitselect1589_b = ip_dsdk_adapt_bitselect1491_b[103:96];

    // ip_dsdk_adapt_bitselect1581(BITSELECT,1024)
    assign ip_dsdk_adapt_bitselect1581_b = ip_dsdk_adapt_bitselect1491_b[95:88];

    // ip_dsdk_adapt_bitselect1573(BITSELECT,1020)
    assign ip_dsdk_adapt_bitselect1573_b = ip_dsdk_adapt_bitselect1491_b[87:80];

    // ip_dsdk_adapt_bitselect1565(BITSELECT,1016)
    assign ip_dsdk_adapt_bitselect1565_b = ip_dsdk_adapt_bitselect1491_b[79:72];

    // ip_dsdk_adapt_bitselect1557(BITSELECT,1012)
    assign ip_dsdk_adapt_bitselect1557_b = ip_dsdk_adapt_bitselect1491_b[71:64];

    // ip_dsdk_adapt_bitselect1549(BITSELECT,1008)
    assign ip_dsdk_adapt_bitselect1549_b = ip_dsdk_adapt_bitselect1491_b[63:56];

    // ip_dsdk_adapt_bitselect1541(BITSELECT,1004)
    assign ip_dsdk_adapt_bitselect1541_b = ip_dsdk_adapt_bitselect1491_b[55:48];

    // ip_dsdk_adapt_bitselect1533(BITSELECT,1000)
    assign ip_dsdk_adapt_bitselect1533_b = ip_dsdk_adapt_bitselect1491_b[47:40];

    // ip_dsdk_adapt_bitselect1525(BITSELECT,996)
    assign ip_dsdk_adapt_bitselect1525_b = ip_dsdk_adapt_bitselect1491_b[39:32];

    // ip_dsdk_adapt_bitselect1517(BITSELECT,992)
    assign ip_dsdk_adapt_bitselect1517_b = ip_dsdk_adapt_bitselect1491_b[31:24];

    // ip_dsdk_adapt_bitselect1509(BITSELECT,988)
    assign ip_dsdk_adapt_bitselect1509_b = ip_dsdk_adapt_bitselect1491_b[23:16];

    // ip_dsdk_adapt_bitselect1501(BITSELECT,984)
    assign ip_dsdk_adapt_bitselect1501_b = ip_dsdk_adapt_bitselect1491_b[15:8];

    // ip_dsdk_adapt_bitselect1493(BITSELECT,980)
    assign ip_dsdk_adapt_bitselect1493_b = ip_dsdk_adapt_bitselect1491_b[7:0];

    // ip_dsdk_adapt_bitselect1361(BITSELECT,914)
    assign ip_dsdk_adapt_bitselect1361_b = ip_dsdk_adapt_bitselect1227_b[255:128];

    // ip_dsdk_adapt_bitselect1483(BITSELECT,975)
    assign ip_dsdk_adapt_bitselect1483_b = ip_dsdk_adapt_bitselect1361_b[127:120];

    // ip_dsdk_adapt_bitselect1475(BITSELECT,971)
    assign ip_dsdk_adapt_bitselect1475_b = ip_dsdk_adapt_bitselect1361_b[119:112];

    // ip_dsdk_adapt_bitselect1467(BITSELECT,967)
    assign ip_dsdk_adapt_bitselect1467_b = ip_dsdk_adapt_bitselect1361_b[111:104];

    // ip_dsdk_adapt_bitselect1459(BITSELECT,963)
    assign ip_dsdk_adapt_bitselect1459_b = ip_dsdk_adapt_bitselect1361_b[103:96];

    // ip_dsdk_adapt_bitselect1451(BITSELECT,959)
    assign ip_dsdk_adapt_bitselect1451_b = ip_dsdk_adapt_bitselect1361_b[95:88];

    // ip_dsdk_adapt_bitselect1443(BITSELECT,955)
    assign ip_dsdk_adapt_bitselect1443_b = ip_dsdk_adapt_bitselect1361_b[87:80];

    // ip_dsdk_adapt_bitselect1435(BITSELECT,951)
    assign ip_dsdk_adapt_bitselect1435_b = ip_dsdk_adapt_bitselect1361_b[79:72];

    // ip_dsdk_adapt_bitselect1427(BITSELECT,947)
    assign ip_dsdk_adapt_bitselect1427_b = ip_dsdk_adapt_bitselect1361_b[71:64];

    // ip_dsdk_adapt_bitselect1419(BITSELECT,943)
    assign ip_dsdk_adapt_bitselect1419_b = ip_dsdk_adapt_bitselect1361_b[63:56];

    // ip_dsdk_adapt_bitselect1411(BITSELECT,939)
    assign ip_dsdk_adapt_bitselect1411_b = ip_dsdk_adapt_bitselect1361_b[55:48];

    // ip_dsdk_adapt_bitselect1403(BITSELECT,935)
    assign ip_dsdk_adapt_bitselect1403_b = ip_dsdk_adapt_bitselect1361_b[47:40];

    // ip_dsdk_adapt_bitselect1395(BITSELECT,931)
    assign ip_dsdk_adapt_bitselect1395_b = ip_dsdk_adapt_bitselect1361_b[39:32];

    // ip_dsdk_adapt_bitselect1387(BITSELECT,927)
    assign ip_dsdk_adapt_bitselect1387_b = ip_dsdk_adapt_bitselect1361_b[31:24];

    // ip_dsdk_adapt_bitselect1379(BITSELECT,923)
    assign ip_dsdk_adapt_bitselect1379_b = ip_dsdk_adapt_bitselect1361_b[23:16];

    // ip_dsdk_adapt_bitselect1371(BITSELECT,919)
    assign ip_dsdk_adapt_bitselect1371_b = ip_dsdk_adapt_bitselect1361_b[15:8];

    // ip_dsdk_adapt_bitselect1363(BITSELECT,915)
    assign ip_dsdk_adapt_bitselect1363_b = ip_dsdk_adapt_bitselect1361_b[7:0];

    // ip_dsdk_adapt_bitselect1231(BITSELECT,849)
    assign ip_dsdk_adapt_bitselect1231_b = ip_dsdk_adapt_bitselect1227_b[127:0];

    // ip_dsdk_adapt_bitselect1353(BITSELECT,910)
    assign ip_dsdk_adapt_bitselect1353_b = ip_dsdk_adapt_bitselect1231_b[127:120];

    // ip_dsdk_adapt_bitselect1345(BITSELECT,906)
    assign ip_dsdk_adapt_bitselect1345_b = ip_dsdk_adapt_bitselect1231_b[119:112];

    // ip_dsdk_adapt_bitselect1337(BITSELECT,902)
    assign ip_dsdk_adapt_bitselect1337_b = ip_dsdk_adapt_bitselect1231_b[111:104];

    // ip_dsdk_adapt_bitselect1329(BITSELECT,898)
    assign ip_dsdk_adapt_bitselect1329_b = ip_dsdk_adapt_bitselect1231_b[103:96];

    // ip_dsdk_adapt_bitselect1321(BITSELECT,894)
    assign ip_dsdk_adapt_bitselect1321_b = ip_dsdk_adapt_bitselect1231_b[95:88];

    // ip_dsdk_adapt_bitselect1313(BITSELECT,890)
    assign ip_dsdk_adapt_bitselect1313_b = ip_dsdk_adapt_bitselect1231_b[87:80];

    // ip_dsdk_adapt_bitselect1305(BITSELECT,886)
    assign ip_dsdk_adapt_bitselect1305_b = ip_dsdk_adapt_bitselect1231_b[79:72];

    // ip_dsdk_adapt_bitselect1297(BITSELECT,882)
    assign ip_dsdk_adapt_bitselect1297_b = ip_dsdk_adapt_bitselect1231_b[71:64];

    // ip_dsdk_adapt_bitselect1289(BITSELECT,878)
    assign ip_dsdk_adapt_bitselect1289_b = ip_dsdk_adapt_bitselect1231_b[63:56];

    // ip_dsdk_adapt_bitselect1281(BITSELECT,874)
    assign ip_dsdk_adapt_bitselect1281_b = ip_dsdk_adapt_bitselect1231_b[55:48];

    // ip_dsdk_adapt_bitselect1273(BITSELECT,870)
    assign ip_dsdk_adapt_bitselect1273_b = ip_dsdk_adapt_bitselect1231_b[47:40];

    // ip_dsdk_adapt_bitselect1265(BITSELECT,866)
    assign ip_dsdk_adapt_bitselect1265_b = ip_dsdk_adapt_bitselect1231_b[39:32];

    // ip_dsdk_adapt_bitselect1257(BITSELECT,862)
    assign ip_dsdk_adapt_bitselect1257_b = ip_dsdk_adapt_bitselect1231_b[31:24];

    // ip_dsdk_adapt_bitselect1249(BITSELECT,858)
    assign ip_dsdk_adapt_bitselect1249_b = ip_dsdk_adapt_bitselect1231_b[23:16];

    // ip_dsdk_adapt_bitselect1241(BITSELECT,854)
    assign ip_dsdk_adapt_bitselect1241_b = ip_dsdk_adapt_bitselect1231_b[15:8];

    // ip_dsdk_adapt_bitselect1233(BITSELECT,850)
    assign ip_dsdk_adapt_bitselect1233_b = ip_dsdk_adapt_bitselect1231_b[7:0];

    // ip_dsdk_adapt_bitselect1225(BITSELECT,846)
    assign ip_dsdk_adapt_bitselect1225_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[16:16];

    // adapt_scalar_trunc1226(ROUND,6)
    assign adapt_scalar_trunc1226_in = ip_dsdk_adapt_bitselect1225_b;
    assign adapt_scalar_trunc1226_q = adapt_scalar_trunc1226_in[0:0];

    // ip_dsdk_adapt_bitselect1223(BITSELECT,845)
    assign ip_dsdk_adapt_bitselect1223_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[8:8];

    // adapt_scalar_trunc1224(ROUND,5)
    assign adapt_scalar_trunc1224_in = ip_dsdk_adapt_bitselect1223_b;
    assign adapt_scalar_trunc1224_q = adapt_scalar_trunc1224_in[0:0];

    // ip_dsdk_adapt_bitselect1221(BITSELECT,844)
    assign ip_dsdk_adapt_bitselect1221_b = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data[0:0];

    // adapt_scalar_trunc1222(ROUND,4)
    assign adapt_scalar_trunc1222_in = ip_dsdk_adapt_bitselect1221_b;
    assign adapt_scalar_trunc1222_q = adapt_scalar_trunc1222_in[0:0];

    // c_i7_01192(CONSTANT,418)
    assign c_i7_01192_q = $unsigned(7'b0000000);

    // element_extension1217(BITJOIN,839)
    assign element_extension1217_q = {c_i7_01192_q, in_i_data_148_tpl};

    // element_extension1215(BITJOIN,838)
    assign element_extension1215_q = {c_i7_01192_q, in_i_data_147_tpl};

    // element_extension1212(BITJOIN,837)
    assign element_extension1212_q = {c_i7_01192_q, in_i_data_145_tpl};

    // c_i16_01211(CONSTANT,413)
    assign c_i16_01211_q = $unsigned(16'b0000000000000000);

    // element_extension1209(BITJOIN,836)
    assign element_extension1209_q = {c_i7_01192_q, in_i_data_142_tpl};

    // element_extension1207(BITJOIN,835)
    assign element_extension1207_q = {c_i7_01192_q, in_i_data_141_tpl};

    // element_extension1204(BITJOIN,834)
    assign element_extension1204_q = {c_i7_01192_q, in_i_data_139_tpl};

    // c_i24_01203(CONSTANT,415)
    assign c_i24_01203_q = $unsigned(24'b000000000000000000000000);

    // element_extension1201(BITJOIN,833)
    assign element_extension1201_q = {c_i7_01192_q, in_i_data_137_tpl};

    // element_extension1199(BITJOIN,832)
    assign element_extension1199_q = {c_i7_01192_q, in_i_data_135_tpl};

    // element_extension1197(BITJOIN,831)
    assign element_extension1197_q = {c_i7_01192_q, in_i_data_134_tpl};

    // element_extension1195(BITJOIN,830)
    assign element_extension1195_q = {c_i7_01192_q, in_i_data_133_tpl};

    // element_extension1193(BITJOIN,829)
    assign element_extension1193_q = {c_i7_01192_q, in_i_data_132_tpl};

    // element_extension1191(BITJOIN,828)
    assign element_extension1191_q = {c_i7_01192_q, in_i_data_131_tpl};

    // dsdk_ip_adapt_bitjoin1183(BITJOIN,501)
    assign dsdk_ip_adapt_bitjoin1183_q = in_i_data_130_tpl;

    // dsdk_ip_adapt_bitjoin1181(BITJOIN,500)
    assign dsdk_ip_adapt_bitjoin1181_q = dsdk_ip_adapt_bitjoin1183_q;

    // dsdk_ip_adapt_bitjoin1179(BITJOIN,498)
    assign dsdk_ip_adapt_bitjoin1179_q = dsdk_ip_adapt_bitjoin1181_q;

    // dsdk_ip_adapt_bitjoin1174(BITJOIN,497)
    assign dsdk_ip_adapt_bitjoin1174_q = in_i_data_129_tpl;

    // dsdk_ip_adapt_bitjoin1172(BITJOIN,496)
    assign dsdk_ip_adapt_bitjoin1172_q = dsdk_ip_adapt_bitjoin1174_q;

    // dsdk_ip_adapt_bitjoin1170(BITJOIN,495)
    assign dsdk_ip_adapt_bitjoin1170_q = dsdk_ip_adapt_bitjoin1172_q;

    // dsdk_ip_adapt_bitjoin1165(BITJOIN,494)
    assign dsdk_ip_adapt_bitjoin1165_q = in_i_data_128_tpl;

    // dsdk_ip_adapt_bitjoin1163(BITJOIN,493)
    assign dsdk_ip_adapt_bitjoin1163_q = dsdk_ip_adapt_bitjoin1165_q;

    // dsdk_ip_adapt_bitjoin1161(BITJOIN,492)
    assign dsdk_ip_adapt_bitjoin1161_q = dsdk_ip_adapt_bitjoin1163_q;

    // dsdk_ip_adapt_bitjoin1156(BITJOIN,490)
    assign dsdk_ip_adapt_bitjoin1156_q = in_i_data_127_tpl;

    // dsdk_ip_adapt_bitjoin1154(BITJOIN,489)
    assign dsdk_ip_adapt_bitjoin1154_q = dsdk_ip_adapt_bitjoin1156_q;

    // dsdk_ip_adapt_bitjoin1152(BITJOIN,488)
    assign dsdk_ip_adapt_bitjoin1152_q = dsdk_ip_adapt_bitjoin1154_q;

    // dsdk_ip_adapt_bitjoin1147(BITJOIN,487)
    assign dsdk_ip_adapt_bitjoin1147_q = in_i_data_126_tpl;

    // dsdk_ip_adapt_bitjoin1145(BITJOIN,486)
    assign dsdk_ip_adapt_bitjoin1145_q = dsdk_ip_adapt_bitjoin1147_q;

    // dsdk_ip_adapt_bitjoin1143(BITJOIN,485)
    assign dsdk_ip_adapt_bitjoin1143_q = dsdk_ip_adapt_bitjoin1145_q;

    // dsdk_ip_adapt_bitjoin1138(BITJOIN,483)
    assign dsdk_ip_adapt_bitjoin1138_q = in_i_data_125_tpl;

    // dsdk_ip_adapt_bitjoin1136(BITJOIN,482)
    assign dsdk_ip_adapt_bitjoin1136_q = dsdk_ip_adapt_bitjoin1138_q;

    // dsdk_ip_adapt_bitjoin1134(BITJOIN,481)
    assign dsdk_ip_adapt_bitjoin1134_q = dsdk_ip_adapt_bitjoin1136_q;

    // dsdk_ip_adapt_bitjoin1129(BITJOIN,480)
    assign dsdk_ip_adapt_bitjoin1129_q = in_i_data_124_tpl;

    // dsdk_ip_adapt_bitjoin1127(BITJOIN,479)
    assign dsdk_ip_adapt_bitjoin1127_q = dsdk_ip_adapt_bitjoin1129_q;

    // dsdk_ip_adapt_bitjoin1125(BITJOIN,478)
    assign dsdk_ip_adapt_bitjoin1125_q = dsdk_ip_adapt_bitjoin1127_q;

    // dsdk_ip_adapt_bitjoin1120(BITJOIN,477)
    assign dsdk_ip_adapt_bitjoin1120_q = in_i_data_123_tpl;

    // dsdk_ip_adapt_bitjoin1118(BITJOIN,476)
    assign dsdk_ip_adapt_bitjoin1118_q = dsdk_ip_adapt_bitjoin1120_q;

    // dsdk_ip_adapt_bitjoin1116(BITJOIN,475)
    assign dsdk_ip_adapt_bitjoin1116_q = dsdk_ip_adapt_bitjoin1118_q;

    // dsdk_ip_adapt_bitjoin1111(BITJOIN,474)
    assign dsdk_ip_adapt_bitjoin1111_q = in_i_data_122_tpl;

    // dsdk_ip_adapt_bitjoin1109(BITJOIN,473)
    assign dsdk_ip_adapt_bitjoin1109_q = dsdk_ip_adapt_bitjoin1111_q;

    // dsdk_ip_adapt_bitjoin1107(BITJOIN,472)
    assign dsdk_ip_adapt_bitjoin1107_q = dsdk_ip_adapt_bitjoin1109_q;

    // dsdk_ip_adapt_bitjoin1102(BITJOIN,471)
    assign dsdk_ip_adapt_bitjoin1102_q = in_i_data_121_tpl;

    // dsdk_ip_adapt_bitjoin1100(BITJOIN,470)
    assign dsdk_ip_adapt_bitjoin1100_q = dsdk_ip_adapt_bitjoin1102_q;

    // dsdk_ip_adapt_bitjoin1098(BITJOIN,469)
    assign dsdk_ip_adapt_bitjoin1098_q = dsdk_ip_adapt_bitjoin1100_q;

    // dsdk_ip_adapt_bitjoin1093(BITJOIN,468)
    assign dsdk_ip_adapt_bitjoin1093_q = in_i_data_120_tpl;

    // dsdk_ip_adapt_bitjoin1091(BITJOIN,467)
    assign dsdk_ip_adapt_bitjoin1091_q = dsdk_ip_adapt_bitjoin1093_q;

    // dsdk_ip_adapt_bitjoin1089(BITJOIN,465)
    assign dsdk_ip_adapt_bitjoin1089_q = dsdk_ip_adapt_bitjoin1091_q;

    // dsdk_ip_adapt_bitjoin1084(BITJOIN,464)
    assign dsdk_ip_adapt_bitjoin1084_q = in_i_data_119_tpl;

    // dsdk_ip_adapt_bitjoin1082(BITJOIN,463)
    assign dsdk_ip_adapt_bitjoin1082_q = dsdk_ip_adapt_bitjoin1084_q;

    // dsdk_ip_adapt_bitjoin1080(BITJOIN,462)
    assign dsdk_ip_adapt_bitjoin1080_q = dsdk_ip_adapt_bitjoin1082_q;

    // dsdk_ip_adapt_bitjoin1075(BITJOIN,461)
    assign dsdk_ip_adapt_bitjoin1075_q = in_i_data_118_tpl;

    // dsdk_ip_adapt_bitjoin1073(BITJOIN,460)
    assign dsdk_ip_adapt_bitjoin1073_q = dsdk_ip_adapt_bitjoin1075_q;

    // dsdk_ip_adapt_bitjoin1071(BITJOIN,459)
    assign dsdk_ip_adapt_bitjoin1071_q = dsdk_ip_adapt_bitjoin1073_q;

    // dsdk_ip_adapt_bitjoin1066(BITJOIN,457)
    assign dsdk_ip_adapt_bitjoin1066_q = in_i_data_117_tpl;

    // dsdk_ip_adapt_bitjoin1064(BITJOIN,456)
    assign dsdk_ip_adapt_bitjoin1064_q = dsdk_ip_adapt_bitjoin1066_q;

    // dsdk_ip_adapt_bitjoin1062(BITJOIN,455)
    assign dsdk_ip_adapt_bitjoin1062_q = dsdk_ip_adapt_bitjoin1064_q;

    // dsdk_ip_adapt_bitjoin1057(BITJOIN,454)
    assign dsdk_ip_adapt_bitjoin1057_q = in_i_data_116_tpl;

    // dsdk_ip_adapt_bitjoin1055(BITJOIN,453)
    assign dsdk_ip_adapt_bitjoin1055_q = dsdk_ip_adapt_bitjoin1057_q;

    // dsdk_ip_adapt_bitjoin1053(BITJOIN,452)
    assign dsdk_ip_adapt_bitjoin1053_q = dsdk_ip_adapt_bitjoin1055_q;

    // dsdk_ip_adapt_bitjoin1048(BITJOIN,450)
    assign dsdk_ip_adapt_bitjoin1048_q = in_i_data_115_tpl;

    // dsdk_ip_adapt_bitjoin1046(BITJOIN,449)
    assign dsdk_ip_adapt_bitjoin1046_q = dsdk_ip_adapt_bitjoin1048_q;

    // dsdk_ip_adapt_bitjoin1044(BITJOIN,448)
    assign dsdk_ip_adapt_bitjoin1044_q = dsdk_ip_adapt_bitjoin1046_q;

    // dsdk_ip_array_adapt_bitjoin1042(BITJOIN,819)
    assign dsdk_ip_array_adapt_bitjoin1042_q = {dsdk_ip_adapt_bitjoin1179_q, dsdk_ip_adapt_bitjoin1170_q, dsdk_ip_adapt_bitjoin1161_q, dsdk_ip_adapt_bitjoin1152_q, dsdk_ip_adapt_bitjoin1143_q, dsdk_ip_adapt_bitjoin1134_q, dsdk_ip_adapt_bitjoin1125_q, dsdk_ip_adapt_bitjoin1116_q, dsdk_ip_adapt_bitjoin1107_q, dsdk_ip_adapt_bitjoin1098_q, dsdk_ip_adapt_bitjoin1089_q, dsdk_ip_adapt_bitjoin1080_q, dsdk_ip_adapt_bitjoin1071_q, dsdk_ip_adapt_bitjoin1062_q, dsdk_ip_adapt_bitjoin1053_q, dsdk_ip_adapt_bitjoin1044_q};

    // dsdk_ip_adapt_bitjoin1036(BITJOIN,447)
    assign dsdk_ip_adapt_bitjoin1036_q = in_i_data_114_tpl;

    // dsdk_ip_adapt_bitjoin1034(BITJOIN,446)
    assign dsdk_ip_adapt_bitjoin1034_q = dsdk_ip_adapt_bitjoin1036_q;

    // dsdk_ip_adapt_bitjoin1032(BITJOIN,445)
    assign dsdk_ip_adapt_bitjoin1032_q = dsdk_ip_adapt_bitjoin1034_q;

    // dsdk_ip_adapt_bitjoin1027(BITJOIN,444)
    assign dsdk_ip_adapt_bitjoin1027_q = in_i_data_113_tpl;

    // dsdk_ip_adapt_bitjoin1025(BITJOIN,443)
    assign dsdk_ip_adapt_bitjoin1025_q = dsdk_ip_adapt_bitjoin1027_q;

    // dsdk_ip_adapt_bitjoin1023(BITJOIN,442)
    assign dsdk_ip_adapt_bitjoin1023_q = dsdk_ip_adapt_bitjoin1025_q;

    // dsdk_ip_adapt_bitjoin1018(BITJOIN,441)
    assign dsdk_ip_adapt_bitjoin1018_q = in_i_data_112_tpl;

    // dsdk_ip_adapt_bitjoin1016(BITJOIN,440)
    assign dsdk_ip_adapt_bitjoin1016_q = dsdk_ip_adapt_bitjoin1018_q;

    // dsdk_ip_adapt_bitjoin1014(BITJOIN,439)
    assign dsdk_ip_adapt_bitjoin1014_q = dsdk_ip_adapt_bitjoin1016_q;

    // dsdk_ip_adapt_bitjoin1009(BITJOIN,438)
    assign dsdk_ip_adapt_bitjoin1009_q = in_i_data_111_tpl;

    // dsdk_ip_adapt_bitjoin1007(BITJOIN,437)
    assign dsdk_ip_adapt_bitjoin1007_q = dsdk_ip_adapt_bitjoin1009_q;

    // dsdk_ip_adapt_bitjoin1005(BITJOIN,436)
    assign dsdk_ip_adapt_bitjoin1005_q = dsdk_ip_adapt_bitjoin1007_q;

    // dsdk_ip_adapt_bitjoin1000(BITJOIN,435)
    assign dsdk_ip_adapt_bitjoin1000_q = in_i_data_110_tpl;

    // dsdk_ip_adapt_bitjoin998(BITJOIN,818)
    assign dsdk_ip_adapt_bitjoin998_q = dsdk_ip_adapt_bitjoin1000_q;

    // dsdk_ip_adapt_bitjoin996(BITJOIN,817)
    assign dsdk_ip_adapt_bitjoin996_q = dsdk_ip_adapt_bitjoin998_q;

    // dsdk_ip_adapt_bitjoin991(BITJOIN,816)
    assign dsdk_ip_adapt_bitjoin991_q = in_i_data_109_tpl;

    // dsdk_ip_adapt_bitjoin989(BITJOIN,815)
    assign dsdk_ip_adapt_bitjoin989_q = dsdk_ip_adapt_bitjoin991_q;

    // dsdk_ip_adapt_bitjoin987(BITJOIN,814)
    assign dsdk_ip_adapt_bitjoin987_q = dsdk_ip_adapt_bitjoin989_q;

    // dsdk_ip_adapt_bitjoin982(BITJOIN,813)
    assign dsdk_ip_adapt_bitjoin982_q = in_i_data_108_tpl;

    // dsdk_ip_adapt_bitjoin980(BITJOIN,812)
    assign dsdk_ip_adapt_bitjoin980_q = dsdk_ip_adapt_bitjoin982_q;

    // dsdk_ip_adapt_bitjoin978(BITJOIN,810)
    assign dsdk_ip_adapt_bitjoin978_q = dsdk_ip_adapt_bitjoin980_q;

    // dsdk_ip_adapt_bitjoin973(BITJOIN,809)
    assign dsdk_ip_adapt_bitjoin973_q = in_i_data_107_tpl;

    // dsdk_ip_adapt_bitjoin971(BITJOIN,808)
    assign dsdk_ip_adapt_bitjoin971_q = dsdk_ip_adapt_bitjoin973_q;

    // dsdk_ip_adapt_bitjoin969(BITJOIN,807)
    assign dsdk_ip_adapt_bitjoin969_q = dsdk_ip_adapt_bitjoin971_q;

    // dsdk_ip_adapt_bitjoin964(BITJOIN,806)
    assign dsdk_ip_adapt_bitjoin964_q = in_i_data_106_tpl;

    // dsdk_ip_adapt_bitjoin962(BITJOIN,805)
    assign dsdk_ip_adapt_bitjoin962_q = dsdk_ip_adapt_bitjoin964_q;

    // dsdk_ip_adapt_bitjoin960(BITJOIN,804)
    assign dsdk_ip_adapt_bitjoin960_q = dsdk_ip_adapt_bitjoin962_q;

    // dsdk_ip_adapt_bitjoin955(BITJOIN,802)
    assign dsdk_ip_adapt_bitjoin955_q = in_i_data_105_tpl;

    // dsdk_ip_adapt_bitjoin953(BITJOIN,801)
    assign dsdk_ip_adapt_bitjoin953_q = dsdk_ip_adapt_bitjoin955_q;

    // dsdk_ip_adapt_bitjoin951(BITJOIN,800)
    assign dsdk_ip_adapt_bitjoin951_q = dsdk_ip_adapt_bitjoin953_q;

    // dsdk_ip_adapt_bitjoin946(BITJOIN,799)
    assign dsdk_ip_adapt_bitjoin946_q = in_i_data_104_tpl;

    // dsdk_ip_adapt_bitjoin944(BITJOIN,798)
    assign dsdk_ip_adapt_bitjoin944_q = dsdk_ip_adapt_bitjoin946_q;

    // dsdk_ip_adapt_bitjoin942(BITJOIN,797)
    assign dsdk_ip_adapt_bitjoin942_q = dsdk_ip_adapt_bitjoin944_q;

    // dsdk_ip_adapt_bitjoin937(BITJOIN,796)
    assign dsdk_ip_adapt_bitjoin937_q = in_i_data_103_tpl;

    // dsdk_ip_adapt_bitjoin935(BITJOIN,795)
    assign dsdk_ip_adapt_bitjoin935_q = dsdk_ip_adapt_bitjoin937_q;

    // dsdk_ip_adapt_bitjoin933(BITJOIN,794)
    assign dsdk_ip_adapt_bitjoin933_q = dsdk_ip_adapt_bitjoin935_q;

    // dsdk_ip_adapt_bitjoin928(BITJOIN,793)
    assign dsdk_ip_adapt_bitjoin928_q = in_i_data_102_tpl;

    // dsdk_ip_adapt_bitjoin926(BITJOIN,792)
    assign dsdk_ip_adapt_bitjoin926_q = dsdk_ip_adapt_bitjoin928_q;

    // dsdk_ip_adapt_bitjoin924(BITJOIN,791)
    assign dsdk_ip_adapt_bitjoin924_q = dsdk_ip_adapt_bitjoin926_q;

    // dsdk_ip_adapt_bitjoin919(BITJOIN,790)
    assign dsdk_ip_adapt_bitjoin919_q = in_i_data_101_tpl;

    // dsdk_ip_adapt_bitjoin917(BITJOIN,789)
    assign dsdk_ip_adapt_bitjoin917_q = dsdk_ip_adapt_bitjoin919_q;

    // dsdk_ip_adapt_bitjoin915(BITJOIN,788)
    assign dsdk_ip_adapt_bitjoin915_q = dsdk_ip_adapt_bitjoin917_q;

    // dsdk_ip_adapt_bitjoin910(BITJOIN,787)
    assign dsdk_ip_adapt_bitjoin910_q = in_i_data_100_tpl;

    // dsdk_ip_adapt_bitjoin908(BITJOIN,785)
    assign dsdk_ip_adapt_bitjoin908_q = dsdk_ip_adapt_bitjoin910_q;

    // dsdk_ip_adapt_bitjoin906(BITJOIN,784)
    assign dsdk_ip_adapt_bitjoin906_q = dsdk_ip_adapt_bitjoin908_q;

    // dsdk_ip_adapt_bitjoin901(BITJOIN,783)
    assign dsdk_ip_adapt_bitjoin901_q = in_i_data_99_tpl;

    // dsdk_ip_adapt_bitjoin899(BITJOIN,781)
    assign dsdk_ip_adapt_bitjoin899_q = dsdk_ip_adapt_bitjoin901_q;

    // dsdk_ip_adapt_bitjoin897(BITJOIN,780)
    assign dsdk_ip_adapt_bitjoin897_q = dsdk_ip_adapt_bitjoin899_q;

    // dsdk_ip_array_adapt_bitjoin895(BITJOIN,827)
    assign dsdk_ip_array_adapt_bitjoin895_q = {dsdk_ip_adapt_bitjoin1032_q, dsdk_ip_adapt_bitjoin1023_q, dsdk_ip_adapt_bitjoin1014_q, dsdk_ip_adapt_bitjoin1005_q, dsdk_ip_adapt_bitjoin996_q, dsdk_ip_adapt_bitjoin987_q, dsdk_ip_adapt_bitjoin978_q, dsdk_ip_adapt_bitjoin969_q, dsdk_ip_adapt_bitjoin960_q, dsdk_ip_adapt_bitjoin951_q, dsdk_ip_adapt_bitjoin942_q, dsdk_ip_adapt_bitjoin933_q, dsdk_ip_adapt_bitjoin924_q, dsdk_ip_adapt_bitjoin915_q, dsdk_ip_adapt_bitjoin906_q, dsdk_ip_adapt_bitjoin897_q};

    // dsdk_ip_adapt_bitjoin889(BITJOIN,778)
    assign dsdk_ip_adapt_bitjoin889_q = in_i_data_98_tpl;

    // dsdk_ip_adapt_bitjoin887(BITJOIN,777)
    assign dsdk_ip_adapt_bitjoin887_q = dsdk_ip_adapt_bitjoin889_q;

    // dsdk_ip_adapt_bitjoin885(BITJOIN,776)
    assign dsdk_ip_adapt_bitjoin885_q = dsdk_ip_adapt_bitjoin887_q;

    // dsdk_ip_adapt_bitjoin880(BITJOIN,775)
    assign dsdk_ip_adapt_bitjoin880_q = in_i_data_97_tpl;

    // dsdk_ip_adapt_bitjoin878(BITJOIN,774)
    assign dsdk_ip_adapt_bitjoin878_q = dsdk_ip_adapt_bitjoin880_q;

    // dsdk_ip_adapt_bitjoin876(BITJOIN,773)
    assign dsdk_ip_adapt_bitjoin876_q = dsdk_ip_adapt_bitjoin878_q;

    // dsdk_ip_adapt_bitjoin871(BITJOIN,772)
    assign dsdk_ip_adapt_bitjoin871_q = in_i_data_96_tpl;

    // dsdk_ip_adapt_bitjoin869(BITJOIN,770)
    assign dsdk_ip_adapt_bitjoin869_q = dsdk_ip_adapt_bitjoin871_q;

    // dsdk_ip_adapt_bitjoin867(BITJOIN,769)
    assign dsdk_ip_adapt_bitjoin867_q = dsdk_ip_adapt_bitjoin869_q;

    // dsdk_ip_adapt_bitjoin862(BITJOIN,768)
    assign dsdk_ip_adapt_bitjoin862_q = in_i_data_95_tpl;

    // dsdk_ip_adapt_bitjoin860(BITJOIN,767)
    assign dsdk_ip_adapt_bitjoin860_q = dsdk_ip_adapt_bitjoin862_q;

    // dsdk_ip_adapt_bitjoin858(BITJOIN,766)
    assign dsdk_ip_adapt_bitjoin858_q = dsdk_ip_adapt_bitjoin860_q;

    // dsdk_ip_adapt_bitjoin853(BITJOIN,765)
    assign dsdk_ip_adapt_bitjoin853_q = in_i_data_94_tpl;

    // dsdk_ip_adapt_bitjoin851(BITJOIN,764)
    assign dsdk_ip_adapt_bitjoin851_q = dsdk_ip_adapt_bitjoin853_q;

    // dsdk_ip_adapt_bitjoin849(BITJOIN,763)
    assign dsdk_ip_adapt_bitjoin849_q = dsdk_ip_adapt_bitjoin851_q;

    // dsdk_ip_adapt_bitjoin844(BITJOIN,762)
    assign dsdk_ip_adapt_bitjoin844_q = in_i_data_93_tpl;

    // dsdk_ip_adapt_bitjoin842(BITJOIN,761)
    assign dsdk_ip_adapt_bitjoin842_q = dsdk_ip_adapt_bitjoin844_q;

    // dsdk_ip_adapt_bitjoin840(BITJOIN,760)
    assign dsdk_ip_adapt_bitjoin840_q = dsdk_ip_adapt_bitjoin842_q;

    // dsdk_ip_adapt_bitjoin835(BITJOIN,759)
    assign dsdk_ip_adapt_bitjoin835_q = in_i_data_92_tpl;

    // dsdk_ip_adapt_bitjoin833(BITJOIN,758)
    assign dsdk_ip_adapt_bitjoin833_q = dsdk_ip_adapt_bitjoin835_q;

    // dsdk_ip_adapt_bitjoin831(BITJOIN,757)
    assign dsdk_ip_adapt_bitjoin831_q = dsdk_ip_adapt_bitjoin833_q;

    // dsdk_ip_adapt_bitjoin826(BITJOIN,756)
    assign dsdk_ip_adapt_bitjoin826_q = in_i_data_91_tpl;

    // dsdk_ip_adapt_bitjoin824(BITJOIN,755)
    assign dsdk_ip_adapt_bitjoin824_q = dsdk_ip_adapt_bitjoin826_q;

    // dsdk_ip_adapt_bitjoin822(BITJOIN,754)
    assign dsdk_ip_adapt_bitjoin822_q = dsdk_ip_adapt_bitjoin824_q;

    // dsdk_ip_adapt_bitjoin817(BITJOIN,752)
    assign dsdk_ip_adapt_bitjoin817_q = in_i_data_90_tpl;

    // dsdk_ip_adapt_bitjoin815(BITJOIN,751)
    assign dsdk_ip_adapt_bitjoin815_q = dsdk_ip_adapt_bitjoin817_q;

    // dsdk_ip_adapt_bitjoin813(BITJOIN,750)
    assign dsdk_ip_adapt_bitjoin813_q = dsdk_ip_adapt_bitjoin815_q;

    // dsdk_ip_adapt_bitjoin808(BITJOIN,749)
    assign dsdk_ip_adapt_bitjoin808_q = in_i_data_89_tpl;

    // dsdk_ip_adapt_bitjoin806(BITJOIN,748)
    assign dsdk_ip_adapt_bitjoin806_q = dsdk_ip_adapt_bitjoin808_q;

    // dsdk_ip_adapt_bitjoin804(BITJOIN,747)
    assign dsdk_ip_adapt_bitjoin804_q = dsdk_ip_adapt_bitjoin806_q;

    // dsdk_ip_adapt_bitjoin799(BITJOIN,745)
    assign dsdk_ip_adapt_bitjoin799_q = in_i_data_88_tpl;

    // dsdk_ip_adapt_bitjoin797(BITJOIN,744)
    assign dsdk_ip_adapt_bitjoin797_q = dsdk_ip_adapt_bitjoin799_q;

    // dsdk_ip_adapt_bitjoin795(BITJOIN,743)
    assign dsdk_ip_adapt_bitjoin795_q = dsdk_ip_adapt_bitjoin797_q;

    // dsdk_ip_adapt_bitjoin790(BITJOIN,742)
    assign dsdk_ip_adapt_bitjoin790_q = in_i_data_87_tpl;

    // dsdk_ip_adapt_bitjoin788(BITJOIN,741)
    assign dsdk_ip_adapt_bitjoin788_q = dsdk_ip_adapt_bitjoin790_q;

    // dsdk_ip_adapt_bitjoin786(BITJOIN,740)
    assign dsdk_ip_adapt_bitjoin786_q = dsdk_ip_adapt_bitjoin788_q;

    // dsdk_ip_adapt_bitjoin781(BITJOIN,739)
    assign dsdk_ip_adapt_bitjoin781_q = in_i_data_86_tpl;

    // dsdk_ip_adapt_bitjoin779(BITJOIN,737)
    assign dsdk_ip_adapt_bitjoin779_q = dsdk_ip_adapt_bitjoin781_q;

    // dsdk_ip_adapt_bitjoin777(BITJOIN,736)
    assign dsdk_ip_adapt_bitjoin777_q = dsdk_ip_adapt_bitjoin779_q;

    // dsdk_ip_adapt_bitjoin772(BITJOIN,735)
    assign dsdk_ip_adapt_bitjoin772_q = in_i_data_85_tpl;

    // dsdk_ip_adapt_bitjoin770(BITJOIN,734)
    assign dsdk_ip_adapt_bitjoin770_q = dsdk_ip_adapt_bitjoin772_q;

    // dsdk_ip_adapt_bitjoin768(BITJOIN,733)
    assign dsdk_ip_adapt_bitjoin768_q = dsdk_ip_adapt_bitjoin770_q;

    // dsdk_ip_adapt_bitjoin763(BITJOIN,732)
    assign dsdk_ip_adapt_bitjoin763_q = in_i_data_84_tpl;

    // dsdk_ip_adapt_bitjoin761(BITJOIN,731)
    assign dsdk_ip_adapt_bitjoin761_q = dsdk_ip_adapt_bitjoin763_q;

    // dsdk_ip_adapt_bitjoin759(BITJOIN,730)
    assign dsdk_ip_adapt_bitjoin759_q = dsdk_ip_adapt_bitjoin761_q;

    // dsdk_ip_adapt_bitjoin754(BITJOIN,729)
    assign dsdk_ip_adapt_bitjoin754_q = in_i_data_83_tpl;

    // dsdk_ip_adapt_bitjoin752(BITJOIN,728)
    assign dsdk_ip_adapt_bitjoin752_q = dsdk_ip_adapt_bitjoin754_q;

    // dsdk_ip_adapt_bitjoin750(BITJOIN,727)
    assign dsdk_ip_adapt_bitjoin750_q = dsdk_ip_adapt_bitjoin752_q;

    // dsdk_ip_array_adapt_bitjoin748(BITJOIN,826)
    assign dsdk_ip_array_adapt_bitjoin748_q = {dsdk_ip_adapt_bitjoin885_q, dsdk_ip_adapt_bitjoin876_q, dsdk_ip_adapt_bitjoin867_q, dsdk_ip_adapt_bitjoin858_q, dsdk_ip_adapt_bitjoin849_q, dsdk_ip_adapt_bitjoin840_q, dsdk_ip_adapt_bitjoin831_q, dsdk_ip_adapt_bitjoin822_q, dsdk_ip_adapt_bitjoin813_q, dsdk_ip_adapt_bitjoin804_q, dsdk_ip_adapt_bitjoin795_q, dsdk_ip_adapt_bitjoin786_q, dsdk_ip_adapt_bitjoin777_q, dsdk_ip_adapt_bitjoin768_q, dsdk_ip_adapt_bitjoin759_q, dsdk_ip_adapt_bitjoin750_q};

    // dsdk_ip_adapt_bitjoin742(BITJOIN,726)
    assign dsdk_ip_adapt_bitjoin742_q = in_i_data_82_tpl;

    // dsdk_ip_adapt_bitjoin740(BITJOIN,725)
    assign dsdk_ip_adapt_bitjoin740_q = dsdk_ip_adapt_bitjoin742_q;

    // dsdk_ip_adapt_bitjoin738(BITJOIN,724)
    assign dsdk_ip_adapt_bitjoin738_q = dsdk_ip_adapt_bitjoin740_q;

    // dsdk_ip_adapt_bitjoin733(BITJOIN,723)
    assign dsdk_ip_adapt_bitjoin733_q = in_i_data_81_tpl;

    // dsdk_ip_adapt_bitjoin731(BITJOIN,722)
    assign dsdk_ip_adapt_bitjoin731_q = dsdk_ip_adapt_bitjoin733_q;

    // dsdk_ip_adapt_bitjoin729(BITJOIN,720)
    assign dsdk_ip_adapt_bitjoin729_q = dsdk_ip_adapt_bitjoin731_q;

    // dsdk_ip_adapt_bitjoin724(BITJOIN,719)
    assign dsdk_ip_adapt_bitjoin724_q = in_i_data_80_tpl;

    // dsdk_ip_adapt_bitjoin722(BITJOIN,718)
    assign dsdk_ip_adapt_bitjoin722_q = dsdk_ip_adapt_bitjoin724_q;

    // dsdk_ip_adapt_bitjoin720(BITJOIN,717)
    assign dsdk_ip_adapt_bitjoin720_q = dsdk_ip_adapt_bitjoin722_q;

    // dsdk_ip_adapt_bitjoin715(BITJOIN,716)
    assign dsdk_ip_adapt_bitjoin715_q = in_i_data_79_tpl;

    // dsdk_ip_adapt_bitjoin713(BITJOIN,715)
    assign dsdk_ip_adapt_bitjoin713_q = dsdk_ip_adapt_bitjoin715_q;

    // dsdk_ip_adapt_bitjoin711(BITJOIN,714)
    assign dsdk_ip_adapt_bitjoin711_q = dsdk_ip_adapt_bitjoin713_q;

    // dsdk_ip_adapt_bitjoin706(BITJOIN,712)
    assign dsdk_ip_adapt_bitjoin706_q = in_i_data_78_tpl;

    // dsdk_ip_adapt_bitjoin704(BITJOIN,711)
    assign dsdk_ip_adapt_bitjoin704_q = dsdk_ip_adapt_bitjoin706_q;

    // dsdk_ip_adapt_bitjoin702(BITJOIN,710)
    assign dsdk_ip_adapt_bitjoin702_q = dsdk_ip_adapt_bitjoin704_q;

    // dsdk_ip_adapt_bitjoin697(BITJOIN,709)
    assign dsdk_ip_adapt_bitjoin697_q = in_i_data_77_tpl;

    // dsdk_ip_adapt_bitjoin695(BITJOIN,708)
    assign dsdk_ip_adapt_bitjoin695_q = dsdk_ip_adapt_bitjoin697_q;

    // dsdk_ip_adapt_bitjoin693(BITJOIN,707)
    assign dsdk_ip_adapt_bitjoin693_q = dsdk_ip_adapt_bitjoin695_q;

    // dsdk_ip_adapt_bitjoin688(BITJOIN,705)
    assign dsdk_ip_adapt_bitjoin688_q = in_i_data_76_tpl;

    // dsdk_ip_adapt_bitjoin686(BITJOIN,704)
    assign dsdk_ip_adapt_bitjoin686_q = dsdk_ip_adapt_bitjoin688_q;

    // dsdk_ip_adapt_bitjoin684(BITJOIN,703)
    assign dsdk_ip_adapt_bitjoin684_q = dsdk_ip_adapt_bitjoin686_q;

    // dsdk_ip_adapt_bitjoin679(BITJOIN,702)
    assign dsdk_ip_adapt_bitjoin679_q = in_i_data_75_tpl;

    // dsdk_ip_adapt_bitjoin677(BITJOIN,701)
    assign dsdk_ip_adapt_bitjoin677_q = dsdk_ip_adapt_bitjoin679_q;

    // dsdk_ip_adapt_bitjoin675(BITJOIN,700)
    assign dsdk_ip_adapt_bitjoin675_q = dsdk_ip_adapt_bitjoin677_q;

    // dsdk_ip_adapt_bitjoin670(BITJOIN,699)
    assign dsdk_ip_adapt_bitjoin670_q = in_i_data_74_tpl;

    // dsdk_ip_adapt_bitjoin668(BITJOIN,698)
    assign dsdk_ip_adapt_bitjoin668_q = dsdk_ip_adapt_bitjoin670_q;

    // dsdk_ip_adapt_bitjoin666(BITJOIN,697)
    assign dsdk_ip_adapt_bitjoin666_q = dsdk_ip_adapt_bitjoin668_q;

    // dsdk_ip_adapt_bitjoin661(BITJOIN,696)
    assign dsdk_ip_adapt_bitjoin661_q = in_i_data_73_tpl;

    // dsdk_ip_adapt_bitjoin659(BITJOIN,695)
    assign dsdk_ip_adapt_bitjoin659_q = dsdk_ip_adapt_bitjoin661_q;

    // dsdk_ip_adapt_bitjoin657(BITJOIN,694)
    assign dsdk_ip_adapt_bitjoin657_q = dsdk_ip_adapt_bitjoin659_q;

    // dsdk_ip_adapt_bitjoin652(BITJOIN,693)
    assign dsdk_ip_adapt_bitjoin652_q = in_i_data_72_tpl;

    // dsdk_ip_adapt_bitjoin650(BITJOIN,692)
    assign dsdk_ip_adapt_bitjoin650_q = dsdk_ip_adapt_bitjoin652_q;

    // dsdk_ip_adapt_bitjoin648(BITJOIN,691)
    assign dsdk_ip_adapt_bitjoin648_q = dsdk_ip_adapt_bitjoin650_q;

    // dsdk_ip_adapt_bitjoin643(BITJOIN,690)
    assign dsdk_ip_adapt_bitjoin643_q = in_i_data_71_tpl;

    // dsdk_ip_adapt_bitjoin641(BITJOIN,689)
    assign dsdk_ip_adapt_bitjoin641_q = dsdk_ip_adapt_bitjoin643_q;

    // dsdk_ip_adapt_bitjoin639(BITJOIN,687)
    assign dsdk_ip_adapt_bitjoin639_q = dsdk_ip_adapt_bitjoin641_q;

    // dsdk_ip_adapt_bitjoin634(BITJOIN,686)
    assign dsdk_ip_adapt_bitjoin634_q = in_i_data_70_tpl;

    // dsdk_ip_adapt_bitjoin632(BITJOIN,685)
    assign dsdk_ip_adapt_bitjoin632_q = dsdk_ip_adapt_bitjoin634_q;

    // dsdk_ip_adapt_bitjoin630(BITJOIN,684)
    assign dsdk_ip_adapt_bitjoin630_q = dsdk_ip_adapt_bitjoin632_q;

    // dsdk_ip_adapt_bitjoin625(BITJOIN,683)
    assign dsdk_ip_adapt_bitjoin625_q = in_i_data_69_tpl;

    // dsdk_ip_adapt_bitjoin623(BITJOIN,682)
    assign dsdk_ip_adapt_bitjoin623_q = dsdk_ip_adapt_bitjoin625_q;

    // dsdk_ip_adapt_bitjoin621(BITJOIN,681)
    assign dsdk_ip_adapt_bitjoin621_q = dsdk_ip_adapt_bitjoin623_q;

    // dsdk_ip_adapt_bitjoin616(BITJOIN,679)
    assign dsdk_ip_adapt_bitjoin616_q = in_i_data_68_tpl;

    // dsdk_ip_adapt_bitjoin614(BITJOIN,678)
    assign dsdk_ip_adapt_bitjoin614_q = dsdk_ip_adapt_bitjoin616_q;

    // dsdk_ip_adapt_bitjoin612(BITJOIN,677)
    assign dsdk_ip_adapt_bitjoin612_q = dsdk_ip_adapt_bitjoin614_q;

    // dsdk_ip_adapt_bitjoin607(BITJOIN,676)
    assign dsdk_ip_adapt_bitjoin607_q = in_i_data_67_tpl;

    // dsdk_ip_adapt_bitjoin605(BITJOIN,675)
    assign dsdk_ip_adapt_bitjoin605_q = dsdk_ip_adapt_bitjoin607_q;

    // dsdk_ip_adapt_bitjoin603(BITJOIN,674)
    assign dsdk_ip_adapt_bitjoin603_q = dsdk_ip_adapt_bitjoin605_q;

    // dsdk_ip_array_adapt_bitjoin601(BITJOIN,825)
    assign dsdk_ip_array_adapt_bitjoin601_q = {dsdk_ip_adapt_bitjoin738_q, dsdk_ip_adapt_bitjoin729_q, dsdk_ip_adapt_bitjoin720_q, dsdk_ip_adapt_bitjoin711_q, dsdk_ip_adapt_bitjoin702_q, dsdk_ip_adapt_bitjoin693_q, dsdk_ip_adapt_bitjoin684_q, dsdk_ip_adapt_bitjoin675_q, dsdk_ip_adapt_bitjoin666_q, dsdk_ip_adapt_bitjoin657_q, dsdk_ip_adapt_bitjoin648_q, dsdk_ip_adapt_bitjoin639_q, dsdk_ip_adapt_bitjoin630_q, dsdk_ip_adapt_bitjoin621_q, dsdk_ip_adapt_bitjoin612_q, dsdk_ip_adapt_bitjoin603_q};

    // dsdk_ip_adapt_bitjoin595(BITJOIN,672)
    assign dsdk_ip_adapt_bitjoin595_q = in_i_data_66_tpl;

    // dsdk_ip_adapt_bitjoin593(BITJOIN,671)
    assign dsdk_ip_adapt_bitjoin593_q = dsdk_ip_adapt_bitjoin595_q;

    // dsdk_ip_adapt_bitjoin591(BITJOIN,670)
    assign dsdk_ip_adapt_bitjoin591_q = dsdk_ip_adapt_bitjoin593_q;

    // dsdk_ip_adapt_bitjoin586(BITJOIN,669)
    assign dsdk_ip_adapt_bitjoin586_q = in_i_data_65_tpl;

    // dsdk_ip_adapt_bitjoin584(BITJOIN,668)
    assign dsdk_ip_adapt_bitjoin584_q = dsdk_ip_adapt_bitjoin586_q;

    // dsdk_ip_adapt_bitjoin582(BITJOIN,667)
    assign dsdk_ip_adapt_bitjoin582_q = dsdk_ip_adapt_bitjoin584_q;

    // dsdk_ip_adapt_bitjoin577(BITJOIN,666)
    assign dsdk_ip_adapt_bitjoin577_q = in_i_data_64_tpl;

    // dsdk_ip_adapt_bitjoin575(BITJOIN,665)
    assign dsdk_ip_adapt_bitjoin575_q = dsdk_ip_adapt_bitjoin577_q;

    // dsdk_ip_adapt_bitjoin573(BITJOIN,664)
    assign dsdk_ip_adapt_bitjoin573_q = dsdk_ip_adapt_bitjoin575_q;

    // dsdk_ip_adapt_bitjoin568(BITJOIN,663)
    assign dsdk_ip_adapt_bitjoin568_q = in_i_data_63_tpl;

    // dsdk_ip_adapt_bitjoin566(BITJOIN,662)
    assign dsdk_ip_adapt_bitjoin566_q = dsdk_ip_adapt_bitjoin568_q;

    // dsdk_ip_adapt_bitjoin564(BITJOIN,661)
    assign dsdk_ip_adapt_bitjoin564_q = dsdk_ip_adapt_bitjoin566_q;

    // dsdk_ip_adapt_bitjoin559(BITJOIN,660)
    assign dsdk_ip_adapt_bitjoin559_q = in_i_data_62_tpl;

    // dsdk_ip_adapt_bitjoin557(BITJOIN,659)
    assign dsdk_ip_adapt_bitjoin557_q = dsdk_ip_adapt_bitjoin559_q;

    // dsdk_ip_adapt_bitjoin555(BITJOIN,658)
    assign dsdk_ip_adapt_bitjoin555_q = dsdk_ip_adapt_bitjoin557_q;

    // dsdk_ip_adapt_bitjoin550(BITJOIN,657)
    assign dsdk_ip_adapt_bitjoin550_q = in_i_data_61_tpl;

    // dsdk_ip_adapt_bitjoin548(BITJOIN,655)
    assign dsdk_ip_adapt_bitjoin548_q = dsdk_ip_adapt_bitjoin550_q;

    // dsdk_ip_adapt_bitjoin546(BITJOIN,654)
    assign dsdk_ip_adapt_bitjoin546_q = dsdk_ip_adapt_bitjoin548_q;

    // dsdk_ip_adapt_bitjoin541(BITJOIN,653)
    assign dsdk_ip_adapt_bitjoin541_q = in_i_data_60_tpl;

    // dsdk_ip_adapt_bitjoin539(BITJOIN,652)
    assign dsdk_ip_adapt_bitjoin539_q = dsdk_ip_adapt_bitjoin541_q;

    // dsdk_ip_adapt_bitjoin537(BITJOIN,651)
    assign dsdk_ip_adapt_bitjoin537_q = dsdk_ip_adapt_bitjoin539_q;

    // dsdk_ip_adapt_bitjoin532(BITJOIN,650)
    assign dsdk_ip_adapt_bitjoin532_q = in_i_data_59_tpl;

    // dsdk_ip_adapt_bitjoin530(BITJOIN,649)
    assign dsdk_ip_adapt_bitjoin530_q = dsdk_ip_adapt_bitjoin532_q;

    // dsdk_ip_adapt_bitjoin528(BITJOIN,647)
    assign dsdk_ip_adapt_bitjoin528_q = dsdk_ip_adapt_bitjoin530_q;

    // dsdk_ip_adapt_bitjoin523(BITJOIN,646)
    assign dsdk_ip_adapt_bitjoin523_q = in_i_data_58_tpl;

    // dsdk_ip_adapt_bitjoin521(BITJOIN,645)
    assign dsdk_ip_adapt_bitjoin521_q = dsdk_ip_adapt_bitjoin523_q;

    // dsdk_ip_adapt_bitjoin519(BITJOIN,644)
    assign dsdk_ip_adapt_bitjoin519_q = dsdk_ip_adapt_bitjoin521_q;

    // dsdk_ip_adapt_bitjoin514(BITJOIN,643)
    assign dsdk_ip_adapt_bitjoin514_q = in_i_data_57_tpl;

    // dsdk_ip_adapt_bitjoin512(BITJOIN,642)
    assign dsdk_ip_adapt_bitjoin512_q = dsdk_ip_adapt_bitjoin514_q;

    // dsdk_ip_adapt_bitjoin510(BITJOIN,641)
    assign dsdk_ip_adapt_bitjoin510_q = dsdk_ip_adapt_bitjoin512_q;

    // dsdk_ip_adapt_bitjoin505(BITJOIN,639)
    assign dsdk_ip_adapt_bitjoin505_q = in_i_data_56_tpl;

    // dsdk_ip_adapt_bitjoin503(BITJOIN,638)
    assign dsdk_ip_adapt_bitjoin503_q = dsdk_ip_adapt_bitjoin505_q;

    // dsdk_ip_adapt_bitjoin501(BITJOIN,637)
    assign dsdk_ip_adapt_bitjoin501_q = dsdk_ip_adapt_bitjoin503_q;

    // dsdk_ip_adapt_bitjoin496(BITJOIN,636)
    assign dsdk_ip_adapt_bitjoin496_q = in_i_data_55_tpl;

    // dsdk_ip_adapt_bitjoin494(BITJOIN,635)
    assign dsdk_ip_adapt_bitjoin494_q = dsdk_ip_adapt_bitjoin496_q;

    // dsdk_ip_adapt_bitjoin492(BITJOIN,634)
    assign dsdk_ip_adapt_bitjoin492_q = dsdk_ip_adapt_bitjoin494_q;

    // dsdk_ip_adapt_bitjoin487(BITJOIN,633)
    assign dsdk_ip_adapt_bitjoin487_q = in_i_data_54_tpl;

    // dsdk_ip_adapt_bitjoin485(BITJOIN,632)
    assign dsdk_ip_adapt_bitjoin485_q = dsdk_ip_adapt_bitjoin487_q;

    // dsdk_ip_adapt_bitjoin483(BITJOIN,631)
    assign dsdk_ip_adapt_bitjoin483_q = dsdk_ip_adapt_bitjoin485_q;

    // dsdk_ip_adapt_bitjoin478(BITJOIN,630)
    assign dsdk_ip_adapt_bitjoin478_q = in_i_data_53_tpl;

    // dsdk_ip_adapt_bitjoin476(BITJOIN,629)
    assign dsdk_ip_adapt_bitjoin476_q = dsdk_ip_adapt_bitjoin478_q;

    // dsdk_ip_adapt_bitjoin474(BITJOIN,628)
    assign dsdk_ip_adapt_bitjoin474_q = dsdk_ip_adapt_bitjoin476_q;

    // dsdk_ip_adapt_bitjoin469(BITJOIN,627)
    assign dsdk_ip_adapt_bitjoin469_q = in_i_data_52_tpl;

    // dsdk_ip_adapt_bitjoin467(BITJOIN,626)
    assign dsdk_ip_adapt_bitjoin467_q = dsdk_ip_adapt_bitjoin469_q;

    // dsdk_ip_adapt_bitjoin465(BITJOIN,625)
    assign dsdk_ip_adapt_bitjoin465_q = dsdk_ip_adapt_bitjoin467_q;

    // dsdk_ip_adapt_bitjoin460(BITJOIN,624)
    assign dsdk_ip_adapt_bitjoin460_q = in_i_data_51_tpl;

    // dsdk_ip_adapt_bitjoin458(BITJOIN,622)
    assign dsdk_ip_adapt_bitjoin458_q = dsdk_ip_adapt_bitjoin460_q;

    // dsdk_ip_adapt_bitjoin456(BITJOIN,621)
    assign dsdk_ip_adapt_bitjoin456_q = dsdk_ip_adapt_bitjoin458_q;

    // dsdk_ip_array_adapt_bitjoin454(BITJOIN,824)
    assign dsdk_ip_array_adapt_bitjoin454_q = {dsdk_ip_adapt_bitjoin591_q, dsdk_ip_adapt_bitjoin582_q, dsdk_ip_adapt_bitjoin573_q, dsdk_ip_adapt_bitjoin564_q, dsdk_ip_adapt_bitjoin555_q, dsdk_ip_adapt_bitjoin546_q, dsdk_ip_adapt_bitjoin537_q, dsdk_ip_adapt_bitjoin528_q, dsdk_ip_adapt_bitjoin519_q, dsdk_ip_adapt_bitjoin510_q, dsdk_ip_adapt_bitjoin501_q, dsdk_ip_adapt_bitjoin492_q, dsdk_ip_adapt_bitjoin483_q, dsdk_ip_adapt_bitjoin474_q, dsdk_ip_adapt_bitjoin465_q, dsdk_ip_adapt_bitjoin456_q};

    // dsdk_ip_adapt_bitjoin448(BITJOIN,620)
    assign dsdk_ip_adapt_bitjoin448_q = in_i_data_50_tpl;

    // dsdk_ip_adapt_bitjoin446(BITJOIN,619)
    assign dsdk_ip_adapt_bitjoin446_q = dsdk_ip_adapt_bitjoin448_q;

    // dsdk_ip_adapt_bitjoin444(BITJOIN,618)
    assign dsdk_ip_adapt_bitjoin444_q = dsdk_ip_adapt_bitjoin446_q;

    // dsdk_ip_adapt_bitjoin439(BITJOIN,616)
    assign dsdk_ip_adapt_bitjoin439_q = in_i_data_49_tpl;

    // dsdk_ip_adapt_bitjoin437(BITJOIN,615)
    assign dsdk_ip_adapt_bitjoin437_q = dsdk_ip_adapt_bitjoin439_q;

    // dsdk_ip_adapt_bitjoin435(BITJOIN,614)
    assign dsdk_ip_adapt_bitjoin435_q = dsdk_ip_adapt_bitjoin437_q;

    // dsdk_ip_adapt_bitjoin430(BITJOIN,613)
    assign dsdk_ip_adapt_bitjoin430_q = in_i_data_48_tpl;

    // dsdk_ip_adapt_bitjoin428(BITJOIN,612)
    assign dsdk_ip_adapt_bitjoin428_q = dsdk_ip_adapt_bitjoin430_q;

    // dsdk_ip_adapt_bitjoin426(BITJOIN,611)
    assign dsdk_ip_adapt_bitjoin426_q = dsdk_ip_adapt_bitjoin428_q;

    // dsdk_ip_adapt_bitjoin421(BITJOIN,610)
    assign dsdk_ip_adapt_bitjoin421_q = in_i_data_47_tpl;

    // dsdk_ip_adapt_bitjoin419(BITJOIN,608)
    assign dsdk_ip_adapt_bitjoin419_q = dsdk_ip_adapt_bitjoin421_q;

    // dsdk_ip_adapt_bitjoin417(BITJOIN,607)
    assign dsdk_ip_adapt_bitjoin417_q = dsdk_ip_adapt_bitjoin419_q;

    // dsdk_ip_adapt_bitjoin412(BITJOIN,606)
    assign dsdk_ip_adapt_bitjoin412_q = in_i_data_46_tpl;

    // dsdk_ip_adapt_bitjoin410(BITJOIN,605)
    assign dsdk_ip_adapt_bitjoin410_q = dsdk_ip_adapt_bitjoin412_q;

    // dsdk_ip_adapt_bitjoin408(BITJOIN,604)
    assign dsdk_ip_adapt_bitjoin408_q = dsdk_ip_adapt_bitjoin410_q;

    // dsdk_ip_adapt_bitjoin403(BITJOIN,603)
    assign dsdk_ip_adapt_bitjoin403_q = in_i_data_45_tpl;

    // dsdk_ip_adapt_bitjoin401(BITJOIN,602)
    assign dsdk_ip_adapt_bitjoin401_q = dsdk_ip_adapt_bitjoin403_q;

    // dsdk_ip_adapt_bitjoin399(BITJOIN,601)
    assign dsdk_ip_adapt_bitjoin399_q = dsdk_ip_adapt_bitjoin401_q;

    // dsdk_ip_adapt_bitjoin394(BITJOIN,600)
    assign dsdk_ip_adapt_bitjoin394_q = in_i_data_44_tpl;

    // dsdk_ip_adapt_bitjoin392(BITJOIN,599)
    assign dsdk_ip_adapt_bitjoin392_q = dsdk_ip_adapt_bitjoin394_q;

    // dsdk_ip_adapt_bitjoin390(BITJOIN,598)
    assign dsdk_ip_adapt_bitjoin390_q = dsdk_ip_adapt_bitjoin392_q;

    // dsdk_ip_adapt_bitjoin385(BITJOIN,597)
    assign dsdk_ip_adapt_bitjoin385_q = in_i_data_43_tpl;

    // dsdk_ip_adapt_bitjoin383(BITJOIN,596)
    assign dsdk_ip_adapt_bitjoin383_q = dsdk_ip_adapt_bitjoin385_q;

    // dsdk_ip_adapt_bitjoin381(BITJOIN,595)
    assign dsdk_ip_adapt_bitjoin381_q = dsdk_ip_adapt_bitjoin383_q;

    // dsdk_ip_adapt_bitjoin376(BITJOIN,594)
    assign dsdk_ip_adapt_bitjoin376_q = in_i_data_42_tpl;

    // dsdk_ip_adapt_bitjoin374(BITJOIN,593)
    assign dsdk_ip_adapt_bitjoin374_q = dsdk_ip_adapt_bitjoin376_q;

    // dsdk_ip_adapt_bitjoin372(BITJOIN,592)
    assign dsdk_ip_adapt_bitjoin372_q = dsdk_ip_adapt_bitjoin374_q;

    // dsdk_ip_adapt_bitjoin367(BITJOIN,590)
    assign dsdk_ip_adapt_bitjoin367_q = in_i_data_41_tpl;

    // dsdk_ip_adapt_bitjoin365(BITJOIN,589)
    assign dsdk_ip_adapt_bitjoin365_q = dsdk_ip_adapt_bitjoin367_q;

    // dsdk_ip_adapt_bitjoin363(BITJOIN,588)
    assign dsdk_ip_adapt_bitjoin363_q = dsdk_ip_adapt_bitjoin365_q;

    // dsdk_ip_adapt_bitjoin358(BITJOIN,587)
    assign dsdk_ip_adapt_bitjoin358_q = in_i_data_40_tpl;

    // dsdk_ip_adapt_bitjoin356(BITJOIN,586)
    assign dsdk_ip_adapt_bitjoin356_q = dsdk_ip_adapt_bitjoin358_q;

    // dsdk_ip_adapt_bitjoin354(BITJOIN,585)
    assign dsdk_ip_adapt_bitjoin354_q = dsdk_ip_adapt_bitjoin356_q;

    // dsdk_ip_adapt_bitjoin349(BITJOIN,583)
    assign dsdk_ip_adapt_bitjoin349_q = in_i_data_39_tpl;

    // dsdk_ip_adapt_bitjoin347(BITJOIN,582)
    assign dsdk_ip_adapt_bitjoin347_q = dsdk_ip_adapt_bitjoin349_q;

    // dsdk_ip_adapt_bitjoin345(BITJOIN,581)
    assign dsdk_ip_adapt_bitjoin345_q = dsdk_ip_adapt_bitjoin347_q;

    // dsdk_ip_adapt_bitjoin340(BITJOIN,580)
    assign dsdk_ip_adapt_bitjoin340_q = in_i_data_38_tpl;

    // dsdk_ip_adapt_bitjoin338(BITJOIN,579)
    assign dsdk_ip_adapt_bitjoin338_q = dsdk_ip_adapt_bitjoin340_q;

    // dsdk_ip_adapt_bitjoin336(BITJOIN,578)
    assign dsdk_ip_adapt_bitjoin336_q = dsdk_ip_adapt_bitjoin338_q;

    // dsdk_ip_adapt_bitjoin331(BITJOIN,577)
    assign dsdk_ip_adapt_bitjoin331_q = in_i_data_37_tpl;

    // dsdk_ip_adapt_bitjoin329(BITJOIN,575)
    assign dsdk_ip_adapt_bitjoin329_q = dsdk_ip_adapt_bitjoin331_q;

    // dsdk_ip_adapt_bitjoin327(BITJOIN,574)
    assign dsdk_ip_adapt_bitjoin327_q = dsdk_ip_adapt_bitjoin329_q;

    // dsdk_ip_adapt_bitjoin322(BITJOIN,573)
    assign dsdk_ip_adapt_bitjoin322_q = in_i_data_36_tpl;

    // dsdk_ip_adapt_bitjoin320(BITJOIN,572)
    assign dsdk_ip_adapt_bitjoin320_q = dsdk_ip_adapt_bitjoin322_q;

    // dsdk_ip_adapt_bitjoin318(BITJOIN,571)
    assign dsdk_ip_adapt_bitjoin318_q = dsdk_ip_adapt_bitjoin320_q;

    // dsdk_ip_adapt_bitjoin313(BITJOIN,570)
    assign dsdk_ip_adapt_bitjoin313_q = in_i_data_35_tpl;

    // dsdk_ip_adapt_bitjoin311(BITJOIN,569)
    assign dsdk_ip_adapt_bitjoin311_q = dsdk_ip_adapt_bitjoin313_q;

    // dsdk_ip_adapt_bitjoin309(BITJOIN,568)
    assign dsdk_ip_adapt_bitjoin309_q = dsdk_ip_adapt_bitjoin311_q;

    // dsdk_ip_array_adapt_bitjoin307(BITJOIN,823)
    assign dsdk_ip_array_adapt_bitjoin307_q = {dsdk_ip_adapt_bitjoin444_q, dsdk_ip_adapt_bitjoin435_q, dsdk_ip_adapt_bitjoin426_q, dsdk_ip_adapt_bitjoin417_q, dsdk_ip_adapt_bitjoin408_q, dsdk_ip_adapt_bitjoin399_q, dsdk_ip_adapt_bitjoin390_q, dsdk_ip_adapt_bitjoin381_q, dsdk_ip_adapt_bitjoin372_q, dsdk_ip_adapt_bitjoin363_q, dsdk_ip_adapt_bitjoin354_q, dsdk_ip_adapt_bitjoin345_q, dsdk_ip_adapt_bitjoin336_q, dsdk_ip_adapt_bitjoin327_q, dsdk_ip_adapt_bitjoin318_q, dsdk_ip_adapt_bitjoin309_q};

    // dsdk_ip_adapt_bitjoin301(BITJOIN,567)
    assign dsdk_ip_adapt_bitjoin301_q = in_i_data_34_tpl;

    // dsdk_ip_adapt_bitjoin299(BITJOIN,566)
    assign dsdk_ip_adapt_bitjoin299_q = dsdk_ip_adapt_bitjoin301_q;

    // dsdk_ip_adapt_bitjoin297(BITJOIN,565)
    assign dsdk_ip_adapt_bitjoin297_q = dsdk_ip_adapt_bitjoin299_q;

    // dsdk_ip_adapt_bitjoin292(BITJOIN,564)
    assign dsdk_ip_adapt_bitjoin292_q = in_i_data_33_tpl;

    // dsdk_ip_adapt_bitjoin290(BITJOIN,563)
    assign dsdk_ip_adapt_bitjoin290_q = dsdk_ip_adapt_bitjoin292_q;

    // dsdk_ip_adapt_bitjoin288(BITJOIN,562)
    assign dsdk_ip_adapt_bitjoin288_q = dsdk_ip_adapt_bitjoin290_q;

    // dsdk_ip_adapt_bitjoin283(BITJOIN,561)
    assign dsdk_ip_adapt_bitjoin283_q = in_i_data_32_tpl;

    // dsdk_ip_adapt_bitjoin281(BITJOIN,560)
    assign dsdk_ip_adapt_bitjoin281_q = dsdk_ip_adapt_bitjoin283_q;

    // dsdk_ip_adapt_bitjoin279(BITJOIN,558)
    assign dsdk_ip_adapt_bitjoin279_q = dsdk_ip_adapt_bitjoin281_q;

    // dsdk_ip_adapt_bitjoin274(BITJOIN,557)
    assign dsdk_ip_adapt_bitjoin274_q = in_i_data_31_tpl;

    // dsdk_ip_adapt_bitjoin272(BITJOIN,556)
    assign dsdk_ip_adapt_bitjoin272_q = dsdk_ip_adapt_bitjoin274_q;

    // dsdk_ip_adapt_bitjoin270(BITJOIN,555)
    assign dsdk_ip_adapt_bitjoin270_q = dsdk_ip_adapt_bitjoin272_q;

    // dsdk_ip_adapt_bitjoin265(BITJOIN,554)
    assign dsdk_ip_adapt_bitjoin265_q = in_i_data_30_tpl;

    // dsdk_ip_adapt_bitjoin263(BITJOIN,553)
    assign dsdk_ip_adapt_bitjoin263_q = dsdk_ip_adapt_bitjoin265_q;

    // dsdk_ip_adapt_bitjoin261(BITJOIN,552)
    assign dsdk_ip_adapt_bitjoin261_q = dsdk_ip_adapt_bitjoin263_q;

    // dsdk_ip_adapt_bitjoin256(BITJOIN,550)
    assign dsdk_ip_adapt_bitjoin256_q = in_i_data_29_tpl;

    // dsdk_ip_adapt_bitjoin254(BITJOIN,549)
    assign dsdk_ip_adapt_bitjoin254_q = dsdk_ip_adapt_bitjoin256_q;

    // dsdk_ip_adapt_bitjoin252(BITJOIN,548)
    assign dsdk_ip_adapt_bitjoin252_q = dsdk_ip_adapt_bitjoin254_q;

    // dsdk_ip_adapt_bitjoin247(BITJOIN,547)
    assign dsdk_ip_adapt_bitjoin247_q = in_i_data_28_tpl;

    // dsdk_ip_adapt_bitjoin245(BITJOIN,546)
    assign dsdk_ip_adapt_bitjoin245_q = dsdk_ip_adapt_bitjoin247_q;

    // dsdk_ip_adapt_bitjoin243(BITJOIN,545)
    assign dsdk_ip_adapt_bitjoin243_q = dsdk_ip_adapt_bitjoin245_q;

    // dsdk_ip_adapt_bitjoin238(BITJOIN,543)
    assign dsdk_ip_adapt_bitjoin238_q = in_i_data_27_tpl;

    // dsdk_ip_adapt_bitjoin236(BITJOIN,542)
    assign dsdk_ip_adapt_bitjoin236_q = dsdk_ip_adapt_bitjoin238_q;

    // dsdk_ip_adapt_bitjoin234(BITJOIN,541)
    assign dsdk_ip_adapt_bitjoin234_q = dsdk_ip_adapt_bitjoin236_q;

    // dsdk_ip_adapt_bitjoin229(BITJOIN,540)
    assign dsdk_ip_adapt_bitjoin229_q = in_i_data_26_tpl;

    // dsdk_ip_adapt_bitjoin227(BITJOIN,539)
    assign dsdk_ip_adapt_bitjoin227_q = dsdk_ip_adapt_bitjoin229_q;

    // dsdk_ip_adapt_bitjoin225(BITJOIN,538)
    assign dsdk_ip_adapt_bitjoin225_q = dsdk_ip_adapt_bitjoin227_q;

    // dsdk_ip_adapt_bitjoin220(BITJOIN,537)
    assign dsdk_ip_adapt_bitjoin220_q = in_i_data_25_tpl;

    // dsdk_ip_adapt_bitjoin218(BITJOIN,536)
    assign dsdk_ip_adapt_bitjoin218_q = dsdk_ip_adapt_bitjoin220_q;

    // dsdk_ip_adapt_bitjoin216(BITJOIN,535)
    assign dsdk_ip_adapt_bitjoin216_q = dsdk_ip_adapt_bitjoin218_q;

    // dsdk_ip_adapt_bitjoin211(BITJOIN,534)
    assign dsdk_ip_adapt_bitjoin211_q = in_i_data_24_tpl;

    // dsdk_ip_adapt_bitjoin209(BITJOIN,533)
    assign dsdk_ip_adapt_bitjoin209_q = dsdk_ip_adapt_bitjoin211_q;

    // dsdk_ip_adapt_bitjoin207(BITJOIN,532)
    assign dsdk_ip_adapt_bitjoin207_q = dsdk_ip_adapt_bitjoin209_q;

    // dsdk_ip_adapt_bitjoin202(BITJOIN,531)
    assign dsdk_ip_adapt_bitjoin202_q = in_i_data_23_tpl;

    // dsdk_ip_adapt_bitjoin200(BITJOIN,530)
    assign dsdk_ip_adapt_bitjoin200_q = dsdk_ip_adapt_bitjoin202_q;

    // dsdk_ip_adapt_bitjoin198(BITJOIN,529)
    assign dsdk_ip_adapt_bitjoin198_q = dsdk_ip_adapt_bitjoin200_q;

    // dsdk_ip_adapt_bitjoin193(BITJOIN,528)
    assign dsdk_ip_adapt_bitjoin193_q = in_i_data_22_tpl;

    // dsdk_ip_adapt_bitjoin191(BITJOIN,527)
    assign dsdk_ip_adapt_bitjoin191_q = dsdk_ip_adapt_bitjoin193_q;

    // dsdk_ip_adapt_bitjoin189(BITJOIN,525)
    assign dsdk_ip_adapt_bitjoin189_q = dsdk_ip_adapt_bitjoin191_q;

    // dsdk_ip_adapt_bitjoin184(BITJOIN,524)
    assign dsdk_ip_adapt_bitjoin184_q = in_i_data_21_tpl;

    // dsdk_ip_adapt_bitjoin182(BITJOIN,523)
    assign dsdk_ip_adapt_bitjoin182_q = dsdk_ip_adapt_bitjoin184_q;

    // dsdk_ip_adapt_bitjoin180(BITJOIN,522)
    assign dsdk_ip_adapt_bitjoin180_q = dsdk_ip_adapt_bitjoin182_q;

    // dsdk_ip_adapt_bitjoin175(BITJOIN,521)
    assign dsdk_ip_adapt_bitjoin175_q = in_i_data_20_tpl;

    // dsdk_ip_adapt_bitjoin173(BITJOIN,520)
    assign dsdk_ip_adapt_bitjoin173_q = dsdk_ip_adapt_bitjoin175_q;

    // dsdk_ip_adapt_bitjoin171(BITJOIN,519)
    assign dsdk_ip_adapt_bitjoin171_q = dsdk_ip_adapt_bitjoin173_q;

    // dsdk_ip_adapt_bitjoin166(BITJOIN,517)
    assign dsdk_ip_adapt_bitjoin166_q = in_i_data_19_tpl;

    // dsdk_ip_adapt_bitjoin164(BITJOIN,516)
    assign dsdk_ip_adapt_bitjoin164_q = dsdk_ip_adapt_bitjoin166_q;

    // dsdk_ip_adapt_bitjoin162(BITJOIN,515)
    assign dsdk_ip_adapt_bitjoin162_q = dsdk_ip_adapt_bitjoin164_q;

    // dsdk_ip_array_adapt_bitjoin160(BITJOIN,822)
    assign dsdk_ip_array_adapt_bitjoin160_q = {dsdk_ip_adapt_bitjoin297_q, dsdk_ip_adapt_bitjoin288_q, dsdk_ip_adapt_bitjoin279_q, dsdk_ip_adapt_bitjoin270_q, dsdk_ip_adapt_bitjoin261_q, dsdk_ip_adapt_bitjoin252_q, dsdk_ip_adapt_bitjoin243_q, dsdk_ip_adapt_bitjoin234_q, dsdk_ip_adapt_bitjoin225_q, dsdk_ip_adapt_bitjoin216_q, dsdk_ip_adapt_bitjoin207_q, dsdk_ip_adapt_bitjoin198_q, dsdk_ip_adapt_bitjoin189_q, dsdk_ip_adapt_bitjoin180_q, dsdk_ip_adapt_bitjoin171_q, dsdk_ip_adapt_bitjoin162_q};

    // dsdk_ip_adapt_bitjoin154(BITJOIN,514)
    assign dsdk_ip_adapt_bitjoin154_q = in_i_data_18_tpl;

    // dsdk_ip_adapt_bitjoin152(BITJOIN,513)
    assign dsdk_ip_adapt_bitjoin152_q = dsdk_ip_adapt_bitjoin154_q;

    // dsdk_ip_adapt_bitjoin150(BITJOIN,512)
    assign dsdk_ip_adapt_bitjoin150_q = dsdk_ip_adapt_bitjoin152_q;

    // dsdk_ip_adapt_bitjoin145(BITJOIN,510)
    assign dsdk_ip_adapt_bitjoin145_q = in_i_data_17_tpl;

    // dsdk_ip_adapt_bitjoin143(BITJOIN,509)
    assign dsdk_ip_adapt_bitjoin143_q = dsdk_ip_adapt_bitjoin145_q;

    // dsdk_ip_adapt_bitjoin141(BITJOIN,508)
    assign dsdk_ip_adapt_bitjoin141_q = dsdk_ip_adapt_bitjoin143_q;

    // dsdk_ip_adapt_bitjoin136(BITJOIN,507)
    assign dsdk_ip_adapt_bitjoin136_q = in_i_data_16_tpl;

    // dsdk_ip_adapt_bitjoin134(BITJOIN,506)
    assign dsdk_ip_adapt_bitjoin134_q = dsdk_ip_adapt_bitjoin136_q;

    // dsdk_ip_adapt_bitjoin132(BITJOIN,505)
    assign dsdk_ip_adapt_bitjoin132_q = dsdk_ip_adapt_bitjoin134_q;

    // dsdk_ip_adapt_bitjoin127(BITJOIN,504)
    assign dsdk_ip_adapt_bitjoin127_q = in_i_data_15_tpl;

    // dsdk_ip_adapt_bitjoin125(BITJOIN,503)
    assign dsdk_ip_adapt_bitjoin125_q = dsdk_ip_adapt_bitjoin127_q;

    // dsdk_ip_adapt_bitjoin123(BITJOIN,502)
    assign dsdk_ip_adapt_bitjoin123_q = dsdk_ip_adapt_bitjoin125_q;

    // dsdk_ip_adapt_bitjoin118(BITJOIN,499)
    assign dsdk_ip_adapt_bitjoin118_q = in_i_data_14_tpl;

    // dsdk_ip_adapt_bitjoin116(BITJOIN,491)
    assign dsdk_ip_adapt_bitjoin116_q = dsdk_ip_adapt_bitjoin118_q;

    // dsdk_ip_adapt_bitjoin114(BITJOIN,484)
    assign dsdk_ip_adapt_bitjoin114_q = dsdk_ip_adapt_bitjoin116_q;

    // dsdk_ip_adapt_bitjoin109(BITJOIN,466)
    assign dsdk_ip_adapt_bitjoin109_q = in_i_data_13_tpl;

    // dsdk_ip_adapt_bitjoin107(BITJOIN,458)
    assign dsdk_ip_adapt_bitjoin107_q = dsdk_ip_adapt_bitjoin109_q;

    // dsdk_ip_adapt_bitjoin105(BITJOIN,451)
    assign dsdk_ip_adapt_bitjoin105_q = dsdk_ip_adapt_bitjoin107_q;

    // dsdk_ip_adapt_bitjoin100(BITJOIN,434)
    assign dsdk_ip_adapt_bitjoin100_q = in_i_data_12_tpl;

    // dsdk_ip_adapt_bitjoin98(BITJOIN,811)
    assign dsdk_ip_adapt_bitjoin98_q = dsdk_ip_adapt_bitjoin100_q;

    // dsdk_ip_adapt_bitjoin96(BITJOIN,803)
    assign dsdk_ip_adapt_bitjoin96_q = dsdk_ip_adapt_bitjoin98_q;

    // dsdk_ip_adapt_bitjoin91(BITJOIN,786)
    assign dsdk_ip_adapt_bitjoin91_q = in_i_data_11_tpl;

    // dsdk_ip_adapt_bitjoin89(BITJOIN,779)
    assign dsdk_ip_adapt_bitjoin89_q = dsdk_ip_adapt_bitjoin91_q;

    // dsdk_ip_adapt_bitjoin87(BITJOIN,771)
    assign dsdk_ip_adapt_bitjoin87_q = dsdk_ip_adapt_bitjoin89_q;

    // dsdk_ip_adapt_bitjoin82(BITJOIN,753)
    assign dsdk_ip_adapt_bitjoin82_q = in_i_data_10_tpl;

    // dsdk_ip_adapt_bitjoin80(BITJOIN,746)
    assign dsdk_ip_adapt_bitjoin80_q = dsdk_ip_adapt_bitjoin82_q;

    // dsdk_ip_adapt_bitjoin78(BITJOIN,738)
    assign dsdk_ip_adapt_bitjoin78_q = dsdk_ip_adapt_bitjoin80_q;

    // dsdk_ip_adapt_bitjoin73(BITJOIN,721)
    assign dsdk_ip_adapt_bitjoin73_q = in_i_data_9_tpl;

    // dsdk_ip_adapt_bitjoin71(BITJOIN,713)
    assign dsdk_ip_adapt_bitjoin71_q = dsdk_ip_adapt_bitjoin73_q;

    // dsdk_ip_adapt_bitjoin69(BITJOIN,706)
    assign dsdk_ip_adapt_bitjoin69_q = dsdk_ip_adapt_bitjoin71_q;

    // dsdk_ip_adapt_bitjoin64(BITJOIN,688)
    assign dsdk_ip_adapt_bitjoin64_q = in_i_data_8_tpl;

    // dsdk_ip_adapt_bitjoin62(BITJOIN,680)
    assign dsdk_ip_adapt_bitjoin62_q = dsdk_ip_adapt_bitjoin64_q;

    // dsdk_ip_adapt_bitjoin60(BITJOIN,673)
    assign dsdk_ip_adapt_bitjoin60_q = dsdk_ip_adapt_bitjoin62_q;

    // dsdk_ip_adapt_bitjoin55(BITJOIN,656)
    assign dsdk_ip_adapt_bitjoin55_q = in_i_data_7_tpl;

    // dsdk_ip_adapt_bitjoin53(BITJOIN,648)
    assign dsdk_ip_adapt_bitjoin53_q = dsdk_ip_adapt_bitjoin55_q;

    // dsdk_ip_adapt_bitjoin51(BITJOIN,640)
    assign dsdk_ip_adapt_bitjoin51_q = dsdk_ip_adapt_bitjoin53_q;

    // dsdk_ip_adapt_bitjoin46(BITJOIN,623)
    assign dsdk_ip_adapt_bitjoin46_q = in_i_data_6_tpl;

    // dsdk_ip_adapt_bitjoin44(BITJOIN,617)
    assign dsdk_ip_adapt_bitjoin44_q = dsdk_ip_adapt_bitjoin46_q;

    // dsdk_ip_adapt_bitjoin42(BITJOIN,609)
    assign dsdk_ip_adapt_bitjoin42_q = dsdk_ip_adapt_bitjoin44_q;

    // dsdk_ip_adapt_bitjoin37(BITJOIN,591)
    assign dsdk_ip_adapt_bitjoin37_q = in_i_data_5_tpl;

    // dsdk_ip_adapt_bitjoin35(BITJOIN,584)
    assign dsdk_ip_adapt_bitjoin35_q = dsdk_ip_adapt_bitjoin37_q;

    // dsdk_ip_adapt_bitjoin33(BITJOIN,576)
    assign dsdk_ip_adapt_bitjoin33_q = dsdk_ip_adapt_bitjoin35_q;

    // dsdk_ip_adapt_bitjoin28(BITJOIN,559)
    assign dsdk_ip_adapt_bitjoin28_q = in_i_data_4_tpl;

    // dsdk_ip_adapt_bitjoin26(BITJOIN,551)
    assign dsdk_ip_adapt_bitjoin26_q = dsdk_ip_adapt_bitjoin28_q;

    // dsdk_ip_adapt_bitjoin24(BITJOIN,544)
    assign dsdk_ip_adapt_bitjoin24_q = dsdk_ip_adapt_bitjoin26_q;

    // dsdk_ip_adapt_bitjoin19(BITJOIN,526)
    assign dsdk_ip_adapt_bitjoin19_q = in_i_data_3_tpl;

    // dsdk_ip_adapt_bitjoin17(BITJOIN,518)
    assign dsdk_ip_adapt_bitjoin17_q = dsdk_ip_adapt_bitjoin19_q;

    // dsdk_ip_adapt_bitjoin15(BITJOIN,511)
    assign dsdk_ip_adapt_bitjoin15_q = dsdk_ip_adapt_bitjoin17_q;

    // dsdk_ip_array_adapt_bitjoin13(BITJOIN,821)
    assign dsdk_ip_array_adapt_bitjoin13_q = {dsdk_ip_adapt_bitjoin150_q, dsdk_ip_adapt_bitjoin141_q, dsdk_ip_adapt_bitjoin132_q, dsdk_ip_adapt_bitjoin123_q, dsdk_ip_adapt_bitjoin114_q, dsdk_ip_adapt_bitjoin105_q, dsdk_ip_adapt_bitjoin96_q, dsdk_ip_adapt_bitjoin87_q, dsdk_ip_adapt_bitjoin78_q, dsdk_ip_adapt_bitjoin69_q, dsdk_ip_adapt_bitjoin60_q, dsdk_ip_adapt_bitjoin51_q, dsdk_ip_adapt_bitjoin42_q, dsdk_ip_adapt_bitjoin33_q, dsdk_ip_adapt_bitjoin24_q, dsdk_ip_adapt_bitjoin15_q};

    // dsdk_ip_array_adapt_bitjoin11(BITJOIN,820)
    assign dsdk_ip_array_adapt_bitjoin11_q = {dsdk_ip_array_adapt_bitjoin1042_q, dsdk_ip_array_adapt_bitjoin895_q, dsdk_ip_array_adapt_bitjoin748_q, dsdk_ip_array_adapt_bitjoin601_q, dsdk_ip_array_adapt_bitjoin454_q, dsdk_ip_array_adapt_bitjoin307_q, dsdk_ip_array_adapt_bitjoin160_q, dsdk_ip_array_adapt_bitjoin13_q};

    // dsdk_ip_adapt_bitjoin9(BITJOIN,782)
    assign dsdk_ip_adapt_bitjoin9_q = dsdk_ip_array_adapt_bitjoin11_q;

    // element_extension7(BITJOIN,842)
    assign element_extension7_q = {c_i7_01192_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,841)
    assign element_extension5_q = {c_i7_01192_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,840)
    assign element_extension3_q = {c_i7_01192_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,433)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i16_01211_q, element_extension1217_q, element_extension1215_q, in_i_data_146_tpl, c_i24_01203_q, element_extension1212_q, in_i_data_144_tpl, in_i_data_143_tpl, c_i16_01211_q, element_extension1209_q, element_extension1207_q, in_i_data_140_tpl, c_i24_01203_q, element_extension1204_q, in_i_data_138_tpl, c_i24_01203_q, element_extension1201_q, in_i_data_136_tpl, element_extension1199_q, element_extension1197_q, element_extension1195_q, element_extension1193_q, element_extension1191_q, dsdk_ip_adapt_bitjoin9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00(EXTIFACE,843)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(1440)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc1222_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc1224_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc1226_q;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect1233_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect1241_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect1249_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect1257_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect1265_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect1273_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect1281_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect1289_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect1297_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect1305_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect1313_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect1321_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect1329_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect1337_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect1345_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect1353_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect1363_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect1371_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect1379_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect1387_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect1395_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect1403_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect1411_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect1419_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect1427_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect1435_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect1443_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect1451_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect1459_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect1467_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect1475_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect1483_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect1493_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect1501_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect1509_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect1517_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect1525_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect1533_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect1541_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect1549_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect1557_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect1565_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect1573_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect1581_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect1589_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect1597_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect1605_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect1613_b;
    assign out_o_data_51_tpl = ip_dsdk_adapt_bitselect1623_b;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect1631_b;
    assign out_o_data_53_tpl = ip_dsdk_adapt_bitselect1639_b;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect1647_b;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect1655_b;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect1663_b;
    assign out_o_data_57_tpl = ip_dsdk_adapt_bitselect1671_b;
    assign out_o_data_58_tpl = ip_dsdk_adapt_bitselect1679_b;
    assign out_o_data_59_tpl = ip_dsdk_adapt_bitselect1687_b;
    assign out_o_data_60_tpl = ip_dsdk_adapt_bitselect1695_b;
    assign out_o_data_61_tpl = ip_dsdk_adapt_bitselect1703_b;
    assign out_o_data_62_tpl = ip_dsdk_adapt_bitselect1711_b;
    assign out_o_data_63_tpl = ip_dsdk_adapt_bitselect1719_b;
    assign out_o_data_64_tpl = ip_dsdk_adapt_bitselect1727_b;
    assign out_o_data_65_tpl = ip_dsdk_adapt_bitselect1735_b;
    assign out_o_data_66_tpl = ip_dsdk_adapt_bitselect1743_b;
    assign out_o_data_67_tpl = ip_dsdk_adapt_bitselect1753_b;
    assign out_o_data_68_tpl = ip_dsdk_adapt_bitselect1761_b;
    assign out_o_data_69_tpl = ip_dsdk_adapt_bitselect1769_b;
    assign out_o_data_70_tpl = ip_dsdk_adapt_bitselect1777_b;
    assign out_o_data_71_tpl = ip_dsdk_adapt_bitselect1785_b;
    assign out_o_data_72_tpl = ip_dsdk_adapt_bitselect1793_b;
    assign out_o_data_73_tpl = ip_dsdk_adapt_bitselect1801_b;
    assign out_o_data_74_tpl = ip_dsdk_adapt_bitselect1809_b;
    assign out_o_data_75_tpl = ip_dsdk_adapt_bitselect1817_b;
    assign out_o_data_76_tpl = ip_dsdk_adapt_bitselect1825_b;
    assign out_o_data_77_tpl = ip_dsdk_adapt_bitselect1833_b;
    assign out_o_data_78_tpl = ip_dsdk_adapt_bitselect1841_b;
    assign out_o_data_79_tpl = ip_dsdk_adapt_bitselect1849_b;
    assign out_o_data_80_tpl = ip_dsdk_adapt_bitselect1857_b;
    assign out_o_data_81_tpl = ip_dsdk_adapt_bitselect1865_b;
    assign out_o_data_82_tpl = ip_dsdk_adapt_bitselect1873_b;
    assign out_o_data_83_tpl = ip_dsdk_adapt_bitselect1883_b;
    assign out_o_data_84_tpl = ip_dsdk_adapt_bitselect1891_b;
    assign out_o_data_85_tpl = ip_dsdk_adapt_bitselect1899_b;
    assign out_o_data_86_tpl = ip_dsdk_adapt_bitselect1907_b;
    assign out_o_data_87_tpl = ip_dsdk_adapt_bitselect1915_b;
    assign out_o_data_88_tpl = ip_dsdk_adapt_bitselect1923_b;
    assign out_o_data_89_tpl = ip_dsdk_adapt_bitselect1931_b;
    assign out_o_data_90_tpl = ip_dsdk_adapt_bitselect1939_b;
    assign out_o_data_91_tpl = ip_dsdk_adapt_bitselect1947_b;
    assign out_o_data_92_tpl = ip_dsdk_adapt_bitselect1955_b;
    assign out_o_data_93_tpl = ip_dsdk_adapt_bitselect1963_b;
    assign out_o_data_94_tpl = ip_dsdk_adapt_bitselect1971_b;
    assign out_o_data_95_tpl = ip_dsdk_adapt_bitselect1979_b;
    assign out_o_data_96_tpl = ip_dsdk_adapt_bitselect1987_b;
    assign out_o_data_97_tpl = ip_dsdk_adapt_bitselect1995_b;
    assign out_o_data_98_tpl = ip_dsdk_adapt_bitselect2003_b;
    assign out_o_data_99_tpl = ip_dsdk_adapt_bitselect2013_b;
    assign out_o_data_100_tpl = ip_dsdk_adapt_bitselect2021_b;
    assign out_o_data_101_tpl = ip_dsdk_adapt_bitselect2029_b;
    assign out_o_data_102_tpl = ip_dsdk_adapt_bitselect2037_b;
    assign out_o_data_103_tpl = ip_dsdk_adapt_bitselect2045_b;
    assign out_o_data_104_tpl = ip_dsdk_adapt_bitselect2053_b;
    assign out_o_data_105_tpl = ip_dsdk_adapt_bitselect2061_b;
    assign out_o_data_106_tpl = ip_dsdk_adapt_bitselect2069_b;
    assign out_o_data_107_tpl = ip_dsdk_adapt_bitselect2077_b;
    assign out_o_data_108_tpl = ip_dsdk_adapt_bitselect2085_b;
    assign out_o_data_109_tpl = ip_dsdk_adapt_bitselect2093_b;
    assign out_o_data_110_tpl = ip_dsdk_adapt_bitselect2101_b;
    assign out_o_data_111_tpl = ip_dsdk_adapt_bitselect2109_b;
    assign out_o_data_112_tpl = ip_dsdk_adapt_bitselect2117_b;
    assign out_o_data_113_tpl = ip_dsdk_adapt_bitselect2125_b;
    assign out_o_data_114_tpl = ip_dsdk_adapt_bitselect2133_b;
    assign out_o_data_115_tpl = ip_dsdk_adapt_bitselect2143_b;
    assign out_o_data_116_tpl = ip_dsdk_adapt_bitselect2151_b;
    assign out_o_data_117_tpl = ip_dsdk_adapt_bitselect2159_b;
    assign out_o_data_118_tpl = ip_dsdk_adapt_bitselect2167_b;
    assign out_o_data_119_tpl = ip_dsdk_adapt_bitselect2175_b;
    assign out_o_data_120_tpl = ip_dsdk_adapt_bitselect2183_b;
    assign out_o_data_121_tpl = ip_dsdk_adapt_bitselect2191_b;
    assign out_o_data_122_tpl = ip_dsdk_adapt_bitselect2199_b;
    assign out_o_data_123_tpl = ip_dsdk_adapt_bitselect2207_b;
    assign out_o_data_124_tpl = ip_dsdk_adapt_bitselect2215_b;
    assign out_o_data_125_tpl = ip_dsdk_adapt_bitselect2223_b;
    assign out_o_data_126_tpl = ip_dsdk_adapt_bitselect2231_b;
    assign out_o_data_127_tpl = ip_dsdk_adapt_bitselect2239_b;
    assign out_o_data_128_tpl = ip_dsdk_adapt_bitselect2247_b;
    assign out_o_data_129_tpl = ip_dsdk_adapt_bitselect2255_b;
    assign out_o_data_130_tpl = ip_dsdk_adapt_bitselect2263_b;
    assign out_o_data_131_tpl = adapt_scalar_trunc2272_q;
    assign out_o_data_132_tpl = adapt_scalar_trunc2274_q;
    assign out_o_data_133_tpl = adapt_scalar_trunc2276_q;
    assign out_o_data_134_tpl = adapt_scalar_trunc2278_q;
    assign out_o_data_135_tpl = adapt_scalar_trunc2280_q;
    assign out_o_data_136_tpl = ip_dsdk_adapt_bitselect2281_b;
    assign out_o_data_137_tpl = adapt_scalar_trunc2284_q;
    assign out_o_data_138_tpl = ip_dsdk_adapt_bitselect2285_b;
    assign out_o_data_139_tpl = adapt_scalar_trunc2288_q;
    assign out_o_data_140_tpl = ip_dsdk_adapt_bitselect2289_b;
    assign out_o_data_141_tpl = adapt_scalar_trunc2292_q;
    assign out_o_data_142_tpl = adapt_scalar_trunc2294_q;
    assign out_o_data_143_tpl = ip_dsdk_adapt_bitselect2295_b;
    assign out_o_data_144_tpl = ip_dsdk_adapt_bitselect2297_b;
    assign out_o_data_145_tpl = adapt_scalar_trunc2300_q;
    assign out_o_data_146_tpl = ip_dsdk_adapt_bitselect2301_b;
    assign out_o_data_147_tpl = adapt_scalar_trunc2304_q;
    assign out_o_data_148_tpl = adapt_scalar_trunc2306_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_valid;

    // sync_out(GPOUT,1522)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_cond68_preheader_load_weight0s_c0_exit345_load_weight00_o_stall;

endmodule
