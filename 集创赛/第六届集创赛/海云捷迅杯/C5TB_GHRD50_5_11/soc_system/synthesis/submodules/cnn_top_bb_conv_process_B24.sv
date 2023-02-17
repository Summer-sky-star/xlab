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

// SystemVerilog created from cnn_top_bb_conv_process_B24
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_conv_process_B24 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked174_0,
    input wire [0:0] in_forked174_1,
    input wire [0:0] in_intel_reserved_ffwd_55_0,
    input wire [0:0] in_intel_reserved_ffwd_56_0,
    input wire [0:0] in_intel_reserved_ffwd_75_0,
    input wire [0:0] in_intel_reserved_ffwd_77_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [1023:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [63:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [1023:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [63:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid,
    input wire [0:0] in_lnot281_pop74640_0,
    input wire [0:0] in_lnot281_pop74640_1,
    input wire [0:0] in_lnot282_pop83651_0,
    input wire [0:0] in_lnot282_pop83651_1,
    input wire [0:0] in_lnot283_pop99663_0,
    input wire [0:0] in_lnot283_pop99663_1,
    input wire [0:0] in_lnot284_pop104672_0,
    input wire [0:0] in_lnot284_pop104672_1,
    input wire [0:0] in_lnot625_0,
    input wire [0:0] in_lnot625_1,
    input wire [511:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack,
    input wire [511:0] in_memdep_36_conv_process_avm_readdata,
    input wire [0:0] in_memdep_36_conv_process_avm_readdatavalid,
    input wire [0:0] in_memdep_36_conv_process_avm_waitrequest,
    input wire [0:0] in_memdep_36_conv_process_avm_writeack,
    input wire [0:0] in_notcmp194670_0,
    input wire [0:0] in_notcmp194670_1,
    input wire [0:0] in_notcmp198302_pop107675_0,
    input wire [0:0] in_notcmp198302_pop107675_1,
    input wire [0:0] in_notcmp198660_0,
    input wire [0:0] in_notcmp198660_1,
    input wire [0:0] in_notcmp202299_pop101669_0,
    input wire [0:0] in_notcmp202299_pop101669_1,
    input wire [0:0] in_notcmp202300_pop106674_0,
    input wire [0:0] in_notcmp202300_pop106674_1,
    input wire [0:0] in_notcmp202646_0,
    input wire [0:0] in_notcmp202646_1,
    input wire [0:0] in_notcmp206292_pop84656_0,
    input wire [0:0] in_notcmp206292_pop84656_1,
    input wire [0:0] in_notcmp206293_pop100666_0,
    input wire [0:0] in_notcmp206293_pop100666_1,
    input wire [0:0] in_notcmp206294_pop105673_0,
    input wire [0:0] in_notcmp206294_pop105673_1,
    input wire [0:0] in_notcmp206633_0,
    input wire [0:0] in_notcmp206633_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tcc_0_i483_pop103671_0,
    input wire [31:0] in_tcc_0_i483_pop103671_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c1_exe10,
    output wire [0:0] out_c1_exe11,
    output wire [0:0] out_c1_exe7,
    output wire [0:0] out_c1_exe8,
    output wire [0:0] out_c1_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready,
    output wire [31:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read,
    output wire [0:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write,
    output wire [511:0] out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata,
    output wire [31:0] out_memdep_36_conv_process_avm_address,
    output wire [0:0] out_memdep_36_conv_process_avm_burstcount,
    output wire [63:0] out_memdep_36_conv_process_avm_byteenable,
    output wire [0:0] out_memdep_36_conv_process_avm_enable,
    output wire [0:0] out_memdep_36_conv_process_avm_read,
    output wire [0:0] out_memdep_36_conv_process_avm_write,
    output wire [511:0] out_memdep_36_conv_process_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out;
    wire [0:0] bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe10;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe11;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe6;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe7;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe8;
    wire [0:0] bb_conv_process_B24_stall_region_out_c1_exe9;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;
    wire [31:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;
    wire [0:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;
    wire [0:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;
    wire [511:0] bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;
    wire [31:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_address;
    wire [0:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_burstcount;
    wire [63:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_byteenable;
    wire [0:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_enable;
    wire [0:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_read;
    wire [0:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_write;
    wire [511:0] bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_writedata;
    wire [0:0] bb_conv_process_B24_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_conv_process_B24_stall_region_out_stall_out;
    wire [0:0] bb_conv_process_B24_stall_region_out_valid_out;
    wire [0:0] conv_process_B24_branch_out_c1_exe10;
    wire [0:0] conv_process_B24_branch_out_c1_exe11;
    wire [0:0] conv_process_B24_branch_out_c1_exe7;
    wire [0:0] conv_process_B24_branch_out_c1_exe8;
    wire [0:0] conv_process_B24_branch_out_c1_exe9;
    wire [0:0] conv_process_B24_branch_out_stall_out;
    wire [0:0] conv_process_B24_branch_out_valid_out_0;
    wire [0:0] conv_process_B24_branch_out_valid_out_1;
    wire [0:0] conv_process_B24_merge_out_forked174;
    wire [0:0] conv_process_B24_merge_out_lnot281_pop74640;
    wire [0:0] conv_process_B24_merge_out_lnot282_pop83651;
    wire [0:0] conv_process_B24_merge_out_lnot283_pop99663;
    wire [0:0] conv_process_B24_merge_out_lnot284_pop104672;
    wire [0:0] conv_process_B24_merge_out_lnot625;
    wire [0:0] conv_process_B24_merge_out_notcmp194670;
    wire [0:0] conv_process_B24_merge_out_notcmp198302_pop107675;
    wire [0:0] conv_process_B24_merge_out_notcmp198660;
    wire [0:0] conv_process_B24_merge_out_notcmp202299_pop101669;
    wire [0:0] conv_process_B24_merge_out_notcmp202300_pop106674;
    wire [0:0] conv_process_B24_merge_out_notcmp202646;
    wire [0:0] conv_process_B24_merge_out_notcmp206292_pop84656;
    wire [0:0] conv_process_B24_merge_out_notcmp206293_pop100666;
    wire [0:0] conv_process_B24_merge_out_notcmp206294_pop105673;
    wire [0:0] conv_process_B24_merge_out_notcmp206633;
    wire [0:0] conv_process_B24_merge_out_stall_out_0;
    wire [0:0] conv_process_B24_merge_out_stall_out_1;
    wire [31:0] conv_process_B24_merge_out_tcc_0_i483_pop103671;
    wire [0:0] conv_process_B24_merge_out_valid_out;


    // conv_process_B24_merge(BLACKBOX,4)
    cnn_top_conv_process_B24_merge theconv_process_B24_merge (
        .in_forked174_0(in_forked174_0),
        .in_forked174_1(in_forked174_1),
        .in_lnot281_pop74640_0(in_lnot281_pop74640_0),
        .in_lnot281_pop74640_1(in_lnot281_pop74640_1),
        .in_lnot282_pop83651_0(in_lnot282_pop83651_0),
        .in_lnot282_pop83651_1(in_lnot282_pop83651_1),
        .in_lnot283_pop99663_0(in_lnot283_pop99663_0),
        .in_lnot283_pop99663_1(in_lnot283_pop99663_1),
        .in_lnot284_pop104672_0(in_lnot284_pop104672_0),
        .in_lnot284_pop104672_1(in_lnot284_pop104672_1),
        .in_lnot625_0(in_lnot625_0),
        .in_lnot625_1(in_lnot625_1),
        .in_notcmp194670_0(in_notcmp194670_0),
        .in_notcmp194670_1(in_notcmp194670_1),
        .in_notcmp198302_pop107675_0(in_notcmp198302_pop107675_0),
        .in_notcmp198302_pop107675_1(in_notcmp198302_pop107675_1),
        .in_notcmp198660_0(in_notcmp198660_0),
        .in_notcmp198660_1(in_notcmp198660_1),
        .in_notcmp202299_pop101669_0(in_notcmp202299_pop101669_0),
        .in_notcmp202299_pop101669_1(in_notcmp202299_pop101669_1),
        .in_notcmp202300_pop106674_0(in_notcmp202300_pop106674_0),
        .in_notcmp202300_pop106674_1(in_notcmp202300_pop106674_1),
        .in_notcmp202646_0(in_notcmp202646_0),
        .in_notcmp202646_1(in_notcmp202646_1),
        .in_notcmp206292_pop84656_0(in_notcmp206292_pop84656_0),
        .in_notcmp206292_pop84656_1(in_notcmp206292_pop84656_1),
        .in_notcmp206293_pop100666_0(in_notcmp206293_pop100666_0),
        .in_notcmp206293_pop100666_1(in_notcmp206293_pop100666_1),
        .in_notcmp206294_pop105673_0(in_notcmp206294_pop105673_0),
        .in_notcmp206294_pop105673_1(in_notcmp206294_pop105673_1),
        .in_notcmp206633_0(in_notcmp206633_0),
        .in_notcmp206633_1(in_notcmp206633_1),
        .in_stall_in(bb_conv_process_B24_stall_region_out_stall_out),
        .in_tcc_0_i483_pop103671_0(in_tcc_0_i483_pop103671_0),
        .in_tcc_0_i483_pop103671_1(in_tcc_0_i483_pop103671_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked174(conv_process_B24_merge_out_forked174),
        .out_lnot281_pop74640(conv_process_B24_merge_out_lnot281_pop74640),
        .out_lnot282_pop83651(conv_process_B24_merge_out_lnot282_pop83651),
        .out_lnot283_pop99663(conv_process_B24_merge_out_lnot283_pop99663),
        .out_lnot284_pop104672(conv_process_B24_merge_out_lnot284_pop104672),
        .out_lnot625(conv_process_B24_merge_out_lnot625),
        .out_notcmp194670(conv_process_B24_merge_out_notcmp194670),
        .out_notcmp198302_pop107675(conv_process_B24_merge_out_notcmp198302_pop107675),
        .out_notcmp198660(conv_process_B24_merge_out_notcmp198660),
        .out_notcmp202299_pop101669(conv_process_B24_merge_out_notcmp202299_pop101669),
        .out_notcmp202300_pop106674(conv_process_B24_merge_out_notcmp202300_pop106674),
        .out_notcmp202646(conv_process_B24_merge_out_notcmp202646),
        .out_notcmp206292_pop84656(conv_process_B24_merge_out_notcmp206292_pop84656),
        .out_notcmp206293_pop100666(conv_process_B24_merge_out_notcmp206293_pop100666),
        .out_notcmp206294_pop105673(conv_process_B24_merge_out_notcmp206294_pop105673),
        .out_notcmp206633(conv_process_B24_merge_out_notcmp206633),
        .out_stall_out_0(conv_process_B24_merge_out_stall_out_0),
        .out_stall_out_1(conv_process_B24_merge_out_stall_out_1),
        .out_tcc_0_i483_pop103671(conv_process_B24_merge_out_tcc_0_i483_pop103671),
        .out_valid_out(conv_process_B24_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_conv_process_B24_stall_region(BLACKBOX,2)
    cnn_top_bb_conv_process_B24_stall_region thebb_conv_process_B24_stall_region (
        .in_flush(in_flush),
        .in_forked174(conv_process_B24_merge_out_forked174),
        .in_intel_reserved_ffwd_55_0(in_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(in_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_75_0(in_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_77_0(in_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid(in_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifovalid),
        .in_lnot281_pop74640(conv_process_B24_merge_out_lnot281_pop74640),
        .in_lnot282_pop83651(conv_process_B24_merge_out_lnot282_pop83651),
        .in_lnot283_pop99663(conv_process_B24_merge_out_lnot283_pop99663),
        .in_lnot284_pop104672(conv_process_B24_merge_out_lnot284_pop104672),
        .in_lnot625(conv_process_B24_merge_out_lnot625),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdata),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_readdatavalid),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_waitrequest),
        .in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack(in_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writeack),
        .in_memdep_36_conv_process_avm_readdata(in_memdep_36_conv_process_avm_readdata),
        .in_memdep_36_conv_process_avm_readdatavalid(in_memdep_36_conv_process_avm_readdatavalid),
        .in_memdep_36_conv_process_avm_waitrequest(in_memdep_36_conv_process_avm_waitrequest),
        .in_memdep_36_conv_process_avm_writeack(in_memdep_36_conv_process_avm_writeack),
        .in_notcmp194670(conv_process_B24_merge_out_notcmp194670),
        .in_notcmp198302_pop107675(conv_process_B24_merge_out_notcmp198302_pop107675),
        .in_notcmp198660(conv_process_B24_merge_out_notcmp198660),
        .in_notcmp202299_pop101669(conv_process_B24_merge_out_notcmp202299_pop101669),
        .in_notcmp202300_pop106674(conv_process_B24_merge_out_notcmp202300_pop106674),
        .in_notcmp202646(conv_process_B24_merge_out_notcmp202646),
        .in_notcmp206292_pop84656(conv_process_B24_merge_out_notcmp206292_pop84656),
        .in_notcmp206293_pop100666(conv_process_B24_merge_out_notcmp206293_pop100666),
        .in_notcmp206294_pop105673(conv_process_B24_merge_out_notcmp206294_pop105673),
        .in_notcmp206633(conv_process_B24_merge_out_notcmp206633),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(conv_process_B24_branch_out_stall_out),
        .in_tcc_0_i483_pop103671(conv_process_B24_merge_out_tcc_0_i483_pop103671),
        .in_valid_in(conv_process_B24_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out(bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out(bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out),
        .out_c1_exe10(bb_conv_process_B24_stall_region_out_c1_exe10),
        .out_c1_exe11(bb_conv_process_B24_stall_region_out_c1_exe11),
        .out_c1_exe6(bb_conv_process_B24_stall_region_out_c1_exe6),
        .out_c1_exe7(bb_conv_process_B24_stall_region_out_c1_exe7),
        .out_c1_exe8(bb_conv_process_B24_stall_region_out_c1_exe8),
        .out_c1_exe9(bb_conv_process_B24_stall_region_out_c1_exe9),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write),
        .out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata(bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata),
        .out_memdep_36_conv_process_avm_address(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_address),
        .out_memdep_36_conv_process_avm_burstcount(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_burstcount),
        .out_memdep_36_conv_process_avm_byteenable(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_byteenable),
        .out_memdep_36_conv_process_avm_enable(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_enable),
        .out_memdep_36_conv_process_avm_read(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_read),
        .out_memdep_36_conv_process_avm_write(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_write),
        .out_memdep_36_conv_process_avm_writedata(bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_writedata),
        .out_pipeline_valid_out(bb_conv_process_B24_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_conv_process_B24_stall_region_out_stall_out),
        .out_valid_out(bb_conv_process_B24_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // conv_process_B24_branch(BLACKBOX,3)
    cnn_top_conv_process_B24_branch theconv_process_B24_branch (
        .in_c1_exe10(bb_conv_process_B24_stall_region_out_c1_exe10),
        .in_c1_exe11(bb_conv_process_B24_stall_region_out_c1_exe11),
        .in_c1_exe6(bb_conv_process_B24_stall_region_out_c1_exe6),
        .in_c1_exe7(bb_conv_process_B24_stall_region_out_c1_exe7),
        .in_c1_exe8(bb_conv_process_B24_stall_region_out_c1_exe8),
        .in_c1_exe9(bb_conv_process_B24_stall_region_out_c1_exe9),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_conv_process_B24_stall_region_out_valid_out),
        .out_c1_exe10(conv_process_B24_branch_out_c1_exe10),
        .out_c1_exe11(conv_process_B24_branch_out_c1_exe11),
        .out_c1_exe7(conv_process_B24_branch_out_c1_exe7),
        .out_c1_exe8(conv_process_B24_branch_out_c1_exe8),
        .out_c1_exe9(conv_process_B24_branch_out_c1_exe9),
        .out_stall_out(conv_process_B24_branch_out_stall_out),
        .out_valid_out_0(conv_process_B24_branch_out_valid_out_0),
        .out_valid_out_1(conv_process_B24_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c1_exe10(GPOUT,65)
    assign out_c1_exe10 = conv_process_B24_branch_out_c1_exe10;

    // out_c1_exe11(GPOUT,66)
    assign out_c1_exe11 = conv_process_B24_branch_out_c1_exe11;

    // out_c1_exe7(GPOUT,67)
    assign out_c1_exe7 = conv_process_B24_branch_out_c1_exe7;

    // out_c1_exe8(GPOUT,68)
    assign out_c1_exe8 = conv_process_B24_branch_out_c1_exe8;

    // out_c1_exe9(GPOUT,69)
    assign out_c1_exe9 = conv_process_B24_branch_out_c1_exe9;

    // out_exiting_stall_out(GPOUT,70)
    assign out_exiting_stall_out = bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,71)
    assign out_exiting_valid_out = bb_conv_process_B24_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going177_conv_process6_exiting_valid_out;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,72)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,73)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BIAHC_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,74)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,75)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,76)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,77)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full(GPOUT,78)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready(GPOUT,79)
    assign out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready = bb_conv_process_B24_stall_region_out_iord_bl_acl_c_storage_pipe_V_Pipe1ID_0DDL_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifoready;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address(GPOUT,80)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_address;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount(GPOUT,81)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_burstcount;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable(GPOUT,82)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_byteenable;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable(GPOUT,83)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_enable;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read(GPOUT,84)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_read;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write(GPOUT,85)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_write;

    // out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata(GPOUT,86)
    assign out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata = bb_conv_process_B24_stall_region_out_memcoalesce_load_conv_process_fpgaunique_238_conv_process_avm_writedata;

    // out_memdep_36_conv_process_avm_address(GPOUT,87)
    assign out_memdep_36_conv_process_avm_address = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_address;

    // out_memdep_36_conv_process_avm_burstcount(GPOUT,88)
    assign out_memdep_36_conv_process_avm_burstcount = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_burstcount;

    // out_memdep_36_conv_process_avm_byteenable(GPOUT,89)
    assign out_memdep_36_conv_process_avm_byteenable = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_byteenable;

    // out_memdep_36_conv_process_avm_enable(GPOUT,90)
    assign out_memdep_36_conv_process_avm_enable = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_enable;

    // out_memdep_36_conv_process_avm_read(GPOUT,91)
    assign out_memdep_36_conv_process_avm_read = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_read;

    // out_memdep_36_conv_process_avm_write(GPOUT,92)
    assign out_memdep_36_conv_process_avm_write = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_write;

    // out_memdep_36_conv_process_avm_writedata(GPOUT,93)
    assign out_memdep_36_conv_process_avm_writedata = bb_conv_process_B24_stall_region_out_memdep_36_conv_process_avm_writedata;

    // out_stall_in_0(GPOUT,94)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,95)
    assign out_stall_out_0 = conv_process_B24_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,96)
    assign out_stall_out_1 = conv_process_B24_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,97)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,98)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,99)
    assign out_valid_out_0 = conv_process_B24_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,100)
    assign out_valid_out_1 = conv_process_B24_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,102)
    assign out_pipeline_valid_out = bb_conv_process_B24_stall_region_out_pipeline_valid_out;

endmodule
