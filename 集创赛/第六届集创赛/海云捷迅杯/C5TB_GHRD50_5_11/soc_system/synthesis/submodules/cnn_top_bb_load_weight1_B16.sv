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

// SystemVerilog created from cnn_top_bb_load_weight1_B16
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B16 (
    input wire [31:0] in_add79103_pop43163_0,
    input wire [31:0] in_add79103_pop43163_1,
    input wire [31:0] in_add79144_0,
    input wire [31:0] in_add79144_1,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked58_0,
    input wire [0:0] in_forked58_1,
    input wire [0:0] in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready,
    input wire [31:0] in_li_075116_0,
    input wire [31:0] in_li_075116_1,
    input wire [31:0] in_li_07591_pop22132_0,
    input wire [31:0] in_li_07591_pop22132_1,
    input wire [31:0] in_li_07592_pop33150_0,
    input wire [31:0] in_li_07592_pop33150_1,
    input wire [31:0] in_li_07593_pop38159_0,
    input wire [31:0] in_li_07593_pop38159_1,
    input wire [1023:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack,
    input wire [31:0] in_mul78122_0,
    input wire [31:0] in_mul78122_1,
    input wire [31:0] in_mul7897_pop35141_0,
    input wire [31:0] in_mul7897_pop35141_1,
    input wire [31:0] in_mul7898_pop40161_0,
    input wire [31:0] in_mul7898_pop40161_1,
    input wire [0:0] in_notcmp74158_0,
    input wire [0:0] in_notcmp74158_1,
    input wire [0:0] in_notcmp78105_pop44164_0,
    input wire [0:0] in_notcmp78105_pop44164_1,
    input wire [0:0] in_notcmp78147_0,
    input wire [0:0] in_notcmp78147_1,
    input wire [0:0] in_notcmp82100_pop36156_0,
    input wire [0:0] in_notcmp82100_pop36156_1,
    input wire [0:0] in_notcmp82101_pop41162_0,
    input wire [0:0] in_notcmp82101_pop41162_1,
    input wire [0:0] in_notcmp82127_0,
    input wire [0:0] in_notcmp82127_1,
    input wire [0:0] in_pop23137_0,
    input wire [0:0] in_pop23137_1,
    input wire [0:0] in_pop34153_0,
    input wire [0:0] in_pop34153_1,
    input wire [0:0] in_pop39160_0,
    input wire [0:0] in_pop39160_1,
    input wire [0:0] in_pop42157_0,
    input wire [0:0] in_pop42157_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_unnamed_load_weight147_0,
    input wire [0:0] in_unnamed_load_weight147_1,
    input wire [0:0] in_unnamed_load_weight148_0,
    input wire [0:0] in_unnamed_load_weight148_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe5350,
    output wire [0:0] out_c0_exe6351,
    output wire [0:0] out_c0_exe7352,
    output wire [0:0] out_c0_exe8353,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [1023:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount,
    output wire [127:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write,
    output wire [1023:0] out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata,
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

    wire [0:0] bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_stall_out;
    wire [0:0] bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_valid_out;
    wire [0:0] bb_load_weight1_B16_stall_region_out_c0_exe4349;
    wire [0:0] bb_load_weight1_B16_stall_region_out_c0_exe5350;
    wire [0:0] bb_load_weight1_B16_stall_region_out_c0_exe6351;
    wire [0:0] bb_load_weight1_B16_stall_region_out_c0_exe7352;
    wire [0:0] bb_load_weight1_B16_stall_region_out_c0_exe8353;
    wire [1023:0] bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;
    wire [0:0] bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;
    wire [31:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address;
    wire [0:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount;
    wire [127:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable;
    wire [0:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable;
    wire [0:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read;
    wire [0:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write;
    wire [1023:0] bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata;
    wire [0:0] bb_load_weight1_B16_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight1_B16_stall_region_out_stall_out;
    wire [0:0] bb_load_weight1_B16_stall_region_out_valid_out;
    wire [0:0] load_weight1_B16_branch_out_c0_exe5350;
    wire [0:0] load_weight1_B16_branch_out_c0_exe6351;
    wire [0:0] load_weight1_B16_branch_out_c0_exe7352;
    wire [0:0] load_weight1_B16_branch_out_c0_exe8353;
    wire [0:0] load_weight1_B16_branch_out_stall_out;
    wire [0:0] load_weight1_B16_branch_out_valid_out_0;
    wire [0:0] load_weight1_B16_branch_out_valid_out_1;
    wire [31:0] load_weight1_B16_merge_out_add79103_pop43163;
    wire [31:0] load_weight1_B16_merge_out_add79144;
    wire [0:0] load_weight1_B16_merge_out_forked58;
    wire [31:0] load_weight1_B16_merge_out_li_075116;
    wire [31:0] load_weight1_B16_merge_out_li_07591_pop22132;
    wire [31:0] load_weight1_B16_merge_out_li_07592_pop33150;
    wire [31:0] load_weight1_B16_merge_out_li_07593_pop38159;
    wire [31:0] load_weight1_B16_merge_out_mul78122;
    wire [31:0] load_weight1_B16_merge_out_mul7897_pop35141;
    wire [31:0] load_weight1_B16_merge_out_mul7898_pop40161;
    wire [0:0] load_weight1_B16_merge_out_notcmp74158;
    wire [0:0] load_weight1_B16_merge_out_notcmp78105_pop44164;
    wire [0:0] load_weight1_B16_merge_out_notcmp78147;
    wire [0:0] load_weight1_B16_merge_out_notcmp82100_pop36156;
    wire [0:0] load_weight1_B16_merge_out_notcmp82101_pop41162;
    wire [0:0] load_weight1_B16_merge_out_notcmp82127;
    wire [0:0] load_weight1_B16_merge_out_pop23137;
    wire [0:0] load_weight1_B16_merge_out_pop34153;
    wire [0:0] load_weight1_B16_merge_out_pop39160;
    wire [0:0] load_weight1_B16_merge_out_pop42157;
    wire [0:0] load_weight1_B16_merge_out_stall_out_0;
    wire [0:0] load_weight1_B16_merge_out_stall_out_1;
    wire [0:0] load_weight1_B16_merge_out_unnamed_load_weight147;
    wire [0:0] load_weight1_B16_merge_out_unnamed_load_weight148;
    wire [0:0] load_weight1_B16_merge_out_valid_out;


    // load_weight1_B16_merge(BLACKBOX,58)
    cnn_top_load_weight1_B16_merge theload_weight1_B16_merge (
        .in_add79103_pop43163_0(in_add79103_pop43163_0),
        .in_add79103_pop43163_1(in_add79103_pop43163_1),
        .in_add79144_0(in_add79144_0),
        .in_add79144_1(in_add79144_1),
        .in_forked58_0(in_forked58_0),
        .in_forked58_1(in_forked58_1),
        .in_li_075116_0(in_li_075116_0),
        .in_li_075116_1(in_li_075116_1),
        .in_li_07591_pop22132_0(in_li_07591_pop22132_0),
        .in_li_07591_pop22132_1(in_li_07591_pop22132_1),
        .in_li_07592_pop33150_0(in_li_07592_pop33150_0),
        .in_li_07592_pop33150_1(in_li_07592_pop33150_1),
        .in_li_07593_pop38159_0(in_li_07593_pop38159_0),
        .in_li_07593_pop38159_1(in_li_07593_pop38159_1),
        .in_mul78122_0(in_mul78122_0),
        .in_mul78122_1(in_mul78122_1),
        .in_mul7897_pop35141_0(in_mul7897_pop35141_0),
        .in_mul7897_pop35141_1(in_mul7897_pop35141_1),
        .in_mul7898_pop40161_0(in_mul7898_pop40161_0),
        .in_mul7898_pop40161_1(in_mul7898_pop40161_1),
        .in_notcmp74158_0(in_notcmp74158_0),
        .in_notcmp74158_1(in_notcmp74158_1),
        .in_notcmp78105_pop44164_0(in_notcmp78105_pop44164_0),
        .in_notcmp78105_pop44164_1(in_notcmp78105_pop44164_1),
        .in_notcmp78147_0(in_notcmp78147_0),
        .in_notcmp78147_1(in_notcmp78147_1),
        .in_notcmp82100_pop36156_0(in_notcmp82100_pop36156_0),
        .in_notcmp82100_pop36156_1(in_notcmp82100_pop36156_1),
        .in_notcmp82101_pop41162_0(in_notcmp82101_pop41162_0),
        .in_notcmp82101_pop41162_1(in_notcmp82101_pop41162_1),
        .in_notcmp82127_0(in_notcmp82127_0),
        .in_notcmp82127_1(in_notcmp82127_1),
        .in_pop23137_0(in_pop23137_0),
        .in_pop23137_1(in_pop23137_1),
        .in_pop34153_0(in_pop34153_0),
        .in_pop34153_1(in_pop34153_1),
        .in_pop39160_0(in_pop39160_0),
        .in_pop39160_1(in_pop39160_1),
        .in_pop42157_0(in_pop42157_0),
        .in_pop42157_1(in_pop42157_1),
        .in_stall_in(bb_load_weight1_B16_stall_region_out_stall_out),
        .in_unnamed_load_weight147_0(in_unnamed_load_weight147_0),
        .in_unnamed_load_weight147_1(in_unnamed_load_weight147_1),
        .in_unnamed_load_weight148_0(in_unnamed_load_weight148_0),
        .in_unnamed_load_weight148_1(in_unnamed_load_weight148_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add79103_pop43163(load_weight1_B16_merge_out_add79103_pop43163),
        .out_add79144(load_weight1_B16_merge_out_add79144),
        .out_forked58(load_weight1_B16_merge_out_forked58),
        .out_li_075116(load_weight1_B16_merge_out_li_075116),
        .out_li_07591_pop22132(load_weight1_B16_merge_out_li_07591_pop22132),
        .out_li_07592_pop33150(load_weight1_B16_merge_out_li_07592_pop33150),
        .out_li_07593_pop38159(load_weight1_B16_merge_out_li_07593_pop38159),
        .out_mul78122(load_weight1_B16_merge_out_mul78122),
        .out_mul7897_pop35141(load_weight1_B16_merge_out_mul7897_pop35141),
        .out_mul7898_pop40161(load_weight1_B16_merge_out_mul7898_pop40161),
        .out_notcmp74158(load_weight1_B16_merge_out_notcmp74158),
        .out_notcmp78105_pop44164(load_weight1_B16_merge_out_notcmp78105_pop44164),
        .out_notcmp78147(load_weight1_B16_merge_out_notcmp78147),
        .out_notcmp82100_pop36156(load_weight1_B16_merge_out_notcmp82100_pop36156),
        .out_notcmp82101_pop41162(load_weight1_B16_merge_out_notcmp82101_pop41162),
        .out_notcmp82127(load_weight1_B16_merge_out_notcmp82127),
        .out_pop23137(load_weight1_B16_merge_out_pop23137),
        .out_pop34153(load_weight1_B16_merge_out_pop34153),
        .out_pop39160(load_weight1_B16_merge_out_pop39160),
        .out_pop42157(load_weight1_B16_merge_out_pop42157),
        .out_stall_out_0(load_weight1_B16_merge_out_stall_out_0),
        .out_stall_out_1(load_weight1_B16_merge_out_stall_out_1),
        .out_unnamed_load_weight147(load_weight1_B16_merge_out_unnamed_load_weight147),
        .out_unnamed_load_weight148(load_weight1_B16_merge_out_unnamed_load_weight148),
        .out_valid_out(load_weight1_B16_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight1_B16_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight1_B16_stall_region thebb_load_weight1_B16_stall_region (
        .in_add79103_pop43163(load_weight1_B16_merge_out_add79103_pop43163),
        .in_add79144(load_weight1_B16_merge_out_add79144),
        .in_flush(in_flush),
        .in_forked58(load_weight1_B16_merge_out_forked58),
        .in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready(in_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_i_fifoready),
        .in_li_075116(load_weight1_B16_merge_out_li_075116),
        .in_li_07591_pop22132(load_weight1_B16_merge_out_li_07591_pop22132),
        .in_li_07592_pop33150(load_weight1_B16_merge_out_li_07592_pop33150),
        .in_li_07593_pop38159(load_weight1_B16_merge_out_li_07593_pop38159),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata(in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdata),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid(in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_readdatavalid),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest(in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_waitrequest),
        .in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack(in_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writeack),
        .in_mul78122(load_weight1_B16_merge_out_mul78122),
        .in_mul7897_pop35141(load_weight1_B16_merge_out_mul7897_pop35141),
        .in_mul7898_pop40161(load_weight1_B16_merge_out_mul7898_pop40161),
        .in_notcmp74158(load_weight1_B16_merge_out_notcmp74158),
        .in_notcmp78105_pop44164(load_weight1_B16_merge_out_notcmp78105_pop44164),
        .in_notcmp78147(load_weight1_B16_merge_out_notcmp78147),
        .in_notcmp82100_pop36156(load_weight1_B16_merge_out_notcmp82100_pop36156),
        .in_notcmp82101_pop41162(load_weight1_B16_merge_out_notcmp82101_pop41162),
        .in_notcmp82127(load_weight1_B16_merge_out_notcmp82127),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_pop23137(load_weight1_B16_merge_out_pop23137),
        .in_pop34153(load_weight1_B16_merge_out_pop34153),
        .in_pop39160(load_weight1_B16_merge_out_pop39160),
        .in_pop42157(load_weight1_B16_merge_out_pop42157),
        .in_stall_in(load_weight1_B16_branch_out_stall_out),
        .in_unnamed_load_weight147(load_weight1_B16_merge_out_unnamed_load_weight147),
        .in_unnamed_load_weight148(load_weight1_B16_merge_out_unnamed_load_weight148),
        .in_valid_in(load_weight1_B16_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_stall_out(bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_valid_out(bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_valid_out),
        .out_c0_exe4349(bb_load_weight1_B16_stall_region_out_c0_exe4349),
        .out_c0_exe5350(bb_load_weight1_B16_stall_region_out_c0_exe5350),
        .out_c0_exe6351(bb_load_weight1_B16_stall_region_out_c0_exe6351),
        .out_c0_exe7352(bb_load_weight1_B16_stall_region_out_c0_exe7352),
        .out_c0_exe8353(bb_load_weight1_B16_stall_region_out_c0_exe8353),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write),
        .out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata(bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata),
        .out_pipeline_valid_out(bb_load_weight1_B16_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight1_B16_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight1_B16_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight1_B16_branch(BLACKBOX,57)
    cnn_top_load_weight1_B16_branch theload_weight1_B16_branch (
        .in_c0_exe4349(bb_load_weight1_B16_stall_region_out_c0_exe4349),
        .in_c0_exe5350(bb_load_weight1_B16_stall_region_out_c0_exe5350),
        .in_c0_exe6351(bb_load_weight1_B16_stall_region_out_c0_exe6351),
        .in_c0_exe7352(bb_load_weight1_B16_stall_region_out_c0_exe7352),
        .in_c0_exe8353(bb_load_weight1_B16_stall_region_out_c0_exe8353),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_load_weight1_B16_stall_region_out_valid_out),
        .out_c0_exe5350(load_weight1_B16_branch_out_c0_exe5350),
        .out_c0_exe6351(load_weight1_B16_branch_out_c0_exe6351),
        .out_c0_exe7352(load_weight1_B16_branch_out_c0_exe7352),
        .out_c0_exe8353(load_weight1_B16_branch_out_c0_exe8353),
        .out_stall_out(load_weight1_B16_branch_out_stall_out),
        .out_valid_out_0(load_weight1_B16_branch_out_valid_out_0),
        .out_valid_out_1(load_weight1_B16_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe5350(GPOUT,59)
    assign out_c0_exe5350 = load_weight1_B16_branch_out_c0_exe5350;

    // out_c0_exe6351(GPOUT,60)
    assign out_c0_exe6351 = load_weight1_B16_branch_out_c0_exe6351;

    // out_c0_exe7352(GPOUT,61)
    assign out_c0_exe7352 = load_weight1_B16_branch_out_c0_exe7352;

    // out_c0_exe8353(GPOUT,62)
    assign out_c0_exe8353 = load_weight1_B16_branch_out_c0_exe8353;

    // out_exiting_stall_out(GPOUT,63)
    assign out_exiting_stall_out = bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,64)
    assign out_exiting_valid_out = bb_load_weight1_B16_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going61_load_weight16_exiting_valid_out;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata(GPOUT,65)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata = bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid(GPOUT,66)
    assign out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid = bb_load_weight1_B16_stall_region_out_iowr_bl_acl_c_storage_pipe_V_Pipe1ID_0BHKDL_Uweight_packet_0GE_ihc_0UConstantPipeStorage_internal_2_B_pipe_channel_o_fifovalid;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address(GPOUT,67)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_address;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount(GPOUT,68)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_burstcount;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable(GPOUT,69)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_byteenable;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable(GPOUT,70)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_enable;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read(GPOUT,71)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_read;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write(GPOUT,72)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_write;

    // out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata(GPOUT,73)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata = bb_load_weight1_B16_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1384_load_weight1_avm_writedata;

    // out_stall_in_0(GPOUT,74)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,75)
    assign out_stall_out_0 = load_weight1_B16_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,76)
    assign out_stall_out_1 = load_weight1_B16_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,77)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,78)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,79)
    assign out_valid_out_0 = load_weight1_B16_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,80)
    assign out_valid_out_1 = load_weight1_B16_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,82)
    assign out_pipeline_valid_out = bb_load_weight1_B16_stall_region_out_pipeline_valid_out;

endmodule
