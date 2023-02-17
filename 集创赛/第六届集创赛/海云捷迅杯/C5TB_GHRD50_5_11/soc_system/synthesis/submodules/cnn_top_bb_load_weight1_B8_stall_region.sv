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

// SystemVerilog created from cnn_top_bb_load_weight1_B8_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight1_B8_stall_region (
    input wire [1023:0] in_memdep_3_load_weight1_avm_readdata,
    input wire [0:0] in_memdep_3_load_weight1_avm_writeack,
    input wire [0:0] in_memdep_3_load_weight1_avm_waitrequest,
    input wire [0:0] in_memdep_3_load_weight1_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write,
    output wire [127:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata,
    output wire [15:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount,
    output wire [0:0] out_c0_exe4190,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_3_load_weight1_avm_address,
    output wire [0:0] out_memdep_3_load_weight1_avm_enable,
    output wire [0:0] out_memdep_3_load_weight1_avm_read,
    output wire [0:0] out_memdep_3_load_weight1_avm_write,
    output wire [1023:0] out_memdep_3_load_weight1_avm_writedata,
    output wire [127:0] out_memdep_3_load_weight1_avm_byteenable,
    output wire [0:0] out_memdep_3_load_weight1_avm_burstcount,
    input wire [127:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked46,
    input wire [0:0] in_notcmp53109,
    input wire [31:0] in_tii_081_pop18110,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_weight_offset_180_replace_phi108,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_0_tpl;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_address;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_burstcount;
    wire [127:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_enable;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_read;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_write;
    wire [1023:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_valid;
    wire [0:0] load_weight1_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] load_weight1_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_weight1_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] load_weight1_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] load_weight1_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_weight1_B8_merge_reg_aunroll_x_out_valid_out;
    wire [34:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [34:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [34:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    wire [127:0] bubble_join_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_b;
    wire [63:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_c;
    wire [100:0] bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_h;
    wire [65:0] bubble_join_load_weight1_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_weight1_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_load_weight1_B8_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_load_weight1_B8_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_load_weight1_B8_merge_reg_aunroll_x_e;
    wire [65:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [34:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [34:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V2;
    wire [0:0] SE_out_load_weight1_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_weight1_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_weight1_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // join_for_coalesced_delay_1(BITJOIN,43)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_e};

    // bubble_join_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_q = {i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_1_tpl, i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_0_tpl};

    // bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_q[63:0]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_q[127:64]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,63)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,64)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[34:0]);

    // sel_for_coalesced_delay_0(BITSELECT,41)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[34:34]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x(BLACKBOX,8)@30
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@36
    // out out_memdep_3_load_weight1_avm_address@20000000
    // out out_memdep_3_load_weight1_avm_burstcount@20000000
    // out out_memdep_3_load_weight1_avm_byteenable@20000000
    // out out_memdep_3_load_weight1_avm_enable@20000000
    // out out_memdep_3_load_weight1_avm_read@20000000
    // out out_memdep_3_load_weight1_avm_write@20000000
    // out out_memdep_3_load_weight1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@36
    cnn_top_i_sfc_s_c1_in_for_body24_load_we0000_enter_load_weight15 thei_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x (
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_2_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_4_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_b),
        .in_c1_eni5_5_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_c),
        .in_c1_eni5_6_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_exe2188(sel_for_coalesced_delay_0_d),
        .in_c0_exe6(sel_for_coalesced_delay_0_e),
        .in_flush(in_flush),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_memdep_3_load_weight1_avm_readdata(in_memdep_3_load_weight1_avm_readdata),
        .in_memdep_3_load_weight1_avm_readdatavalid(in_memdep_3_load_weight1_avm_readdatavalid),
        .in_memdep_3_load_weight1_avm_waitrequest(in_memdep_3_load_weight1_avm_waitrequest),
        .in_memdep_3_load_weight1_avm_writeack(in_memdep_3_load_weight1_avm_writeack),
        .out_c1_exit_0_tpl(),
        .out_memdep_3_load_weight1_avm_address(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_address),
        .out_memdep_3_load_weight1_avm_burstcount(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_burstcount),
        .out_memdep_3_load_weight1_avm_byteenable(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_byteenable),
        .out_memdep_3_load_weight1_avm_enable(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_enable),
        .out_memdep_3_load_weight1_avm_read(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_read),
        .out_memdep_3_load_weight1_avm_write(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_write),
        .out_memdep_3_load_weight1_avm_writedata(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,85)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,46)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,40)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_h};

    // coalesced_delay_0_fifo(STALLFIFO,45)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(26),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(35),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,76)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_weight1_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,59)
    assign bubble_join_stall_entry_q = {in_weight_offset_180_replace_phi108, in_tii_081_pop18110, in_notcmp53109, in_forked46};

    // bubble_select_stall_entry(BITSELECT,60)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);

    // load_weight1_B8_merge_reg_aunroll_x(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_weight1_B8_merge_reg theload_weight1_B8_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_stall_in(SE_out_load_weight1_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_weight1_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_weight1_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(load_weight1_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(load_weight1_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_stall_out(load_weight1_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_weight1_B8_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_weight1_B8_merge_reg_aunroll_x(STALLENABLE,75)
    // Valid signal propagation
    assign SE_out_load_weight1_B8_merge_reg_aunroll_x_V0 = SE_out_load_weight1_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_load_weight1_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_stall | ~ (SE_out_load_weight1_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_load_weight1_B8_merge_reg_aunroll_x_wireValid = load_weight1_B8_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_load_weight1_B8_merge_reg_aunroll_x(BITJOIN,55)
    assign bubble_join_load_weight1_B8_merge_reg_aunroll_x_q = {load_weight1_B8_merge_reg_aunroll_x_out_data_out_3_tpl, load_weight1_B8_merge_reg_aunroll_x_out_data_out_2_tpl, load_weight1_B8_merge_reg_aunroll_x_out_data_out_1_tpl, load_weight1_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_weight1_B8_merge_reg_aunroll_x(BITSELECT,56)
    assign bubble_select_load_weight1_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_weight1_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_weight1_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_weight1_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_load_weight1_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_load_weight1_B8_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_load_weight1_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_load_weight1_B8_merge_reg_aunroll_x_q[65:34]);

    // i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_c0_exit186_0_tpl@5
    // out out_c0_exit186_1_tpl@5
    // out out_c0_exit186_2_tpl@5
    // out out_c0_exit186_3_tpl@5
    // out out_c0_exit186_4_tpl@5
    // out out_c0_exit186_5_tpl@5
    // out out_c0_exit186_6_tpl@5
    // out out_c0_exit186_7_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    cnn_top_i_sfc_s_c0_in_for_body24_load_we0000r18016_load_weight11 thei_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x (
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_load_weight1_B8_merge_reg_aunroll_x_b),
        .in_c0_eni4_2_tpl(bubble_select_load_weight1_B8_merge_reg_aunroll_x_c),
        .in_c0_eni4_3_tpl(bubble_select_load_weight1_B8_merge_reg_aunroll_x_d),
        .in_c0_eni4_4_tpl(bubble_select_load_weight1_B8_merge_reg_aunroll_x_e),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_backStall),
        .in_i_valid(SE_out_load_weight1_B8_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit186_0_tpl(),
        .out_c0_exit186_1_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_1_tpl),
        .out_c0_exit186_2_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_2_tpl),
        .out_c0_exit186_3_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_3_tpl),
        .out_c0_exit186_4_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_4_tpl),
        .out_c0_exit186_5_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_5_tpl),
        .out_c0_exit186_6_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_6_tpl),
        .out_c0_exit186_7_tpl(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x(STALLENABLE,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_wireValid = i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x(BITJOIN,51)
    assign bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q = {i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_7_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_6_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_5_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_4_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_3_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_2_tpl, i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_c0_exit186_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x(BITSELECT,52)
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_q[100:69]);

    // i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x(BLACKBOX,6)@5
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@30
    // out out_o_readdata_1_tpl@30
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write@20000000
    // out out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@30
    cnn_top_i_llvm_fpga_mem_memcoalesce_load0000e_1375_load_weight10 thei_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_V0),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdata),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_readdatavalid),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_waitrequest),
        .in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack(in_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_readdata_1_tpl),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write),
        .out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_address;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_enable;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_read;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_write;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_writedata;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_byteenable;
    assign out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight13_aunroll_x_out_memcoalesce_load_load_weight1_fpgaunique_1375_load_weight1_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,66)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,67)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,44)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,4)@36
    assign out_c0_exe4190 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe5 = sel_for_coalesced_delay_1_c;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_memdep_3_load_weight1_avm_address = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_address;
    assign out_memdep_3_load_weight1_avm_enable = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_enable;
    assign out_memdep_3_load_weight1_avm_read = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_read;
    assign out_memdep_3_load_weight1_avm_write = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_write;
    assign out_memdep_3_load_weight1_avm_writedata = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_writedata;
    assign out_memdep_3_load_weight1_avm_byteenable = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_byteenable;
    assign out_memdep_3_load_weight1_avm_burstcount = i_sfc_s_c1_in_for_body24_load_weight1s_c1_enter_load_weight15_aunroll_x_out_memdep_3_load_weight1_avm_burstcount;

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out = i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out = i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_load_weight16_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,24)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body24_load_weight1s_c0_enter18016_load_weight11_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
