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

// SystemVerilog created from cnn_top_i_iowr_bl_acl_c_storage_pipe_v_p0000ght151_load_weight10
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_iowr_bl_acl_c_storage_pipe_v_p0000ght151_load_weight10 (
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_exe2347,
    input wire [7:0] in_i_data_0_tpl,
    input wire [7:0] in_i_data_1_tpl,
    input wire [7:0] in_i_data_2_tpl,
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
    input wire [0:0] in_i_valid,
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    output wire [1023:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] dupName_0_const_0_x_q;
    wire [1023:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1001_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1006_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1008_q;
    wire [7:0] dsdk_ip_adapt_bitjoin101_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1010_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1015_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1017_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1019_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1024_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1026_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1028_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1036_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1038_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1040_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1045_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1047_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1049_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1054_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1056_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1058_q;
    wire [7:0] dsdk_ip_adapt_bitjoin106_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1063_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1065_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1067_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1072_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1074_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1076_q;
    wire [7:0] dsdk_ip_adapt_bitjoin108_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1081_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1083_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1085_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1090_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1092_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1094_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1099_q;
    wire [7:0] dsdk_ip_adapt_bitjoin11_q;
    wire [7:0] dsdk_ip_adapt_bitjoin110_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1101_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1103_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1108_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1110_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1112_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1117_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1119_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1121_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1126_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1128_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1130_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1135_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1137_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1139_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1144_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1146_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1148_q;
    wire [7:0] dsdk_ip_adapt_bitjoin115_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1153_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1155_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1157_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1162_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1164_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1166_q;
    wire [7:0] dsdk_ip_adapt_bitjoin117_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1171_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1173_q;
    wire [7:0] dsdk_ip_adapt_bitjoin1175_q;
    wire [7:0] dsdk_ip_adapt_bitjoin119_q;
    wire [7:0] dsdk_ip_adapt_bitjoin124_q;
    wire [7:0] dsdk_ip_adapt_bitjoin126_q;
    wire [7:0] dsdk_ip_adapt_bitjoin128_q;
    wire [7:0] dsdk_ip_adapt_bitjoin133_q;
    wire [7:0] dsdk_ip_adapt_bitjoin135_q;
    wire [7:0] dsdk_ip_adapt_bitjoin137_q;
    wire [7:0] dsdk_ip_adapt_bitjoin142_q;
    wire [7:0] dsdk_ip_adapt_bitjoin144_q;
    wire [7:0] dsdk_ip_adapt_bitjoin146_q;
    wire [7:0] dsdk_ip_adapt_bitjoin154_q;
    wire [7:0] dsdk_ip_adapt_bitjoin156_q;
    wire [7:0] dsdk_ip_adapt_bitjoin158_q;
    wire [7:0] dsdk_ip_adapt_bitjoin16_q;
    wire [7:0] dsdk_ip_adapt_bitjoin163_q;
    wire [7:0] dsdk_ip_adapt_bitjoin165_q;
    wire [7:0] dsdk_ip_adapt_bitjoin167_q;
    wire [7:0] dsdk_ip_adapt_bitjoin172_q;
    wire [7:0] dsdk_ip_adapt_bitjoin174_q;
    wire [7:0] dsdk_ip_adapt_bitjoin176_q;
    wire [7:0] dsdk_ip_adapt_bitjoin18_q;
    wire [7:0] dsdk_ip_adapt_bitjoin181_q;
    wire [7:0] dsdk_ip_adapt_bitjoin183_q;
    wire [7:0] dsdk_ip_adapt_bitjoin185_q;
    wire [7:0] dsdk_ip_adapt_bitjoin190_q;
    wire [7:0] dsdk_ip_adapt_bitjoin192_q;
    wire [7:0] dsdk_ip_adapt_bitjoin194_q;
    wire [7:0] dsdk_ip_adapt_bitjoin199_q;
    wire [7:0] dsdk_ip_adapt_bitjoin20_q;
    wire [7:0] dsdk_ip_adapt_bitjoin201_q;
    wire [7:0] dsdk_ip_adapt_bitjoin203_q;
    wire [7:0] dsdk_ip_adapt_bitjoin208_q;
    wire [7:0] dsdk_ip_adapt_bitjoin210_q;
    wire [7:0] dsdk_ip_adapt_bitjoin212_q;
    wire [7:0] dsdk_ip_adapt_bitjoin217_q;
    wire [7:0] dsdk_ip_adapt_bitjoin219_q;
    wire [7:0] dsdk_ip_adapt_bitjoin221_q;
    wire [7:0] dsdk_ip_adapt_bitjoin226_q;
    wire [7:0] dsdk_ip_adapt_bitjoin228_q;
    wire [7:0] dsdk_ip_adapt_bitjoin230_q;
    wire [7:0] dsdk_ip_adapt_bitjoin235_q;
    wire [7:0] dsdk_ip_adapt_bitjoin237_q;
    wire [7:0] dsdk_ip_adapt_bitjoin239_q;
    wire [7:0] dsdk_ip_adapt_bitjoin244_q;
    wire [7:0] dsdk_ip_adapt_bitjoin246_q;
    wire [7:0] dsdk_ip_adapt_bitjoin248_q;
    wire [7:0] dsdk_ip_adapt_bitjoin25_q;
    wire [7:0] dsdk_ip_adapt_bitjoin253_q;
    wire [7:0] dsdk_ip_adapt_bitjoin255_q;
    wire [7:0] dsdk_ip_adapt_bitjoin257_q;
    wire [7:0] dsdk_ip_adapt_bitjoin262_q;
    wire [7:0] dsdk_ip_adapt_bitjoin264_q;
    wire [7:0] dsdk_ip_adapt_bitjoin266_q;
    wire [7:0] dsdk_ip_adapt_bitjoin27_q;
    wire [7:0] dsdk_ip_adapt_bitjoin271_q;
    wire [7:0] dsdk_ip_adapt_bitjoin273_q;
    wire [7:0] dsdk_ip_adapt_bitjoin275_q;
    wire [7:0] dsdk_ip_adapt_bitjoin280_q;
    wire [7:0] dsdk_ip_adapt_bitjoin282_q;
    wire [7:0] dsdk_ip_adapt_bitjoin284_q;
    wire [7:0] dsdk_ip_adapt_bitjoin289_q;
    wire [7:0] dsdk_ip_adapt_bitjoin29_q;
    wire [7:0] dsdk_ip_adapt_bitjoin291_q;
    wire [7:0] dsdk_ip_adapt_bitjoin293_q;
    wire [7:0] dsdk_ip_adapt_bitjoin301_q;
    wire [7:0] dsdk_ip_adapt_bitjoin303_q;
    wire [7:0] dsdk_ip_adapt_bitjoin305_q;
    wire [7:0] dsdk_ip_adapt_bitjoin310_q;
    wire [7:0] dsdk_ip_adapt_bitjoin312_q;
    wire [7:0] dsdk_ip_adapt_bitjoin314_q;
    wire [7:0] dsdk_ip_adapt_bitjoin319_q;
    wire [7:0] dsdk_ip_adapt_bitjoin321_q;
    wire [7:0] dsdk_ip_adapt_bitjoin323_q;
    wire [7:0] dsdk_ip_adapt_bitjoin328_q;
    wire [7:0] dsdk_ip_adapt_bitjoin330_q;
    wire [7:0] dsdk_ip_adapt_bitjoin332_q;
    wire [7:0] dsdk_ip_adapt_bitjoin337_q;
    wire [7:0] dsdk_ip_adapt_bitjoin339_q;
    wire [7:0] dsdk_ip_adapt_bitjoin34_q;
    wire [7:0] dsdk_ip_adapt_bitjoin341_q;
    wire [7:0] dsdk_ip_adapt_bitjoin346_q;
    wire [7:0] dsdk_ip_adapt_bitjoin348_q;
    wire [7:0] dsdk_ip_adapt_bitjoin350_q;
    wire [7:0] dsdk_ip_adapt_bitjoin355_q;
    wire [7:0] dsdk_ip_adapt_bitjoin357_q;
    wire [7:0] dsdk_ip_adapt_bitjoin359_q;
    wire [7:0] dsdk_ip_adapt_bitjoin36_q;
    wire [7:0] dsdk_ip_adapt_bitjoin364_q;
    wire [7:0] dsdk_ip_adapt_bitjoin366_q;
    wire [7:0] dsdk_ip_adapt_bitjoin368_q;
    wire [7:0] dsdk_ip_adapt_bitjoin373_q;
    wire [7:0] dsdk_ip_adapt_bitjoin375_q;
    wire [7:0] dsdk_ip_adapt_bitjoin377_q;
    wire [7:0] dsdk_ip_adapt_bitjoin38_q;
    wire [7:0] dsdk_ip_adapt_bitjoin382_q;
    wire [7:0] dsdk_ip_adapt_bitjoin384_q;
    wire [7:0] dsdk_ip_adapt_bitjoin386_q;
    wire [7:0] dsdk_ip_adapt_bitjoin391_q;
    wire [7:0] dsdk_ip_adapt_bitjoin393_q;
    wire [7:0] dsdk_ip_adapt_bitjoin395_q;
    wire [7:0] dsdk_ip_adapt_bitjoin400_q;
    wire [7:0] dsdk_ip_adapt_bitjoin402_q;
    wire [7:0] dsdk_ip_adapt_bitjoin404_q;
    wire [7:0] dsdk_ip_adapt_bitjoin409_q;
    wire [7:0] dsdk_ip_adapt_bitjoin411_q;
    wire [7:0] dsdk_ip_adapt_bitjoin413_q;
    wire [7:0] dsdk_ip_adapt_bitjoin418_q;
    wire [7:0] dsdk_ip_adapt_bitjoin420_q;
    wire [7:0] dsdk_ip_adapt_bitjoin422_q;
    wire [7:0] dsdk_ip_adapt_bitjoin427_q;
    wire [7:0] dsdk_ip_adapt_bitjoin429_q;
    wire [7:0] dsdk_ip_adapt_bitjoin43_q;
    wire [7:0] dsdk_ip_adapt_bitjoin431_q;
    wire [7:0] dsdk_ip_adapt_bitjoin436_q;
    wire [7:0] dsdk_ip_adapt_bitjoin438_q;
    wire [7:0] dsdk_ip_adapt_bitjoin440_q;
    wire [7:0] dsdk_ip_adapt_bitjoin448_q;
    wire [7:0] dsdk_ip_adapt_bitjoin45_q;
    wire [7:0] dsdk_ip_adapt_bitjoin450_q;
    wire [7:0] dsdk_ip_adapt_bitjoin452_q;
    wire [7:0] dsdk_ip_adapt_bitjoin457_q;
    wire [7:0] dsdk_ip_adapt_bitjoin459_q;
    wire [7:0] dsdk_ip_adapt_bitjoin461_q;
    wire [7:0] dsdk_ip_adapt_bitjoin466_q;
    wire [7:0] dsdk_ip_adapt_bitjoin468_q;
    wire [7:0] dsdk_ip_adapt_bitjoin47_q;
    wire [7:0] dsdk_ip_adapt_bitjoin470_q;
    wire [7:0] dsdk_ip_adapt_bitjoin475_q;
    wire [7:0] dsdk_ip_adapt_bitjoin477_q;
    wire [7:0] dsdk_ip_adapt_bitjoin479_q;
    wire [7:0] dsdk_ip_adapt_bitjoin484_q;
    wire [7:0] dsdk_ip_adapt_bitjoin486_q;
    wire [7:0] dsdk_ip_adapt_bitjoin488_q;
    wire [7:0] dsdk_ip_adapt_bitjoin493_q;
    wire [7:0] dsdk_ip_adapt_bitjoin495_q;
    wire [7:0] dsdk_ip_adapt_bitjoin497_q;
    wire [7:0] dsdk_ip_adapt_bitjoin502_q;
    wire [7:0] dsdk_ip_adapt_bitjoin504_q;
    wire [7:0] dsdk_ip_adapt_bitjoin506_q;
    wire [7:0] dsdk_ip_adapt_bitjoin511_q;
    wire [7:0] dsdk_ip_adapt_bitjoin513_q;
    wire [7:0] dsdk_ip_adapt_bitjoin515_q;
    wire [7:0] dsdk_ip_adapt_bitjoin52_q;
    wire [7:0] dsdk_ip_adapt_bitjoin520_q;
    wire [7:0] dsdk_ip_adapt_bitjoin522_q;
    wire [7:0] dsdk_ip_adapt_bitjoin524_q;
    wire [7:0] dsdk_ip_adapt_bitjoin529_q;
    wire [7:0] dsdk_ip_adapt_bitjoin531_q;
    wire [7:0] dsdk_ip_adapt_bitjoin533_q;
    wire [7:0] dsdk_ip_adapt_bitjoin538_q;
    wire [7:0] dsdk_ip_adapt_bitjoin54_q;
    wire [7:0] dsdk_ip_adapt_bitjoin540_q;
    wire [7:0] dsdk_ip_adapt_bitjoin542_q;
    wire [7:0] dsdk_ip_adapt_bitjoin547_q;
    wire [7:0] dsdk_ip_adapt_bitjoin549_q;
    wire [7:0] dsdk_ip_adapt_bitjoin551_q;
    wire [7:0] dsdk_ip_adapt_bitjoin556_q;
    wire [7:0] dsdk_ip_adapt_bitjoin558_q;
    wire [7:0] dsdk_ip_adapt_bitjoin56_q;
    wire [7:0] dsdk_ip_adapt_bitjoin560_q;
    wire [7:0] dsdk_ip_adapt_bitjoin565_q;
    wire [7:0] dsdk_ip_adapt_bitjoin567_q;
    wire [7:0] dsdk_ip_adapt_bitjoin569_q;
    wire [7:0] dsdk_ip_adapt_bitjoin574_q;
    wire [7:0] dsdk_ip_adapt_bitjoin576_q;
    wire [7:0] dsdk_ip_adapt_bitjoin578_q;
    wire [7:0] dsdk_ip_adapt_bitjoin583_q;
    wire [7:0] dsdk_ip_adapt_bitjoin585_q;
    wire [7:0] dsdk_ip_adapt_bitjoin587_q;
    wire [7:0] dsdk_ip_adapt_bitjoin595_q;
    wire [7:0] dsdk_ip_adapt_bitjoin597_q;
    wire [7:0] dsdk_ip_adapt_bitjoin599_q;
    wire [7:0] dsdk_ip_adapt_bitjoin604_q;
    wire [7:0] dsdk_ip_adapt_bitjoin606_q;
    wire [7:0] dsdk_ip_adapt_bitjoin608_q;
    wire [7:0] dsdk_ip_adapt_bitjoin61_q;
    wire [7:0] dsdk_ip_adapt_bitjoin613_q;
    wire [7:0] dsdk_ip_adapt_bitjoin615_q;
    wire [7:0] dsdk_ip_adapt_bitjoin617_q;
    wire [7:0] dsdk_ip_adapt_bitjoin622_q;
    wire [7:0] dsdk_ip_adapt_bitjoin624_q;
    wire [7:0] dsdk_ip_adapt_bitjoin626_q;
    wire [7:0] dsdk_ip_adapt_bitjoin63_q;
    wire [7:0] dsdk_ip_adapt_bitjoin631_q;
    wire [7:0] dsdk_ip_adapt_bitjoin633_q;
    wire [7:0] dsdk_ip_adapt_bitjoin635_q;
    wire [7:0] dsdk_ip_adapt_bitjoin640_q;
    wire [7:0] dsdk_ip_adapt_bitjoin642_q;
    wire [7:0] dsdk_ip_adapt_bitjoin644_q;
    wire [7:0] dsdk_ip_adapt_bitjoin649_q;
    wire [7:0] dsdk_ip_adapt_bitjoin65_q;
    wire [7:0] dsdk_ip_adapt_bitjoin651_q;
    wire [7:0] dsdk_ip_adapt_bitjoin653_q;
    wire [7:0] dsdk_ip_adapt_bitjoin658_q;
    wire [7:0] dsdk_ip_adapt_bitjoin660_q;
    wire [7:0] dsdk_ip_adapt_bitjoin662_q;
    wire [7:0] dsdk_ip_adapt_bitjoin667_q;
    wire [7:0] dsdk_ip_adapt_bitjoin669_q;
    wire [7:0] dsdk_ip_adapt_bitjoin671_q;
    wire [7:0] dsdk_ip_adapt_bitjoin676_q;
    wire [7:0] dsdk_ip_adapt_bitjoin678_q;
    wire [7:0] dsdk_ip_adapt_bitjoin680_q;
    wire [7:0] dsdk_ip_adapt_bitjoin685_q;
    wire [7:0] dsdk_ip_adapt_bitjoin687_q;
    wire [7:0] dsdk_ip_adapt_bitjoin689_q;
    wire [7:0] dsdk_ip_adapt_bitjoin694_q;
    wire [7:0] dsdk_ip_adapt_bitjoin696_q;
    wire [7:0] dsdk_ip_adapt_bitjoin698_q;
    wire [7:0] dsdk_ip_adapt_bitjoin7_q;
    wire [7:0] dsdk_ip_adapt_bitjoin70_q;
    wire [7:0] dsdk_ip_adapt_bitjoin703_q;
    wire [7:0] dsdk_ip_adapt_bitjoin705_q;
    wire [7:0] dsdk_ip_adapt_bitjoin707_q;
    wire [7:0] dsdk_ip_adapt_bitjoin712_q;
    wire [7:0] dsdk_ip_adapt_bitjoin714_q;
    wire [7:0] dsdk_ip_adapt_bitjoin716_q;
    wire [7:0] dsdk_ip_adapt_bitjoin72_q;
    wire [7:0] dsdk_ip_adapt_bitjoin721_q;
    wire [7:0] dsdk_ip_adapt_bitjoin723_q;
    wire [7:0] dsdk_ip_adapt_bitjoin725_q;
    wire [7:0] dsdk_ip_adapt_bitjoin730_q;
    wire [7:0] dsdk_ip_adapt_bitjoin732_q;
    wire [7:0] dsdk_ip_adapt_bitjoin734_q;
    wire [7:0] dsdk_ip_adapt_bitjoin74_q;
    wire [7:0] dsdk_ip_adapt_bitjoin742_q;
    wire [7:0] dsdk_ip_adapt_bitjoin744_q;
    wire [7:0] dsdk_ip_adapt_bitjoin746_q;
    wire [7:0] dsdk_ip_adapt_bitjoin751_q;
    wire [7:0] dsdk_ip_adapt_bitjoin753_q;
    wire [7:0] dsdk_ip_adapt_bitjoin755_q;
    wire [7:0] dsdk_ip_adapt_bitjoin760_q;
    wire [7:0] dsdk_ip_adapt_bitjoin762_q;
    wire [7:0] dsdk_ip_adapt_bitjoin764_q;
    wire [7:0] dsdk_ip_adapt_bitjoin769_q;
    wire [7:0] dsdk_ip_adapt_bitjoin771_q;
    wire [7:0] dsdk_ip_adapt_bitjoin773_q;
    wire [7:0] dsdk_ip_adapt_bitjoin778_q;
    wire [7:0] dsdk_ip_adapt_bitjoin780_q;
    wire [7:0] dsdk_ip_adapt_bitjoin782_q;
    wire [7:0] dsdk_ip_adapt_bitjoin787_q;
    wire [7:0] dsdk_ip_adapt_bitjoin789_q;
    wire [7:0] dsdk_ip_adapt_bitjoin79_q;
    wire [7:0] dsdk_ip_adapt_bitjoin791_q;
    wire [7:0] dsdk_ip_adapt_bitjoin796_q;
    wire [7:0] dsdk_ip_adapt_bitjoin798_q;
    wire [7:0] dsdk_ip_adapt_bitjoin800_q;
    wire [7:0] dsdk_ip_adapt_bitjoin805_q;
    wire [7:0] dsdk_ip_adapt_bitjoin807_q;
    wire [7:0] dsdk_ip_adapt_bitjoin809_q;
    wire [7:0] dsdk_ip_adapt_bitjoin81_q;
    wire [7:0] dsdk_ip_adapt_bitjoin814_q;
    wire [7:0] dsdk_ip_adapt_bitjoin816_q;
    wire [7:0] dsdk_ip_adapt_bitjoin818_q;
    wire [7:0] dsdk_ip_adapt_bitjoin823_q;
    wire [7:0] dsdk_ip_adapt_bitjoin825_q;
    wire [7:0] dsdk_ip_adapt_bitjoin827_q;
    wire [7:0] dsdk_ip_adapt_bitjoin83_q;
    wire [7:0] dsdk_ip_adapt_bitjoin832_q;
    wire [7:0] dsdk_ip_adapt_bitjoin834_q;
    wire [7:0] dsdk_ip_adapt_bitjoin836_q;
    wire [7:0] dsdk_ip_adapt_bitjoin841_q;
    wire [7:0] dsdk_ip_adapt_bitjoin843_q;
    wire [7:0] dsdk_ip_adapt_bitjoin845_q;
    wire [7:0] dsdk_ip_adapt_bitjoin850_q;
    wire [7:0] dsdk_ip_adapt_bitjoin852_q;
    wire [7:0] dsdk_ip_adapt_bitjoin854_q;
    wire [7:0] dsdk_ip_adapt_bitjoin859_q;
    wire [7:0] dsdk_ip_adapt_bitjoin861_q;
    wire [7:0] dsdk_ip_adapt_bitjoin863_q;
    wire [7:0] dsdk_ip_adapt_bitjoin868_q;
    wire [7:0] dsdk_ip_adapt_bitjoin870_q;
    wire [7:0] dsdk_ip_adapt_bitjoin872_q;
    wire [7:0] dsdk_ip_adapt_bitjoin877_q;
    wire [7:0] dsdk_ip_adapt_bitjoin879_q;
    wire [7:0] dsdk_ip_adapt_bitjoin88_q;
    wire [7:0] dsdk_ip_adapt_bitjoin881_q;
    wire [7:0] dsdk_ip_adapt_bitjoin889_q;
    wire [7:0] dsdk_ip_adapt_bitjoin891_q;
    wire [7:0] dsdk_ip_adapt_bitjoin893_q;
    wire [7:0] dsdk_ip_adapt_bitjoin898_q;
    wire [7:0] dsdk_ip_adapt_bitjoin9_q;
    wire [7:0] dsdk_ip_adapt_bitjoin90_q;
    wire [7:0] dsdk_ip_adapt_bitjoin900_q;
    wire [7:0] dsdk_ip_adapt_bitjoin902_q;
    wire [7:0] dsdk_ip_adapt_bitjoin907_q;
    wire [7:0] dsdk_ip_adapt_bitjoin909_q;
    wire [7:0] dsdk_ip_adapt_bitjoin911_q;
    wire [7:0] dsdk_ip_adapt_bitjoin916_q;
    wire [7:0] dsdk_ip_adapt_bitjoin918_q;
    wire [7:0] dsdk_ip_adapt_bitjoin92_q;
    wire [7:0] dsdk_ip_adapt_bitjoin920_q;
    wire [7:0] dsdk_ip_adapt_bitjoin925_q;
    wire [7:0] dsdk_ip_adapt_bitjoin927_q;
    wire [7:0] dsdk_ip_adapt_bitjoin929_q;
    wire [7:0] dsdk_ip_adapt_bitjoin934_q;
    wire [7:0] dsdk_ip_adapt_bitjoin936_q;
    wire [7:0] dsdk_ip_adapt_bitjoin938_q;
    wire [7:0] dsdk_ip_adapt_bitjoin943_q;
    wire [7:0] dsdk_ip_adapt_bitjoin945_q;
    wire [7:0] dsdk_ip_adapt_bitjoin947_q;
    wire [7:0] dsdk_ip_adapt_bitjoin952_q;
    wire [7:0] dsdk_ip_adapt_bitjoin954_q;
    wire [7:0] dsdk_ip_adapt_bitjoin956_q;
    wire [7:0] dsdk_ip_adapt_bitjoin961_q;
    wire [7:0] dsdk_ip_adapt_bitjoin963_q;
    wire [7:0] dsdk_ip_adapt_bitjoin965_q;
    wire [7:0] dsdk_ip_adapt_bitjoin97_q;
    wire [7:0] dsdk_ip_adapt_bitjoin970_q;
    wire [7:0] dsdk_ip_adapt_bitjoin972_q;
    wire [7:0] dsdk_ip_adapt_bitjoin974_q;
    wire [7:0] dsdk_ip_adapt_bitjoin979_q;
    wire [7:0] dsdk_ip_adapt_bitjoin981_q;
    wire [7:0] dsdk_ip_adapt_bitjoin983_q;
    wire [7:0] dsdk_ip_adapt_bitjoin988_q;
    wire [7:0] dsdk_ip_adapt_bitjoin99_q;
    wire [7:0] dsdk_ip_adapt_bitjoin990_q;
    wire [7:0] dsdk_ip_adapt_bitjoin992_q;
    wire [7:0] dsdk_ip_adapt_bitjoin997_q;
    wire [7:0] dsdk_ip_adapt_bitjoin999_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin1034_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin152_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin299_q;
    wire [1023:0] dsdk_ip_array_adapt_bitjoin3_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin446_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin5_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin593_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin740_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin887_q;
    wire [1023:0] iowr_i_data;
    wire [0:0] iowr_i_endofpacket;
    wire iowr_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_i_fifoready;
    wire iowr_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_i_fifosize;
    wire [31:0] iowr_i_packetempty;
    wire [0:0] iowr_i_predicate;
    wire iowr_i_predicate_bitsignaltemp;
    wire [0:0] iowr_i_stall;
    wire iowr_i_stall_bitsignaltemp;
    wire [0:0] iowr_i_startofpacket;
    wire iowr_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_i_valid;
    wire iowr_i_valid_bitsignaltemp;
    wire [0:0] iowr_o_ack;
    wire iowr_o_ack_bitsignaltemp;
    wire [1023:0] iowr_o_fifodata;
    wire [0:0] iowr_o_fifoempty;
    wire [0:0] iowr_o_fifovalid;
    wire iowr_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_o_stall;
    wire iowr_o_stall_bitsignaltemp;
    wire [0:0] iowr_o_valid;
    wire iowr_o_valid_bitsignaltemp;
    wire [31:0] iowr_profile_total_fifo_size_incr;


    // dupName_0_const_0_x(CONSTANT,2)
    assign dupName_0_const_0_x_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // dsdk_ip_adapt_bitjoin1175(BITJOIN,466)
    assign dsdk_ip_adapt_bitjoin1175_q = in_i_data_127_tpl;

    // dsdk_ip_adapt_bitjoin1173(BITJOIN,465)
    assign dsdk_ip_adapt_bitjoin1173_q = dsdk_ip_adapt_bitjoin1175_q;

    // dsdk_ip_adapt_bitjoin1171(BITJOIN,464)
    assign dsdk_ip_adapt_bitjoin1171_q = dsdk_ip_adapt_bitjoin1173_q;

    // dsdk_ip_adapt_bitjoin1166(BITJOIN,462)
    assign dsdk_ip_adapt_bitjoin1166_q = in_i_data_126_tpl;

    // dsdk_ip_adapt_bitjoin1164(BITJOIN,461)
    assign dsdk_ip_adapt_bitjoin1164_q = dsdk_ip_adapt_bitjoin1166_q;

    // dsdk_ip_adapt_bitjoin1162(BITJOIN,460)
    assign dsdk_ip_adapt_bitjoin1162_q = dsdk_ip_adapt_bitjoin1164_q;

    // dsdk_ip_adapt_bitjoin1157(BITJOIN,459)
    assign dsdk_ip_adapt_bitjoin1157_q = in_i_data_125_tpl;

    // dsdk_ip_adapt_bitjoin1155(BITJOIN,458)
    assign dsdk_ip_adapt_bitjoin1155_q = dsdk_ip_adapt_bitjoin1157_q;

    // dsdk_ip_adapt_bitjoin1153(BITJOIN,457)
    assign dsdk_ip_adapt_bitjoin1153_q = dsdk_ip_adapt_bitjoin1155_q;

    // dsdk_ip_adapt_bitjoin1148(BITJOIN,455)
    assign dsdk_ip_adapt_bitjoin1148_q = in_i_data_124_tpl;

    // dsdk_ip_adapt_bitjoin1146(BITJOIN,454)
    assign dsdk_ip_adapt_bitjoin1146_q = dsdk_ip_adapt_bitjoin1148_q;

    // dsdk_ip_adapt_bitjoin1144(BITJOIN,453)
    assign dsdk_ip_adapt_bitjoin1144_q = dsdk_ip_adapt_bitjoin1146_q;

    // dsdk_ip_adapt_bitjoin1139(BITJOIN,452)
    assign dsdk_ip_adapt_bitjoin1139_q = in_i_data_123_tpl;

    // dsdk_ip_adapt_bitjoin1137(BITJOIN,451)
    assign dsdk_ip_adapt_bitjoin1137_q = dsdk_ip_adapt_bitjoin1139_q;

    // dsdk_ip_adapt_bitjoin1135(BITJOIN,450)
    assign dsdk_ip_adapt_bitjoin1135_q = dsdk_ip_adapt_bitjoin1137_q;

    // dsdk_ip_adapt_bitjoin1130(BITJOIN,449)
    assign dsdk_ip_adapt_bitjoin1130_q = in_i_data_122_tpl;

    // dsdk_ip_adapt_bitjoin1128(BITJOIN,448)
    assign dsdk_ip_adapt_bitjoin1128_q = dsdk_ip_adapt_bitjoin1130_q;

    // dsdk_ip_adapt_bitjoin1126(BITJOIN,447)
    assign dsdk_ip_adapt_bitjoin1126_q = dsdk_ip_adapt_bitjoin1128_q;

    // dsdk_ip_adapt_bitjoin1121(BITJOIN,446)
    assign dsdk_ip_adapt_bitjoin1121_q = in_i_data_121_tpl;

    // dsdk_ip_adapt_bitjoin1119(BITJOIN,445)
    assign dsdk_ip_adapt_bitjoin1119_q = dsdk_ip_adapt_bitjoin1121_q;

    // dsdk_ip_adapt_bitjoin1117(BITJOIN,444)
    assign dsdk_ip_adapt_bitjoin1117_q = dsdk_ip_adapt_bitjoin1119_q;

    // dsdk_ip_adapt_bitjoin1112(BITJOIN,443)
    assign dsdk_ip_adapt_bitjoin1112_q = in_i_data_120_tpl;

    // dsdk_ip_adapt_bitjoin1110(BITJOIN,442)
    assign dsdk_ip_adapt_bitjoin1110_q = dsdk_ip_adapt_bitjoin1112_q;

    // dsdk_ip_adapt_bitjoin1108(BITJOIN,441)
    assign dsdk_ip_adapt_bitjoin1108_q = dsdk_ip_adapt_bitjoin1110_q;

    // dsdk_ip_adapt_bitjoin1103(BITJOIN,440)
    assign dsdk_ip_adapt_bitjoin1103_q = in_i_data_119_tpl;

    // dsdk_ip_adapt_bitjoin1101(BITJOIN,439)
    assign dsdk_ip_adapt_bitjoin1101_q = dsdk_ip_adapt_bitjoin1103_q;

    // dsdk_ip_adapt_bitjoin1099(BITJOIN,436)
    assign dsdk_ip_adapt_bitjoin1099_q = dsdk_ip_adapt_bitjoin1101_q;

    // dsdk_ip_adapt_bitjoin1094(BITJOIN,435)
    assign dsdk_ip_adapt_bitjoin1094_q = in_i_data_118_tpl;

    // dsdk_ip_adapt_bitjoin1092(BITJOIN,434)
    assign dsdk_ip_adapt_bitjoin1092_q = dsdk_ip_adapt_bitjoin1094_q;

    // dsdk_ip_adapt_bitjoin1090(BITJOIN,433)
    assign dsdk_ip_adapt_bitjoin1090_q = dsdk_ip_adapt_bitjoin1092_q;

    // dsdk_ip_adapt_bitjoin1085(BITJOIN,432)
    assign dsdk_ip_adapt_bitjoin1085_q = in_i_data_117_tpl;

    // dsdk_ip_adapt_bitjoin1083(BITJOIN,431)
    assign dsdk_ip_adapt_bitjoin1083_q = dsdk_ip_adapt_bitjoin1085_q;

    // dsdk_ip_adapt_bitjoin1081(BITJOIN,430)
    assign dsdk_ip_adapt_bitjoin1081_q = dsdk_ip_adapt_bitjoin1083_q;

    // dsdk_ip_adapt_bitjoin1076(BITJOIN,428)
    assign dsdk_ip_adapt_bitjoin1076_q = in_i_data_116_tpl;

    // dsdk_ip_adapt_bitjoin1074(BITJOIN,427)
    assign dsdk_ip_adapt_bitjoin1074_q = dsdk_ip_adapt_bitjoin1076_q;

    // dsdk_ip_adapt_bitjoin1072(BITJOIN,426)
    assign dsdk_ip_adapt_bitjoin1072_q = dsdk_ip_adapt_bitjoin1074_q;

    // dsdk_ip_adapt_bitjoin1067(BITJOIN,425)
    assign dsdk_ip_adapt_bitjoin1067_q = in_i_data_115_tpl;

    // dsdk_ip_adapt_bitjoin1065(BITJOIN,424)
    assign dsdk_ip_adapt_bitjoin1065_q = dsdk_ip_adapt_bitjoin1067_q;

    // dsdk_ip_adapt_bitjoin1063(BITJOIN,423)
    assign dsdk_ip_adapt_bitjoin1063_q = dsdk_ip_adapt_bitjoin1065_q;

    // dsdk_ip_adapt_bitjoin1058(BITJOIN,421)
    assign dsdk_ip_adapt_bitjoin1058_q = in_i_data_114_tpl;

    // dsdk_ip_adapt_bitjoin1056(BITJOIN,420)
    assign dsdk_ip_adapt_bitjoin1056_q = dsdk_ip_adapt_bitjoin1058_q;

    // dsdk_ip_adapt_bitjoin1054(BITJOIN,419)
    assign dsdk_ip_adapt_bitjoin1054_q = dsdk_ip_adapt_bitjoin1056_q;

    // dsdk_ip_adapt_bitjoin1049(BITJOIN,418)
    assign dsdk_ip_adapt_bitjoin1049_q = in_i_data_113_tpl;

    // dsdk_ip_adapt_bitjoin1047(BITJOIN,417)
    assign dsdk_ip_adapt_bitjoin1047_q = dsdk_ip_adapt_bitjoin1049_q;

    // dsdk_ip_adapt_bitjoin1045(BITJOIN,416)
    assign dsdk_ip_adapt_bitjoin1045_q = dsdk_ip_adapt_bitjoin1047_q;

    // dsdk_ip_adapt_bitjoin1040(BITJOIN,415)
    assign dsdk_ip_adapt_bitjoin1040_q = in_i_data_112_tpl;

    // dsdk_ip_adapt_bitjoin1038(BITJOIN,414)
    assign dsdk_ip_adapt_bitjoin1038_q = dsdk_ip_adapt_bitjoin1040_q;

    // dsdk_ip_adapt_bitjoin1036(BITJOIN,413)
    assign dsdk_ip_adapt_bitjoin1036_q = dsdk_ip_adapt_bitjoin1038_q;

    // dsdk_ip_array_adapt_bitjoin1034(BITJOIN,786)
    assign dsdk_ip_array_adapt_bitjoin1034_q = {dsdk_ip_adapt_bitjoin1171_q, dsdk_ip_adapt_bitjoin1162_q, dsdk_ip_adapt_bitjoin1153_q, dsdk_ip_adapt_bitjoin1144_q, dsdk_ip_adapt_bitjoin1135_q, dsdk_ip_adapt_bitjoin1126_q, dsdk_ip_adapt_bitjoin1117_q, dsdk_ip_adapt_bitjoin1108_q, dsdk_ip_adapt_bitjoin1099_q, dsdk_ip_adapt_bitjoin1090_q, dsdk_ip_adapt_bitjoin1081_q, dsdk_ip_adapt_bitjoin1072_q, dsdk_ip_adapt_bitjoin1063_q, dsdk_ip_adapt_bitjoin1054_q, dsdk_ip_adapt_bitjoin1045_q, dsdk_ip_adapt_bitjoin1036_q};

    // dsdk_ip_adapt_bitjoin1028(BITJOIN,412)
    assign dsdk_ip_adapt_bitjoin1028_q = in_i_data_111_tpl;

    // dsdk_ip_adapt_bitjoin1026(BITJOIN,411)
    assign dsdk_ip_adapt_bitjoin1026_q = dsdk_ip_adapt_bitjoin1028_q;

    // dsdk_ip_adapt_bitjoin1024(BITJOIN,410)
    assign dsdk_ip_adapt_bitjoin1024_q = dsdk_ip_adapt_bitjoin1026_q;

    // dsdk_ip_adapt_bitjoin1019(BITJOIN,409)
    assign dsdk_ip_adapt_bitjoin1019_q = in_i_data_110_tpl;

    // dsdk_ip_adapt_bitjoin1017(BITJOIN,408)
    assign dsdk_ip_adapt_bitjoin1017_q = dsdk_ip_adapt_bitjoin1019_q;

    // dsdk_ip_adapt_bitjoin1015(BITJOIN,407)
    assign dsdk_ip_adapt_bitjoin1015_q = dsdk_ip_adapt_bitjoin1017_q;

    // dsdk_ip_adapt_bitjoin1010(BITJOIN,406)
    assign dsdk_ip_adapt_bitjoin1010_q = in_i_data_109_tpl;

    // dsdk_ip_adapt_bitjoin1008(BITJOIN,404)
    assign dsdk_ip_adapt_bitjoin1008_q = dsdk_ip_adapt_bitjoin1010_q;

    // dsdk_ip_adapt_bitjoin1006(BITJOIN,403)
    assign dsdk_ip_adapt_bitjoin1006_q = dsdk_ip_adapt_bitjoin1008_q;

    // dsdk_ip_adapt_bitjoin1001(BITJOIN,402)
    assign dsdk_ip_adapt_bitjoin1001_q = in_i_data_108_tpl;

    // dsdk_ip_adapt_bitjoin999(BITJOIN,785)
    assign dsdk_ip_adapt_bitjoin999_q = dsdk_ip_adapt_bitjoin1001_q;

    // dsdk_ip_adapt_bitjoin997(BITJOIN,784)
    assign dsdk_ip_adapt_bitjoin997_q = dsdk_ip_adapt_bitjoin999_q;

    // dsdk_ip_adapt_bitjoin992(BITJOIN,783)
    assign dsdk_ip_adapt_bitjoin992_q = in_i_data_107_tpl;

    // dsdk_ip_adapt_bitjoin990(BITJOIN,782)
    assign dsdk_ip_adapt_bitjoin990_q = dsdk_ip_adapt_bitjoin992_q;

    // dsdk_ip_adapt_bitjoin988(BITJOIN,780)
    assign dsdk_ip_adapt_bitjoin988_q = dsdk_ip_adapt_bitjoin990_q;

    // dsdk_ip_adapt_bitjoin983(BITJOIN,779)
    assign dsdk_ip_adapt_bitjoin983_q = in_i_data_106_tpl;

    // dsdk_ip_adapt_bitjoin981(BITJOIN,778)
    assign dsdk_ip_adapt_bitjoin981_q = dsdk_ip_adapt_bitjoin983_q;

    // dsdk_ip_adapt_bitjoin979(BITJOIN,777)
    assign dsdk_ip_adapt_bitjoin979_q = dsdk_ip_adapt_bitjoin981_q;

    // dsdk_ip_adapt_bitjoin974(BITJOIN,776)
    assign dsdk_ip_adapt_bitjoin974_q = in_i_data_105_tpl;

    // dsdk_ip_adapt_bitjoin972(BITJOIN,775)
    assign dsdk_ip_adapt_bitjoin972_q = dsdk_ip_adapt_bitjoin974_q;

    // dsdk_ip_adapt_bitjoin970(BITJOIN,774)
    assign dsdk_ip_adapt_bitjoin970_q = dsdk_ip_adapt_bitjoin972_q;

    // dsdk_ip_adapt_bitjoin965(BITJOIN,772)
    assign dsdk_ip_adapt_bitjoin965_q = in_i_data_104_tpl;

    // dsdk_ip_adapt_bitjoin963(BITJOIN,771)
    assign dsdk_ip_adapt_bitjoin963_q = dsdk_ip_adapt_bitjoin965_q;

    // dsdk_ip_adapt_bitjoin961(BITJOIN,770)
    assign dsdk_ip_adapt_bitjoin961_q = dsdk_ip_adapt_bitjoin963_q;

    // dsdk_ip_adapt_bitjoin956(BITJOIN,769)
    assign dsdk_ip_adapt_bitjoin956_q = in_i_data_103_tpl;

    // dsdk_ip_adapt_bitjoin954(BITJOIN,768)
    assign dsdk_ip_adapt_bitjoin954_q = dsdk_ip_adapt_bitjoin956_q;

    // dsdk_ip_adapt_bitjoin952(BITJOIN,767)
    assign dsdk_ip_adapt_bitjoin952_q = dsdk_ip_adapt_bitjoin954_q;

    // dsdk_ip_adapt_bitjoin947(BITJOIN,766)
    assign dsdk_ip_adapt_bitjoin947_q = in_i_data_102_tpl;

    // dsdk_ip_adapt_bitjoin945(BITJOIN,765)
    assign dsdk_ip_adapt_bitjoin945_q = dsdk_ip_adapt_bitjoin947_q;

    // dsdk_ip_adapt_bitjoin943(BITJOIN,764)
    assign dsdk_ip_adapt_bitjoin943_q = dsdk_ip_adapt_bitjoin945_q;

    // dsdk_ip_adapt_bitjoin938(BITJOIN,763)
    assign dsdk_ip_adapt_bitjoin938_q = in_i_data_101_tpl;

    // dsdk_ip_adapt_bitjoin936(BITJOIN,762)
    assign dsdk_ip_adapt_bitjoin936_q = dsdk_ip_adapt_bitjoin938_q;

    // dsdk_ip_adapt_bitjoin934(BITJOIN,761)
    assign dsdk_ip_adapt_bitjoin934_q = dsdk_ip_adapt_bitjoin936_q;

    // dsdk_ip_adapt_bitjoin929(BITJOIN,760)
    assign dsdk_ip_adapt_bitjoin929_q = in_i_data_100_tpl;

    // dsdk_ip_adapt_bitjoin927(BITJOIN,759)
    assign dsdk_ip_adapt_bitjoin927_q = dsdk_ip_adapt_bitjoin929_q;

    // dsdk_ip_adapt_bitjoin925(BITJOIN,758)
    assign dsdk_ip_adapt_bitjoin925_q = dsdk_ip_adapt_bitjoin927_q;

    // dsdk_ip_adapt_bitjoin920(BITJOIN,757)
    assign dsdk_ip_adapt_bitjoin920_q = in_i_data_99_tpl;

    // dsdk_ip_adapt_bitjoin918(BITJOIN,755)
    assign dsdk_ip_adapt_bitjoin918_q = dsdk_ip_adapt_bitjoin920_q;

    // dsdk_ip_adapt_bitjoin916(BITJOIN,754)
    assign dsdk_ip_adapt_bitjoin916_q = dsdk_ip_adapt_bitjoin918_q;

    // dsdk_ip_adapt_bitjoin911(BITJOIN,753)
    assign dsdk_ip_adapt_bitjoin911_q = in_i_data_98_tpl;

    // dsdk_ip_adapt_bitjoin909(BITJOIN,752)
    assign dsdk_ip_adapt_bitjoin909_q = dsdk_ip_adapt_bitjoin911_q;

    // dsdk_ip_adapt_bitjoin907(BITJOIN,751)
    assign dsdk_ip_adapt_bitjoin907_q = dsdk_ip_adapt_bitjoin909_q;

    // dsdk_ip_adapt_bitjoin902(BITJOIN,750)
    assign dsdk_ip_adapt_bitjoin902_q = in_i_data_97_tpl;

    // dsdk_ip_adapt_bitjoin900(BITJOIN,749)
    assign dsdk_ip_adapt_bitjoin900_q = dsdk_ip_adapt_bitjoin902_q;

    // dsdk_ip_adapt_bitjoin898(BITJOIN,746)
    assign dsdk_ip_adapt_bitjoin898_q = dsdk_ip_adapt_bitjoin900_q;

    // dsdk_ip_adapt_bitjoin893(BITJOIN,745)
    assign dsdk_ip_adapt_bitjoin893_q = in_i_data_96_tpl;

    // dsdk_ip_adapt_bitjoin891(BITJOIN,744)
    assign dsdk_ip_adapt_bitjoin891_q = dsdk_ip_adapt_bitjoin893_q;

    // dsdk_ip_adapt_bitjoin889(BITJOIN,743)
    assign dsdk_ip_adapt_bitjoin889_q = dsdk_ip_adapt_bitjoin891_q;

    // dsdk_ip_array_adapt_bitjoin887(BITJOIN,794)
    assign dsdk_ip_array_adapt_bitjoin887_q = {dsdk_ip_adapt_bitjoin1024_q, dsdk_ip_adapt_bitjoin1015_q, dsdk_ip_adapt_bitjoin1006_q, dsdk_ip_adapt_bitjoin997_q, dsdk_ip_adapt_bitjoin988_q, dsdk_ip_adapt_bitjoin979_q, dsdk_ip_adapt_bitjoin970_q, dsdk_ip_adapt_bitjoin961_q, dsdk_ip_adapt_bitjoin952_q, dsdk_ip_adapt_bitjoin943_q, dsdk_ip_adapt_bitjoin934_q, dsdk_ip_adapt_bitjoin925_q, dsdk_ip_adapt_bitjoin916_q, dsdk_ip_adapt_bitjoin907_q, dsdk_ip_adapt_bitjoin898_q, dsdk_ip_adapt_bitjoin889_q};

    // dsdk_ip_adapt_bitjoin881(BITJOIN,742)
    assign dsdk_ip_adapt_bitjoin881_q = in_i_data_95_tpl;

    // dsdk_ip_adapt_bitjoin879(BITJOIN,740)
    assign dsdk_ip_adapt_bitjoin879_q = dsdk_ip_adapt_bitjoin881_q;

    // dsdk_ip_adapt_bitjoin877(BITJOIN,739)
    assign dsdk_ip_adapt_bitjoin877_q = dsdk_ip_adapt_bitjoin879_q;

    // dsdk_ip_adapt_bitjoin872(BITJOIN,738)
    assign dsdk_ip_adapt_bitjoin872_q = in_i_data_94_tpl;

    // dsdk_ip_adapt_bitjoin870(BITJOIN,737)
    assign dsdk_ip_adapt_bitjoin870_q = dsdk_ip_adapt_bitjoin872_q;

    // dsdk_ip_adapt_bitjoin868(BITJOIN,736)
    assign dsdk_ip_adapt_bitjoin868_q = dsdk_ip_adapt_bitjoin870_q;

    // dsdk_ip_adapt_bitjoin863(BITJOIN,735)
    assign dsdk_ip_adapt_bitjoin863_q = in_i_data_93_tpl;

    // dsdk_ip_adapt_bitjoin861(BITJOIN,734)
    assign dsdk_ip_adapt_bitjoin861_q = dsdk_ip_adapt_bitjoin863_q;

    // dsdk_ip_adapt_bitjoin859(BITJOIN,733)
    assign dsdk_ip_adapt_bitjoin859_q = dsdk_ip_adapt_bitjoin861_q;

    // dsdk_ip_adapt_bitjoin854(BITJOIN,732)
    assign dsdk_ip_adapt_bitjoin854_q = in_i_data_92_tpl;

    // dsdk_ip_adapt_bitjoin852(BITJOIN,731)
    assign dsdk_ip_adapt_bitjoin852_q = dsdk_ip_adapt_bitjoin854_q;

    // dsdk_ip_adapt_bitjoin850(BITJOIN,730)
    assign dsdk_ip_adapt_bitjoin850_q = dsdk_ip_adapt_bitjoin852_q;

    // dsdk_ip_adapt_bitjoin845(BITJOIN,729)
    assign dsdk_ip_adapt_bitjoin845_q = in_i_data_91_tpl;

    // dsdk_ip_adapt_bitjoin843(BITJOIN,728)
    assign dsdk_ip_adapt_bitjoin843_q = dsdk_ip_adapt_bitjoin845_q;

    // dsdk_ip_adapt_bitjoin841(BITJOIN,727)
    assign dsdk_ip_adapt_bitjoin841_q = dsdk_ip_adapt_bitjoin843_q;

    // dsdk_ip_adapt_bitjoin836(BITJOIN,726)
    assign dsdk_ip_adapt_bitjoin836_q = in_i_data_90_tpl;

    // dsdk_ip_adapt_bitjoin834(BITJOIN,725)
    assign dsdk_ip_adapt_bitjoin834_q = dsdk_ip_adapt_bitjoin836_q;

    // dsdk_ip_adapt_bitjoin832(BITJOIN,724)
    assign dsdk_ip_adapt_bitjoin832_q = dsdk_ip_adapt_bitjoin834_q;

    // dsdk_ip_adapt_bitjoin827(BITJOIN,722)
    assign dsdk_ip_adapt_bitjoin827_q = in_i_data_89_tpl;

    // dsdk_ip_adapt_bitjoin825(BITJOIN,721)
    assign dsdk_ip_adapt_bitjoin825_q = dsdk_ip_adapt_bitjoin827_q;

    // dsdk_ip_adapt_bitjoin823(BITJOIN,720)
    assign dsdk_ip_adapt_bitjoin823_q = dsdk_ip_adapt_bitjoin825_q;

    // dsdk_ip_adapt_bitjoin818(BITJOIN,719)
    assign dsdk_ip_adapt_bitjoin818_q = in_i_data_88_tpl;

    // dsdk_ip_adapt_bitjoin816(BITJOIN,718)
    assign dsdk_ip_adapt_bitjoin816_q = dsdk_ip_adapt_bitjoin818_q;

    // dsdk_ip_adapt_bitjoin814(BITJOIN,717)
    assign dsdk_ip_adapt_bitjoin814_q = dsdk_ip_adapt_bitjoin816_q;

    // dsdk_ip_adapt_bitjoin809(BITJOIN,715)
    assign dsdk_ip_adapt_bitjoin809_q = in_i_data_87_tpl;

    // dsdk_ip_adapt_bitjoin807(BITJOIN,714)
    assign dsdk_ip_adapt_bitjoin807_q = dsdk_ip_adapt_bitjoin809_q;

    // dsdk_ip_adapt_bitjoin805(BITJOIN,713)
    assign dsdk_ip_adapt_bitjoin805_q = dsdk_ip_adapt_bitjoin807_q;

    // dsdk_ip_adapt_bitjoin800(BITJOIN,712)
    assign dsdk_ip_adapt_bitjoin800_q = in_i_data_86_tpl;

    // dsdk_ip_adapt_bitjoin798(BITJOIN,711)
    assign dsdk_ip_adapt_bitjoin798_q = dsdk_ip_adapt_bitjoin800_q;

    // dsdk_ip_adapt_bitjoin796(BITJOIN,710)
    assign dsdk_ip_adapt_bitjoin796_q = dsdk_ip_adapt_bitjoin798_q;

    // dsdk_ip_adapt_bitjoin791(BITJOIN,709)
    assign dsdk_ip_adapt_bitjoin791_q = in_i_data_85_tpl;

    // dsdk_ip_adapt_bitjoin789(BITJOIN,707)
    assign dsdk_ip_adapt_bitjoin789_q = dsdk_ip_adapt_bitjoin791_q;

    // dsdk_ip_adapt_bitjoin787(BITJOIN,706)
    assign dsdk_ip_adapt_bitjoin787_q = dsdk_ip_adapt_bitjoin789_q;

    // dsdk_ip_adapt_bitjoin782(BITJOIN,705)
    assign dsdk_ip_adapt_bitjoin782_q = in_i_data_84_tpl;

    // dsdk_ip_adapt_bitjoin780(BITJOIN,704)
    assign dsdk_ip_adapt_bitjoin780_q = dsdk_ip_adapt_bitjoin782_q;

    // dsdk_ip_adapt_bitjoin778(BITJOIN,703)
    assign dsdk_ip_adapt_bitjoin778_q = dsdk_ip_adapt_bitjoin780_q;

    // dsdk_ip_adapt_bitjoin773(BITJOIN,702)
    assign dsdk_ip_adapt_bitjoin773_q = in_i_data_83_tpl;

    // dsdk_ip_adapt_bitjoin771(BITJOIN,701)
    assign dsdk_ip_adapt_bitjoin771_q = dsdk_ip_adapt_bitjoin773_q;

    // dsdk_ip_adapt_bitjoin769(BITJOIN,700)
    assign dsdk_ip_adapt_bitjoin769_q = dsdk_ip_adapt_bitjoin771_q;

    // dsdk_ip_adapt_bitjoin764(BITJOIN,699)
    assign dsdk_ip_adapt_bitjoin764_q = in_i_data_82_tpl;

    // dsdk_ip_adapt_bitjoin762(BITJOIN,698)
    assign dsdk_ip_adapt_bitjoin762_q = dsdk_ip_adapt_bitjoin764_q;

    // dsdk_ip_adapt_bitjoin760(BITJOIN,697)
    assign dsdk_ip_adapt_bitjoin760_q = dsdk_ip_adapt_bitjoin762_q;

    // dsdk_ip_adapt_bitjoin755(BITJOIN,696)
    assign dsdk_ip_adapt_bitjoin755_q = in_i_data_81_tpl;

    // dsdk_ip_adapt_bitjoin753(BITJOIN,695)
    assign dsdk_ip_adapt_bitjoin753_q = dsdk_ip_adapt_bitjoin755_q;

    // dsdk_ip_adapt_bitjoin751(BITJOIN,694)
    assign dsdk_ip_adapt_bitjoin751_q = dsdk_ip_adapt_bitjoin753_q;

    // dsdk_ip_adapt_bitjoin746(BITJOIN,693)
    assign dsdk_ip_adapt_bitjoin746_q = in_i_data_80_tpl;

    // dsdk_ip_adapt_bitjoin744(BITJOIN,692)
    assign dsdk_ip_adapt_bitjoin744_q = dsdk_ip_adapt_bitjoin746_q;

    // dsdk_ip_adapt_bitjoin742(BITJOIN,691)
    assign dsdk_ip_adapt_bitjoin742_q = dsdk_ip_adapt_bitjoin744_q;

    // dsdk_ip_array_adapt_bitjoin740(BITJOIN,793)
    assign dsdk_ip_array_adapt_bitjoin740_q = {dsdk_ip_adapt_bitjoin877_q, dsdk_ip_adapt_bitjoin868_q, dsdk_ip_adapt_bitjoin859_q, dsdk_ip_adapt_bitjoin850_q, dsdk_ip_adapt_bitjoin841_q, dsdk_ip_adapt_bitjoin832_q, dsdk_ip_adapt_bitjoin823_q, dsdk_ip_adapt_bitjoin814_q, dsdk_ip_adapt_bitjoin805_q, dsdk_ip_adapt_bitjoin796_q, dsdk_ip_adapt_bitjoin787_q, dsdk_ip_adapt_bitjoin778_q, dsdk_ip_adapt_bitjoin769_q, dsdk_ip_adapt_bitjoin760_q, dsdk_ip_adapt_bitjoin751_q, dsdk_ip_adapt_bitjoin742_q};

    // dsdk_ip_adapt_bitjoin734(BITJOIN,689)
    assign dsdk_ip_adapt_bitjoin734_q = in_i_data_79_tpl;

    // dsdk_ip_adapt_bitjoin732(BITJOIN,688)
    assign dsdk_ip_adapt_bitjoin732_q = dsdk_ip_adapt_bitjoin734_q;

    // dsdk_ip_adapt_bitjoin730(BITJOIN,687)
    assign dsdk_ip_adapt_bitjoin730_q = dsdk_ip_adapt_bitjoin732_q;

    // dsdk_ip_adapt_bitjoin725(BITJOIN,686)
    assign dsdk_ip_adapt_bitjoin725_q = in_i_data_78_tpl;

    // dsdk_ip_adapt_bitjoin723(BITJOIN,685)
    assign dsdk_ip_adapt_bitjoin723_q = dsdk_ip_adapt_bitjoin725_q;

    // dsdk_ip_adapt_bitjoin721(BITJOIN,684)
    assign dsdk_ip_adapt_bitjoin721_q = dsdk_ip_adapt_bitjoin723_q;

    // dsdk_ip_adapt_bitjoin716(BITJOIN,682)
    assign dsdk_ip_adapt_bitjoin716_q = in_i_data_77_tpl;

    // dsdk_ip_adapt_bitjoin714(BITJOIN,681)
    assign dsdk_ip_adapt_bitjoin714_q = dsdk_ip_adapt_bitjoin716_q;

    // dsdk_ip_adapt_bitjoin712(BITJOIN,680)
    assign dsdk_ip_adapt_bitjoin712_q = dsdk_ip_adapt_bitjoin714_q;

    // dsdk_ip_adapt_bitjoin707(BITJOIN,679)
    assign dsdk_ip_adapt_bitjoin707_q = in_i_data_76_tpl;

    // dsdk_ip_adapt_bitjoin705(BITJOIN,678)
    assign dsdk_ip_adapt_bitjoin705_q = dsdk_ip_adapt_bitjoin707_q;

    // dsdk_ip_adapt_bitjoin703(BITJOIN,677)
    assign dsdk_ip_adapt_bitjoin703_q = dsdk_ip_adapt_bitjoin705_q;

    // dsdk_ip_adapt_bitjoin698(BITJOIN,674)
    assign dsdk_ip_adapt_bitjoin698_q = in_i_data_75_tpl;

    // dsdk_ip_adapt_bitjoin696(BITJOIN,673)
    assign dsdk_ip_adapt_bitjoin696_q = dsdk_ip_adapt_bitjoin698_q;

    // dsdk_ip_adapt_bitjoin694(BITJOIN,672)
    assign dsdk_ip_adapt_bitjoin694_q = dsdk_ip_adapt_bitjoin696_q;

    // dsdk_ip_adapt_bitjoin689(BITJOIN,671)
    assign dsdk_ip_adapt_bitjoin689_q = in_i_data_74_tpl;

    // dsdk_ip_adapt_bitjoin687(BITJOIN,670)
    assign dsdk_ip_adapt_bitjoin687_q = dsdk_ip_adapt_bitjoin689_q;

    // dsdk_ip_adapt_bitjoin685(BITJOIN,669)
    assign dsdk_ip_adapt_bitjoin685_q = dsdk_ip_adapt_bitjoin687_q;

    // dsdk_ip_adapt_bitjoin680(BITJOIN,668)
    assign dsdk_ip_adapt_bitjoin680_q = in_i_data_73_tpl;

    // dsdk_ip_adapt_bitjoin678(BITJOIN,667)
    assign dsdk_ip_adapt_bitjoin678_q = dsdk_ip_adapt_bitjoin680_q;

    // dsdk_ip_adapt_bitjoin676(BITJOIN,666)
    assign dsdk_ip_adapt_bitjoin676_q = dsdk_ip_adapt_bitjoin678_q;

    // dsdk_ip_adapt_bitjoin671(BITJOIN,665)
    assign dsdk_ip_adapt_bitjoin671_q = in_i_data_72_tpl;

    // dsdk_ip_adapt_bitjoin669(BITJOIN,664)
    assign dsdk_ip_adapt_bitjoin669_q = dsdk_ip_adapt_bitjoin671_q;

    // dsdk_ip_adapt_bitjoin667(BITJOIN,663)
    assign dsdk_ip_adapt_bitjoin667_q = dsdk_ip_adapt_bitjoin669_q;

    // dsdk_ip_adapt_bitjoin662(BITJOIN,662)
    assign dsdk_ip_adapt_bitjoin662_q = in_i_data_71_tpl;

    // dsdk_ip_adapt_bitjoin660(BITJOIN,661)
    assign dsdk_ip_adapt_bitjoin660_q = dsdk_ip_adapt_bitjoin662_q;

    // dsdk_ip_adapt_bitjoin658(BITJOIN,660)
    assign dsdk_ip_adapt_bitjoin658_q = dsdk_ip_adapt_bitjoin660_q;

    // dsdk_ip_adapt_bitjoin653(BITJOIN,659)
    assign dsdk_ip_adapt_bitjoin653_q = in_i_data_70_tpl;

    // dsdk_ip_adapt_bitjoin651(BITJOIN,658)
    assign dsdk_ip_adapt_bitjoin651_q = dsdk_ip_adapt_bitjoin653_q;

    // dsdk_ip_adapt_bitjoin649(BITJOIN,656)
    assign dsdk_ip_adapt_bitjoin649_q = dsdk_ip_adapt_bitjoin651_q;

    // dsdk_ip_adapt_bitjoin644(BITJOIN,655)
    assign dsdk_ip_adapt_bitjoin644_q = in_i_data_69_tpl;

    // dsdk_ip_adapt_bitjoin642(BITJOIN,654)
    assign dsdk_ip_adapt_bitjoin642_q = dsdk_ip_adapt_bitjoin644_q;

    // dsdk_ip_adapt_bitjoin640(BITJOIN,653)
    assign dsdk_ip_adapt_bitjoin640_q = dsdk_ip_adapt_bitjoin642_q;

    // dsdk_ip_adapt_bitjoin635(BITJOIN,652)
    assign dsdk_ip_adapt_bitjoin635_q = in_i_data_68_tpl;

    // dsdk_ip_adapt_bitjoin633(BITJOIN,651)
    assign dsdk_ip_adapt_bitjoin633_q = dsdk_ip_adapt_bitjoin635_q;

    // dsdk_ip_adapt_bitjoin631(BITJOIN,650)
    assign dsdk_ip_adapt_bitjoin631_q = dsdk_ip_adapt_bitjoin633_q;

    // dsdk_ip_adapt_bitjoin626(BITJOIN,648)
    assign dsdk_ip_adapt_bitjoin626_q = in_i_data_67_tpl;

    // dsdk_ip_adapt_bitjoin624(BITJOIN,647)
    assign dsdk_ip_adapt_bitjoin624_q = dsdk_ip_adapt_bitjoin626_q;

    // dsdk_ip_adapt_bitjoin622(BITJOIN,646)
    assign dsdk_ip_adapt_bitjoin622_q = dsdk_ip_adapt_bitjoin624_q;

    // dsdk_ip_adapt_bitjoin617(BITJOIN,645)
    assign dsdk_ip_adapt_bitjoin617_q = in_i_data_66_tpl;

    // dsdk_ip_adapt_bitjoin615(BITJOIN,644)
    assign dsdk_ip_adapt_bitjoin615_q = dsdk_ip_adapt_bitjoin617_q;

    // dsdk_ip_adapt_bitjoin613(BITJOIN,643)
    assign dsdk_ip_adapt_bitjoin613_q = dsdk_ip_adapt_bitjoin615_q;

    // dsdk_ip_adapt_bitjoin608(BITJOIN,641)
    assign dsdk_ip_adapt_bitjoin608_q = in_i_data_65_tpl;

    // dsdk_ip_adapt_bitjoin606(BITJOIN,640)
    assign dsdk_ip_adapt_bitjoin606_q = dsdk_ip_adapt_bitjoin608_q;

    // dsdk_ip_adapt_bitjoin604(BITJOIN,639)
    assign dsdk_ip_adapt_bitjoin604_q = dsdk_ip_adapt_bitjoin606_q;

    // dsdk_ip_adapt_bitjoin599(BITJOIN,638)
    assign dsdk_ip_adapt_bitjoin599_q = in_i_data_64_tpl;

    // dsdk_ip_adapt_bitjoin597(BITJOIN,637)
    assign dsdk_ip_adapt_bitjoin597_q = dsdk_ip_adapt_bitjoin599_q;

    // dsdk_ip_adapt_bitjoin595(BITJOIN,636)
    assign dsdk_ip_adapt_bitjoin595_q = dsdk_ip_adapt_bitjoin597_q;

    // dsdk_ip_array_adapt_bitjoin593(BITJOIN,792)
    assign dsdk_ip_array_adapt_bitjoin593_q = {dsdk_ip_adapt_bitjoin730_q, dsdk_ip_adapt_bitjoin721_q, dsdk_ip_adapt_bitjoin712_q, dsdk_ip_adapt_bitjoin703_q, dsdk_ip_adapt_bitjoin694_q, dsdk_ip_adapt_bitjoin685_q, dsdk_ip_adapt_bitjoin676_q, dsdk_ip_adapt_bitjoin667_q, dsdk_ip_adapt_bitjoin658_q, dsdk_ip_adapt_bitjoin649_q, dsdk_ip_adapt_bitjoin640_q, dsdk_ip_adapt_bitjoin631_q, dsdk_ip_adapt_bitjoin622_q, dsdk_ip_adapt_bitjoin613_q, dsdk_ip_adapt_bitjoin604_q, dsdk_ip_adapt_bitjoin595_q};

    // dsdk_ip_adapt_bitjoin587(BITJOIN,635)
    assign dsdk_ip_adapt_bitjoin587_q = in_i_data_63_tpl;

    // dsdk_ip_adapt_bitjoin585(BITJOIN,634)
    assign dsdk_ip_adapt_bitjoin585_q = dsdk_ip_adapt_bitjoin587_q;

    // dsdk_ip_adapt_bitjoin583(BITJOIN,633)
    assign dsdk_ip_adapt_bitjoin583_q = dsdk_ip_adapt_bitjoin585_q;

    // dsdk_ip_adapt_bitjoin578(BITJOIN,632)
    assign dsdk_ip_adapt_bitjoin578_q = in_i_data_62_tpl;

    // dsdk_ip_adapt_bitjoin576(BITJOIN,631)
    assign dsdk_ip_adapt_bitjoin576_q = dsdk_ip_adapt_bitjoin578_q;

    // dsdk_ip_adapt_bitjoin574(BITJOIN,630)
    assign dsdk_ip_adapt_bitjoin574_q = dsdk_ip_adapt_bitjoin576_q;

    // dsdk_ip_adapt_bitjoin569(BITJOIN,629)
    assign dsdk_ip_adapt_bitjoin569_q = in_i_data_61_tpl;

    // dsdk_ip_adapt_bitjoin567(BITJOIN,628)
    assign dsdk_ip_adapt_bitjoin567_q = dsdk_ip_adapt_bitjoin569_q;

    // dsdk_ip_adapt_bitjoin565(BITJOIN,627)
    assign dsdk_ip_adapt_bitjoin565_q = dsdk_ip_adapt_bitjoin567_q;

    // dsdk_ip_adapt_bitjoin560(BITJOIN,626)
    assign dsdk_ip_adapt_bitjoin560_q = in_i_data_60_tpl;

    // dsdk_ip_adapt_bitjoin558(BITJOIN,624)
    assign dsdk_ip_adapt_bitjoin558_q = dsdk_ip_adapt_bitjoin560_q;

    // dsdk_ip_adapt_bitjoin556(BITJOIN,623)
    assign dsdk_ip_adapt_bitjoin556_q = dsdk_ip_adapt_bitjoin558_q;

    // dsdk_ip_adapt_bitjoin551(BITJOIN,622)
    assign dsdk_ip_adapt_bitjoin551_q = in_i_data_59_tpl;

    // dsdk_ip_adapt_bitjoin549(BITJOIN,621)
    assign dsdk_ip_adapt_bitjoin549_q = dsdk_ip_adapt_bitjoin551_q;

    // dsdk_ip_adapt_bitjoin547(BITJOIN,620)
    assign dsdk_ip_adapt_bitjoin547_q = dsdk_ip_adapt_bitjoin549_q;

    // dsdk_ip_adapt_bitjoin542(BITJOIN,619)
    assign dsdk_ip_adapt_bitjoin542_q = in_i_data_58_tpl;

    // dsdk_ip_adapt_bitjoin540(BITJOIN,618)
    assign dsdk_ip_adapt_bitjoin540_q = dsdk_ip_adapt_bitjoin542_q;

    // dsdk_ip_adapt_bitjoin538(BITJOIN,616)
    assign dsdk_ip_adapt_bitjoin538_q = dsdk_ip_adapt_bitjoin540_q;

    // dsdk_ip_adapt_bitjoin533(BITJOIN,615)
    assign dsdk_ip_adapt_bitjoin533_q = in_i_data_57_tpl;

    // dsdk_ip_adapt_bitjoin531(BITJOIN,614)
    assign dsdk_ip_adapt_bitjoin531_q = dsdk_ip_adapt_bitjoin533_q;

    // dsdk_ip_adapt_bitjoin529(BITJOIN,613)
    assign dsdk_ip_adapt_bitjoin529_q = dsdk_ip_adapt_bitjoin531_q;

    // dsdk_ip_adapt_bitjoin524(BITJOIN,612)
    assign dsdk_ip_adapt_bitjoin524_q = in_i_data_56_tpl;

    // dsdk_ip_adapt_bitjoin522(BITJOIN,611)
    assign dsdk_ip_adapt_bitjoin522_q = dsdk_ip_adapt_bitjoin524_q;

    // dsdk_ip_adapt_bitjoin520(BITJOIN,610)
    assign dsdk_ip_adapt_bitjoin520_q = dsdk_ip_adapt_bitjoin522_q;

    // dsdk_ip_adapt_bitjoin515(BITJOIN,608)
    assign dsdk_ip_adapt_bitjoin515_q = in_i_data_55_tpl;

    // dsdk_ip_adapt_bitjoin513(BITJOIN,607)
    assign dsdk_ip_adapt_bitjoin513_q = dsdk_ip_adapt_bitjoin515_q;

    // dsdk_ip_adapt_bitjoin511(BITJOIN,606)
    assign dsdk_ip_adapt_bitjoin511_q = dsdk_ip_adapt_bitjoin513_q;

    // dsdk_ip_adapt_bitjoin506(BITJOIN,605)
    assign dsdk_ip_adapt_bitjoin506_q = in_i_data_54_tpl;

    // dsdk_ip_adapt_bitjoin504(BITJOIN,604)
    assign dsdk_ip_adapt_bitjoin504_q = dsdk_ip_adapt_bitjoin506_q;

    // dsdk_ip_adapt_bitjoin502(BITJOIN,603)
    assign dsdk_ip_adapt_bitjoin502_q = dsdk_ip_adapt_bitjoin504_q;

    // dsdk_ip_adapt_bitjoin497(BITJOIN,602)
    assign dsdk_ip_adapt_bitjoin497_q = in_i_data_53_tpl;

    // dsdk_ip_adapt_bitjoin495(BITJOIN,601)
    assign dsdk_ip_adapt_bitjoin495_q = dsdk_ip_adapt_bitjoin497_q;

    // dsdk_ip_adapt_bitjoin493(BITJOIN,600)
    assign dsdk_ip_adapt_bitjoin493_q = dsdk_ip_adapt_bitjoin495_q;

    // dsdk_ip_adapt_bitjoin488(BITJOIN,599)
    assign dsdk_ip_adapt_bitjoin488_q = in_i_data_52_tpl;

    // dsdk_ip_adapt_bitjoin486(BITJOIN,598)
    assign dsdk_ip_adapt_bitjoin486_q = dsdk_ip_adapt_bitjoin488_q;

    // dsdk_ip_adapt_bitjoin484(BITJOIN,597)
    assign dsdk_ip_adapt_bitjoin484_q = dsdk_ip_adapt_bitjoin486_q;

    // dsdk_ip_adapt_bitjoin479(BITJOIN,596)
    assign dsdk_ip_adapt_bitjoin479_q = in_i_data_51_tpl;

    // dsdk_ip_adapt_bitjoin477(BITJOIN,595)
    assign dsdk_ip_adapt_bitjoin477_q = dsdk_ip_adapt_bitjoin479_q;

    // dsdk_ip_adapt_bitjoin475(BITJOIN,594)
    assign dsdk_ip_adapt_bitjoin475_q = dsdk_ip_adapt_bitjoin477_q;

    // dsdk_ip_adapt_bitjoin470(BITJOIN,593)
    assign dsdk_ip_adapt_bitjoin470_q = in_i_data_50_tpl;

    // dsdk_ip_adapt_bitjoin468(BITJOIN,591)
    assign dsdk_ip_adapt_bitjoin468_q = dsdk_ip_adapt_bitjoin470_q;

    // dsdk_ip_adapt_bitjoin466(BITJOIN,590)
    assign dsdk_ip_adapt_bitjoin466_q = dsdk_ip_adapt_bitjoin468_q;

    // dsdk_ip_adapt_bitjoin461(BITJOIN,589)
    assign dsdk_ip_adapt_bitjoin461_q = in_i_data_49_tpl;

    // dsdk_ip_adapt_bitjoin459(BITJOIN,588)
    assign dsdk_ip_adapt_bitjoin459_q = dsdk_ip_adapt_bitjoin461_q;

    // dsdk_ip_adapt_bitjoin457(BITJOIN,587)
    assign dsdk_ip_adapt_bitjoin457_q = dsdk_ip_adapt_bitjoin459_q;

    // dsdk_ip_adapt_bitjoin452(BITJOIN,586)
    assign dsdk_ip_adapt_bitjoin452_q = in_i_data_48_tpl;

    // dsdk_ip_adapt_bitjoin450(BITJOIN,585)
    assign dsdk_ip_adapt_bitjoin450_q = dsdk_ip_adapt_bitjoin452_q;

    // dsdk_ip_adapt_bitjoin448(BITJOIN,583)
    assign dsdk_ip_adapt_bitjoin448_q = dsdk_ip_adapt_bitjoin450_q;

    // dsdk_ip_array_adapt_bitjoin446(BITJOIN,790)
    assign dsdk_ip_array_adapt_bitjoin446_q = {dsdk_ip_adapt_bitjoin583_q, dsdk_ip_adapt_bitjoin574_q, dsdk_ip_adapt_bitjoin565_q, dsdk_ip_adapt_bitjoin556_q, dsdk_ip_adapt_bitjoin547_q, dsdk_ip_adapt_bitjoin538_q, dsdk_ip_adapt_bitjoin529_q, dsdk_ip_adapt_bitjoin520_q, dsdk_ip_adapt_bitjoin511_q, dsdk_ip_adapt_bitjoin502_q, dsdk_ip_adapt_bitjoin493_q, dsdk_ip_adapt_bitjoin484_q, dsdk_ip_adapt_bitjoin475_q, dsdk_ip_adapt_bitjoin466_q, dsdk_ip_adapt_bitjoin457_q, dsdk_ip_adapt_bitjoin448_q};

    // dsdk_ip_adapt_bitjoin440(BITJOIN,582)
    assign dsdk_ip_adapt_bitjoin440_q = in_i_data_47_tpl;

    // dsdk_ip_adapt_bitjoin438(BITJOIN,581)
    assign dsdk_ip_adapt_bitjoin438_q = dsdk_ip_adapt_bitjoin440_q;

    // dsdk_ip_adapt_bitjoin436(BITJOIN,580)
    assign dsdk_ip_adapt_bitjoin436_q = dsdk_ip_adapt_bitjoin438_q;

    // dsdk_ip_adapt_bitjoin431(BITJOIN,579)
    assign dsdk_ip_adapt_bitjoin431_q = in_i_data_46_tpl;

    // dsdk_ip_adapt_bitjoin429(BITJOIN,577)
    assign dsdk_ip_adapt_bitjoin429_q = dsdk_ip_adapt_bitjoin431_q;

    // dsdk_ip_adapt_bitjoin427(BITJOIN,576)
    assign dsdk_ip_adapt_bitjoin427_q = dsdk_ip_adapt_bitjoin429_q;

    // dsdk_ip_adapt_bitjoin422(BITJOIN,575)
    assign dsdk_ip_adapt_bitjoin422_q = in_i_data_45_tpl;

    // dsdk_ip_adapt_bitjoin420(BITJOIN,574)
    assign dsdk_ip_adapt_bitjoin420_q = dsdk_ip_adapt_bitjoin422_q;

    // dsdk_ip_adapt_bitjoin418(BITJOIN,573)
    assign dsdk_ip_adapt_bitjoin418_q = dsdk_ip_adapt_bitjoin420_q;

    // dsdk_ip_adapt_bitjoin413(BITJOIN,572)
    assign dsdk_ip_adapt_bitjoin413_q = in_i_data_44_tpl;

    // dsdk_ip_adapt_bitjoin411(BITJOIN,571)
    assign dsdk_ip_adapt_bitjoin411_q = dsdk_ip_adapt_bitjoin413_q;

    // dsdk_ip_adapt_bitjoin409(BITJOIN,570)
    assign dsdk_ip_adapt_bitjoin409_q = dsdk_ip_adapt_bitjoin411_q;

    // dsdk_ip_adapt_bitjoin404(BITJOIN,569)
    assign dsdk_ip_adapt_bitjoin404_q = in_i_data_43_tpl;

    // dsdk_ip_adapt_bitjoin402(BITJOIN,568)
    assign dsdk_ip_adapt_bitjoin402_q = dsdk_ip_adapt_bitjoin404_q;

    // dsdk_ip_adapt_bitjoin400(BITJOIN,567)
    assign dsdk_ip_adapt_bitjoin400_q = dsdk_ip_adapt_bitjoin402_q;

    // dsdk_ip_adapt_bitjoin395(BITJOIN,566)
    assign dsdk_ip_adapt_bitjoin395_q = in_i_data_42_tpl;

    // dsdk_ip_adapt_bitjoin393(BITJOIN,565)
    assign dsdk_ip_adapt_bitjoin393_q = dsdk_ip_adapt_bitjoin395_q;

    // dsdk_ip_adapt_bitjoin391(BITJOIN,564)
    assign dsdk_ip_adapt_bitjoin391_q = dsdk_ip_adapt_bitjoin393_q;

    // dsdk_ip_adapt_bitjoin386(BITJOIN,563)
    assign dsdk_ip_adapt_bitjoin386_q = in_i_data_41_tpl;

    // dsdk_ip_adapt_bitjoin384(BITJOIN,562)
    assign dsdk_ip_adapt_bitjoin384_q = dsdk_ip_adapt_bitjoin386_q;

    // dsdk_ip_adapt_bitjoin382(BITJOIN,561)
    assign dsdk_ip_adapt_bitjoin382_q = dsdk_ip_adapt_bitjoin384_q;

    // dsdk_ip_adapt_bitjoin377(BITJOIN,559)
    assign dsdk_ip_adapt_bitjoin377_q = in_i_data_40_tpl;

    // dsdk_ip_adapt_bitjoin375(BITJOIN,558)
    assign dsdk_ip_adapt_bitjoin375_q = dsdk_ip_adapt_bitjoin377_q;

    // dsdk_ip_adapt_bitjoin373(BITJOIN,557)
    assign dsdk_ip_adapt_bitjoin373_q = dsdk_ip_adapt_bitjoin375_q;

    // dsdk_ip_adapt_bitjoin368(BITJOIN,556)
    assign dsdk_ip_adapt_bitjoin368_q = in_i_data_39_tpl;

    // dsdk_ip_adapt_bitjoin366(BITJOIN,555)
    assign dsdk_ip_adapt_bitjoin366_q = dsdk_ip_adapt_bitjoin368_q;

    // dsdk_ip_adapt_bitjoin364(BITJOIN,554)
    assign dsdk_ip_adapt_bitjoin364_q = dsdk_ip_adapt_bitjoin366_q;

    // dsdk_ip_adapt_bitjoin359(BITJOIN,552)
    assign dsdk_ip_adapt_bitjoin359_q = in_i_data_38_tpl;

    // dsdk_ip_adapt_bitjoin357(BITJOIN,551)
    assign dsdk_ip_adapt_bitjoin357_q = dsdk_ip_adapt_bitjoin359_q;

    // dsdk_ip_adapt_bitjoin355(BITJOIN,550)
    assign dsdk_ip_adapt_bitjoin355_q = dsdk_ip_adapt_bitjoin357_q;

    // dsdk_ip_adapt_bitjoin350(BITJOIN,549)
    assign dsdk_ip_adapt_bitjoin350_q = in_i_data_37_tpl;

    // dsdk_ip_adapt_bitjoin348(BITJOIN,548)
    assign dsdk_ip_adapt_bitjoin348_q = dsdk_ip_adapt_bitjoin350_q;

    // dsdk_ip_adapt_bitjoin346(BITJOIN,547)
    assign dsdk_ip_adapt_bitjoin346_q = dsdk_ip_adapt_bitjoin348_q;

    // dsdk_ip_adapt_bitjoin341(BITJOIN,546)
    assign dsdk_ip_adapt_bitjoin341_q = in_i_data_36_tpl;

    // dsdk_ip_adapt_bitjoin339(BITJOIN,544)
    assign dsdk_ip_adapt_bitjoin339_q = dsdk_ip_adapt_bitjoin341_q;

    // dsdk_ip_adapt_bitjoin337(BITJOIN,543)
    assign dsdk_ip_adapt_bitjoin337_q = dsdk_ip_adapt_bitjoin339_q;

    // dsdk_ip_adapt_bitjoin332(BITJOIN,542)
    assign dsdk_ip_adapt_bitjoin332_q = in_i_data_35_tpl;

    // dsdk_ip_adapt_bitjoin330(BITJOIN,541)
    assign dsdk_ip_adapt_bitjoin330_q = dsdk_ip_adapt_bitjoin332_q;

    // dsdk_ip_adapt_bitjoin328(BITJOIN,540)
    assign dsdk_ip_adapt_bitjoin328_q = dsdk_ip_adapt_bitjoin330_q;

    // dsdk_ip_adapt_bitjoin323(BITJOIN,539)
    assign dsdk_ip_adapt_bitjoin323_q = in_i_data_34_tpl;

    // dsdk_ip_adapt_bitjoin321(BITJOIN,538)
    assign dsdk_ip_adapt_bitjoin321_q = dsdk_ip_adapt_bitjoin323_q;

    // dsdk_ip_adapt_bitjoin319(BITJOIN,537)
    assign dsdk_ip_adapt_bitjoin319_q = dsdk_ip_adapt_bitjoin321_q;

    // dsdk_ip_adapt_bitjoin314(BITJOIN,536)
    assign dsdk_ip_adapt_bitjoin314_q = in_i_data_33_tpl;

    // dsdk_ip_adapt_bitjoin312(BITJOIN,535)
    assign dsdk_ip_adapt_bitjoin312_q = dsdk_ip_adapt_bitjoin314_q;

    // dsdk_ip_adapt_bitjoin310(BITJOIN,534)
    assign dsdk_ip_adapt_bitjoin310_q = dsdk_ip_adapt_bitjoin312_q;

    // dsdk_ip_adapt_bitjoin305(BITJOIN,533)
    assign dsdk_ip_adapt_bitjoin305_q = in_i_data_32_tpl;

    // dsdk_ip_adapt_bitjoin303(BITJOIN,532)
    assign dsdk_ip_adapt_bitjoin303_q = dsdk_ip_adapt_bitjoin305_q;

    // dsdk_ip_adapt_bitjoin301(BITJOIN,531)
    assign dsdk_ip_adapt_bitjoin301_q = dsdk_ip_adapt_bitjoin303_q;

    // dsdk_ip_array_adapt_bitjoin299(BITJOIN,788)
    assign dsdk_ip_array_adapt_bitjoin299_q = {dsdk_ip_adapt_bitjoin436_q, dsdk_ip_adapt_bitjoin427_q, dsdk_ip_adapt_bitjoin418_q, dsdk_ip_adapt_bitjoin409_q, dsdk_ip_adapt_bitjoin400_q, dsdk_ip_adapt_bitjoin391_q, dsdk_ip_adapt_bitjoin382_q, dsdk_ip_adapt_bitjoin373_q, dsdk_ip_adapt_bitjoin364_q, dsdk_ip_adapt_bitjoin355_q, dsdk_ip_adapt_bitjoin346_q, dsdk_ip_adapt_bitjoin337_q, dsdk_ip_adapt_bitjoin328_q, dsdk_ip_adapt_bitjoin319_q, dsdk_ip_adapt_bitjoin310_q, dsdk_ip_adapt_bitjoin301_q};

    // dsdk_ip_adapt_bitjoin293(BITJOIN,530)
    assign dsdk_ip_adapt_bitjoin293_q = in_i_data_31_tpl;

    // dsdk_ip_adapt_bitjoin291(BITJOIN,529)
    assign dsdk_ip_adapt_bitjoin291_q = dsdk_ip_adapt_bitjoin293_q;

    // dsdk_ip_adapt_bitjoin289(BITJOIN,527)
    assign dsdk_ip_adapt_bitjoin289_q = dsdk_ip_adapt_bitjoin291_q;

    // dsdk_ip_adapt_bitjoin284(BITJOIN,526)
    assign dsdk_ip_adapt_bitjoin284_q = in_i_data_30_tpl;

    // dsdk_ip_adapt_bitjoin282(BITJOIN,525)
    assign dsdk_ip_adapt_bitjoin282_q = dsdk_ip_adapt_bitjoin284_q;

    // dsdk_ip_adapt_bitjoin280(BITJOIN,524)
    assign dsdk_ip_adapt_bitjoin280_q = dsdk_ip_adapt_bitjoin282_q;

    // dsdk_ip_adapt_bitjoin275(BITJOIN,523)
    assign dsdk_ip_adapt_bitjoin275_q = in_i_data_29_tpl;

    // dsdk_ip_adapt_bitjoin273(BITJOIN,522)
    assign dsdk_ip_adapt_bitjoin273_q = dsdk_ip_adapt_bitjoin275_q;

    // dsdk_ip_adapt_bitjoin271(BITJOIN,521)
    assign dsdk_ip_adapt_bitjoin271_q = dsdk_ip_adapt_bitjoin273_q;

    // dsdk_ip_adapt_bitjoin266(BITJOIN,519)
    assign dsdk_ip_adapt_bitjoin266_q = in_i_data_28_tpl;

    // dsdk_ip_adapt_bitjoin264(BITJOIN,518)
    assign dsdk_ip_adapt_bitjoin264_q = dsdk_ip_adapt_bitjoin266_q;

    // dsdk_ip_adapt_bitjoin262(BITJOIN,517)
    assign dsdk_ip_adapt_bitjoin262_q = dsdk_ip_adapt_bitjoin264_q;

    // dsdk_ip_adapt_bitjoin257(BITJOIN,516)
    assign dsdk_ip_adapt_bitjoin257_q = in_i_data_27_tpl;

    // dsdk_ip_adapt_bitjoin255(BITJOIN,515)
    assign dsdk_ip_adapt_bitjoin255_q = dsdk_ip_adapt_bitjoin257_q;

    // dsdk_ip_adapt_bitjoin253(BITJOIN,514)
    assign dsdk_ip_adapt_bitjoin253_q = dsdk_ip_adapt_bitjoin255_q;

    // dsdk_ip_adapt_bitjoin248(BITJOIN,512)
    assign dsdk_ip_adapt_bitjoin248_q = in_i_data_26_tpl;

    // dsdk_ip_adapt_bitjoin246(BITJOIN,511)
    assign dsdk_ip_adapt_bitjoin246_q = dsdk_ip_adapt_bitjoin248_q;

    // dsdk_ip_adapt_bitjoin244(BITJOIN,510)
    assign dsdk_ip_adapt_bitjoin244_q = dsdk_ip_adapt_bitjoin246_q;

    // dsdk_ip_adapt_bitjoin239(BITJOIN,509)
    assign dsdk_ip_adapt_bitjoin239_q = in_i_data_25_tpl;

    // dsdk_ip_adapt_bitjoin237(BITJOIN,508)
    assign dsdk_ip_adapt_bitjoin237_q = dsdk_ip_adapt_bitjoin239_q;

    // dsdk_ip_adapt_bitjoin235(BITJOIN,507)
    assign dsdk_ip_adapt_bitjoin235_q = dsdk_ip_adapt_bitjoin237_q;

    // dsdk_ip_adapt_bitjoin230(BITJOIN,506)
    assign dsdk_ip_adapt_bitjoin230_q = in_i_data_24_tpl;

    // dsdk_ip_adapt_bitjoin228(BITJOIN,505)
    assign dsdk_ip_adapt_bitjoin228_q = dsdk_ip_adapt_bitjoin230_q;

    // dsdk_ip_adapt_bitjoin226(BITJOIN,504)
    assign dsdk_ip_adapt_bitjoin226_q = dsdk_ip_adapt_bitjoin228_q;

    // dsdk_ip_adapt_bitjoin221(BITJOIN,503)
    assign dsdk_ip_adapt_bitjoin221_q = in_i_data_23_tpl;

    // dsdk_ip_adapt_bitjoin219(BITJOIN,502)
    assign dsdk_ip_adapt_bitjoin219_q = dsdk_ip_adapt_bitjoin221_q;

    // dsdk_ip_adapt_bitjoin217(BITJOIN,501)
    assign dsdk_ip_adapt_bitjoin217_q = dsdk_ip_adapt_bitjoin219_q;

    // dsdk_ip_adapt_bitjoin212(BITJOIN,500)
    assign dsdk_ip_adapt_bitjoin212_q = in_i_data_22_tpl;

    // dsdk_ip_adapt_bitjoin210(BITJOIN,499)
    assign dsdk_ip_adapt_bitjoin210_q = dsdk_ip_adapt_bitjoin212_q;

    // dsdk_ip_adapt_bitjoin208(BITJOIN,498)
    assign dsdk_ip_adapt_bitjoin208_q = dsdk_ip_adapt_bitjoin210_q;

    // dsdk_ip_adapt_bitjoin203(BITJOIN,497)
    assign dsdk_ip_adapt_bitjoin203_q = in_i_data_21_tpl;

    // dsdk_ip_adapt_bitjoin201(BITJOIN,496)
    assign dsdk_ip_adapt_bitjoin201_q = dsdk_ip_adapt_bitjoin203_q;

    // dsdk_ip_adapt_bitjoin199(BITJOIN,494)
    assign dsdk_ip_adapt_bitjoin199_q = dsdk_ip_adapt_bitjoin201_q;

    // dsdk_ip_adapt_bitjoin194(BITJOIN,493)
    assign dsdk_ip_adapt_bitjoin194_q = in_i_data_20_tpl;

    // dsdk_ip_adapt_bitjoin192(BITJOIN,492)
    assign dsdk_ip_adapt_bitjoin192_q = dsdk_ip_adapt_bitjoin194_q;

    // dsdk_ip_adapt_bitjoin190(BITJOIN,491)
    assign dsdk_ip_adapt_bitjoin190_q = dsdk_ip_adapt_bitjoin192_q;

    // dsdk_ip_adapt_bitjoin185(BITJOIN,490)
    assign dsdk_ip_adapt_bitjoin185_q = in_i_data_19_tpl;

    // dsdk_ip_adapt_bitjoin183(BITJOIN,489)
    assign dsdk_ip_adapt_bitjoin183_q = dsdk_ip_adapt_bitjoin185_q;

    // dsdk_ip_adapt_bitjoin181(BITJOIN,488)
    assign dsdk_ip_adapt_bitjoin181_q = dsdk_ip_adapt_bitjoin183_q;

    // dsdk_ip_adapt_bitjoin176(BITJOIN,486)
    assign dsdk_ip_adapt_bitjoin176_q = in_i_data_18_tpl;

    // dsdk_ip_adapt_bitjoin174(BITJOIN,485)
    assign dsdk_ip_adapt_bitjoin174_q = dsdk_ip_adapt_bitjoin176_q;

    // dsdk_ip_adapt_bitjoin172(BITJOIN,484)
    assign dsdk_ip_adapt_bitjoin172_q = dsdk_ip_adapt_bitjoin174_q;

    // dsdk_ip_adapt_bitjoin167(BITJOIN,483)
    assign dsdk_ip_adapt_bitjoin167_q = in_i_data_17_tpl;

    // dsdk_ip_adapt_bitjoin165(BITJOIN,482)
    assign dsdk_ip_adapt_bitjoin165_q = dsdk_ip_adapt_bitjoin167_q;

    // dsdk_ip_adapt_bitjoin163(BITJOIN,481)
    assign dsdk_ip_adapt_bitjoin163_q = dsdk_ip_adapt_bitjoin165_q;

    // dsdk_ip_adapt_bitjoin158(BITJOIN,479)
    assign dsdk_ip_adapt_bitjoin158_q = in_i_data_16_tpl;

    // dsdk_ip_adapt_bitjoin156(BITJOIN,478)
    assign dsdk_ip_adapt_bitjoin156_q = dsdk_ip_adapt_bitjoin158_q;

    // dsdk_ip_adapt_bitjoin154(BITJOIN,477)
    assign dsdk_ip_adapt_bitjoin154_q = dsdk_ip_adapt_bitjoin156_q;

    // dsdk_ip_array_adapt_bitjoin152(BITJOIN,787)
    assign dsdk_ip_array_adapt_bitjoin152_q = {dsdk_ip_adapt_bitjoin289_q, dsdk_ip_adapt_bitjoin280_q, dsdk_ip_adapt_bitjoin271_q, dsdk_ip_adapt_bitjoin262_q, dsdk_ip_adapt_bitjoin253_q, dsdk_ip_adapt_bitjoin244_q, dsdk_ip_adapt_bitjoin235_q, dsdk_ip_adapt_bitjoin226_q, dsdk_ip_adapt_bitjoin217_q, dsdk_ip_adapt_bitjoin208_q, dsdk_ip_adapt_bitjoin199_q, dsdk_ip_adapt_bitjoin190_q, dsdk_ip_adapt_bitjoin181_q, dsdk_ip_adapt_bitjoin172_q, dsdk_ip_adapt_bitjoin163_q, dsdk_ip_adapt_bitjoin154_q};

    // dsdk_ip_adapt_bitjoin146(BITJOIN,476)
    assign dsdk_ip_adapt_bitjoin146_q = in_i_data_15_tpl;

    // dsdk_ip_adapt_bitjoin144(BITJOIN,475)
    assign dsdk_ip_adapt_bitjoin144_q = dsdk_ip_adapt_bitjoin146_q;

    // dsdk_ip_adapt_bitjoin142(BITJOIN,474)
    assign dsdk_ip_adapt_bitjoin142_q = dsdk_ip_adapt_bitjoin144_q;

    // dsdk_ip_adapt_bitjoin137(BITJOIN,473)
    assign dsdk_ip_adapt_bitjoin137_q = in_i_data_14_tpl;

    // dsdk_ip_adapt_bitjoin135(BITJOIN,472)
    assign dsdk_ip_adapt_bitjoin135_q = dsdk_ip_adapt_bitjoin137_q;

    // dsdk_ip_adapt_bitjoin133(BITJOIN,471)
    assign dsdk_ip_adapt_bitjoin133_q = dsdk_ip_adapt_bitjoin135_q;

    // dsdk_ip_adapt_bitjoin128(BITJOIN,470)
    assign dsdk_ip_adapt_bitjoin128_q = in_i_data_13_tpl;

    // dsdk_ip_adapt_bitjoin126(BITJOIN,469)
    assign dsdk_ip_adapt_bitjoin126_q = dsdk_ip_adapt_bitjoin128_q;

    // dsdk_ip_adapt_bitjoin124(BITJOIN,468)
    assign dsdk_ip_adapt_bitjoin124_q = dsdk_ip_adapt_bitjoin126_q;

    // dsdk_ip_adapt_bitjoin119(BITJOIN,467)
    assign dsdk_ip_adapt_bitjoin119_q = in_i_data_12_tpl;

    // dsdk_ip_adapt_bitjoin117(BITJOIN,463)
    assign dsdk_ip_adapt_bitjoin117_q = dsdk_ip_adapt_bitjoin119_q;

    // dsdk_ip_adapt_bitjoin115(BITJOIN,456)
    assign dsdk_ip_adapt_bitjoin115_q = dsdk_ip_adapt_bitjoin117_q;

    // dsdk_ip_adapt_bitjoin110(BITJOIN,438)
    assign dsdk_ip_adapt_bitjoin110_q = in_i_data_11_tpl;

    // dsdk_ip_adapt_bitjoin108(BITJOIN,429)
    assign dsdk_ip_adapt_bitjoin108_q = dsdk_ip_adapt_bitjoin110_q;

    // dsdk_ip_adapt_bitjoin106(BITJOIN,422)
    assign dsdk_ip_adapt_bitjoin106_q = dsdk_ip_adapt_bitjoin108_q;

    // dsdk_ip_adapt_bitjoin101(BITJOIN,405)
    assign dsdk_ip_adapt_bitjoin101_q = in_i_data_10_tpl;

    // dsdk_ip_adapt_bitjoin99(BITJOIN,781)
    assign dsdk_ip_adapt_bitjoin99_q = dsdk_ip_adapt_bitjoin101_q;

    // dsdk_ip_adapt_bitjoin97(BITJOIN,773)
    assign dsdk_ip_adapt_bitjoin97_q = dsdk_ip_adapt_bitjoin99_q;

    // dsdk_ip_adapt_bitjoin92(BITJOIN,756)
    assign dsdk_ip_adapt_bitjoin92_q = in_i_data_9_tpl;

    // dsdk_ip_adapt_bitjoin90(BITJOIN,748)
    assign dsdk_ip_adapt_bitjoin90_q = dsdk_ip_adapt_bitjoin92_q;

    // dsdk_ip_adapt_bitjoin88(BITJOIN,741)
    assign dsdk_ip_adapt_bitjoin88_q = dsdk_ip_adapt_bitjoin90_q;

    // dsdk_ip_adapt_bitjoin83(BITJOIN,723)
    assign dsdk_ip_adapt_bitjoin83_q = in_i_data_8_tpl;

    // dsdk_ip_adapt_bitjoin81(BITJOIN,716)
    assign dsdk_ip_adapt_bitjoin81_q = dsdk_ip_adapt_bitjoin83_q;

    // dsdk_ip_adapt_bitjoin79(BITJOIN,708)
    assign dsdk_ip_adapt_bitjoin79_q = dsdk_ip_adapt_bitjoin81_q;

    // dsdk_ip_adapt_bitjoin74(BITJOIN,690)
    assign dsdk_ip_adapt_bitjoin74_q = in_i_data_7_tpl;

    // dsdk_ip_adapt_bitjoin72(BITJOIN,683)
    assign dsdk_ip_adapt_bitjoin72_q = dsdk_ip_adapt_bitjoin74_q;

    // dsdk_ip_adapt_bitjoin70(BITJOIN,676)
    assign dsdk_ip_adapt_bitjoin70_q = dsdk_ip_adapt_bitjoin72_q;

    // dsdk_ip_adapt_bitjoin65(BITJOIN,657)
    assign dsdk_ip_adapt_bitjoin65_q = in_i_data_6_tpl;

    // dsdk_ip_adapt_bitjoin63(BITJOIN,649)
    assign dsdk_ip_adapt_bitjoin63_q = dsdk_ip_adapt_bitjoin65_q;

    // dsdk_ip_adapt_bitjoin61(BITJOIN,642)
    assign dsdk_ip_adapt_bitjoin61_q = dsdk_ip_adapt_bitjoin63_q;

    // dsdk_ip_adapt_bitjoin56(BITJOIN,625)
    assign dsdk_ip_adapt_bitjoin56_q = in_i_data_5_tpl;

    // dsdk_ip_adapt_bitjoin54(BITJOIN,617)
    assign dsdk_ip_adapt_bitjoin54_q = dsdk_ip_adapt_bitjoin56_q;

    // dsdk_ip_adapt_bitjoin52(BITJOIN,609)
    assign dsdk_ip_adapt_bitjoin52_q = dsdk_ip_adapt_bitjoin54_q;

    // dsdk_ip_adapt_bitjoin47(BITJOIN,592)
    assign dsdk_ip_adapt_bitjoin47_q = in_i_data_4_tpl;

    // dsdk_ip_adapt_bitjoin45(BITJOIN,584)
    assign dsdk_ip_adapt_bitjoin45_q = dsdk_ip_adapt_bitjoin47_q;

    // dsdk_ip_adapt_bitjoin43(BITJOIN,578)
    assign dsdk_ip_adapt_bitjoin43_q = dsdk_ip_adapt_bitjoin45_q;

    // dsdk_ip_adapt_bitjoin38(BITJOIN,560)
    assign dsdk_ip_adapt_bitjoin38_q = in_i_data_3_tpl;

    // dsdk_ip_adapt_bitjoin36(BITJOIN,553)
    assign dsdk_ip_adapt_bitjoin36_q = dsdk_ip_adapt_bitjoin38_q;

    // dsdk_ip_adapt_bitjoin34(BITJOIN,545)
    assign dsdk_ip_adapt_bitjoin34_q = dsdk_ip_adapt_bitjoin36_q;

    // dsdk_ip_adapt_bitjoin29(BITJOIN,528)
    assign dsdk_ip_adapt_bitjoin29_q = in_i_data_2_tpl;

    // dsdk_ip_adapt_bitjoin27(BITJOIN,520)
    assign dsdk_ip_adapt_bitjoin27_q = dsdk_ip_adapt_bitjoin29_q;

    // dsdk_ip_adapt_bitjoin25(BITJOIN,513)
    assign dsdk_ip_adapt_bitjoin25_q = dsdk_ip_adapt_bitjoin27_q;

    // dsdk_ip_adapt_bitjoin20(BITJOIN,495)
    assign dsdk_ip_adapt_bitjoin20_q = in_i_data_1_tpl;

    // dsdk_ip_adapt_bitjoin18(BITJOIN,487)
    assign dsdk_ip_adapt_bitjoin18_q = dsdk_ip_adapt_bitjoin20_q;

    // dsdk_ip_adapt_bitjoin16(BITJOIN,480)
    assign dsdk_ip_adapt_bitjoin16_q = dsdk_ip_adapt_bitjoin18_q;

    // dsdk_ip_adapt_bitjoin11(BITJOIN,437)
    assign dsdk_ip_adapt_bitjoin11_q = in_i_data_0_tpl;

    // dsdk_ip_adapt_bitjoin9(BITJOIN,747)
    assign dsdk_ip_adapt_bitjoin9_q = dsdk_ip_adapt_bitjoin11_q;

    // dsdk_ip_adapt_bitjoin7(BITJOIN,675)
    assign dsdk_ip_adapt_bitjoin7_q = dsdk_ip_adapt_bitjoin9_q;

    // dsdk_ip_array_adapt_bitjoin5(BITJOIN,791)
    assign dsdk_ip_array_adapt_bitjoin5_q = {dsdk_ip_adapt_bitjoin142_q, dsdk_ip_adapt_bitjoin133_q, dsdk_ip_adapt_bitjoin124_q, dsdk_ip_adapt_bitjoin115_q, dsdk_ip_adapt_bitjoin106_q, dsdk_ip_adapt_bitjoin97_q, dsdk_ip_adapt_bitjoin88_q, dsdk_ip_adapt_bitjoin79_q, dsdk_ip_adapt_bitjoin70_q, dsdk_ip_adapt_bitjoin61_q, dsdk_ip_adapt_bitjoin52_q, dsdk_ip_adapt_bitjoin43_q, dsdk_ip_adapt_bitjoin34_q, dsdk_ip_adapt_bitjoin25_q, dsdk_ip_adapt_bitjoin16_q, dsdk_ip_adapt_bitjoin7_q};

    // dsdk_ip_array_adapt_bitjoin3(BITJOIN,789)
    assign dsdk_ip_array_adapt_bitjoin3_q = {dsdk_ip_array_adapt_bitjoin1034_q, dsdk_ip_array_adapt_bitjoin887_q, dsdk_ip_array_adapt_bitjoin740_q, dsdk_ip_array_adapt_bitjoin593_q, dsdk_ip_array_adapt_bitjoin446_q, dsdk_ip_array_adapt_bitjoin299_q, dsdk_ip_array_adapt_bitjoin152_q, dsdk_ip_array_adapt_bitjoin5_q};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,401)
    assign dsdk_ip_adapt_bitjoin1_q = dsdk_ip_array_adapt_bitjoin3_q;

    // iowr(EXTIFACE,795)
    assign iowr_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign iowr_i_endofpacket = GND_q;
    assign iowr_i_fifoready = in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready;
    assign iowr_i_fifosize = dupName_0_const_0_x_q;
    assign iowr_i_packetempty = dupName_0_const_0_x_q;
    assign iowr_i_predicate = in_c0_exe2347;
    assign iowr_i_stall = in_i_stall;
    assign iowr_i_startofpacket = GND_q;
    assign iowr_i_valid = in_i_valid;
    assign iowr_i_endofpacket_bitsignaltemp = iowr_i_endofpacket[0];
    assign iowr_i_fifoready_bitsignaltemp = iowr_i_fifoready[0];
    assign iowr_i_predicate_bitsignaltemp = iowr_i_predicate[0];
    assign iowr_i_stall_bitsignaltemp = iowr_i_stall[0];
    assign iowr_i_startofpacket_bitsignaltemp = iowr_i_startofpacket[0];
    assign iowr_i_valid_bitsignaltemp = iowr_i_valid[0];
    assign iowr_o_ack[0] = iowr_o_ack_bitsignaltemp;
    assign iowr_o_fifovalid[0] = iowr_o_fifovalid_bitsignaltemp;
    assign iowr_o_stall[0] = iowr_o_stall_bitsignaltemp;
    assign iowr_o_valid[0] = iowr_o_valid_bitsignaltemp;
    hld_iowr #(
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_DOWNSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(1024),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiowr (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_endofpacket(iowr_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_i_fifoready_bitsignaltemp),
        .i_fifosize(dupName_0_const_0_x_q),
        .i_packetempty(dupName_0_const_0_x_q),
        .i_predicate(iowr_i_predicate_bitsignaltemp),
        .i_stall(iowr_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_i_valid_bitsignaltemp),
        .o_ack(iowr_o_ack_bitsignaltemp),
        .o_fifodata(iowr_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_o_stall_bitsignaltemp),
        .o_valid(iowr_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = iowr_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,4)@10
    assign out_o_ack = iowr_o_ack;
    assign out_o_valid = iowr_o_valid;

    // regfree_osync(GPOUT,797)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = iowr_o_fifodata;

    // sync_out(GPOUT,799)@20000000
    assign out_o_stall = iowr_o_stall;

endmodule
