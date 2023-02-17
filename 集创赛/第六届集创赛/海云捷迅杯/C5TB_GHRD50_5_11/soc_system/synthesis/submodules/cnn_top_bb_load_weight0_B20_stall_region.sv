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

// SystemVerilog created from cnn_top_bb_load_weight0_B20_stall_region
// SystemVerilog created on Fri Mar  4 14:17:42 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cnn_top_bb_load_weight0_B20_stall_region (
    output wire [0:0] out_unnamed_load_weight052,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_cmp82_phi_decision28_replace_phi_dir,
    input wire [0:0] in_phi_decision34_replace_phi_dir,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_inc115_load_weight07_sel_x_b;
    wire [0:0] load_weight0_B20_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] load_weight0_B20_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] load_weight0_B20_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] load_weight0_B20_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_i32_117_q;
    wire [0:0] i_cmp82_phi_decision28_replace_phi_load_weight03_s;
    reg [0:0] i_cmp82_phi_decision28_replace_phi_load_weight03_q;
    wire [0:0] i_cmp82_phi_decision28_select_load_weight05_s;
    reg [0:0] i_cmp82_phi_decision28_select_load_weight05_q;
    wire [33:0] i_cmp_load_weight010_a;
    wire [33:0] i_cmp_load_weight010_b;
    logic [33:0] i_cmp_load_weight010_o;
    wire [0:0] i_cmp_load_weight010_c;
    wire [32:0] i_inc115_load_weight07_a;
    wire [32:0] i_inc115_load_weight07_b;
    logic [32:0] i_inc115_load_weight07_o;
    wire [32:0] i_inc115_load_weight07_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_valid_out;
    wire [0:0] i_phi_decision34_replace_phi_load_weight01_s;
    reg [0:0] i_phi_decision34_replace_phi_load_weight01_q;
    wire [0:0] i_unnamed_load_weight012_q;
    wire [0:0] i_unnamed_load_weight013_q;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [1:0] coalesced_delay_0_0_q;
    wire [1:0] bubble_join_load_weight0_B20_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_load_weight0_B20_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_load_weight0_B20_merge_reg_aunroll_x_c;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_b;
    wire [1:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_load_weight0_B20_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,121)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = load_weight0_B20_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,94)
    assign bubble_join_stall_entry_q = {in_phi_decision34_replace_phi_dir, in_cmp82_phi_decision28_replace_phi_dir};

    // bubble_select_stall_entry(BITSELECT,95)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);

    // load_weight0_B20_merge_reg_aunroll_x(BLACKBOX,4)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    cnn_top_load_weight0_B20_merge_reg theload_weight0_B20_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_stall_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(load_weight0_B20_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(load_weight0_B20_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(load_weight0_B20_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(load_weight0_B20_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_load_weight0_B20_merge_reg_aunroll_x(STALLENABLE,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg0 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg1 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg2 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg3 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg4 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg5 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg6 <= SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg0;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg1;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg2;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg3;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg4;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_stall_out) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg5;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed6 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid) | SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid = SE_out_load_weight0_B20_merge_reg_aunroll_x_backStall & SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg0 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg1 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed1;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg2 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed2;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg3 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed3;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg4 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed4;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg5 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed5;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_toReg6 = SE_out_load_weight0_B20_merge_reg_aunroll_x_StallValid & SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or0 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed0;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or1 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed1 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or0;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or2 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed2 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or1;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or3 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed3 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or2;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or4 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed4 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or3;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_or5 = SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed5 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or4;
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_wireStall = ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_consumed6 & SE_out_load_weight0_B20_merge_reg_aunroll_x_or5);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_backStall = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V0 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg0);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V1 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg1);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V2 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg2);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V3 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg3);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V4 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg4);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V5 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg5);
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_V6 = SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid & ~ (SE_out_load_weight0_B20_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_load_weight0_B20_merge_reg_aunroll_x_wireValid = load_weight0_B20_merge_reg_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06(BLACKBOX,20)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_17_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000_phi48_load_weight00 thei_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V5),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06(STALLENABLE,115)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_wireValid = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_valid_out;

    // c_i32_117(CONSTANT,8)
    assign c_i32_117_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06(BITJOIN,90)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_q = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06(BITSELECT,91)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_q[31:0]);

    // i_inc115_load_weight07(ADD,14)@2
    assign i_inc115_load_weight07_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_b};
    assign i_inc115_load_weight07_b = {1'b0, c_i32_117_q};
    assign i_inc115_load_weight07_o = $unsigned(i_inc115_load_weight07_a) + $unsigned(i_inc115_load_weight07_b);
    assign i_inc115_load_weight07_q = i_inc115_load_weight07_o[32:0];

    // bgTrunc_i_inc115_load_weight07_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_inc115_load_weight07_sel_x_b = i_inc115_load_weight07_q[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014(BLACKBOX,21)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_22_0@20000000
    // out out_stall_out@20000000
    cnn_top_i_llvm_fpga_ffwd_source_i32_unna0000ght054_load_weight00 thei_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(bgTrunc_i_inc115_load_weight07_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi48_load_weight06_V0),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_intel_reserved_ffwd_22_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04(BLACKBOX,15)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight00 thei_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V0),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02(BLACKBOX,16)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_8_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight00 thei_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V1),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_dest_data_out_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight00 thei_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V3),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09(BLACKBOX,19)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_17_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i32_in_c_00000_phi47_load_weight00 thei_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V4),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_coalesced_delay_0_0(STALLENABLE,125)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_load_weight0_B20_merge_reg_aunroll_x_V6;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_18_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    cnn_top_i_llvm_fpga_ffwd_dest_i1_unnamed0000ght053_load_weight00 thei_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall),
        .in_valid_in(SE_out_load_weight0_B20_merge_reg_aunroll_x_V2),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and0 = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and1 = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and2 = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and1;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and3 = i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and2;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and4 = i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and3;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and5 = i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and4;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_and5;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02(BITJOIN,74)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_q = i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02(BITSELECT,75)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_q[0:0]);

    // bubble_join_load_weight0_B20_merge_reg_aunroll_x(BITJOIN,61)
    assign bubble_join_load_weight0_B20_merge_reg_aunroll_x_q = {load_weight0_B20_merge_reg_aunroll_x_out_data_out_1_tpl, load_weight0_B20_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_load_weight0_B20_merge_reg_aunroll_x(BITSELECT,62)
    assign bubble_select_load_weight0_B20_merge_reg_aunroll_x_b = $unsigned(bubble_join_load_weight0_B20_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_load_weight0_B20_merge_reg_aunroll_x_c = $unsigned(bubble_join_load_weight0_B20_merge_reg_aunroll_x_q[1:1]);

    // join_for_coalesced_delay_0(BITJOIN,57)
    assign join_for_coalesced_delay_0_q = {bubble_select_load_weight0_B20_merge_reg_aunroll_x_c, bubble_select_load_weight0_B20_merge_reg_aunroll_x_b};

    // coalesced_delay_0_0(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,58)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);

    // i_cmp82_phi_decision28_replace_phi_load_weight03(MUX,11)@2
    assign i_cmp82_phi_decision28_replace_phi_load_weight03_s = sel_for_coalesced_delay_0_b;
    always @(i_cmp82_phi_decision28_replace_phi_load_weight03_s or GND_q or bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_b)
    begin
        unique case (i_cmp82_phi_decision28_replace_phi_load_weight03_s)
            1'b0 : i_cmp82_phi_decision28_replace_phi_load_weight03_q = GND_q;
            1'b1 : i_cmp82_phi_decision28_replace_phi_load_weight03_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8237_load_weight02_b;
            default : i_cmp82_phi_decision28_replace_phi_load_weight03_q = 1'b0;
        endcase
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_q = i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_out_dest_data_out_8_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_q[0:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00(BITJOIN,78)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_q = i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00(BITSELECT,79)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_q[0:0]);

    // i_phi_decision34_replace_phi_load_weight01(MUX,22)@2
    assign i_phi_decision34_replace_phi_load_weight01_s = sel_for_coalesced_delay_0_c;
    always @(i_phi_decision34_replace_phi_load_weight01_s or VCC_q or bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_b)
    begin
        unique case (i_phi_decision34_replace_phi_load_weight01_s)
            1'b0 : i_phi_decision34_replace_phi_load_weight01_q = VCC_q;
            1'b1 : i_phi_decision34_replace_phi_load_weight01_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_b;
            default : i_phi_decision34_replace_phi_load_weight01_q = 1'b0;
        endcase
    end

    // i_cmp82_phi_decision28_select_load_weight05(MUX,12)@2
    assign i_cmp82_phi_decision28_select_load_weight05_s = i_phi_decision34_replace_phi_load_weight01_q;
    always @(i_cmp82_phi_decision28_select_load_weight05_s or bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_b or i_cmp82_phi_decision28_replace_phi_load_weight03_q)
    begin
        unique case (i_cmp82_phi_decision28_select_load_weight05_s)
            1'b0 : i_cmp82_phi_decision28_select_load_weight05_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp8236_load_weight04_b;
            1'b1 : i_cmp82_phi_decision28_select_load_weight05_q = i_cmp82_phi_decision28_replace_phi_load_weight03_q;
            default : i_cmp82_phi_decision28_select_load_weight05_q = 1'b0;
        endcase
    end

    // i_unnamed_load_weight012(LOGICAL,23)@2
    assign i_unnamed_load_weight012_q = i_cmp82_phi_decision28_select_load_weight05_q ^ VCC_q;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08(BITJOIN,82)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_q = i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08(BITSELECT,83)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_q[31:0]);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09(BITJOIN,86)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_q = i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09(BITSELECT,87)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_q[31:0]);

    // i_cmp_load_weight010(COMPARE,13)@2
    assign i_cmp_load_weight010_a = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_in_c_083_replace_phi47_load_weight09_b});
    assign i_cmp_load_weight010_b = $unsigned({{2{bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_b[31]}}, bubble_select_i_llvm_fpga_ffwd_dest_i32_channel_num22030_load_weight08_b});
    assign i_cmp_load_weight010_o = $unsigned($signed(i_cmp_load_weight010_a) - $signed(i_cmp_load_weight010_b));
    assign i_cmp_load_weight010_c[0] = i_cmp_load_weight010_o[33];

    // i_unnamed_load_weight013(LOGICAL,24)@2
    assign i_unnamed_load_weight013_q = i_cmp_load_weight010_c & i_unnamed_load_weight012_q;

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_unnamed_load_weight052 = i_unnamed_load_weight013_q;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_dest_i1_unnamed_load_weight053_load_weight00_V0;

    // regfree_osync(GPOUT,46)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i32_unnamed_load_weight054_load_weight014_out_intel_reserved_ffwd_22_0;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
