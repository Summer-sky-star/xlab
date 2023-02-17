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

// SystemVerilog created from cnn_top_bb_load_weight1_B8
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B8 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked46_0,
    input wire [0:0] in_forked46_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_16_0,
    input wire [127:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack,
    input wire [1023:0] in_memdep_3_load_weight1_avm_readdata,
    input wire [0:0] in_memdep_3_load_weight1_avm_readdatavalid,
    input wire [0:0] in_memdep_3_load_weight1_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_weight1_avm_writeack,
    input wire [0:0] in_notcmp53109_0,
    input wire [0:0] in_notcmp53109_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [31:0] in_tii_081_pop18110_0,
    input wire [31:0] in_tii_081_pop18110_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [31:0] in_weight_offset_180_replace_phi108_0,
    input wire [31:0] in_weight_offset_180_replace_phi108_1,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [31:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount,
    output wire [15:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write,
    output wire [127:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata,
    output wire [31:0] out_memdep_3_load_weight1_avm_address,
    output wire [0:0] out_memdep_3_load_weight1_avm_burstcount,
    output wire [127:0] out_memdep_3_load_weight1_avm_byteenable,
    output wire [0:0] out_memdep_3_load_weight1_avm_enable,
    output wire [0:0] out_memdep_3_load_weight1_avm_read,
    output wire [0:0] out_memdep_3_load_weight1_avm_write,
    output wire [1023:0] out_memdep_3_load_weight1_avm_writedata,
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

    wire [0:0] bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out;
    wire [0:0] bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out;
    wire [0:0] bb_load_weight1_B8_stall_region_out_c0_exe4190;
    wire [0:0] bb_load_weight1_B8_stall_region_out_c0_exe5;
    wire [31:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;
    wire [15:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;
    wire [127:0] bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;
    wire [31:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_address;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_burstcount;
    wire [127:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_byteenable;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_enable;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_read;
    wire [0:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_write;
    wire [1023:0] bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_writedata;
    wire [0:0] bb_load_weight1_B8_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_load_weight1_B8_stall_region_out_stall_out;
    wire [0:0] bb_load_weight1_B8_stall_region_out_valid_out;
    wire [0:0] load_weight1_B8_branch_out_c0_exe5;
    wire [0:0] load_weight1_B8_branch_out_stall_out;
    wire [0:0] load_weight1_B8_branch_out_valid_out_0;
    wire [0:0] load_weight1_B8_branch_out_valid_out_1;
    wire [0:0] load_weight1_B8_merge_out_forked46;
    wire [0:0] load_weight1_B8_merge_out_notcmp53109;
    wire [0:0] load_weight1_B8_merge_out_stall_out_0;
    wire [0:0] load_weight1_B8_merge_out_stall_out_1;
    wire [31:0] load_weight1_B8_merge_out_tii_081_pop18110;
    wire [0:0] load_weight1_B8_merge_out_valid_out;
    wire [31:0] load_weight1_B8_merge_out_weight_offset_180_replace_phi108;


    // load_weight1_B8_merge(BLACKBOX,27)
    cnn_top_load_weight1_B8_merge theload_weight1_B8_merge (
        .in_forked46_0(in_forked46_0),
        .in_forked46_1(in_forked46_1),
        .in_notcmp53109_0(in_notcmp53109_0),
        .in_notcmp53109_1(in_notcmp53109_1),
        .in_stall_in(bb_load_weight1_B8_stall_region_out_stall_out),
        .in_tii_081_pop18110_0(in_tii_081_pop18110_0),
        .in_tii_081_pop18110_1(in_tii_081_pop18110_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .in_weight_offset_180_replace_phi108_0(in_weight_offset_180_replace_phi108_0),
        .in_weight_offset_180_replace_phi108_1(in_weight_offset_180_replace_phi108_1),
        .out_forked46(load_weight1_B8_merge_out_forked46),
        .out_notcmp53109(load_weight1_B8_merge_out_notcmp53109),
        .out_stall_out_0(load_weight1_B8_merge_out_stall_out_0),
        .out_stall_out_1(load_weight1_B8_merge_out_stall_out_1),
        .out_tii_081_pop18110(load_weight1_B8_merge_out_tii_081_pop18110),
        .out_valid_out(load_weight1_B8_merge_out_valid_out),
        .out_weight_offset_180_replace_phi108(load_weight1_B8_merge_out_weight_offset_180_replace_phi108),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_load_weight1_B8_stall_region(BLACKBOX,2)
    cnn_top_bb_load_weight1_B8_stall_region thebb_load_weight1_B8_stall_region (
        .in_flush(in_flush),
        .in_forked46(load_weight1_B8_merge_out_forked46),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack),
        .in_memdep_3_load_weight1_avm_readdata(in_memdep_3_load_weight1_avm_readdata),
        .in_memdep_3_load_weight1_avm_readdatavalid(in_memdep_3_load_weight1_avm_readdatavalid),
        .in_memdep_3_load_weight1_avm_waitrequest(in_memdep_3_load_weight1_avm_waitrequest),
        .in_memdep_3_load_weight1_avm_writeack(in_memdep_3_load_weight1_avm_writeack),
        .in_notcmp53109(load_weight1_B8_merge_out_notcmp53109),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(load_weight1_B8_branch_out_stall_out),
        .in_tii_081_pop18110(load_weight1_B8_merge_out_tii_081_pop18110),
        .in_valid_in(load_weight1_B8_merge_out_valid_out),
        .in_weight_offset_180_replace_phi108(load_weight1_B8_merge_out_weight_offset_180_replace_phi108),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out(bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out(bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out),
        .out_c0_exe4190(bb_load_weight1_B8_stall_region_out_c0_exe4190),
        .out_c0_exe5(bb_load_weight1_B8_stall_region_out_c0_exe5),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata(bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata),
        .out_memdep_3_load_weight1_avm_address(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_address),
        .out_memdep_3_load_weight1_avm_burstcount(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_burstcount),
        .out_memdep_3_load_weight1_avm_byteenable(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_byteenable),
        .out_memdep_3_load_weight1_avm_enable(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_enable),
        .out_memdep_3_load_weight1_avm_read(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_read),
        .out_memdep_3_load_weight1_avm_write(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_write),
        .out_memdep_3_load_weight1_avm_writedata(bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_writedata),
        .out_pipeline_valid_out(bb_load_weight1_B8_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_load_weight1_B8_stall_region_out_stall_out),
        .out_valid_out(bb_load_weight1_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // load_weight1_B8_branch(BLACKBOX,26)
    cnn_top_load_weight1_B8_branch theload_weight1_B8_branch (
        .in_c0_exe4190(bb_load_weight1_B8_stall_region_out_c0_exe4190),
        .in_c0_exe5(bb_load_weight1_B8_stall_region_out_c0_exe5),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_load_weight1_B8_stall_region_out_valid_out),
        .out_c0_exe5(load_weight1_B8_branch_out_c0_exe5),
        .out_stall_out(load_weight1_B8_branch_out_stall_out),
        .out_valid_out_0(load_weight1_B8_branch_out_valid_out_0),
        .out_valid_out_1(load_weight1_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe5(GPOUT,28)
    assign out_c0_exe5 = load_weight1_B8_branch_out_c0_exe5;

    // out_exiting_stall_out(GPOUT,29)
    assign out_exiting_stall_out = bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,30)
    assign out_exiting_valid_out = bb_load_weight1_B8_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address(GPOUT,31)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount(GPOUT,32)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable(GPOUT,33)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable(GPOUT,34)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read(GPOUT,35)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write(GPOUT,36)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;

    // out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata(GPOUT,37)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata = bb_load_weight1_B8_stall_region_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;

    // out_memdep_3_load_weight1_avm_address(GPOUT,38)
    assign out_memdep_3_load_weight1_avm_address = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_address;

    // out_memdep_3_load_weight1_avm_burstcount(GPOUT,39)
    assign out_memdep_3_load_weight1_avm_burstcount = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_burstcount;

    // out_memdep_3_load_weight1_avm_byteenable(GPOUT,40)
    assign out_memdep_3_load_weight1_avm_byteenable = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_byteenable;

    // out_memdep_3_load_weight1_avm_enable(GPOUT,41)
    assign out_memdep_3_load_weight1_avm_enable = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_enable;

    // out_memdep_3_load_weight1_avm_read(GPOUT,42)
    assign out_memdep_3_load_weight1_avm_read = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_read;

    // out_memdep_3_load_weight1_avm_write(GPOUT,43)
    assign out_memdep_3_load_weight1_avm_write = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_write;

    // out_memdep_3_load_weight1_avm_writedata(GPOUT,44)
    assign out_memdep_3_load_weight1_avm_writedata = bb_load_weight1_B8_stall_region_out_memdep_3_load_weight1_avm_writedata;

    // out_stall_in_0(GPOUT,45)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,46)
    assign out_stall_out_0 = load_weight1_B8_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,47)
    assign out_stall_out_1 = load_weight1_B8_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,48)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,49)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,50)
    assign out_valid_out_0 = load_weight1_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,51)
    assign out_valid_out_1 = load_weight1_B8_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = bb_load_weight1_B8_stall_region_out_pipeline_valid_out;

endmodule
