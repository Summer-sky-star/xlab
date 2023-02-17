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

// SystemVerilog created from cnn_top_bb_load_input0_B16
// SystemVerilog created on Fri Mar  4 14:17:41 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_input0_B16 (
    input wire [31:0] in_add77166_0,
    input wire [31:0] in_add77166_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked65_0,
    input wire [0:0] in_forked65_1,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [31:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    input wire [31:0] in_kh_071_pop21107_pop37164_0,
    input wire [31:0] in_kh_071_pop21107_pop37164_1,
    input wire [31:0] in_kh_071_pop21108_pop43171_0,
    input wire [31:0] in_kh_071_pop21108_pop43171_1,
    input wire [31:0] in_kh_071_pop21135_0,
    input wire [31:0] in_kh_071_pop21135_1,
    input wire [31:0] in_kw_068_pop33112_pop45165_0,
    input wire [31:0] in_kw_068_pop33112_pop45165_1,
    input wire [31:0] in_kw_068_pop33152_0,
    input wire [31:0] in_kw_068_pop33152_1,
    input wire [31:0] in_li_073100_pop40168_0,
    input wire [31:0] in_li_073100_pop40168_1,
    input wire [31:0] in_li_073124_0,
    input wire [31:0] in_li_073124_1,
    input wire [31:0] in_li_07398_pop22140_0,
    input wire [31:0] in_li_07398_pop22140_1,
    input wire [31:0] in_li_07399_pop34155_0,
    input wire [31:0] in_li_07399_pop34155_1,
    input wire [127:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack,
    input wire [0:0] in_notcmp81167_0,
    input wire [0:0] in_notcmp81167_1,
    input wire [0:0] in_notcmp85110_pop44172_0,
    input wire [0:0] in_notcmp85110_pop44172_1,
    input wire [0:0] in_notcmp85149_0,
    input wire [0:0] in_notcmp85149_1,
    input wire [0:0] in_notcmp89104_pop36161_0,
    input wire [0:0] in_notcmp89104_pop36161_1,
    input wire [0:0] in_notcmp89105_pop42170_0,
    input wire [0:0] in_notcmp89105_pop42170_1,
    input wire [0:0] in_notcmp89130_0,
    input wire [0:0] in_notcmp89130_1,
    input wire [0:0] in_pop23145_0,
    input wire [0:0] in_pop23145_1,
    input wire [0:0] in_pop35158_0,
    input wire [0:0] in_pop35158_1,
    input wire [0:0] in_pop41169_0,
    input wire [0:0] in_pop41169_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_load_input051_0,
    input wire [0:0] in_unnamed_load_input051_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe5357,
    output wire [0:0] out_c0_exe6358,
    output wire [0:0] out_c0_exe7359,
    output wire [0:0] out_c0_exe8360,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read,
    output wire [0:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write,
    output wire [127:0] out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata,
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

    wire [0:0] bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;
    wire [0:0] bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;
    wire [0:0] bb_load_input0_B16_stall_region_out_c0_exe4356;
    wire [0:0] bb_load_input0_B16_stall_region_out_c0_exe5357;
    wire [0:0] bb_load_input0_B16_stall_region_out_c0_exe6358;
    wire [0:0] bb_load_input0_B16_stall_region_out_c0_exe7359;
    wire [0:0] bb_load_input0_B16_stall_region_out_c0_exe8360;
    wire [63:0] bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [31:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;
    wire [0:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;
    wire [15:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;
    wire [0:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;
    wire [0:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;
    wire [0:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;
    wire [127:0] bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;
    wire [0:0] bb_load_input0_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_input0_B16_stall_region_out_stall_out;
    wire [0:0] bb_load_input0_B16_stall_region_out_valid_out;
    wire [0:0] load_input0_B16_branch_out_c0_exe5357;
    wire [0:0] load_input0_B16_branch_out_c0_exe6358;
    wire [0:0] load_input0_B16_branch_out_c0_exe7359;
    wire [0:0] load_input0_B16_branch_out_c0_exe8360;
    wire [0:0] load_input0_B16_branch_out_stall_out;
    wire [0:0] load_input0_B16_branch_out_valid_out_0;
    wire [0:0] load_input0_B16_branch_out_valid_out_1;
    wire [31:0] load_input0_B16_merge_out_add77166;
    wire [0:0] load_input0_B16_merge_out_forked65;
    wire [31:0] load_input0_B16_merge_out_kh_071_pop21107_pop37164;
    wire [31:0] load_input0_B16_merge_out_kh_071_pop21108_pop43171;
    wire [31:0] load_input0_B16_merge_out_kh_071_pop21135;
    wire [31:0] load_input0_B16_merge_out_kw_068_pop33112_pop45165;
    wire [31:0] load_input0_B16_merge_out_kw_068_pop33152;
    wire [31:0] load_input0_B16_merge_out_li_073100_pop40168;
    wire [31:0] load_input0_B16_merge_out_li_073124;
    wire [31:0] load_input0_B16_merge_out_li_07398_pop22140;
    wire [31:0] load_input0_B16_merge_out_li_07399_pop34155;
    wire [0:0] load_input0_B16_merge_out_notcmp81167;
    wire [0:0] load_input0_B16_merge_out_notcmp85110_pop44172;
    wire [0:0] load_input0_B16_merge_out_notcmp85149;
    wire [0:0] load_input0_B16_merge_out_notcmp89104_pop36161;
    wire [0:0] load_input0_B16_merge_out_notcmp89105_pop42170;
    wire [0:0] load_input0_B16_merge_out_notcmp89130;
    wire [0:0] load_input0_B16_merge_out_pop23145;
    wire [0:0] load_input0_B16_merge_out_pop35158;
    wire [0:0] load_input0_B16_merge_out_pop41169;
    wire [0:0] load_input0_B16_merge_out_stall_out_0;
    wire [0:0] load_input0_B16_merge_out_stall_out_1;
    wire [0:0] load_input0_B16_merge_out_unnamed_load_input051;
    wire [0:0] load_input0_B16_merge_out_valid_out;


    // load_input0_B16_merge(BLACKBOX,58)
    cnn_top_load_input0_B16_merge theload_input0_B16_merge (
        .in_add77166_0(in_add77166_0),
        .in_add77166_1(in_add77166_1),
        .in_forked65_0(in_forked65_0),
        .in_forked65_1(in_forked65_1),
        .in_kh_071_pop21107_pop37164_0(in_kh_071_pop21107_pop37164_0),
        .in_kh_071_pop21107_pop37164_1(in_kh_071_pop21107_pop37164_1),
        .in_kh_071_pop21108_pop43171_0(in_kh_071_pop21108_pop43171_0),
        .in_kh_071_pop21108_pop43171_1(in_kh_071_pop21108_pop43171_1),
        .in_kh_071_pop21135_0(in_kh_071_pop21135_0),
        .in_kh_071_pop21135_1(in_kh_071_pop21135_1),
        .in_kw_068_pop33112_pop45165_0(in_kw_068_pop33112_pop45165_0),
        .in_kw_068_pop33112_pop45165_1(in_kw_068_pop33112_pop45165_1),
        .in_kw_068_pop33152_0(in_kw_068_pop33152_0),
        .in_kw_068_pop33152_1(in_kw_068_pop33152_1),
        .in_li_073100_pop40168_0(in_li_073100_pop40168_0),
        .in_li_073100_pop40168_1(in_li_073100_pop40168_1),
        .in_li_073124_0(in_li_073124_0),
        .in_li_073124_1(in_li_073124_1),
        .in_li_07398_pop22140_0(in_li_07398_pop22140_0),
        .in_li_07398_pop22140_1(in_li_07398_pop22140_1),
        .in_li_07399_pop34155_0(in_li_07399_pop34155_0),
        .in_li_07399_pop34155_1(in_li_07399_pop34155_1),
        .in_notcmp81167_0(in_notcmp81167_0),
        .in_notcmp81167_1(in_notcmp81167_1),
        .in_notcmp85110_pop44172_0(in_notcmp85110_pop44172_0),
        .in_notcmp85110_pop44172_1(in_notcmp85110_pop44172_1),
        .in_notcmp85149_0(in_notcmp85149_0),
        .in_notcmp85149_1(in_notcmp85149_1),
        .in_notcmp89104_pop36161_0(in_notcmp89104_pop36161_0),
        .in_notcmp89104_pop36161_1(in_notcmp89104_pop36161_1),
        .in_notcmp89105_pop42170_0(in_notcmp89105_pop42170_0),
        .in_notcmp89105_pop42170_1(in_notcmp89105_pop42170_1),
        .in_notcmp89130_0(in_notcmp89130_0),
        .in_notcmp89130_1(in_notcmp89130_1),
        .in_pop23145_0(in_pop23145_0),
        .in_pop23145_1(in_pop23145_1),
        .in_pop35158_0(in_pop35158_0),
        .in_pop35158_1(in_pop35158_1),
        .in_pop41169_0(in_pop41169_0),
        .in_pop41169_1(in_pop41169_1),
        .in_stall_in(bb_load_input0_B16_stall_region_out_stall_out),
        .in_unnamed_load_input051_0(in_unnamed_load_input051_0),
        .in_unnamed_load_input051_1(in_unnamed_load_input051_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add77166(load_input0_B16_merge_out_add77166),
        .out_forked65(load_input0_B16_merge_out_forked65),
        .out_kh_071_pop21107_pop37164(load_input0_B16_merge_out_kh_071_pop21107_pop37164),
        .out_kh_071_pop21108_pop43171(load_input0_B16_merge_out_kh_071_pop21108_pop43171),
        .out_kh_071_pop21135(load_input0_B16_merge_out_kh_071_pop21135),
        .out_kw_068_pop33112_pop45165(load_input0_B16_merge_out_kw_068_pop33112_pop45165),
        .out_kw_068_pop33152(load_input0_B16_merge_out_kw_068_pop33152),
        .out_li_073100_pop40168(load_input0_B16_merge_out_li_073100_pop40168),
        .out_li_073124(load_input0_B16_merge_out_li_073124),
        .out_li_07398_pop22140(load_input0_B16_merge_out_li_07398_pop22140),
        .out_li_07399_pop34155(load_input0_B16_merge_out_li_07399_pop34155),
        .out_notcmp81167(load_input0_B16_merge_out_notcmp81167),
        .out_notcmp85110_pop44172(load_input0_B16_merge_out_notcmp85110_pop44172),
        .out_notcmp85149(load_input0_B16_merge_out_notcmp85149),
        .out_notcmp89104_pop36161(load_input0_B16_merge_out_notcmp89104_pop36161),
        .out_notcmp89105_pop42170(load_input0_B16_merge_out_notcmp89105_pop42170),
        .out_notcmp89130(load_input0_B16_merge_out_notcmp89130),
        .out_pop23145(load_input0_B16_merge_out_pop23145),
        .out_pop35158(load_input0_B16_merge_out_pop35158),
        .out_pop41169(load_input0_B16_merge_out_pop41169),
        .out_stall_out_0(load_input0_B16_merge_out_stall_out_0),
        .out_stall_out_1(load_input0_B16_merge_out_stall_out_1),
        .out_unnamed_load_input051(load_input0_B16_merge_out_unnamed_load_input051),
        .out_valid_out(load_input0_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_input0_B16_stall_region(BLACKBOX,2)
    cnn_top_bb_load_input0_B16_stall_region thebb_load_input0_B16_stall_region (
        .in_add77166(load_input0_B16_merge_out_add77166),
        .in_flush(in_flush),
        .in_forked65(load_input0_B16_merge_out_forked65),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(in_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready),
        .in_kh_071_pop21107_pop37164(load_input0_B16_merge_out_kh_071_pop21107_pop37164),
        .in_kh_071_pop21108_pop43171(load_input0_B16_merge_out_kh_071_pop21108_pop43171),
        .in_kh_071_pop21135(load_input0_B16_merge_out_kh_071_pop21135),
        .in_kw_068_pop33112_pop45165(load_input0_B16_merge_out_kw_068_pop33112_pop45165),
        .in_kw_068_pop33152(load_input0_B16_merge_out_kw_068_pop33152),
        .in_li_073100_pop40168(load_input0_B16_merge_out_li_073100_pop40168),
        .in_li_073124(load_input0_B16_merge_out_li_073124),
        .in_li_07398_pop22140(load_input0_B16_merge_out_li_07398_pop22140),
        .in_li_07399_pop34155(load_input0_B16_merge_out_li_07399_pop34155),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdata),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_readdatavalid),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_waitrequest),
        .in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack(in_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writeack),
        .in_notcmp81167(load_input0_B16_merge_out_notcmp81167),
        .in_notcmp85110_pop44172(load_input0_B16_merge_out_notcmp85110_pop44172),
        .in_notcmp85149(load_input0_B16_merge_out_notcmp85149),
        .in_notcmp89104_pop36161(load_input0_B16_merge_out_notcmp89104_pop36161),
        .in_notcmp89105_pop42170(load_input0_B16_merge_out_notcmp89105_pop42170),
        .in_notcmp89130(load_input0_B16_merge_out_notcmp89130),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23145(load_input0_B16_merge_out_pop23145),
        .in_pop35158(load_input0_B16_merge_out_pop35158),
        .in_pop41169(load_input0_B16_merge_out_pop41169),
        .in_stall_in(load_input0_B16_branch_out_stall_out),
        .in_unnamed_load_input051(load_input0_B16_merge_out_unnamed_load_input051),
        .in_valid_in(load_input0_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out(bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out(bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out),
        .out_c0_exe4356(bb_load_input0_B16_stall_region_out_c0_exe4356),
        .out_c0_exe5357(bb_load_input0_B16_stall_region_out_c0_exe5357),
        .out_c0_exe6358(bb_load_input0_B16_stall_region_out_c0_exe6358),
        .out_c0_exe7359(bb_load_input0_B16_stall_region_out_c0_exe7359),
        .out_c0_exe8360(bb_load_input0_B16_stall_region_out_c0_exe8360),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write),
        .out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata),
        .out_pipeline_valid_out(bb_load_input0_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_input0_B16_stall_region_out_stall_out),
        .out_valid_out(bb_load_input0_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_input0_B16_branch(BLACKBOX,57)
    cnn_top_load_input0_B16_branch theload_input0_B16_branch (
        .in_c0_exe4356(bb_load_input0_B16_stall_region_out_c0_exe4356),
        .in_c0_exe5357(bb_load_input0_B16_stall_region_out_c0_exe5357),
        .in_c0_exe6358(bb_load_input0_B16_stall_region_out_c0_exe6358),
        .in_c0_exe7359(bb_load_input0_B16_stall_region_out_c0_exe7359),
        .in_c0_exe8360(bb_load_input0_B16_stall_region_out_c0_exe8360),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_load_input0_B16_stall_region_out_valid_out),
        .out_c0_exe5357(load_input0_B16_branch_out_c0_exe5357),
        .out_c0_exe6358(load_input0_B16_branch_out_c0_exe6358),
        .out_c0_exe7359(load_input0_B16_branch_out_c0_exe7359),
        .out_c0_exe8360(load_input0_B16_branch_out_c0_exe8360),
        .out_stall_out(load_input0_B16_branch_out_stall_out),
        .out_valid_out_0(load_input0_B16_branch_out_valid_out_0),
        .out_valid_out_1(load_input0_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe5357(GPOUT,59)
    assign out_c0_exe5357 = load_input0_B16_branch_out_c0_exe5357;

    // out_c0_exe6358(GPOUT,60)
    assign out_c0_exe6358 = load_input0_B16_branch_out_c0_exe6358;

    // out_c0_exe7359(GPOUT,61)
    assign out_c0_exe7359 = load_input0_B16_branch_out_c0_exe7359;

    // out_c0_exe8360(GPOUT,62)
    assign out_c0_exe8360 = load_input0_B16_branch_out_c0_exe8360;

    // out_exiting_stall_out(GPOUT,63)
    assign out_exiting_stall_out = bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,64)
    assign out_exiting_valid_out = bb_load_input0_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going68_load_input06_exiting_valid_out;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(GPOUT,65)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(GPOUT,66)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = bb_load_input0_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe0ID_0BKC_Uinput_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address(GPOUT,67)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_address;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount(GPOUT,68)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_burstcount;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable(GPOUT,69)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_byteenable;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable(GPOUT,70)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_enable;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read(GPOUT,71)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_read;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write(GPOUT,72)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_write;

    // out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata(GPOUT,73)
    assign out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata = bb_load_input0_B16_stall_region_out_memcoalesce_load_load_input0_fpgaunique_164_load_input0_avm_writedata;

    // out_stall_in_0(GPOUT,74)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,75)
    assign out_stall_out_0 = load_input0_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,76)
    assign out_stall_out_1 = load_input0_B16_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,77)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,78)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,79)
    assign out_valid_out_0 = load_input0_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,80)
    assign out_valid_out_1 = load_input0_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_load_input0_B16_stall_region_out_pipeline_valid_out;

endmodule
