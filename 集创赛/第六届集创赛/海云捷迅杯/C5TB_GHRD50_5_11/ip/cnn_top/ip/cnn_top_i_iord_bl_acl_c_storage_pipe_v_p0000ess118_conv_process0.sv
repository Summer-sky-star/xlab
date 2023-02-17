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

// SystemVerilog created from cnn_top_i_iord_bl_acl_c_storage_pipe_v_p0000ess118_conv_process0
// SystemVerilog created on Fri Mar  4 14:17:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_i_iord_bl_acl_c_storage_pipe_v_p0000ess118_conv_process0 (
    output wire [7:0] out_o_data_0_tpl,
    output wire [7:0] out_o_data_1_tpl,
    output wire [7:0] out_o_data_2_tpl,
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
    output wire [0:0] out_o_valid,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    input wire [1023:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c1_exe2,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [1023:0] iord_i_fifodata;
    wire [0:0] iord_i_fifoempty;
    wire iord_i_fifoempty_bitsignaltemp;
    wire [0:0] iord_i_fifoendofpacket;
    wire iord_i_fifoendofpacket_bitsignaltemp;
    wire [31:0] iord_i_fifosize;
    wire [0:0] iord_i_fifostartofpacket;
    wire iord_i_fifostartofpacket_bitsignaltemp;
    wire [0:0] iord_i_fifovalid;
    wire iord_i_fifovalid_bitsignaltemp;
    wire [0:0] iord_i_predicate;
    wire iord_i_predicate_bitsignaltemp;
    wire [0:0] iord_i_stall;
    wire iord_i_stall_bitsignaltemp;
    wire [0:0] iord_i_valid;
    wire iord_i_valid_bitsignaltemp;
    wire [1023:0] iord_o_data;
    wire [0:0] iord_o_fifoalmost_full;
    wire iord_o_fifoalmost_full_bitsignaltemp;
    wire [0:0] iord_o_fifoready;
    wire iord_o_fifoready_bitsignaltemp;
    wire [0:0] iord_o_stall;
    wire iord_o_stall_bitsignaltemp;
    wire [0:0] iord_o_valid;
    wire iord_o_valid_bitsignaltemp;
    wire [31:0] iord_profile_total_fifo_size_incr;
    wire [7:0] ip_dsdk_adapt_bitselect1004_b;
    wire [7:0] ip_dsdk_adapt_bitselect1012_b;
    wire [7:0] ip_dsdk_adapt_bitselect102_b;
    wire [7:0] ip_dsdk_adapt_bitselect1020_b;
    wire [7:0] ip_dsdk_adapt_bitselect1028_b;
    wire [7:0] ip_dsdk_adapt_bitselect1036_b;
    wire [7:0] ip_dsdk_adapt_bitselect110_b;
    wire [7:0] ip_dsdk_adapt_bitselect118_b;
    wire [7:0] ip_dsdk_adapt_bitselect126_b;
    wire [127:0] ip_dsdk_adapt_bitselect134_b;
    wire [7:0] ip_dsdk_adapt_bitselect136_b;
    wire [7:0] ip_dsdk_adapt_bitselect14_b;
    wire [7:0] ip_dsdk_adapt_bitselect144_b;
    wire [7:0] ip_dsdk_adapt_bitselect152_b;
    wire [7:0] ip_dsdk_adapt_bitselect160_b;
    wire [7:0] ip_dsdk_adapt_bitselect168_b;
    wire [7:0] ip_dsdk_adapt_bitselect176_b;
    wire [7:0] ip_dsdk_adapt_bitselect184_b;
    wire [7:0] ip_dsdk_adapt_bitselect192_b;
    wire [7:0] ip_dsdk_adapt_bitselect200_b;
    wire [7:0] ip_dsdk_adapt_bitselect208_b;
    wire [7:0] ip_dsdk_adapt_bitselect216_b;
    wire [7:0] ip_dsdk_adapt_bitselect22_b;
    wire [7:0] ip_dsdk_adapt_bitselect224_b;
    wire [7:0] ip_dsdk_adapt_bitselect232_b;
    wire [7:0] ip_dsdk_adapt_bitselect240_b;
    wire [7:0] ip_dsdk_adapt_bitselect248_b;
    wire [7:0] ip_dsdk_adapt_bitselect256_b;
    wire [127:0] ip_dsdk_adapt_bitselect264_b;
    wire [7:0] ip_dsdk_adapt_bitselect266_b;
    wire [7:0] ip_dsdk_adapt_bitselect274_b;
    wire [7:0] ip_dsdk_adapt_bitselect282_b;
    wire [7:0] ip_dsdk_adapt_bitselect290_b;
    wire [7:0] ip_dsdk_adapt_bitselect298_b;
    wire [7:0] ip_dsdk_adapt_bitselect30_b;
    wire [7:0] ip_dsdk_adapt_bitselect306_b;
    wire [7:0] ip_dsdk_adapt_bitselect314_b;
    wire [7:0] ip_dsdk_adapt_bitselect322_b;
    wire [7:0] ip_dsdk_adapt_bitselect330_b;
    wire [7:0] ip_dsdk_adapt_bitselect338_b;
    wire [7:0] ip_dsdk_adapt_bitselect346_b;
    wire [7:0] ip_dsdk_adapt_bitselect354_b;
    wire [7:0] ip_dsdk_adapt_bitselect362_b;
    wire [7:0] ip_dsdk_adapt_bitselect370_b;
    wire [7:0] ip_dsdk_adapt_bitselect378_b;
    wire [7:0] ip_dsdk_adapt_bitselect38_b;
    wire [7:0] ip_dsdk_adapt_bitselect386_b;
    wire [127:0] ip_dsdk_adapt_bitselect394_b;
    wire [7:0] ip_dsdk_adapt_bitselect396_b;
    wire [127:0] ip_dsdk_adapt_bitselect4_b;
    wire [7:0] ip_dsdk_adapt_bitselect404_b;
    wire [7:0] ip_dsdk_adapt_bitselect412_b;
    wire [7:0] ip_dsdk_adapt_bitselect420_b;
    wire [7:0] ip_dsdk_adapt_bitselect428_b;
    wire [7:0] ip_dsdk_adapt_bitselect436_b;
    wire [7:0] ip_dsdk_adapt_bitselect444_b;
    wire [7:0] ip_dsdk_adapt_bitselect452_b;
    wire [7:0] ip_dsdk_adapt_bitselect46_b;
    wire [7:0] ip_dsdk_adapt_bitselect460_b;
    wire [7:0] ip_dsdk_adapt_bitselect468_b;
    wire [7:0] ip_dsdk_adapt_bitselect476_b;
    wire [7:0] ip_dsdk_adapt_bitselect484_b;
    wire [7:0] ip_dsdk_adapt_bitselect492_b;
    wire [7:0] ip_dsdk_adapt_bitselect500_b;
    wire [7:0] ip_dsdk_adapt_bitselect508_b;
    wire [7:0] ip_dsdk_adapt_bitselect516_b;
    wire [127:0] ip_dsdk_adapt_bitselect524_b;
    wire [7:0] ip_dsdk_adapt_bitselect526_b;
    wire [7:0] ip_dsdk_adapt_bitselect534_b;
    wire [7:0] ip_dsdk_adapt_bitselect54_b;
    wire [7:0] ip_dsdk_adapt_bitselect542_b;
    wire [7:0] ip_dsdk_adapt_bitselect550_b;
    wire [7:0] ip_dsdk_adapt_bitselect558_b;
    wire [7:0] ip_dsdk_adapt_bitselect566_b;
    wire [7:0] ip_dsdk_adapt_bitselect574_b;
    wire [7:0] ip_dsdk_adapt_bitselect582_b;
    wire [7:0] ip_dsdk_adapt_bitselect590_b;
    wire [7:0] ip_dsdk_adapt_bitselect598_b;
    wire [7:0] ip_dsdk_adapt_bitselect6_b;
    wire [7:0] ip_dsdk_adapt_bitselect606_b;
    wire [7:0] ip_dsdk_adapt_bitselect614_b;
    wire [7:0] ip_dsdk_adapt_bitselect62_b;
    wire [7:0] ip_dsdk_adapt_bitselect622_b;
    wire [7:0] ip_dsdk_adapt_bitselect630_b;
    wire [7:0] ip_dsdk_adapt_bitselect638_b;
    wire [7:0] ip_dsdk_adapt_bitselect646_b;
    wire [127:0] ip_dsdk_adapt_bitselect654_b;
    wire [7:0] ip_dsdk_adapt_bitselect656_b;
    wire [7:0] ip_dsdk_adapt_bitselect664_b;
    wire [7:0] ip_dsdk_adapt_bitselect672_b;
    wire [7:0] ip_dsdk_adapt_bitselect680_b;
    wire [7:0] ip_dsdk_adapt_bitselect688_b;
    wire [7:0] ip_dsdk_adapt_bitselect696_b;
    wire [7:0] ip_dsdk_adapt_bitselect70_b;
    wire [7:0] ip_dsdk_adapt_bitselect704_b;
    wire [7:0] ip_dsdk_adapt_bitselect712_b;
    wire [7:0] ip_dsdk_adapt_bitselect720_b;
    wire [7:0] ip_dsdk_adapt_bitselect728_b;
    wire [7:0] ip_dsdk_adapt_bitselect736_b;
    wire [7:0] ip_dsdk_adapt_bitselect744_b;
    wire [7:0] ip_dsdk_adapt_bitselect752_b;
    wire [7:0] ip_dsdk_adapt_bitselect760_b;
    wire [7:0] ip_dsdk_adapt_bitselect768_b;
    wire [7:0] ip_dsdk_adapt_bitselect776_b;
    wire [7:0] ip_dsdk_adapt_bitselect78_b;
    wire [127:0] ip_dsdk_adapt_bitselect784_b;
    wire [7:0] ip_dsdk_adapt_bitselect786_b;
    wire [7:0] ip_dsdk_adapt_bitselect794_b;
    wire [7:0] ip_dsdk_adapt_bitselect802_b;
    wire [7:0] ip_dsdk_adapt_bitselect810_b;
    wire [7:0] ip_dsdk_adapt_bitselect818_b;
    wire [7:0] ip_dsdk_adapt_bitselect826_b;
    wire [7:0] ip_dsdk_adapt_bitselect834_b;
    wire [7:0] ip_dsdk_adapt_bitselect842_b;
    wire [7:0] ip_dsdk_adapt_bitselect850_b;
    wire [7:0] ip_dsdk_adapt_bitselect858_b;
    wire [7:0] ip_dsdk_adapt_bitselect86_b;
    wire [7:0] ip_dsdk_adapt_bitselect866_b;
    wire [7:0] ip_dsdk_adapt_bitselect874_b;
    wire [7:0] ip_dsdk_adapt_bitselect882_b;
    wire [7:0] ip_dsdk_adapt_bitselect890_b;
    wire [7:0] ip_dsdk_adapt_bitselect898_b;
    wire [7:0] ip_dsdk_adapt_bitselect906_b;
    wire [127:0] ip_dsdk_adapt_bitselect914_b;
    wire [7:0] ip_dsdk_adapt_bitselect916_b;
    wire [7:0] ip_dsdk_adapt_bitselect924_b;
    wire [7:0] ip_dsdk_adapt_bitselect932_b;
    wire [7:0] ip_dsdk_adapt_bitselect94_b;
    wire [7:0] ip_dsdk_adapt_bitselect940_b;
    wire [7:0] ip_dsdk_adapt_bitselect948_b;
    wire [7:0] ip_dsdk_adapt_bitselect956_b;
    wire [7:0] ip_dsdk_adapt_bitselect964_b;
    wire [7:0] ip_dsdk_adapt_bitselect972_b;
    wire [7:0] ip_dsdk_adapt_bitselect980_b;
    wire [7:0] ip_dsdk_adapt_bitselect988_b;
    wire [7:0] ip_dsdk_adapt_bitselect996_b;


    // c32_0(CONSTANT,5)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord(EXTIFACE,6)
    assign iord_i_fifodata = in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata;
    assign iord_i_fifoempty = GND_q;
    assign iord_i_fifoendofpacket = GND_q;
    assign iord_i_fifosize = c32_0_q;
    assign iord_i_fifostartofpacket = GND_q;
    assign iord_i_fifovalid = in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid;
    assign iord_i_predicate = in_c1_exe2;
    assign iord_i_stall = in_i_stall;
    assign iord_i_valid = in_i_valid;
    assign iord_i_fifoempty_bitsignaltemp = iord_i_fifoempty[0];
    assign iord_i_fifoendofpacket_bitsignaltemp = iord_i_fifoendofpacket[0];
    assign iord_i_fifostartofpacket_bitsignaltemp = iord_i_fifostartofpacket[0];
    assign iord_i_fifovalid_bitsignaltemp = iord_i_fifovalid[0];
    assign iord_i_predicate_bitsignaltemp = iord_i_predicate[0];
    assign iord_i_stall_bitsignaltemp = iord_i_stall[0];
    assign iord_i_valid_bitsignaltemp = iord_i_valid[0];
    assign iord_o_fifoalmost_full[0] = iord_o_fifoalmost_full_bitsignaltemp;
    assign iord_o_fifoready[0] = iord_o_fifoready_bitsignaltemp;
    assign iord_o_stall[0] = iord_o_stall_bitsignaltemp;
    assign iord_o_valid[0] = iord_o_valid_bitsignaltemp;
    hld_iord #(
        .ADD_CAPACITY_UPSTREAM(0),
        .ALMOST_FULL_CUTOFF_SIDEPATH(0),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_UPSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .STAGING_CAPACITY(0),
        .USE_STALL_LATENCY_SIDEPATH(0),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .CUTPATHS(0),
        .DATA_WIDTH(1024),
        .EMPTY_WIDTH(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiord (
        .i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .i_fifoempty(iord_i_fifoempty_bitsignaltemp),
        .i_fifoendofpacket(iord_i_fifoendofpacket_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_fifostartofpacket(iord_i_fifostartofpacket_bitsignaltemp),
        .i_fifovalid(iord_i_fifovalid_bitsignaltemp),
        .i_predicate(iord_i_predicate_bitsignaltemp),
        .i_stall(iord_i_stall_bitsignaltemp),
        .i_valid(iord_i_valid_bitsignaltemp),
        .o_data(iord_o_data),
        .o_fifoalmost_full(iord_o_fifoalmost_full_bitsignaltemp),
        .o_fifoready(iord_o_fifoready_bitsignaltemp),
        .o_stall(iord_o_stall_bitsignaltemp),
        .o_valid(iord_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect914(BITSELECT,481)
    assign ip_dsdk_adapt_bitselect914_b = iord_o_data[1023:896];

    // ip_dsdk_adapt_bitselect1036(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect1036_b = ip_dsdk_adapt_bitselect914_b[127:120];

    // ip_dsdk_adapt_bitselect1028(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect1028_b = ip_dsdk_adapt_bitselect914_b[119:112];

    // ip_dsdk_adapt_bitselect1020(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect1020_b = ip_dsdk_adapt_bitselect914_b[111:104];

    // ip_dsdk_adapt_bitselect1012(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect1012_b = ip_dsdk_adapt_bitselect914_b[103:96];

    // ip_dsdk_adapt_bitselect1004(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect1004_b = ip_dsdk_adapt_bitselect914_b[95:88];

    // ip_dsdk_adapt_bitselect996(BITSELECT,526)
    assign ip_dsdk_adapt_bitselect996_b = ip_dsdk_adapt_bitselect914_b[87:80];

    // ip_dsdk_adapt_bitselect988(BITSELECT,522)
    assign ip_dsdk_adapt_bitselect988_b = ip_dsdk_adapt_bitselect914_b[79:72];

    // ip_dsdk_adapt_bitselect980(BITSELECT,518)
    assign ip_dsdk_adapt_bitselect980_b = ip_dsdk_adapt_bitselect914_b[71:64];

    // ip_dsdk_adapt_bitselect972(BITSELECT,513)
    assign ip_dsdk_adapt_bitselect972_b = ip_dsdk_adapt_bitselect914_b[63:56];

    // ip_dsdk_adapt_bitselect964(BITSELECT,509)
    assign ip_dsdk_adapt_bitselect964_b = ip_dsdk_adapt_bitselect914_b[55:48];

    // ip_dsdk_adapt_bitselect956(BITSELECT,504)
    assign ip_dsdk_adapt_bitselect956_b = ip_dsdk_adapt_bitselect914_b[47:40];

    // ip_dsdk_adapt_bitselect948(BITSELECT,500)
    assign ip_dsdk_adapt_bitselect948_b = ip_dsdk_adapt_bitselect914_b[39:32];

    // ip_dsdk_adapt_bitselect940(BITSELECT,496)
    assign ip_dsdk_adapt_bitselect940_b = ip_dsdk_adapt_bitselect914_b[31:24];

    // ip_dsdk_adapt_bitselect932(BITSELECT,491)
    assign ip_dsdk_adapt_bitselect932_b = ip_dsdk_adapt_bitselect914_b[23:16];

    // ip_dsdk_adapt_bitselect924(BITSELECT,487)
    assign ip_dsdk_adapt_bitselect924_b = ip_dsdk_adapt_bitselect914_b[15:8];

    // ip_dsdk_adapt_bitselect916(BITSELECT,482)
    assign ip_dsdk_adapt_bitselect916_b = ip_dsdk_adapt_bitselect914_b[7:0];

    // ip_dsdk_adapt_bitselect784(BITSELECT,409)
    assign ip_dsdk_adapt_bitselect784_b = iord_o_data[895:768];

    // ip_dsdk_adapt_bitselect906(BITSELECT,477)
    assign ip_dsdk_adapt_bitselect906_b = ip_dsdk_adapt_bitselect784_b[127:120];

    // ip_dsdk_adapt_bitselect898(BITSELECT,472)
    assign ip_dsdk_adapt_bitselect898_b = ip_dsdk_adapt_bitselect784_b[119:112];

    // ip_dsdk_adapt_bitselect890(BITSELECT,468)
    assign ip_dsdk_adapt_bitselect890_b = ip_dsdk_adapt_bitselect784_b[111:104];

    // ip_dsdk_adapt_bitselect882(BITSELECT,464)
    assign ip_dsdk_adapt_bitselect882_b = ip_dsdk_adapt_bitselect784_b[103:96];

    // ip_dsdk_adapt_bitselect874(BITSELECT,459)
    assign ip_dsdk_adapt_bitselect874_b = ip_dsdk_adapt_bitselect784_b[95:88];

    // ip_dsdk_adapt_bitselect866(BITSELECT,455)
    assign ip_dsdk_adapt_bitselect866_b = ip_dsdk_adapt_bitselect784_b[87:80];

    // ip_dsdk_adapt_bitselect858(BITSELECT,450)
    assign ip_dsdk_adapt_bitselect858_b = ip_dsdk_adapt_bitselect784_b[79:72];

    // ip_dsdk_adapt_bitselect850(BITSELECT,446)
    assign ip_dsdk_adapt_bitselect850_b = ip_dsdk_adapt_bitselect784_b[71:64];

    // ip_dsdk_adapt_bitselect842(BITSELECT,442)
    assign ip_dsdk_adapt_bitselect842_b = ip_dsdk_adapt_bitselect784_b[63:56];

    // ip_dsdk_adapt_bitselect834(BITSELECT,437)
    assign ip_dsdk_adapt_bitselect834_b = ip_dsdk_adapt_bitselect784_b[55:48];

    // ip_dsdk_adapt_bitselect826(BITSELECT,433)
    assign ip_dsdk_adapt_bitselect826_b = ip_dsdk_adapt_bitselect784_b[47:40];

    // ip_dsdk_adapt_bitselect818(BITSELECT,428)
    assign ip_dsdk_adapt_bitselect818_b = ip_dsdk_adapt_bitselect784_b[39:32];

    // ip_dsdk_adapt_bitselect810(BITSELECT,424)
    assign ip_dsdk_adapt_bitselect810_b = ip_dsdk_adapt_bitselect784_b[31:24];

    // ip_dsdk_adapt_bitselect802(BITSELECT,420)
    assign ip_dsdk_adapt_bitselect802_b = ip_dsdk_adapt_bitselect784_b[23:16];

    // ip_dsdk_adapt_bitselect794(BITSELECT,414)
    assign ip_dsdk_adapt_bitselect794_b = ip_dsdk_adapt_bitselect784_b[15:8];

    // ip_dsdk_adapt_bitselect786(BITSELECT,410)
    assign ip_dsdk_adapt_bitselect786_b = ip_dsdk_adapt_bitselect784_b[7:0];

    // ip_dsdk_adapt_bitselect654(BITSELECT,337)
    assign ip_dsdk_adapt_bitselect654_b = iord_o_data[767:640];

    // ip_dsdk_adapt_bitselect776(BITSELECT,404)
    assign ip_dsdk_adapt_bitselect776_b = ip_dsdk_adapt_bitselect654_b[127:120];

    // ip_dsdk_adapt_bitselect768(BITSELECT,400)
    assign ip_dsdk_adapt_bitselect768_b = ip_dsdk_adapt_bitselect654_b[119:112];

    // ip_dsdk_adapt_bitselect760(BITSELECT,396)
    assign ip_dsdk_adapt_bitselect760_b = ip_dsdk_adapt_bitselect654_b[111:104];

    // ip_dsdk_adapt_bitselect752(BITSELECT,391)
    assign ip_dsdk_adapt_bitselect752_b = ip_dsdk_adapt_bitselect654_b[103:96];

    // ip_dsdk_adapt_bitselect744(BITSELECT,387)
    assign ip_dsdk_adapt_bitselect744_b = ip_dsdk_adapt_bitselect654_b[95:88];

    // ip_dsdk_adapt_bitselect736(BITSELECT,382)
    assign ip_dsdk_adapt_bitselect736_b = ip_dsdk_adapt_bitselect654_b[87:80];

    // ip_dsdk_adapt_bitselect728(BITSELECT,378)
    assign ip_dsdk_adapt_bitselect728_b = ip_dsdk_adapt_bitselect654_b[79:72];

    // ip_dsdk_adapt_bitselect720(BITSELECT,374)
    assign ip_dsdk_adapt_bitselect720_b = ip_dsdk_adapt_bitselect654_b[71:64];

    // ip_dsdk_adapt_bitselect712(BITSELECT,369)
    assign ip_dsdk_adapt_bitselect712_b = ip_dsdk_adapt_bitselect654_b[63:56];

    // ip_dsdk_adapt_bitselect704(BITSELECT,365)
    assign ip_dsdk_adapt_bitselect704_b = ip_dsdk_adapt_bitselect654_b[55:48];

    // ip_dsdk_adapt_bitselect696(BITSELECT,360)
    assign ip_dsdk_adapt_bitselect696_b = ip_dsdk_adapt_bitselect654_b[47:40];

    // ip_dsdk_adapt_bitselect688(BITSELECT,356)
    assign ip_dsdk_adapt_bitselect688_b = ip_dsdk_adapt_bitselect654_b[39:32];

    // ip_dsdk_adapt_bitselect680(BITSELECT,352)
    assign ip_dsdk_adapt_bitselect680_b = ip_dsdk_adapt_bitselect654_b[31:24];

    // ip_dsdk_adapt_bitselect672(BITSELECT,347)
    assign ip_dsdk_adapt_bitselect672_b = ip_dsdk_adapt_bitselect654_b[23:16];

    // ip_dsdk_adapt_bitselect664(BITSELECT,343)
    assign ip_dsdk_adapt_bitselect664_b = ip_dsdk_adapt_bitselect654_b[15:8];

    // ip_dsdk_adapt_bitselect656(BITSELECT,338)
    assign ip_dsdk_adapt_bitselect656_b = ip_dsdk_adapt_bitselect654_b[7:0];

    // ip_dsdk_adapt_bitselect524(BITSELECT,265)
    assign ip_dsdk_adapt_bitselect524_b = iord_o_data[639:512];

    // ip_dsdk_adapt_bitselect646(BITSELECT,333)
    assign ip_dsdk_adapt_bitselect646_b = ip_dsdk_adapt_bitselect524_b[127:120];

    // ip_dsdk_adapt_bitselect638(BITSELECT,328)
    assign ip_dsdk_adapt_bitselect638_b = ip_dsdk_adapt_bitselect524_b[119:112];

    // ip_dsdk_adapt_bitselect630(BITSELECT,324)
    assign ip_dsdk_adapt_bitselect630_b = ip_dsdk_adapt_bitselect524_b[111:104];

    // ip_dsdk_adapt_bitselect622(BITSELECT,320)
    assign ip_dsdk_adapt_bitselect622_b = ip_dsdk_adapt_bitselect524_b[103:96];

    // ip_dsdk_adapt_bitselect614(BITSELECT,315)
    assign ip_dsdk_adapt_bitselect614_b = ip_dsdk_adapt_bitselect524_b[95:88];

    // ip_dsdk_adapt_bitselect606(BITSELECT,311)
    assign ip_dsdk_adapt_bitselect606_b = ip_dsdk_adapt_bitselect524_b[87:80];

    // ip_dsdk_adapt_bitselect598(BITSELECT,305)
    assign ip_dsdk_adapt_bitselect598_b = ip_dsdk_adapt_bitselect524_b[79:72];

    // ip_dsdk_adapt_bitselect590(BITSELECT,301)
    assign ip_dsdk_adapt_bitselect590_b = ip_dsdk_adapt_bitselect524_b[71:64];

    // ip_dsdk_adapt_bitselect582(BITSELECT,297)
    assign ip_dsdk_adapt_bitselect582_b = ip_dsdk_adapt_bitselect524_b[63:56];

    // ip_dsdk_adapt_bitselect574(BITSELECT,292)
    assign ip_dsdk_adapt_bitselect574_b = ip_dsdk_adapt_bitselect524_b[55:48];

    // ip_dsdk_adapt_bitselect566(BITSELECT,288)
    assign ip_dsdk_adapt_bitselect566_b = ip_dsdk_adapt_bitselect524_b[47:40];

    // ip_dsdk_adapt_bitselect558(BITSELECT,283)
    assign ip_dsdk_adapt_bitselect558_b = ip_dsdk_adapt_bitselect524_b[39:32];

    // ip_dsdk_adapt_bitselect550(BITSELECT,279)
    assign ip_dsdk_adapt_bitselect550_b = ip_dsdk_adapt_bitselect524_b[31:24];

    // ip_dsdk_adapt_bitselect542(BITSELECT,275)
    assign ip_dsdk_adapt_bitselect542_b = ip_dsdk_adapt_bitselect524_b[23:16];

    // ip_dsdk_adapt_bitselect534(BITSELECT,270)
    assign ip_dsdk_adapt_bitselect534_b = ip_dsdk_adapt_bitselect524_b[15:8];

    // ip_dsdk_adapt_bitselect526(BITSELECT,266)
    assign ip_dsdk_adapt_bitselect526_b = ip_dsdk_adapt_bitselect524_b[7:0];

    // ip_dsdk_adapt_bitselect394(BITSELECT,192)
    assign ip_dsdk_adapt_bitselect394_b = iord_o_data[511:384];

    // ip_dsdk_adapt_bitselect516(BITSELECT,260)
    assign ip_dsdk_adapt_bitselect516_b = ip_dsdk_adapt_bitselect394_b[127:120];

    // ip_dsdk_adapt_bitselect508(BITSELECT,256)
    assign ip_dsdk_adapt_bitselect508_b = ip_dsdk_adapt_bitselect394_b[119:112];

    // ip_dsdk_adapt_bitselect500(BITSELECT,252)
    assign ip_dsdk_adapt_bitselect500_b = ip_dsdk_adapt_bitselect394_b[111:104];

    // ip_dsdk_adapt_bitselect492(BITSELECT,247)
    assign ip_dsdk_adapt_bitselect492_b = ip_dsdk_adapt_bitselect394_b[103:96];

    // ip_dsdk_adapt_bitselect484(BITSELECT,243)
    assign ip_dsdk_adapt_bitselect484_b = ip_dsdk_adapt_bitselect394_b[95:88];

    // ip_dsdk_adapt_bitselect476(BITSELECT,238)
    assign ip_dsdk_adapt_bitselect476_b = ip_dsdk_adapt_bitselect394_b[87:80];

    // ip_dsdk_adapt_bitselect468(BITSELECT,234)
    assign ip_dsdk_adapt_bitselect468_b = ip_dsdk_adapt_bitselect394_b[79:72];

    // ip_dsdk_adapt_bitselect460(BITSELECT,230)
    assign ip_dsdk_adapt_bitselect460_b = ip_dsdk_adapt_bitselect394_b[71:64];

    // ip_dsdk_adapt_bitselect452(BITSELECT,225)
    assign ip_dsdk_adapt_bitselect452_b = ip_dsdk_adapt_bitselect394_b[63:56];

    // ip_dsdk_adapt_bitselect444(BITSELECT,221)
    assign ip_dsdk_adapt_bitselect444_b = ip_dsdk_adapt_bitselect394_b[55:48];

    // ip_dsdk_adapt_bitselect436(BITSELECT,216)
    assign ip_dsdk_adapt_bitselect436_b = ip_dsdk_adapt_bitselect394_b[47:40];

    // ip_dsdk_adapt_bitselect428(BITSELECT,212)
    assign ip_dsdk_adapt_bitselect428_b = ip_dsdk_adapt_bitselect394_b[39:32];

    // ip_dsdk_adapt_bitselect420(BITSELECT,208)
    assign ip_dsdk_adapt_bitselect420_b = ip_dsdk_adapt_bitselect394_b[31:24];

    // ip_dsdk_adapt_bitselect412(BITSELECT,203)
    assign ip_dsdk_adapt_bitselect412_b = ip_dsdk_adapt_bitselect394_b[23:16];

    // ip_dsdk_adapt_bitselect404(BITSELECT,199)
    assign ip_dsdk_adapt_bitselect404_b = ip_dsdk_adapt_bitselect394_b[15:8];

    // ip_dsdk_adapt_bitselect396(BITSELECT,193)
    assign ip_dsdk_adapt_bitselect396_b = ip_dsdk_adapt_bitselect394_b[7:0];

    // ip_dsdk_adapt_bitselect264(BITSELECT,121)
    assign ip_dsdk_adapt_bitselect264_b = iord_o_data[383:256];

    // ip_dsdk_adapt_bitselect386(BITSELECT,188)
    assign ip_dsdk_adapt_bitselect386_b = ip_dsdk_adapt_bitselect264_b[127:120];

    // ip_dsdk_adapt_bitselect378(BITSELECT,183)
    assign ip_dsdk_adapt_bitselect378_b = ip_dsdk_adapt_bitselect264_b[119:112];

    // ip_dsdk_adapt_bitselect370(BITSELECT,179)
    assign ip_dsdk_adapt_bitselect370_b = ip_dsdk_adapt_bitselect264_b[111:104];

    // ip_dsdk_adapt_bitselect362(BITSELECT,175)
    assign ip_dsdk_adapt_bitselect362_b = ip_dsdk_adapt_bitselect264_b[103:96];

    // ip_dsdk_adapt_bitselect354(BITSELECT,170)
    assign ip_dsdk_adapt_bitselect354_b = ip_dsdk_adapt_bitselect264_b[95:88];

    // ip_dsdk_adapt_bitselect346(BITSELECT,166)
    assign ip_dsdk_adapt_bitselect346_b = ip_dsdk_adapt_bitselect264_b[87:80];

    // ip_dsdk_adapt_bitselect338(BITSELECT,161)
    assign ip_dsdk_adapt_bitselect338_b = ip_dsdk_adapt_bitselect264_b[79:72];

    // ip_dsdk_adapt_bitselect330(BITSELECT,157)
    assign ip_dsdk_adapt_bitselect330_b = ip_dsdk_adapt_bitselect264_b[71:64];

    // ip_dsdk_adapt_bitselect322(BITSELECT,153)
    assign ip_dsdk_adapt_bitselect322_b = ip_dsdk_adapt_bitselect264_b[63:56];

    // ip_dsdk_adapt_bitselect314(BITSELECT,148)
    assign ip_dsdk_adapt_bitselect314_b = ip_dsdk_adapt_bitselect264_b[55:48];

    // ip_dsdk_adapt_bitselect306(BITSELECT,144)
    assign ip_dsdk_adapt_bitselect306_b = ip_dsdk_adapt_bitselect264_b[47:40];

    // ip_dsdk_adapt_bitselect298(BITSELECT,139)
    assign ip_dsdk_adapt_bitselect298_b = ip_dsdk_adapt_bitselect264_b[39:32];

    // ip_dsdk_adapt_bitselect290(BITSELECT,135)
    assign ip_dsdk_adapt_bitselect290_b = ip_dsdk_adapt_bitselect264_b[31:24];

    // ip_dsdk_adapt_bitselect282(BITSELECT,131)
    assign ip_dsdk_adapt_bitselect282_b = ip_dsdk_adapt_bitselect264_b[23:16];

    // ip_dsdk_adapt_bitselect274(BITSELECT,126)
    assign ip_dsdk_adapt_bitselect274_b = ip_dsdk_adapt_bitselect264_b[15:8];

    // ip_dsdk_adapt_bitselect266(BITSELECT,122)
    assign ip_dsdk_adapt_bitselect266_b = ip_dsdk_adapt_bitselect264_b[7:0];

    // ip_dsdk_adapt_bitselect134(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect134_b = iord_o_data[255:128];

    // ip_dsdk_adapt_bitselect256(BITSELECT,116)
    assign ip_dsdk_adapt_bitselect256_b = ip_dsdk_adapt_bitselect134_b[127:120];

    // ip_dsdk_adapt_bitselect248(BITSELECT,112)
    assign ip_dsdk_adapt_bitselect248_b = ip_dsdk_adapt_bitselect134_b[119:112];

    // ip_dsdk_adapt_bitselect240(BITSELECT,108)
    assign ip_dsdk_adapt_bitselect240_b = ip_dsdk_adapt_bitselect134_b[111:104];

    // ip_dsdk_adapt_bitselect232(BITSELECT,103)
    assign ip_dsdk_adapt_bitselect232_b = ip_dsdk_adapt_bitselect134_b[103:96];

    // ip_dsdk_adapt_bitselect224(BITSELECT,99)
    assign ip_dsdk_adapt_bitselect224_b = ip_dsdk_adapt_bitselect134_b[95:88];

    // ip_dsdk_adapt_bitselect216(BITSELECT,94)
    assign ip_dsdk_adapt_bitselect216_b = ip_dsdk_adapt_bitselect134_b[87:80];

    // ip_dsdk_adapt_bitselect208(BITSELECT,90)
    assign ip_dsdk_adapt_bitselect208_b = ip_dsdk_adapt_bitselect134_b[79:72];

    // ip_dsdk_adapt_bitselect200(BITSELECT,86)
    assign ip_dsdk_adapt_bitselect200_b = ip_dsdk_adapt_bitselect134_b[71:64];

    // ip_dsdk_adapt_bitselect192(BITSELECT,80)
    assign ip_dsdk_adapt_bitselect192_b = ip_dsdk_adapt_bitselect134_b[63:56];

    // ip_dsdk_adapt_bitselect184(BITSELECT,76)
    assign ip_dsdk_adapt_bitselect184_b = ip_dsdk_adapt_bitselect134_b[55:48];

    // ip_dsdk_adapt_bitselect176(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect176_b = ip_dsdk_adapt_bitselect134_b[47:40];

    // ip_dsdk_adapt_bitselect168(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect168_b = ip_dsdk_adapt_bitselect134_b[39:32];

    // ip_dsdk_adapt_bitselect160(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect160_b = ip_dsdk_adapt_bitselect134_b[31:24];

    // ip_dsdk_adapt_bitselect152(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect152_b = ip_dsdk_adapt_bitselect134_b[23:16];

    // ip_dsdk_adapt_bitselect144(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect144_b = ip_dsdk_adapt_bitselect134_b[15:8];

    // ip_dsdk_adapt_bitselect136(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect136_b = ip_dsdk_adapt_bitselect134_b[7:0];

    // ip_dsdk_adapt_bitselect4(BITSELECT,195)
    assign ip_dsdk_adapt_bitselect4_b = iord_o_data[127:0];

    // ip_dsdk_adapt_bitselect126(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect126_b = ip_dsdk_adapt_bitselect4_b[127:120];

    // ip_dsdk_adapt_bitselect118(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect118_b = ip_dsdk_adapt_bitselect4_b[119:112];

    // ip_dsdk_adapt_bitselect110(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect110_b = ip_dsdk_adapt_bitselect4_b[111:104];

    // ip_dsdk_adapt_bitselect102(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect102_b = ip_dsdk_adapt_bitselect4_b[103:96];

    // ip_dsdk_adapt_bitselect94(BITSELECT,495)
    assign ip_dsdk_adapt_bitselect94_b = ip_dsdk_adapt_bitselect4_b[95:88];

    // ip_dsdk_adapt_bitselect86(BITSELECT,451)
    assign ip_dsdk_adapt_bitselect86_b = ip_dsdk_adapt_bitselect4_b[87:80];

    // ip_dsdk_adapt_bitselect78(BITSELECT,406)
    assign ip_dsdk_adapt_bitselect78_b = ip_dsdk_adapt_bitselect4_b[79:72];

    // ip_dsdk_adapt_bitselect70(BITSELECT,362)
    assign ip_dsdk_adapt_bitselect70_b = ip_dsdk_adapt_bitselect4_b[71:64];

    // ip_dsdk_adapt_bitselect62(BITSELECT,318)
    assign ip_dsdk_adapt_bitselect62_b = ip_dsdk_adapt_bitselect4_b[63:56];

    // ip_dsdk_adapt_bitselect54(BITSELECT,273)
    assign ip_dsdk_adapt_bitselect54_b = ip_dsdk_adapt_bitselect4_b[55:48];

    // ip_dsdk_adapt_bitselect46(BITSELECT,229)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect4_b[47:40];

    // ip_dsdk_adapt_bitselect38(BITSELECT,184)
    assign ip_dsdk_adapt_bitselect38_b = ip_dsdk_adapt_bitselect4_b[39:32];

    // ip_dsdk_adapt_bitselect30(BITSELECT,140)
    assign ip_dsdk_adapt_bitselect30_b = ip_dsdk_adapt_bitselect4_b[31:24];

    // ip_dsdk_adapt_bitselect22(BITSELECT,96)
    assign ip_dsdk_adapt_bitselect22_b = ip_dsdk_adapt_bitselect4_b[23:16];

    // ip_dsdk_adapt_bitselect14(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect14_b = ip_dsdk_adapt_bitselect4_b[15:8];

    // ip_dsdk_adapt_bitselect6(BITSELECT,306)
    assign ip_dsdk_adapt_bitselect6_b = ip_dsdk_adapt_bitselect4_b[7:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@5
    assign out_o_data_0_tpl = ip_dsdk_adapt_bitselect6_b;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect86_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect94_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect102_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect110_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect118_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect126_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect136_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect144_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect152_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect160_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect168_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect176_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect184_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect192_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect200_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect208_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect216_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect224_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect232_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect240_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect248_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect256_b;
    assign out_o_data_32_tpl = ip_dsdk_adapt_bitselect266_b;
    assign out_o_data_33_tpl = ip_dsdk_adapt_bitselect274_b;
    assign out_o_data_34_tpl = ip_dsdk_adapt_bitselect282_b;
    assign out_o_data_35_tpl = ip_dsdk_adapt_bitselect290_b;
    assign out_o_data_36_tpl = ip_dsdk_adapt_bitselect298_b;
    assign out_o_data_37_tpl = ip_dsdk_adapt_bitselect306_b;
    assign out_o_data_38_tpl = ip_dsdk_adapt_bitselect314_b;
    assign out_o_data_39_tpl = ip_dsdk_adapt_bitselect322_b;
    assign out_o_data_40_tpl = ip_dsdk_adapt_bitselect330_b;
    assign out_o_data_41_tpl = ip_dsdk_adapt_bitselect338_b;
    assign out_o_data_42_tpl = ip_dsdk_adapt_bitselect346_b;
    assign out_o_data_43_tpl = ip_dsdk_adapt_bitselect354_b;
    assign out_o_data_44_tpl = ip_dsdk_adapt_bitselect362_b;
    assign out_o_data_45_tpl = ip_dsdk_adapt_bitselect370_b;
    assign out_o_data_46_tpl = ip_dsdk_adapt_bitselect378_b;
    assign out_o_data_47_tpl = ip_dsdk_adapt_bitselect386_b;
    assign out_o_data_48_tpl = ip_dsdk_adapt_bitselect396_b;
    assign out_o_data_49_tpl = ip_dsdk_adapt_bitselect404_b;
    assign out_o_data_50_tpl = ip_dsdk_adapt_bitselect412_b;
    assign out_o_data_51_tpl = ip_dsdk_adapt_bitselect420_b;
    assign out_o_data_52_tpl = ip_dsdk_adapt_bitselect428_b;
    assign out_o_data_53_tpl = ip_dsdk_adapt_bitselect436_b;
    assign out_o_data_54_tpl = ip_dsdk_adapt_bitselect444_b;
    assign out_o_data_55_tpl = ip_dsdk_adapt_bitselect452_b;
    assign out_o_data_56_tpl = ip_dsdk_adapt_bitselect460_b;
    assign out_o_data_57_tpl = ip_dsdk_adapt_bitselect468_b;
    assign out_o_data_58_tpl = ip_dsdk_adapt_bitselect476_b;
    assign out_o_data_59_tpl = ip_dsdk_adapt_bitselect484_b;
    assign out_o_data_60_tpl = ip_dsdk_adapt_bitselect492_b;
    assign out_o_data_61_tpl = ip_dsdk_adapt_bitselect500_b;
    assign out_o_data_62_tpl = ip_dsdk_adapt_bitselect508_b;
    assign out_o_data_63_tpl = ip_dsdk_adapt_bitselect516_b;
    assign out_o_data_64_tpl = ip_dsdk_adapt_bitselect526_b;
    assign out_o_data_65_tpl = ip_dsdk_adapt_bitselect534_b;
    assign out_o_data_66_tpl = ip_dsdk_adapt_bitselect542_b;
    assign out_o_data_67_tpl = ip_dsdk_adapt_bitselect550_b;
    assign out_o_data_68_tpl = ip_dsdk_adapt_bitselect558_b;
    assign out_o_data_69_tpl = ip_dsdk_adapt_bitselect566_b;
    assign out_o_data_70_tpl = ip_dsdk_adapt_bitselect574_b;
    assign out_o_data_71_tpl = ip_dsdk_adapt_bitselect582_b;
    assign out_o_data_72_tpl = ip_dsdk_adapt_bitselect590_b;
    assign out_o_data_73_tpl = ip_dsdk_adapt_bitselect598_b;
    assign out_o_data_74_tpl = ip_dsdk_adapt_bitselect606_b;
    assign out_o_data_75_tpl = ip_dsdk_adapt_bitselect614_b;
    assign out_o_data_76_tpl = ip_dsdk_adapt_bitselect622_b;
    assign out_o_data_77_tpl = ip_dsdk_adapt_bitselect630_b;
    assign out_o_data_78_tpl = ip_dsdk_adapt_bitselect638_b;
    assign out_o_data_79_tpl = ip_dsdk_adapt_bitselect646_b;
    assign out_o_data_80_tpl = ip_dsdk_adapt_bitselect656_b;
    assign out_o_data_81_tpl = ip_dsdk_adapt_bitselect664_b;
    assign out_o_data_82_tpl = ip_dsdk_adapt_bitselect672_b;
    assign out_o_data_83_tpl = ip_dsdk_adapt_bitselect680_b;
    assign out_o_data_84_tpl = ip_dsdk_adapt_bitselect688_b;
    assign out_o_data_85_tpl = ip_dsdk_adapt_bitselect696_b;
    assign out_o_data_86_tpl = ip_dsdk_adapt_bitselect704_b;
    assign out_o_data_87_tpl = ip_dsdk_adapt_bitselect712_b;
    assign out_o_data_88_tpl = ip_dsdk_adapt_bitselect720_b;
    assign out_o_data_89_tpl = ip_dsdk_adapt_bitselect728_b;
    assign out_o_data_90_tpl = ip_dsdk_adapt_bitselect736_b;
    assign out_o_data_91_tpl = ip_dsdk_adapt_bitselect744_b;
    assign out_o_data_92_tpl = ip_dsdk_adapt_bitselect752_b;
    assign out_o_data_93_tpl = ip_dsdk_adapt_bitselect760_b;
    assign out_o_data_94_tpl = ip_dsdk_adapt_bitselect768_b;
    assign out_o_data_95_tpl = ip_dsdk_adapt_bitselect776_b;
    assign out_o_data_96_tpl = ip_dsdk_adapt_bitselect786_b;
    assign out_o_data_97_tpl = ip_dsdk_adapt_bitselect794_b;
    assign out_o_data_98_tpl = ip_dsdk_adapt_bitselect802_b;
    assign out_o_data_99_tpl = ip_dsdk_adapt_bitselect810_b;
    assign out_o_data_100_tpl = ip_dsdk_adapt_bitselect818_b;
    assign out_o_data_101_tpl = ip_dsdk_adapt_bitselect826_b;
    assign out_o_data_102_tpl = ip_dsdk_adapt_bitselect834_b;
    assign out_o_data_103_tpl = ip_dsdk_adapt_bitselect842_b;
    assign out_o_data_104_tpl = ip_dsdk_adapt_bitselect850_b;
    assign out_o_data_105_tpl = ip_dsdk_adapt_bitselect858_b;
    assign out_o_data_106_tpl = ip_dsdk_adapt_bitselect866_b;
    assign out_o_data_107_tpl = ip_dsdk_adapt_bitselect874_b;
    assign out_o_data_108_tpl = ip_dsdk_adapt_bitselect882_b;
    assign out_o_data_109_tpl = ip_dsdk_adapt_bitselect890_b;
    assign out_o_data_110_tpl = ip_dsdk_adapt_bitselect898_b;
    assign out_o_data_111_tpl = ip_dsdk_adapt_bitselect906_b;
    assign out_o_data_112_tpl = ip_dsdk_adapt_bitselect916_b;
    assign out_o_data_113_tpl = ip_dsdk_adapt_bitselect924_b;
    assign out_o_data_114_tpl = ip_dsdk_adapt_bitselect932_b;
    assign out_o_data_115_tpl = ip_dsdk_adapt_bitselect940_b;
    assign out_o_data_116_tpl = ip_dsdk_adapt_bitselect948_b;
    assign out_o_data_117_tpl = ip_dsdk_adapt_bitselect956_b;
    assign out_o_data_118_tpl = ip_dsdk_adapt_bitselect964_b;
    assign out_o_data_119_tpl = ip_dsdk_adapt_bitselect972_b;
    assign out_o_data_120_tpl = ip_dsdk_adapt_bitselect980_b;
    assign out_o_data_121_tpl = ip_dsdk_adapt_bitselect988_b;
    assign out_o_data_122_tpl = ip_dsdk_adapt_bitselect996_b;
    assign out_o_data_123_tpl = ip_dsdk_adapt_bitselect1004_b;
    assign out_o_data_124_tpl = ip_dsdk_adapt_bitselect1012_b;
    assign out_o_data_125_tpl = ip_dsdk_adapt_bitselect1020_b;
    assign out_o_data_126_tpl = ip_dsdk_adapt_bitselect1028_b;
    assign out_o_data_127_tpl = ip_dsdk_adapt_bitselect1036_b;
    assign out_o_valid = iord_o_valid;

    // dupName_0_regfree_osync_x(GPOUT,3)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = iord_o_fifoready;

    // regfree_osync(GPOUT,658)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = iord_o_fifoalmost_full;

    // sync_out(GPOUT,660)@20000000
    assign out_o_stall = iord_o_stall;

endmodule
