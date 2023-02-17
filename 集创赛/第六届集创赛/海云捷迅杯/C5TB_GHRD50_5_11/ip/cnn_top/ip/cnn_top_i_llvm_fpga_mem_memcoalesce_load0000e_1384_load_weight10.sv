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

// SystemVerilog created from cnn_top_i_llvm_fpga_mem_memcoalesce_load0000e_1384_load_weight10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_llvm_fpga_mem_memcoalesce_load0000e_1384_load_weight10 (
    output wire [7:0] out_o_readdata_0_tpl,
    output wire [7:0] out_o_readdata_1_tpl,
    output wire [7:0] out_o_readdata_2_tpl,
    output wire [7:0] out_o_readdata_3_tpl,
    output wire [7:0] out_o_readdata_4_tpl,
    output wire [7:0] out_o_readdata_5_tpl,
    output wire [7:0] out_o_readdata_6_tpl,
    output wire [7:0] out_o_readdata_7_tpl,
    output wire [7:0] out_o_readdata_8_tpl,
    output wire [7:0] out_o_readdata_9_tpl,
    output wire [7:0] out_o_readdata_10_tpl,
    output wire [7:0] out_o_readdata_11_tpl,
    output wire [7:0] out_o_readdata_12_tpl,
    output wire [7:0] out_o_readdata_13_tpl,
    output wire [7:0] out_o_readdata_14_tpl,
    output wire [7:0] out_o_readdata_15_tpl,
    output wire [7:0] out_o_readdata_16_tpl,
    output wire [7:0] out_o_readdata_17_tpl,
    output wire [7:0] out_o_readdata_18_tpl,
    output wire [7:0] out_o_readdata_19_tpl,
    output wire [7:0] out_o_readdata_20_tpl,
    output wire [7:0] out_o_readdata_21_tpl,
    output wire [7:0] out_o_readdata_22_tpl,
    output wire [7:0] out_o_readdata_23_tpl,
    output wire [7:0] out_o_readdata_24_tpl,
    output wire [7:0] out_o_readdata_25_tpl,
    output wire [7:0] out_o_readdata_26_tpl,
    output wire [7:0] out_o_readdata_27_tpl,
    output wire [7:0] out_o_readdata_28_tpl,
    output wire [7:0] out_o_readdata_29_tpl,
    output wire [7:0] out_o_readdata_30_tpl,
    output wire [7:0] out_o_readdata_31_tpl,
    output wire [7:0] out_o_readdata_32_tpl,
    output wire [7:0] out_o_readdata_33_tpl,
    output wire [7:0] out_o_readdata_34_tpl,
    output wire [7:0] out_o_readdata_35_tpl,
    output wire [7:0] out_o_readdata_36_tpl,
    output wire [7:0] out_o_readdata_37_tpl,
    output wire [7:0] out_o_readdata_38_tpl,
    output wire [7:0] out_o_readdata_39_tpl,
    output wire [7:0] out_o_readdata_40_tpl,
    output wire [7:0] out_o_readdata_41_tpl,
    output wire [7:0] out_o_readdata_42_tpl,
    output wire [7:0] out_o_readdata_43_tpl,
    output wire [7:0] out_o_readdata_44_tpl,
    output wire [7:0] out_o_readdata_45_tpl,
    output wire [7:0] out_o_readdata_46_tpl,
    output wire [7:0] out_o_readdata_47_tpl,
    output wire [7:0] out_o_readdata_48_tpl,
    output wire [7:0] out_o_readdata_49_tpl,
    output wire [7:0] out_o_readdata_50_tpl,
    output wire [7:0] out_o_readdata_51_tpl,
    output wire [7:0] out_o_readdata_52_tpl,
    output wire [7:0] out_o_readdata_53_tpl,
    output wire [7:0] out_o_readdata_54_tpl,
    output wire [7:0] out_o_readdata_55_tpl,
    output wire [7:0] out_o_readdata_56_tpl,
    output wire [7:0] out_o_readdata_57_tpl,
    output wire [7:0] out_o_readdata_58_tpl,
    output wire [7:0] out_o_readdata_59_tpl,
    output wire [7:0] out_o_readdata_60_tpl,
    output wire [7:0] out_o_readdata_61_tpl,
    output wire [7:0] out_o_readdata_62_tpl,
    output wire [7:0] out_o_readdata_63_tpl,
    output wire [7:0] out_o_readdata_64_tpl,
    output wire [7:0] out_o_readdata_65_tpl,
    output wire [7:0] out_o_readdata_66_tpl,
    output wire [7:0] out_o_readdata_67_tpl,
    output wire [7:0] out_o_readdata_68_tpl,
    output wire [7:0] out_o_readdata_69_tpl,
    output wire [7:0] out_o_readdata_70_tpl,
    output wire [7:0] out_o_readdata_71_tpl,
    output wire [7:0] out_o_readdata_72_tpl,
    output wire [7:0] out_o_readdata_73_tpl,
    output wire [7:0] out_o_readdata_74_tpl,
    output wire [7:0] out_o_readdata_75_tpl,
    output wire [7:0] out_o_readdata_76_tpl,
    output wire [7:0] out_o_readdata_77_tpl,
    output wire [7:0] out_o_readdata_78_tpl,
    output wire [7:0] out_o_readdata_79_tpl,
    output wire [7:0] out_o_readdata_80_tpl,
    output wire [7:0] out_o_readdata_81_tpl,
    output wire [7:0] out_o_readdata_82_tpl,
    output wire [7:0] out_o_readdata_83_tpl,
    output wire [7:0] out_o_readdata_84_tpl,
    output wire [7:0] out_o_readdata_85_tpl,
    output wire [7:0] out_o_readdata_86_tpl,
    output wire [7:0] out_o_readdata_87_tpl,
    output wire [7:0] out_o_readdata_88_tpl,
    output wire [7:0] out_o_readdata_89_tpl,
    output wire [7:0] out_o_readdata_90_tpl,
    output wire [7:0] out_o_readdata_91_tpl,
    output wire [7:0] out_o_readdata_92_tpl,
    output wire [7:0] out_o_readdata_93_tpl,
    output wire [7:0] out_o_readdata_94_tpl,
    output wire [7:0] out_o_readdata_95_tpl,
    output wire [7:0] out_o_readdata_96_tpl,
    output wire [7:0] out_o_readdata_97_tpl,
    output wire [7:0] out_o_readdata_98_tpl,
    output wire [7:0] out_o_readdata_99_tpl,
    output wire [7:0] out_o_readdata_100_tpl,
    output wire [7:0] out_o_readdata_101_tpl,
    output wire [7:0] out_o_readdata_102_tpl,
    output wire [7:0] out_o_readdata_103_tpl,
    output wire [7:0] out_o_readdata_104_tpl,
    output wire [7:0] out_o_readdata_105_tpl,
    output wire [7:0] out_o_readdata_106_tpl,
    output wire [7:0] out_o_readdata_107_tpl,
    output wire [7:0] out_o_readdata_108_tpl,
    output wire [7:0] out_o_readdata_109_tpl,
    output wire [7:0] out_o_readdata_110_tpl,
    output wire [7:0] out_o_readdata_111_tpl,
    output wire [7:0] out_o_readdata_112_tpl,
    output wire [7:0] out_o_readdata_113_tpl,
    output wire [7:0] out_o_readdata_114_tpl,
    output wire [7:0] out_o_readdata_115_tpl,
    output wire [7:0] out_o_readdata_116_tpl,
    output wire [7:0] out_o_readdata_117_tpl,
    output wire [7:0] out_o_readdata_118_tpl,
    output wire [7:0] out_o_readdata_119_tpl,
    output wire [7:0] out_o_readdata_120_tpl,
    output wire [7:0] out_o_readdata_121_tpl,
    output wire [7:0] out_o_readdata_122_tpl,
    output wire [7:0] out_o_readdata_123_tpl,
    output wire [7:0] out_o_readdata_124_tpl,
    output wire [7:0] out_o_readdata_125_tpl,
    output wire [7:0] out_o_readdata_126_tpl,
    output wire [7:0] out_o_readdata_127_tpl,
    output wire [0:0] out_o_valid,
    input wire [1023:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write,
    output wire [1023:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata,
    output wire [127:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] addr_trunc_sel_x_b;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_0_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_1_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_2_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_3_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_4_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_5_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_6_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_7_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_8_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_9_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_10_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_11_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_12_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_13_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_14_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_15_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_16_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_17_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_18_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_19_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_20_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_21_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_22_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_23_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_24_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_25_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_26_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_27_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_28_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_29_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_30_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_31_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_32_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_33_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_34_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_35_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_36_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_37_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_38_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_39_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_40_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_41_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_42_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_43_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_44_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_45_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_46_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_47_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_48_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_49_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_50_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_51_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_52_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_53_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_54_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_55_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_56_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_57_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_58_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_59_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_60_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_61_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_62_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_63_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_64_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_65_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_66_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_67_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_68_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_69_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_70_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_71_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_72_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_73_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_74_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_75_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_76_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_77_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_78_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_79_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_80_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_81_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_82_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_83_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_84_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_85_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_86_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_87_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_88_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_89_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_90_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_91_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_92_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_93_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_94_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_95_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_96_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_97_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_98_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_99_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_100_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_101_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_102_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_103_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_104_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_105_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_106_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_107_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_108_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_109_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_110_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_111_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_112_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_113_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_114_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_115_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_116_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_117_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_118_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_119_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_120_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_121_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_122_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_123_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_124_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_125_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_126_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_127_x_q;
    reg [0:0] readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_valid_reg_x_q;
    wire [1023:0] c_i1024_0260_q;
    wire [127:0] c_i128_0261_q;
    wire [31:0] c_i32_02_q;
    wire [2:0] c_i3_0265_q;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_bitwiseor;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_byteenable;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount_bitsignaltemp;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_input_fifo_depth;
    wire [1023:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_profile_bw_incr;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_b;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_c;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_d;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_e;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_f;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_g;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_h;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_i;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_j;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_k;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_l;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_m;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_n;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_p;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_q;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_r;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_s;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_t;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_u;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_v;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_w;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_x;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_y;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_z;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_aa;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_bb;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_cc;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_dd;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ee;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ff;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_gg;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_hh;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ii;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_jj;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_kk;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ll;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_mm;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_nn;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_oo;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_pp;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_qq;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_rr;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ss;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_tt;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_uu;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_vv;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_ww;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_xx;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_yy;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_zz;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_1;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_2;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_3;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_4;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_5;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_6;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_7;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_8;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_9;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_0;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o61;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o62;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o63;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o64;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o65;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o66;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o67;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o68;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o69;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o70;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o71;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o72;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o73;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o74;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o75;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o76;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o77;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o78;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o79;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o80;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o81;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o82;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o83;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o84;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o85;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o86;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o87;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o88;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o89;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o90;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o91;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o92;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o93;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o94;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o95;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o96;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o97;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o98;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o99;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o100;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o101;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o102;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o103;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o104;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o105;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o106;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o107;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o108;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o109;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o110;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o111;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o112;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o113;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o114;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o115;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o116;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o117;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o118;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o119;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o120;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o121;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o122;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o123;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o124;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o125;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o126;
    wire [7:0] ip_dsdk_adapt_bitselect10_merged_bit_select_o127;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i1024_0260(CONSTANT,136)
    assign c_i1024_0260_q = $unsigned(1024'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i128_0261(CONSTANT,138)
    assign c_i128_0261_q = $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_02(CONSTANT,141)
    assign c_i32_02_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_0265(CONSTANT,144)
    assign c_i3_0265_q = $unsigned(3'b000);

    // addr_trunc_sel_x(BITSELECT,3)@3
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11(EXTIFACE,147)@3 + 3
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdata = in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid = in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest = in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack = in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_address = addr_trunc_sel_x_b;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_atomic_op = c_i3_0265_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_bitwiseor = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_byteenable = c_i128_0261_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_cmpdata = c_i1024_0260_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate = in_i_predicate;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_writedata = c_i1024_0260_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_base_addr = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_size = c_i32_02_q;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(12),
        .ADDRSPACE(65),
        .ALIGNMENT_BYTES(128),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(1),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(3),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(128),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(1),
        .STALLFREE(1),
        .STYLE("PIPELINED"),
        .SYNCHRONIZE_RESET(0),
        .USECACHING(0),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(0),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(128),
        .WRITEDATAWIDTH_BYTES(128)
    ) thei_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11 (
        .avm_readdata(in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_flush_bitsignaltemp),
        .i_address(addr_trunc_sel_x_b),
        .i_atomic_op(c_i3_0265_q),
        .i_bitwiseor(c_i32_02_q),
        .i_byteenable(c_i128_0261_q),
        .i_cmpdata(c_i1024_0260_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_i_valid_bitsignaltemp),
        .i_writedata(c_i1024_0260_q),
        .stream_base_addr(c_i32_02_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_stream_reset_bitsignaltemp),
        .stream_size(c_i32_02_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_valid_reg_x(REG,134)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_valid_reg_x_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_valid_reg_x_q <= i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_valid;
        end
    end

    // ip_dsdk_adapt_bitselect10_merged_bit_select(BITSELECT,409)@6
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_b = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[31:24];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_c = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[391:384];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_d = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[399:392];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_e = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[407:400];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_f = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[415:408];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_g = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[423:416];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_h = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[431:424];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_i = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[439:432];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_j = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[447:440];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_k = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[455:448];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_l = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[463:456];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_m = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[39:32];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_n = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[471:464];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[479:472];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_p = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[487:480];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_q = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[495:488];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_r = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[503:496];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_s = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[511:504];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_t = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[519:512];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_u = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[527:520];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_v = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[535:528];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_w = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[543:536];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_x = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[47:40];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_y = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[551:544];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_z = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[559:552];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_aa = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[567:560];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_bb = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[575:568];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_cc = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[583:576];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_dd = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[591:584];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ee = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[599:592];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ff = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[607:600];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_gg = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[615:608];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_hh = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[623:616];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ii = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[55:48];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_jj = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[631:624];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_kk = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[639:632];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ll = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[647:640];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_mm = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[655:648];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_nn = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[663:656];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_oo = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[671:664];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_pp = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[679:672];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_qq = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[687:680];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_rr = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[695:688];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ss = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[703:696];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_tt = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[63:56];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_uu = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[711:704];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_vv = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[719:712];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_ww = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[727:720];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_xx = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[735:728];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_yy = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[743:736];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_zz = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[751:744];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_1 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[759:752];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_2 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[767:760];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_3 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[775:768];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_4 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[783:776];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_5 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[71:64];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_6 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[791:784];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_7 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[799:792];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_8 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[807:800];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_9 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[815:808];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_0 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[823:816];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o61 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[831:824];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o62 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[839:832];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o63 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[847:840];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o64 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[855:848];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o65 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[863:856];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o66 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[79:72];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o67 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[871:864];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o68 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[879:872];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o69 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[887:880];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o70 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[895:888];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o71 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[903:896];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o72 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[911:904];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o73 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[919:912];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o74 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[927:920];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o75 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[935:928];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o76 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[943:936];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o77 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[87:80];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o78 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[951:944];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o79 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[959:952];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o80 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[967:960];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o81 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[975:968];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o82 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[983:976];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o83 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[991:984];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o84 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[999:992];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o85 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[1007:1000];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o86 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[1015:1008];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o87 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[1023:1016];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o88 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[95:88];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o89 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[103:96];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o90 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[111:104];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o91 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[119:112];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o92 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[127:120];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o93 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[135:128];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o94 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[143:136];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o95 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[7:0];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o96 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[151:144];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o97 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[159:152];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o98 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[167:160];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o99 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[175:168];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o100 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[183:176];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o101 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[191:184];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o102 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[199:192];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o103 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[207:200];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o104 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[215:208];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o105 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[223:216];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o106 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[15:8];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o107 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[231:224];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o108 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[239:232];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o109 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[247:240];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o110 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[255:248];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o111 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[263:256];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o112 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[271:264];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o113 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[279:272];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o114 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[287:280];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o115 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[295:288];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o116 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[303:296];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o117 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[23:16];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o118 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[311:304];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o119 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[319:312];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o120 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[327:320];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o121 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[335:328];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o122 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[343:336];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o123 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[351:344];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o124 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[359:352];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o125 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[367:360];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o126 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[375:368];
    assign ip_dsdk_adapt_bitselect10_merged_bit_select_o127 = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_readdata[383:376];

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_127_x(REG,131)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_127_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_127_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o87;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_126_x(REG,130)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_126_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_126_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o86;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_125_x(REG,129)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_125_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_125_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o85;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_124_x(REG,128)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_124_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_124_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o84;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_123_x(REG,127)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_123_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_123_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o83;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_122_x(REG,126)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_122_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_122_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o82;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_121_x(REG,125)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_121_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_121_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o81;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_120_x(REG,124)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_120_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_120_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o80;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_119_x(REG,123)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_119_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_119_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o79;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_118_x(REG,122)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_118_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_118_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o78;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_117_x(REG,121)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_117_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_117_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o76;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_116_x(REG,120)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_116_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_116_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o75;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_115_x(REG,119)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_115_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_115_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o74;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_114_x(REG,118)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_114_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_114_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o73;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_113_x(REG,117)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_113_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_113_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o72;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_112_x(REG,116)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_112_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_112_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o71;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_111_x(REG,115)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_111_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_111_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o70;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_110_x(REG,114)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_110_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_110_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o69;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_109_x(REG,113)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_109_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_109_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o68;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_108_x(REG,112)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_108_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_108_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o67;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_107_x(REG,111)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_107_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_107_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o65;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_106_x(REG,110)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_106_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_106_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o64;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_105_x(REG,109)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_105_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_105_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o63;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_104_x(REG,108)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_104_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_104_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o62;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_103_x(REG,107)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_103_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_103_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o61;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_102_x(REG,106)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_102_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_102_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_0;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_101_x(REG,105)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_101_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_101_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_9;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_100_x(REG,104)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_100_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_100_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_8;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_99_x(REG,103)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_99_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_99_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_7;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_98_x(REG,102)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_98_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_98_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_6;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_97_x(REG,101)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_97_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_97_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_4;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_96_x(REG,100)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_96_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_96_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_3;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_95_x(REG,99)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_95_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_95_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_2;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_94_x(REG,98)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_94_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_94_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_1;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_93_x(REG,97)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_93_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_93_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_zz;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_92_x(REG,96)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_92_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_92_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_yy;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_91_x(REG,95)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_91_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_91_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_xx;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_90_x(REG,94)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_90_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_90_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ww;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_89_x(REG,93)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_89_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_89_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_vv;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_88_x(REG,92)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_88_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_88_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_uu;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_87_x(REG,91)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_87_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_87_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ss;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_86_x(REG,90)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_86_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_86_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_rr;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_85_x(REG,89)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_85_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_85_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_qq;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_84_x(REG,88)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_84_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_84_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_pp;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_83_x(REG,87)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_83_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_83_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_oo;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_82_x(REG,86)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_82_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_82_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_nn;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_81_x(REG,85)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_81_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_81_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_mm;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_80_x(REG,84)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_80_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_80_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ll;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_79_x(REG,83)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_79_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_79_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_kk;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_78_x(REG,82)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_78_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_78_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_jj;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_77_x(REG,81)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_77_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_77_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_hh;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_76_x(REG,80)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_76_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_76_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_gg;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_75_x(REG,79)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_75_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_75_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ff;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_74_x(REG,78)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_74_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_74_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ee;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_73_x(REG,77)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_73_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_73_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_dd;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_72_x(REG,76)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_72_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_72_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_cc;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_71_x(REG,75)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_71_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_71_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_bb;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_70_x(REG,74)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_70_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_70_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_aa;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_69_x(REG,73)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_69_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_69_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_z;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_68_x(REG,72)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_68_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_68_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_y;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_67_x(REG,71)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_67_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_67_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_w;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_66_x(REG,70)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_66_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_66_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_v;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_65_x(REG,69)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_65_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_65_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_u;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_64_x(REG,68)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_64_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_64_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_t;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_63_x(REG,67)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_63_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_63_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_s;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_62_x(REG,66)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_62_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_62_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_r;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_61_x(REG,65)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_61_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_61_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_q;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_60_x(REG,64)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_60_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_60_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_p;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_59_x(REG,63)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_59_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_59_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_58_x(REG,62)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_58_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_58_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_n;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_57_x(REG,61)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_57_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_57_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_l;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_56_x(REG,60)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_56_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_56_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_k;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_55_x(REG,59)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_55_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_55_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_j;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_54_x(REG,58)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_54_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_54_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_i;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_53_x(REG,57)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_53_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_53_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_h;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_52_x(REG,56)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_52_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_52_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_g;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_51_x(REG,55)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_51_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_51_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_f;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_50_x(REG,54)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_50_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_50_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_e;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_49_x(REG,53)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_49_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_49_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_d;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_48_x(REG,52)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_48_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_48_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_c;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_47_x(REG,51)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_47_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_47_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o127;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_46_x(REG,50)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_46_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_46_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o126;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_45_x(REG,49)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_45_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_45_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o125;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_44_x(REG,48)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_44_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_44_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o124;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_43_x(REG,47)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_43_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_43_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o123;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_42_x(REG,46)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_42_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_42_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o122;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_41_x(REG,45)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_41_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_41_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o121;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_40_x(REG,44)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_40_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_40_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o120;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_39_x(REG,43)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_39_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_39_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o119;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_38_x(REG,42)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_38_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_38_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o118;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_37_x(REG,41)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_37_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_37_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o116;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_36_x(REG,40)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_36_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_36_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o115;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_35_x(REG,39)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_35_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_35_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o114;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_34_x(REG,38)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_34_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_34_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o113;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_33_x(REG,37)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_33_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_33_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o112;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_32_x(REG,36)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_32_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_32_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o111;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_31_x(REG,35)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_31_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_31_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o110;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_30_x(REG,34)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_30_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_30_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o109;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_29_x(REG,33)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_29_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_29_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o108;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_28_x(REG,32)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_28_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_28_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o107;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_27_x(REG,31)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_27_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_27_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o105;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_26_x(REG,30)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_26_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_26_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o104;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_25_x(REG,29)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_25_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_25_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o103;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_24_x(REG,28)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_24_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_24_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o102;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_23_x(REG,27)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_23_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_23_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o101;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_22_x(REG,26)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_22_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_22_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o100;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_21_x(REG,25)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_21_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_21_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o99;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_20_x(REG,24)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_20_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_20_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o98;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_19_x(REG,23)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_19_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_19_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o97;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_18_x(REG,22)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_18_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_18_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o96;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_17_x(REG,21)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_17_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_17_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o94;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_16_x(REG,20)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_16_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_16_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o93;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_15_x(REG,19)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_15_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_15_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o92;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_14_x(REG,18)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_14_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_14_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o91;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_13_x(REG,17)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_13_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_13_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o90;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_12_x(REG,16)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_12_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_12_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o89;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_11_x(REG,15)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_11_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_11_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o88;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_10_x(REG,14)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_10_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_10_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o77;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_9_x(REG,13)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_9_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_9_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o66;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_8_x(REG,12)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_8_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_8_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_5;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_7_x(REG,11)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_7_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_7_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_tt;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_6_x(REG,10)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_6_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_6_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_ii;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_5_x(REG,9)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_5_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_5_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_x;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_4_x(REG,8)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_4_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_4_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_m;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_3_x(REG,7)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_3_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_3_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_b;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_2_x(REG,6)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_2_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_2_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o117;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_1_x(REG,5)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_1_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_1_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o106;
        end
    end

    // readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_0_x(REG,4)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_0_x_q <= $unsigned(8'b00000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_0_x_q <= ip_dsdk_adapt_bitselect10_merged_bit_select_o95;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@7
    assign out_o_readdata_0_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_0_x_q;
    assign out_o_readdata_1_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_1_x_q;
    assign out_o_readdata_2_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_2_x_q;
    assign out_o_readdata_3_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_3_x_q;
    assign out_o_readdata_4_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_4_x_q;
    assign out_o_readdata_5_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_5_x_q;
    assign out_o_readdata_6_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_6_x_q;
    assign out_o_readdata_7_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_7_x_q;
    assign out_o_readdata_8_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_8_x_q;
    assign out_o_readdata_9_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_9_x_q;
    assign out_o_readdata_10_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_10_x_q;
    assign out_o_readdata_11_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_11_x_q;
    assign out_o_readdata_12_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_12_x_q;
    assign out_o_readdata_13_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_13_x_q;
    assign out_o_readdata_14_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_14_x_q;
    assign out_o_readdata_15_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_15_x_q;
    assign out_o_readdata_16_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_16_x_q;
    assign out_o_readdata_17_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_17_x_q;
    assign out_o_readdata_18_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_18_x_q;
    assign out_o_readdata_19_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_19_x_q;
    assign out_o_readdata_20_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_20_x_q;
    assign out_o_readdata_21_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_21_x_q;
    assign out_o_readdata_22_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_22_x_q;
    assign out_o_readdata_23_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_23_x_q;
    assign out_o_readdata_24_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_24_x_q;
    assign out_o_readdata_25_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_25_x_q;
    assign out_o_readdata_26_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_26_x_q;
    assign out_o_readdata_27_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_27_x_q;
    assign out_o_readdata_28_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_28_x_q;
    assign out_o_readdata_29_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_29_x_q;
    assign out_o_readdata_30_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_30_x_q;
    assign out_o_readdata_31_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_31_x_q;
    assign out_o_readdata_32_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_32_x_q;
    assign out_o_readdata_33_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_33_x_q;
    assign out_o_readdata_34_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_34_x_q;
    assign out_o_readdata_35_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_35_x_q;
    assign out_o_readdata_36_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_36_x_q;
    assign out_o_readdata_37_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_37_x_q;
    assign out_o_readdata_38_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_38_x_q;
    assign out_o_readdata_39_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_39_x_q;
    assign out_o_readdata_40_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_40_x_q;
    assign out_o_readdata_41_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_41_x_q;
    assign out_o_readdata_42_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_42_x_q;
    assign out_o_readdata_43_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_43_x_q;
    assign out_o_readdata_44_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_44_x_q;
    assign out_o_readdata_45_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_45_x_q;
    assign out_o_readdata_46_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_46_x_q;
    assign out_o_readdata_47_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_47_x_q;
    assign out_o_readdata_48_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_48_x_q;
    assign out_o_readdata_49_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_49_x_q;
    assign out_o_readdata_50_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_50_x_q;
    assign out_o_readdata_51_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_51_x_q;
    assign out_o_readdata_52_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_52_x_q;
    assign out_o_readdata_53_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_53_x_q;
    assign out_o_readdata_54_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_54_x_q;
    assign out_o_readdata_55_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_55_x_q;
    assign out_o_readdata_56_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_56_x_q;
    assign out_o_readdata_57_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_57_x_q;
    assign out_o_readdata_58_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_58_x_q;
    assign out_o_readdata_59_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_59_x_q;
    assign out_o_readdata_60_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_60_x_q;
    assign out_o_readdata_61_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_61_x_q;
    assign out_o_readdata_62_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_62_x_q;
    assign out_o_readdata_63_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_63_x_q;
    assign out_o_readdata_64_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_64_x_q;
    assign out_o_readdata_65_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_65_x_q;
    assign out_o_readdata_66_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_66_x_q;
    assign out_o_readdata_67_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_67_x_q;
    assign out_o_readdata_68_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_68_x_q;
    assign out_o_readdata_69_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_69_x_q;
    assign out_o_readdata_70_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_70_x_q;
    assign out_o_readdata_71_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_71_x_q;
    assign out_o_readdata_72_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_72_x_q;
    assign out_o_readdata_73_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_73_x_q;
    assign out_o_readdata_74_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_74_x_q;
    assign out_o_readdata_75_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_75_x_q;
    assign out_o_readdata_76_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_76_x_q;
    assign out_o_readdata_77_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_77_x_q;
    assign out_o_readdata_78_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_78_x_q;
    assign out_o_readdata_79_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_79_x_q;
    assign out_o_readdata_80_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_80_x_q;
    assign out_o_readdata_81_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_81_x_q;
    assign out_o_readdata_82_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_82_x_q;
    assign out_o_readdata_83_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_83_x_q;
    assign out_o_readdata_84_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_84_x_q;
    assign out_o_readdata_85_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_85_x_q;
    assign out_o_readdata_86_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_86_x_q;
    assign out_o_readdata_87_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_87_x_q;
    assign out_o_readdata_88_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_88_x_q;
    assign out_o_readdata_89_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_89_x_q;
    assign out_o_readdata_90_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_90_x_q;
    assign out_o_readdata_91_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_91_x_q;
    assign out_o_readdata_92_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_92_x_q;
    assign out_o_readdata_93_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_93_x_q;
    assign out_o_readdata_94_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_94_x_q;
    assign out_o_readdata_95_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_95_x_q;
    assign out_o_readdata_96_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_96_x_q;
    assign out_o_readdata_97_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_97_x_q;
    assign out_o_readdata_98_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_98_x_q;
    assign out_o_readdata_99_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_99_x_q;
    assign out_o_readdata_100_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_100_x_q;
    assign out_o_readdata_101_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_101_x_q;
    assign out_o_readdata_102_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_102_x_q;
    assign out_o_readdata_103_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_103_x_q;
    assign out_o_readdata_104_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_104_x_q;
    assign out_o_readdata_105_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_105_x_q;
    assign out_o_readdata_106_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_106_x_q;
    assign out_o_readdata_107_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_107_x_q;
    assign out_o_readdata_108_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_108_x_q;
    assign out_o_readdata_109_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_109_x_q;
    assign out_o_readdata_110_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_110_x_q;
    assign out_o_readdata_111_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_111_x_q;
    assign out_o_readdata_112_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_112_x_q;
    assign out_o_readdata_113_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_113_x_q;
    assign out_o_readdata_114_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_114_x_q;
    assign out_o_readdata_115_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_115_x_q;
    assign out_o_readdata_116_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_116_x_q;
    assign out_o_readdata_117_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_117_x_q;
    assign out_o_readdata_118_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_118_x_q;
    assign out_o_readdata_119_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_119_x_q;
    assign out_o_readdata_120_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_120_x_q;
    assign out_o_readdata_121_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_121_x_q;
    assign out_o_readdata_122_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_122_x_q;
    assign out_o_readdata_123_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_123_x_q;
    assign out_o_readdata_124_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_124_x_q;
    assign out_o_readdata_125_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_125_x_q;
    assign out_o_readdata_126_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_126_x_q;
    assign out_o_readdata_127_tpl = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_data_reg_127_x_q;
    assign out_o_valid = readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_readdata_reg_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_valid_reg_x_q;

    // ext_sig_sync_out(GPOUT,146)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_address;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_enable;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_read;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_write;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_writedata;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_byteenable;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_avm_burstcount;

    // sync_out(GPOUT,406)@6
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight11_o_stall;

endmodule
